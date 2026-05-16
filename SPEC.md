# Kyber Polynomial Multiplier — 技術規格書 (Specification)

> **專案**：Kyber 多項式乘法硬體加速器於 ZedBoard (Zynq-7020)
> **功能**：計算 c(x) = a(x) · b(x) mod (X²⁵⁶ + 1), q = 3329
> **參考**：Li, Tian, Hu, Wang, *"An Efficient Hardware Architecture for NTT-based Polynomial Multiplication"*, IEEE TCAD 2023
> **平台**：ZedBoard Zynq-7020, Vivado 2019.1, AXI4-Stream + DMA
> **狀態**：14 個 testbench 全 PASS、Vivado timing 收斂 @ 90 MHz、ZedBoard 實機驗證通過

> **本文件三合一**：技術規格書（§1–§6）＋ 模組介面定義（§4.0）＋ 操作 README（§8, §10）。
> 評審/交付看 §1–§7；重用模組看 §4.0 介面表；要動手跑直接跳 §10 Quick Start。

**目錄**

| § | 章節 | 用途 |
|---|------|------|
| 1 | 概觀 | 目標、數學參數、演算法選型 |
| 2 | 系統架構 | 階層結構、上板 Block Design |
| 3 | 資料格式 | 打包、AXI 封包、redundant rep |
| 4.0 | **頂層介面定義** | **port 表（重用必看）** |
| 4.1–4.11 | 模組規格 | 各模組 latency/DSP/介面 |
| 5 | 效能與資源 | cycle、雙層資源、timing |
| 6 | 驗證 | 三層驗證鏈、testbench、bug 修正 |
| 7 | 檔案清單 | File manifest |
| 8 | 操作流程 | 模擬 + Vivado 三階段 + SDK |
| 9 | 預期輸出 | 實機 Terminal 範例 |
| 10 | **Quick Start** | **環境、三種使用情境、Troubleshooting** |

---

## 1. 概觀 (Overview)

### 1.1 目標

實作 CRYSTALS-Kyber (FIPS 203) 後量子密碼學中的核心運算 —— 環多項式乘法
`c(x) = a(x) · b(x) mod (X²⁵⁶ + 1)`，在 Z_q[X]/(X²⁵⁶+1)，q = 3329。

採用 Number Theoretic Transform (NTT) 將 O(n²) 的 schoolbook 乘法降為
O(n log n)：

```
c = INTT( PWM( NTT(a), NTT(b) ) )
```

### 1.2 數學參數

| 參數 | 值 | 說明 |
|------|----|----|
| n | 256 | 多項式長度 |
| q | 3329 | 模數（12-bit 質數，3329 = 13·256 + 1） |
| ζ (zeta) | 17 | 256-th primitive root of unity mod q |
| NTT 層數 | 7 | Incomplete NTT（FIPS 203 規定，非完整 8 層） |
| 2⁻¹ mod q | 1665 | Fused INTT 的除 2 因子 |

因為 q = 3329 不存在 512-th root of unity，X²⁵⁶+1 在 Z_q 上分解為 **128 個
二次因式** `X² − γᵢ`，故 NTT 為 incomplete（7 層），PWM 階段對 128 對
degree-1 多項式做 base multiplication。

### 1.3 演算法選型

| 元件 | 選用方法 | 來源 |
|------|---------|------|
| Butterfly Unit | Fig.4 folded BU（CT + GS 共用） | Li-Tian TCAD 2023 |
| Modular Reduction | Fig.5 Barrett（2-stage，0 DSP） | Li-Tian TCAD 2023 |
| Mod Add/Sub | Fig.6（含 fused ÷2） | Li-Tian TCAD 2023 |
| 平行化 | Dual-Butterfly（odd/even 同時） | 本設計 |
| INTT | Fused ÷2（省最後 ×128⁻¹） | Li-Tian TCAD 2023 §II-C |
| NTT 方向 | DIT（Decimation in Time, CT butterfly） | 對應 pqcrystals-kyber |
| INTT 方向 | DIF（Decimation in Frequency, GS butterfly） | 同上 |

