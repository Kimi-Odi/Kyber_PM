# Kyber Polynomial Multiplier on ZedBoard — SPEC v1.0

> SoC Final Project · 1 week · Vivado 2019.1 · ZedBoard (Zynq-7020)

---

## 1. Project 目標

在 ZedBoard 上實作一個硬體加速器,計算 Kyber 的多項式乘法:

```
c(x) = a(x) × b(x)   mod (x²⁵⁶ + 1, q = 3329)
```

加速器使用 NTT 演算法,把 O(n²) 的 schoolbook 乘法降到 O(n log n)。

```
   a(x) ──NTT──→ â  ┐
                    ├──PWM──→ ĉ ──INTT──→ c(x)
   b(x) ──NTT──→ b̂  ┘
```

---

## 2. 演算法參數 (Kyber 標準)

| 項目 | 值 | 備註 |
|---|---|---|
| n | 256 | 多項式長度 |
| q | 3329 (12-bit) | 模數 |
| ζ (zeta) | 17 | 256-th primitive root of unity mod q |
| NTT 層數 | 7 | Incomplete NTT,最後保留 128 個 degree-1 多項式 |
| NTT 演算法 | DIT (Cooley-Tukey) | 輸入自然序,輸出 bit-reversed 配對序 |
| INTT 演算法 | DIF (Gentleman-Sande) | 輸入 bit-reversed,輸出自然序 |
| INTT 最後縮放 | × 128⁻¹ mod q = × 3303 | 不是 256⁻¹,因為是 incomplete NTT |
| 模約化 | Barrett reduction | 4-stage pipelined |

---

## 3. 系統架構

### 3.1 三層架構

```
┌──────────────────────────────────────────────────┐
│         Host PC                                  │
│   - Python:產測試資料、reference model           │
│   - Vivado:RTL design / synthesis / bitstream    │
│   - SDK:C code、燒板                            │
└──────────────────────────────────────────────────┘
                       ↓ USB/JTAG
┌──────────────────────────────────────────────────┐
│         ZedBoard (Zynq-7020)                     │
│  ┌────────────────────────┐                      │
│  │   PS (ARM Cortex-A9)   │  ← C code           │
│  │  - SD card 讀 a/b/gold │                      │
│  │  - 設定 + 啟動 DMA      │                      │
│  │  - 比對結果            │                      │
│  └─────────┬──────────────┘                      │
│            ↕ AXI bus + DDR                       │
│  ┌─────────┴──────────────┐                      │
│  │     PL (FPGA fabric)   │                      │
│  │  ┌──────────┐          │                      │
│  │  │ AXI DMA  │          │                      │
│  │  └────┬─────┘          │                      │
│  │       ↕ AXI-Stream     │                      │
│  │  ┌────┴─────────────┐  │                      │
│  │  │ kyber_polymul_top│  ← 本 project           │
│  │  └──────────────────┘  │                      │
│  └────────────────────────┘                      │
└──────────────────────────────────────────────────┘
```

### 3.2 IP 介面 (AXI-Stream)

```verilog
module kyber_polymul_top (
    input          clk,            // 150 MHz
    input          resetn,         // active-low

    // AXI-Stream slave (DMA MM2S → IP)
    input  [63:0]  s_axis_tdata,
    input          s_axis_tvalid,
    output         s_axis_tready,
    input          s_axis_tlast,

    // AXI-Stream master (IP → DMA S2MM)
    output [63:0]  m_axis_tdata,
    output         m_axis_tvalid,
    input          m_axis_tready,
    output         m_axis_tlast
);
```

### 3.3 資料流 (固定流程)

每次 transaction 永遠做同一件事:吃 `a||b`,吐 `c`。

```
PS → DMA → IP:  256 beats (a 的 128 beat + b 的 128 beat)
IP 內部運算:
    NTT(a) → BRAM_A
    NTT(b) → BRAM_B
    PWM(BRAM_A, BRAM_B) → BRAM_A
    INTT(BRAM_A) → BRAM_A
IP → DMA → PS:  128 beats (c)
```

### 3.4 AXI Stream 資料打包

每個 beat 是 64-bit,只用低 24-bit:

```
beat 格式: { 40'd0, coef_odd[11:0], coef_even[11:0] }

s_axis (送入,共 256 beat):
  beat 0   : a[0..1]           ← {a[1], a[0]}
  beat 1   : a[2..3]
  ...
  beat 127 : a[254..255]
  beat 128 : b[0..1]
  ...
  beat 255 : b[254..255], tlast=1

m_axis (送出,共 128 beat):
  beat 0   : c[0..1]
  ...
  beat 127 : c[254..255], tlast=1
```