---

## 2. 系統架構 (System Architecture)

### 2.1 階層結構

```
polymul_axi_top                         ← AXI4-Stream wrapper（上板頂層 IP）
├── INPUT_STREAM_if                     ← DMA MM2S → 內部 FIFO（含 reg_slice）
├── OUTPUT_STREAM_if                    ← 內部 FIFO → DMA S2MM
└── polymul_top                         ← 核心：NTT/PWM/INTT 整合
    ├── addr_gen                        ← NTT/INTT 位址產生（7 stage）
    ├── dual_butterfly_unit             ← 2× butterfly_unit（odd/even 平行）
    │   └── butterfly_unit ×2
    │       ├── mod_multiplier          ← DSP + Barrett
    │       │   └── barret_reduction
    │       ├── mod_add
    │       └── mod_sub
    ├── pwm_unit                        ← 5× mod_multiplier（binomial 乘法）
    ├── bram_128x24 ×3                  ← BRAM_A / BRAM_B / BRAM_C（ping-pong）
    ├── zetas_rom                       ← NTT/INTT twiddle ROM（硬編碼）
    └── zetas_pwm_rom                   ← PWM twiddle ROM（硬編碼）
```

### 2.2 上板系統整合（Block Design）

```
       ┌──────────┐   AXI-Lite    ┌──────────┐
       │ Zynq PS  │──────────────►│ AXI DMA  │
       │ (ARM A9) │   ctrl         │          │
       │          │◄──HP port──────│          │
       └────┬─────┘   data         └────┬─────┘
            │ DDR                   MM2S │ ▲ S2MM
            │                            ▼ │
            │                  ┌──────────────────┐
            │   SD card        │ polymul_axi_top  │
            └─ xilffs ─────────│  (本設計 IP)     │
                               └──────────────────┘
```

- PS 從 SD 卡讀測資 → DDR → DMA MM2S 餵 PL → PL 計算 → DMA S2MM 收回 DDR
- AXI SmartConnect 仲裁、Concat 合併 DMA 中斷、System ILA 供 debug

---

## 3. 資料格式 (Data Format)

### 3.1 多項式表示

多項式 a(x) 的 256 個係數，每個 12-bit（範圍 [0, q)），兩兩打包成一個
24-bit binomial：

```
binomial[i] (24-bit) = { a[2i+1] (12-bit, odd) , a[2i] (12-bit, even) }
                          ↑ X^(2i+1) 項            ↑ X^(2i) 項
```

256 係數 → 128 個 binomial → 128 個 BRAM entry。

### 3.2 AXI4-Stream 封包

每個 32-bit TDATA word = 1 個 24-bit binomial：

```
TDATA[31:24] = 0 (padding)
TDATA[23:12] = odd  coefficient
TDATA[11: 0] = even coefficient
```

| 方向 | 內容 | word 數 | tlast |
|------|------|---------|-------|
| Input (MM2S) | a[0..127] 然後 b[0..127] | 256 | 在 #255 |
| Output (S2MM) | c[0..127] | 128 | 在 #127 |

### 3.3 Redundant Representation

NTT/PWM 內部係數採 **redundant representation**（範圍 [0, 4096) 而非嚴格
[0, q)），省去每級 butterfly 的完整 modular reduction 以提升 throughput。
同一數學值在 mod q 下有兩種 12-bit 表示（差一個 q）。最終比對以 mod q
進行，數學上完全等價。

---

## 4. 模組規格 (Module Specifications)

### 4.0 頂層介面定義 (Top-Level Interface)

#### 4.0.1 polymul_axi_top（上板頂層 IP）

| Port | Dir | Width | Interface | 說明 |
|------|-----|-------|-----------|------|
| `clk` | in | 1 | clock | 系統時脈（FCLK_CLK0, 90 MHz） |
| `resetn` | in | 1 | reset | Active-low（接 peripheral_aresetn） |
| `S_AXIS_MM2S_tdata` | in | 32 | AXI4-Stream Slave | DMA 餵入資料 |
| `S_AXIS_MM2S_tvalid` | in | 1 | AXI4-Stream Slave | 資料有效 |
| `S_AXIS_MM2S_tready` | out | 1 | AXI4-Stream Slave | 可接收（back-pressure） |
| `S_AXIS_MM2S_tlast` | in | 1 | AXI4-Stream Slave | 封包結束（在 word #255） |
| `S_AXIS_MM2S_tkeep` | in | 4 | AXI4-Stream Slave | byte enable（全 1） |
| `M_AXIS_S2MM_tdata` | out | 32 | AXI4-Stream Master | 結果輸出 |
| `M_AXIS_S2MM_tvalid` | out | 1 | AXI4-Stream Master | 資料有效 |
| `M_AXIS_S2MM_tready` | in | 1 | AXI4-Stream Master | DMA 可接收 |
| `M_AXIS_S2MM_tlast` | out | 1 | AXI4-Stream Master | 封包結束（在 word #127） |
| `M_AXIS_S2MM_tkeep` | out | 4 | AXI4-Stream Master | byte enable（全 1） |
| `state_dbg` | out | 3 | debug | FSM 狀態（供 ILA 觀察） |

**state_dbg 編碼**：0=IDLE, 1=LOAD_A, 2=LOAD_B, 3=COMPUTE, 4=STORE

**握手協定**：標準 AXI4-Stream。`tvalid && tready` 同時為高時資料傳輸。
DMA 設定須為 32-bit Memory Map / Stream Data Width，取消 Scatter-Gather。

#### 4.0.2 polymul_top（核心，可獨立模擬/重用）

| Port | Dir | Width | 說明 |
|------|-----|-------|------|
| `clk` | in | 1 | 時脈 |
| `rst_n` | in | 1 | Active-low reset |
| `start` | in | 1 | 1-cycle pulse 啟動一次 polymul |
| `busy` | out | 1 | 計算中 |
| `done` | out | 1 | 完成（1-cycle pulse） |
| `dbg_addr` | in | 7 | BRAM 位址（0–127） |
| `dbg_bram_sel` | in | 2 | 0=BRAM_A, 1=BRAM_B, 2=BRAM_C |
| `dbg_dout` | out | 24 | BRAM 讀出（STORE 用） |
| `dbg_din` | in | 24 | BRAM 寫入（LOAD 用） |
| `dbg_we` | in | 1 | 寫入致能 |

**Parameter**：`BRAM_A/B/C_INIT`（模擬載初值；上板留空，由 DMA 填入）、
`ZETAS_INIT / ZETAS_PWM_INIT`（ROM 已硬編碼，參數僅相容保留）。

**使用協定**：`start` 拉高 1 cycle → `busy=1` → 約 1647 cycle 後 `done=1`
（1-cycle pulse）→ 結果在 BRAM_A。LOAD/COMPUTE/STORE 必須互斥（FSM 保證）。

---

### 4.1 barret_reduction

| 項目 | 規格 |
|------|------|
| 功能 | 24-bit 輸入 → mod q（Barrett，Fig.5 strict） |
| Latency | 2 cycle |
| DSP | 0（純移位/加法實作） |
| 輸入範圍 | < (q−1)² = 11,075,584（**設計上限，超過會 overflow**） |
| 介面 | `a[23:0]` → `result[15:0]` |

> **重要限制**：輸入超過 (q−1)² 時 `d1` 內部 reg 溢位。PWM 因輸入為
> redundant rep（可達 4095²）超出此範圍，故 pwm_unit Stage 0 加 reduce
> 確保 < q（見 §6 Bug 1）。

### 4.2 mod_add / mod_sub