---

## 4. IP 內部架構

### 4.1 模組樹

```
kyber_polymul_top.v
├── input_stream_if.v       AXI-Stream slave + 小 FIFO
├── output_stream_if.v      AXI-Stream master + 小 FIFO
├── ctrl_fsm.v              7-state main FSM
├── addr_gen.v              stage-aware BRAM/ROM 位址產生
├── bram_a.v                128×24 dual-port BRAM (ping)
├── bram_b.v                128×24 dual-port BRAM (pong)
├── bu_even.v               處理偶 polynomial 的 BU (4-stage pipeline)
├── bu_odd.v                處理奇 polynomial 的 BU (4-stage pipeline)
│   ├── barrett.v           Barrett reduction (組合,被切進 BU pipeline)
│   ├── modadd.v
│   └── modsub.v
├── zetas_rom.v             128×12 NTT/INTT twiddle
└── zetas_pwm_rom.v         128×12 PWM twiddle
```

### 4.2 主控 FSM

```
IDLE
  │ s_axis_tvalid pulse
  ↓
LOAD_A    128 cycles    AXI → BRAM_A
  ↓
LOAD_B    128 cycles    AXI → BRAM_B
  ↓
NTT_A     7×64 + 4 = 452 cycles    BRAM_A 上跑 NTT
  ↓
NTT_B     452 cycles                BRAM_B 上跑 NTT
  ↓
PWM       64 + 4 = 68 cycles        BRAM_A × BRAM_B → BRAM_A
  ↓
INTT      7×64 + 4 + 128 = 580 cycles
  ↓
STORE_C   128 cycles    BRAM_A → AXI
  ↓
IDLE,拉 m_axis_tlast
```

### 4.3 Butterfly Unit (4-stage pipeline)

#### CT mode (NTT, DIT)
```
   a ────────────────────────────────────────────┐
                                                  ├→ a' = a + t (mod q)
   b ──┐                                         add
       │                                          
   ω ──┤                                          ┌→ b' = a - t (mod q)
       ↓                                          │
       mul → Barrett → t ─────────────────────────┘
                                                  sub
```

#### GS mode (INTT, DIF)
```
   a ──┐
       ├→ s = a + b (mod q)         → a'
   b ──┤  d = a - b (mod q)
       │     ↓
       │     mul → Barrett → b'
       │     ↑
   ω ──┘
```

**Pipeline 切分** (BU 總 latency = 4 cycles):
```
Stage 1: BRAM data latch + 12×12 multiply (a×ω 或 a-b)
Stage 2: Barrett part 1 (24×15 mul, q_est = tmp >> 26)
Stage 3: Barrett part 2 (q_est×3329, 減, compare, correction)
Stage 4: modadd / modsub + output latch
```

#### Barrett (組合,但被 BU pipeline register 切開)
```
input:  c (24-bit)
const:  m = 20158 (15-bit, = ⌊2²⁶/3329⌋)

tmp1   = c × m               (24×15 = 39-bit)
q_est  = tmp1 >> 26          (13-bit)
r      = c - q_est × 3329    (≤ 2q,估計商最多差 1)
r_out  = (r >= 3329) ? r-3329 : r
```

### 4.4 BRAM 配置 (Ping-Pong)

- **BRAM_A**: 128 × 24-bit, true dual-port
- **BRAM_B**: 128 × 24-bit, true dual-port
- **Entry 編碼**: `entry[i] = { coef_odd[2i+1], coef_even[2i] }`

每個 entry 同時帶「偶 polynomial 的一個 coef」+「奇 polynomial 的一個 coef」,讓 BU_even 跟 BU_odd 一次 BRAM read 各拿到自己要的輸入。

NTT 過程 (ping-pong swap):
```
NTT_A:
  Stage 0: read BRAM_A → BU → write BRAM_B    (B 當 scratch)
  Stage 1: read BRAM_B → BU → write BRAM_A
  Stage 2: read BRAM_A → BU → write BRAM_B
  ...
  Stage 6: 最終結果落地,FSM 記住在哪塊

NTT_B:
  先 LOAD_B 把 b 寫進 BRAM_B (此時 NTT_A 結果已在 A)
  同樣 ping-pong 跑 7 stage
  注意要安排好最後結果分別在 A 和 B,PWM 才能直接讀
```

### 4.5 Address Generation

每個 NTT stage `s ∈ {0..6}`,butterfly 距離 `len = 128 >> s`:

```
for cycle = 0..63:
    bf_even = cycle * 2 + 0     // BU_even 處理的 butterfly index
    bf_odd  = cycle * 2 + 1     // BU_odd  處理的 butterfly index

    // 每個 butterfly 對應一對位址 (在 128 entry 的座標系)
    g       = bf / len          // group index
    j_in_g  = bf % len          // intra-group index
    addr_lo = g * (2*len) + j_in_g
    addr_hi = addr_lo + len

    // twiddle 位址 (Kyber 標準)
    k_ntt   = (1 << s) + (bf >> 1)    // for NTT
    k_intt  = 127 - k_ntt              // for INTT (reverse traversal)
```

> Pipeline 對齊:寫位址 = 讀位址延遲 4 cycle (shift register 整組訊號)

---

## 5. Cycle 預算

| Stage | Cycles | 累計 |
|---|---|---|
| LOAD_A | 128 | 128 |
| LOAD_B | 128 | 256 |
| NTT_A | 452 | 708 |
| NTT_B | 452 | 1160 |
| PWM | 68 | 1228 |
| INTT | 580 | 1808 |
| STORE_C | 128 | **1936** |

**總計 ≈ 1936 cycles @ 150 MHz ≈ 12.9 μs**

---

## 6. 驗證計畫 (三層)

### Layer 1 — Python Reference (Day 1)
- `ref_model.py` 實作 ntt / intt / pwm / schoolbook
- 自我測試:`intt(ntt(x)) == x` 且 `intt(pwm(ntt(a), ntt(b))) == schoolbook(a, b)`
- 產出:`tv_a.memh`, `tv_b.memh`, `tv_c_gold.memh`, `zetas.memh`, `zetas_pwm.memh`

### Layer 2 — RTL Simulation (Day 1~4)
- 單元 testbench:`tb_bu.v`, `tb_barrett.v`, `tb_addr_gen.v`
- 整合 testbench:`tb_polymul.v`
  - `$readmemh` 載 a, b
  - 模擬 AXI-Stream 餵 a||b
  - 等 m_axis_tlast,收 c
  - 比對 c vs c_gold,印 PASS/FAIL
- 工具:Vivado xsim (或 iverilog)

### Layer 3 — 上板驗證 (Day 6)
- 照 self-attention lab 流程:
  - Vivado 包 IP → Block Design (ZYNQ7 + DMA + SmartConnect + 本 IP)
  - SDK 寫 C code:讀 SD 卡 → DMA 送 a||b → 收 c → 比對 gold
  - UART 印 PASS/FAIL
- ILA 接 s_axis / m_axis,Hardware Manager 看波形

---

## 7. 一週時程

| Day | 任務 | 交付 |
|---|---|---|
| **1** | Python ref + Barrett + BU (4-stage pipeline) | ref_model.py, barrett.v, bu.v, tb_bu.v PASS |
| **2** | BRAM + ROM + addr_gen + NTT mode | bram_a/b.v, addr_gen.v, NTT_A 跑通 |
| **3** | INTT + PWM + 整合 FSM | ctrl_fsm.v 完整, sim 對拍過 |
| **4** | AXI-Stream wrapper + 整體 sim | input/output_stream_if.v, tb_polymul.v PASS |
| **5** | Vivado 包 IP + Block Design + Bitstream | .bit 檔產出 |
| **6** | SDK C code + 上板 + UART 驗證 | 上板 PASS |
| **7** | Buffer + 報告 | 報告 PDF |

---

## 8. 風險與備案

| 風險 | 偵測點 | 備案 |
|---|---|---|
| Barrett pipeline 切不平均,timing fail | Day 5 timing report | 重切 stage 邊界 / 加成 5-stage |
| BRAM ping-pong 同 cycle 讀寫衝突 | Day 2 sim | Xilinx BRAM WRITE_FIRST mode |
| AXI Stream tready/tvalid 卡死 | Day 4 sim | 加大 FIFO buffer |
| ZedBoard 上板出 X | Day 6 ILA | reset 同步 / AXI handshake debug |
| 時程不夠 | Day 5 卡關 | 只交 RTL sim,跳過上板 |

---

## 9. 簽核

- [x] 演算法 (§2) — Kyber 標準
- [x] 介面 (§3.2) — AXI-Stream 64-bit,跟 self-attention lab 一致
- [x] BU 4-stage pipeline (§4.3)
- [x] BRAM ping-pong + 24-bit 打包 (§4.4)
- [x] Cycle 預算 ~1936 (§5)
- [x] 一週時程 (§7)

**SPEC v1.0 (FINAL,確認後不再變動)**