| 項目 | 規格 |
|------|------|
| 功能 | 模加 / 模減，含 fused ÷2（`op` 訊號切換） |
| 實作 | Fig.6，13-bit base |
| 輸出 | redundant rep（< 4096） |
| 組合邏輯 | 純組合（無暫存） |

### 4.3 mod_multiplier

| 項目 | 規格 |
|------|------|
| 功能 | (a · b) mod q |
| Latency | 4 cycle（DSP input FF + DSP M/P FF + Barrett 2 FF） |
| DSP | 1× DSP48E1 |
| 輸入 | 16-bit a, b（有效 12-bit） |

### 4.4 butterfly_unit

| 項目 | 規格 |
|------|------|
| 功能 | CT (NTT) + GS (INTT) 共用 folded butterfly |
| 實作 | Fig.4，6 MUX + 6 FF |
| Latency | 6 cycle（CT 與 GS 相同） |
| 模式 | `mode` 訊號切換 CT / GS |

CT：`a' = a + ζ·b`, `b' = a − ζ·b`
GS（fused ÷2）：`a' = (a+b)/2`, `b' = (a−b)/2·ζ`

### 4.5 dual_butterfly_unit

兩個 butterfly_unit 平行，同時處理 24-bit packed binomial 的高/低 12-bit
（odd / even 兩路），共用 twiddle 與 mode。Latency 6 cycle。

### 4.6 pwm_unit

| 項目 | 規格 |
|------|------|
| 功能 | Binomial base multiplication |
| 平行度 | 5× mod_multiplier |
| Latency | 10 cycle |
| Throughput | 1 binomial / cycle |
| 128 binomial | 138 cycle（128 + 10 drain） |

**演算法**（每個 binomial，mod (X² − γᵢ)）：
```
m0 = â_even · b̂_even
m1 = â_odd  · b̂_odd
m2 = â_even · b̂_odd
m3 = â_odd  · b̂_even
m4 = m1 · γᵢ
c_even = m0 + m4   (mod q)
c_odd  = m2 + m3   (mod q)
```

> Stage 0 含 redundant-rep reduce（input ≥ q 時 −q），確保餵入
> mod_multiplier 的值 < q，避免 Barrett overflow。

### 4.7 bram_128x24

| 項目 | 規格 |
|------|------|
| 容量 | 128 entry × 24-bit |
| 埠 | True dual-port（A/B 可獨立 R/W） |
| Read latency | 1 cycle（output register） |
| 推斷 | Vivado 自動推斷成 RAMB18 |
| INIT_FILE | 預設 ""，上板時不載（資料由 DMA 動態填入） |

### 4.8 zetas_rom / zetas_pwm_rom

| 項目 | 規格 |
|------|------|
| 容量 | 128 entry × 16-bit |
| 內容 | 硬編碼於 .v（`initial begin mem[i]=...`），不依賴外部 .memh |
| zetas_rom | ZETAS[k] = ζ^bitrev7(k)（NTT/INTT 用） |
| zetas_pwm_rom | ZETAS_PWM[k] = ζ^(2·bitrev7(k)+1)（PWM 用） |

> 硬編碼設計：避免 IP 打包 / synthesis 時 `$readmemh` 路徑問題（見 §6 Bug 3）。

### 4.9 addr_gen

| 項目 | 規格 |
|------|------|
| 功能 | NTT/INTT 7-stage 位址產生（read j / read j+len / write） |
| 模式 | `is_intt` 切換 NTT / INTT |
| 啟動 | Phase1 + Phase2 startup（含 bf=0 首讀） |
| pipeline delay | 7 cycle（read addr → write addr） |

### 4.10 polymul_top

3-BRAM 整合，FSM：

```
IDLE → NTT_A → NTT_B → PWM → INTT → DONE
```

| 階段 | 動作 | BRAM 角色 |
|------|------|----------|
| NTT_A | NTT(a)，A↔C ping-pong | â 存入 BRAM_C |
| NTT_B | NTT(b)，B↔A ping-pong | b̂ 存入 BRAM_A |
| PWM | 讀 C(â)+A(b̂)，寫 B(ĉ) | ĉ 存入 BRAM_B |
| INTT | INTT(ĉ)，B↔A ping-pong | c 存入 BRAM_A |

含 `dbg_addr / dbg_bram_sel / dbg_dout / dbg_din / dbg_we` 供外部
（AXI wrapper 或 testbench）讀寫任意 BRAM。

### 4.11 polymul_axi_top

AXI4-Stream wrapper，FSM：

```
IDLE → LOAD_A → LOAD_B → COMPUTE → STORE → IDLE
```

| 階段 | 動作 |
|------|------|
| LOAD_A | 自 isif 讀 128 word 寫入 BRAM_A（dbg port） |
| LOAD_B | 同上寫 BRAM_B |
| COMPUTE | 觸發 polymul_top.start，等 done |
| STORE | 自 BRAM_A 讀 128 word 送 osif（含 1-cycle BRAM latency 對齊） |

Port：`clk`, `resetn`, `S_AXIS_MM2S_*`, `M_AXIS_S2MM_*`, `state_dbg[2:0]`。

---

## 5. 效能與資源 (Performance & Resource)

### 5.1 計算延遲（cycle 精確值，模擬驗證）

| 階段 | Cycle |
|------|-------|
| NTT(a) | 499 |
| NTT(b) | 499 |
| PWM | 138 |
| INTT(ĉ) | 499 |
| FSM overhead | ~12 |
| **總計 (polymul)** | **1647** |

@ 90 MHz：1647 / 90×10⁶ ≈ **18.3 μs**（純硬體計算）

端到端（含 SD 讀檔 + DMA + load/store）：實機量測 ~30 μs。

吞吐量：90×10⁶ / 1647 ≈ **54,600 polynomial-mul / 秒**。

### 5.2 資源用量

**核心加速器（polymul_axi_top，階段 1 synthesis）**

| 資源 | 用量 | Zynq-7020 占用率 |
|------|------|-----------------|
| LUT | 2,071 | 3.9% |
| FF | 1,886 | 1.8% |
| BRAM | 4 | 2.9% |
| DSP48E1 | 7 | 3.2% |

DSP = 7：2 個 dual-BU（NTT/INTT）+ 5 個 PWM mod_multiplier。

**完整系統（design_1_wrapper，含 AXI DMA / SmartConnect / ILA）**

| 資源 | 用量 | 占用率 | 備註 |
|------|------|--------|------|
| LUT | 7,115 | 13.4% | 多數為 DMA/SmartConnect/ILA |
| FF | 8,864 | 8.3% | 同上 |
| BRAM | 10 | 7.1% | 含 DMA FIFO + ILA buffer |
| DSP48E1 | 7 | 3.2% | **不變**（僅核心用 DSP） |

> DSP 數量不變即為核心邏輯未變的指標；額外資源全為 Xilinx 資料搬移與
> debug 基礎設施。

### 5.3 時序 (Timing)

| 項目 | 值 |
|------|----|
| 目標頻率 | 90 MHz（週期 11.11 ns） |
| WNS | 正（timing 收斂）｜100 MHz 時為 −0.396 ns，降頻至 90 MHz 後達標 |
| Failed Routes | 0 |
| 功耗 | ~1.75 W（含 PS） |

---

## 6. 驗證 (Verification)

### 6.1 三層驗證鏈

```
Python ref_model (schoolbook + NTT path 雙重交叉驗證)
   ↓ 產生 golden testvector
RTL 模擬 (iverilog + Vivado xsim)：14 testbench
   ↓
Vivado synthesis + implementation
   ↓
ZedBoard 實機：SD 卡 + DMA + 三方比對 (PS軟體 vs PL硬體 vs golden)
```

### 6.2 Testbench 清單（14 個，全 PASS）

| Testbench | 驗證內容 | 規模 |
|-----------|---------|------|
| tb_barrett | Barrett reduction | 10,005 cases |
| tb_modarith | mod_add / mod_sub | 20,000 cases |
| tb_bu | Butterfly（CT+GS） | 2,000 cases |
| tb_dual_bu | Dual-BU | 2,000 cases |
| tb_mem | BRAM + ROM | dual-port 讀寫 |
| tb_addr_gen | 位址產生 | NTT 448 + INTT 448 |
| tb_ntt | NTT 整合 | 128 entry |
| tb_intt | INTT(NTT(a))=a | 128 entry |
| tb_ntt_multi | 多組 NTT | 3 vectors |
| tb_ntt_intt | HW round-trip | 998 cycle |
| tb_pwm | PWM | 128 binomials |
| tb_polymul | 端到端 a·b | 1647 cycle |
| tb_polymul_multi | 5 組獨立 polymul | 640 values |
| tb_polymul_axi | AXI stream 整合 | 128 words + tlast |

合計 **超過 36,000 個驗證點全數通過**。

### 6.3 實機測資（20 組，含邊界 case）

| Case | 內容 | 驗證重點 |
|------|------|---------|
| 0–9, 18–19 | 隨機 seed | 一般情況廣度 |
| 10 | a = 0 | 零多項式 → c = 0 |
| 11 | b = 0 | 同上 |
| 12 | a = 1 | 乘法單位元 → c = b |
| 13 | a = X | Negacyclic wrap-around |
| 14 | a = b = q−1 | **最大值，Barrett overflow 邊界（Bug 1 修正之證明）** |
| 15 | a = b = 1 | 全 1 卷積 |
| 16 | a = b | 平方 c = a² |
| 17 | 單一非零係數 | 稀疏輸入 |

三方驗證：PS-software vs PL-hardware vs golden，全 MATCH。

### 6.4 已修正之關鍵 Bug

| # | Bug | 修正 |
|---|-----|------|
| 1 | **Barrett overflow**：PWM 以 redundant rep 輸入（可達 4095² > (q−1)²）導致 Barrett `d1` 溢位 | pwm_unit Stage 0 加 reduce（input ≥ q 則 −q），確保 < q |
| 2 | **Vivado vs iverilog wire-race**：wire-from-NB-reg 在兩模擬器行為不同 | testbench 改全 negedge 時序（對齊 Vivado-known-good 樣式） |
| 3 | **.memh IP 化路徑問題**：synthesis 時 `$readmemh` 找不到檔，ROM 變全 0 | ROM 改硬編碼於 .v（initial block），完全不依賴外部 .memh |
| 4 | **Timing violation**：100 MHz 時 WNS = −0.396 ns | 降頻至 90 MHz，timing 收斂（不改 RTL） |

---

## 7. 檔案清單 (File Manifest)

### RTL（核心 14 + AXI 整合 4）

```
kyber_params.v          全域常數 (`define)
barret_reduction.v      Barrett (Fig.5, 2-stage, 0 DSP)
mod_add.v / mod_sub.v   Mod add/sub + fused ÷2 (Fig.6)
mod_multiplier.v        DSP + Barrett, lat=4
butterfly_unit.v        Folded BU (Fig.4), lat=6
dual_butterfly_unit.v   2× BU 平行
bram_128x24.v           Dual-port BRAM (inferred RAMB18)
zetas_rom.v             NTT/INTT twiddle ROM（硬編碼）
zetas_pwm_rom.v         PWM twiddle ROM（硬編碼）
addr_gen.v              NTT/INTT 位址產生
pwm_unit.v              5× mod_mul, lat=10
ntt_top.v               2-BRAM NTT/INTT（Day 2 版，IP 不使用）
polymul_top.v           3-BRAM 整合 + FSM
polymul_axi_top.v       AXI4-Stream wrapper（上板頂層）
INPUT_STREAM_if.v       AXI stream 輸入 FIFO（原版，含 ILA define）
INPUT_STREAM_if_sim.v   同上（模擬版，ILA define 註解）
OUTPUT_STREAM_if.v      AXI stream 輸出 FIFO
```

### 軟體 / 測資

```
ref_model.py            Python 參考模型（golden 產生器）
sdk/main.c              SDK C app（SD 卡 + DMA + 五階段 + 三方驗證）
sd_card/pm_in_N.dat     20 組輸入測資（N = 0..19）
sd_card/pm_gold_N.dat   20 組 golden
```

### Testbench

```
tb/tb_*.v               14 個 testbench（見 §6.2）
```

---

## 8. 操作流程 (Build & Run)

### 8.1 RTL 模擬（iverilog）

```bash
iverilog -g2012 -Irtl -o sim/out/x <RTL files> tb/tb_polymul.v
vvp sim/out/x
```

### 8.2 Vivado IP 打包（階段 1）

1. Create Project（Zedboard）→ Add src（16 .v，不含 ntt_top / *_sim）
2. Set top = `polymul_axi_top`
3. Run Synthesis（確認資源/timing）
4. Tools → Create and Package New IP

### 8.3 Block Design（階段 2）

1. 新 project → Settings → IP Repository 加入打包的 IP
2. Add IP：Zynq7 PS、AXI DMA、AXI SmartConnect、polymul_axi_top
3. AXI DMA 設定：取消 SG，**Memory Map / Stream Data Width = 32**
4. PS：開 HP0、FCLK_CLK0 = 90 MHz、IRQ_F2P
5. Add Concat、System ILA（slot 設 axis_rtl:1.0）
6. Connection Automation → Validate → Generate Bitstream

### 8.4 SDK 上板（階段 3）

1. Export Hardware（含 bitstream）→ Launch SDK
2. New Application Project → Empty → import `main.c`
3. BSP Settings：勾 **xilffs**，**use_lfn = 1**
4. SD 卡放 40 個 .dat（pm_in/gold 0..19）於根目錄
5. Program FPGA → Run → SDK Terminal（115200）觀察輸出

---

## 9. 預期實機輸出 (Expected Output)

```
================================================================
  Kyber Polynomial Multiplier  (ZedBoard / Zynq-7020)
  c(x) = a(x) * b(x)  mod (X^256 + 1),  q = 3329, zeta = 17
  Data flow:  a,b -> NTT -> PWM -> INTT -> c
  3-way check:  PS-software  vs  PL-hardware  vs  golden
================================================================
[DMA] init OK
[SD ] mounted

################ Test case 0  (random) ################
  --- Data flow (first 4 binomials) ---
  [Stage 0: input  a]   [ 0]  596 + 1882*X ...
  [Stage 1: NTT(a)]     [ 0] 2214 + 2798*X ...
  [Stage 2: PWM]        [ 0]  311 + 2232*X ...
  [Stage 3: INTT  = c]  [ 0] 3097 + 3008*X ...
  --- 3-way verification ---
     PL hw vs PS sw   : MATCH (0 diff)
     PL hw vs golden  : MATCH (0 diff)
     PS sw vs golden  : MATCH (0 diff)
     >>> CASE 0  PASS <<<
...
================================================================
  SUMMARY:  ALL PASS  (20/20 cases, avg ~30 us/poly-mul)
  Pure HW compute: 1647 cycles @ 90 MHz ~= 18.3 us
================================================================
```

---

## 10. 快速上手 (Quick Start README)

### 10.1 目錄結構

```
kyber_day1_planA/
├── spec.md                  本文件
├── ref_model.py             Python 參考模型（golden 產生器）
├── rtl/                     18 個 Verilog 原始檔
├── tb/                      14 個 testbench
├── sim/data/                .memh 測資（模擬用）
├── sdk/main.c               ZedBoard SDK C app
└── sd_card/                 40 個 .dat（pm_in/gold 0..19，上板用）
```

### 10.2 環境需求

| 工具 | 版本 |
|------|------|
| Vivado | 2019.1 |
| Xilinx SDK | 2019.1 |
| iverilog | 任意（模擬用，選用） |
| Python | 3.x（重產 golden 用，選用） |
| 板子 | ZedBoard（Zynq-7020, xc7z020clg484-1） |

### 10.3 三種使用情境

#### A. 只跑 RTL 模擬（最快驗證設計）

```bash
cd kyber_day1_planA
# 端到端 polymul
iverilog -g2012 -Irtl -o /tmp/x \
  rtl/kyber_params.v rtl/barret_reduction.v rtl/mod_add.v rtl/mod_sub.v \
  rtl/mod_multiplier.v rtl/butterfly_unit.v rtl/dual_butterfly_unit.v \
  rtl/bram_128x24.v rtl/zetas_rom.v rtl/zetas_pwm_rom.v rtl/addr_gen.v \
  rtl/pwm_unit.v rtl/polymul_top.v tb/tb_polymul.v
vvp /tmp/x
# 預期：[tb_polymul] PASS  a*b mod (X^256+1) verified
```

> 模擬時 INPUT_STREAM 用 `INPUT_STREAM_if_sim.v`（ILA define 已註解，
> 避免 iverilog port 重複宣告）。

#### B. 重產測資 / golden

```bash
python3 ref_model.py          # 產生所有 .memh
# sd_card/*.dat 由 20-case 產生腳本另外生成
```

#### C. ZedBoard 上板（完整流程，見 §8）

照 §8.2 → §8.3 → §8.4 依序操作。**關鍵注意點**：

1. **IP 打包**：top = `polymul_axi_top`，用原版
   `INPUT_STREAM_if.v`（含 ILA define），**不要**加 `*_sim.v`、`ntt_top.v`。
2. **不需要 .memh**：ROM 已硬編碼，IP 不需任何 .memh 檔。
3. **DMA 寬度**：Memory Map / Stream 都設 **32-bit**（非 64）。
4. **頻率**：FCLK_CLK0 = **90 MHz**（100 MHz timing 不收斂）。
5. **BSP**：勾 `xilffs`，`use_lfn = 1`（SD 卡長檔名）。
6. **SD 卡**：FAT32，40 個 .dat 放**根目錄**。

### 10.4 常見問題 (Troubleshooting)

| 症狀 | 原因 | 解法 |
|------|------|------|
| iverilog 報 port 重複宣告 | 用了原版 INPUT_STREAM_if.v | 模擬改用 `INPUT_STREAM_if_sim.v` |
| Vivado synth 報 `cannot open zetas.memh` | 舊版 ROM 用 $readmemh | 確認用硬編碼版 zetas_rom.v |
| Validate 報 stream width mismatch | DMA 寬度設成 64 | 改 Memory Map/Stream = 32 |
| Timing WNS 負（100 MHz） | 頻率過高 | FCLK_CLK0 降 90 MHz |
| SD 卡讀不到 | xilffs 未開 / 非 FAT32 | BSP 勾 xilffs + use_lfn=1 |
| DMA 卡住不回 | tlast 未對齊 / 寬度錯 | 確認 input 256 word、tlast 在 #255 |
| out_buf 與 golden raw bits 不同但 PASS | redundant representation | 正常，mod q 後等價（見 §3.3） |

### 10.5 驗證快速確認

```bash
# 全 14 testbench 一次跑（iverilog）
for tb in barrett modarith bu dual_bu mem addr_gen ntt intt \
          ntt_multi ntt_intt pwm polymul polymul_multi polymul_axi; do
  # 依 §6.2 對應 RTL 編譯後 vvp，grep PASS/FAIL
done
# 全數應顯示 PASS / OVERALL PASS
```

實機成功標準：SDK Terminal 最後顯示
`SUMMARY: ALL PASS (20/20 cases)`，且三方驗證（PS/PL/golden）全 MATCH。

---

*本規格書依據實際 RTL 原始碼、Vivado 報告與 ZedBoard 實機驗證撰寫。*