# Kyber Polynomial Multiplier on ZedBoard

NTT 加速的 Kyber 環多項式乘法硬體加速器，於 ZedBoard (Zynq-7020) 實機驗證。

```
c(x) = a(x) · b(x)  mod (X²⁵⁶ + 1),   q = 3329
     = INTT( PWM( NTT(a), NTT(b) ) )
```

| | |
|---|---|
| **平台** | ZedBoard (Zynq-7020, xc7z020clg484-1), Vivado / SDK 2019.1 |
| **介面** | AXI4-Stream + DMA，SD 卡載測資 (xilffs) |
| **參考** | Li, Tian, Hu, Wang, IEEE TCAD 2023 (Fig.4 BU / Fig.5 Barrett / Fig.6 mod add-sub) |
| **狀態** | 14 testbench 全 PASS · timing 收斂 @ 90 MHz · 實機驗證通過 |

---

## 這是什麼

CRYSTALS-Kyber (FIPS 203) 後量子密碼學的核心運算 — 環多項式乘法。
用 Number Theoretic Transform 把 O(n²) 的乘法降到 O(n log n)，
全程在 PL (FPGA) 硬體完成，PS (ARM) 透過 DMA 餵資料。

- **7-layer incomplete NTT** (n=256, q=3329, ζ=17)
- **Dual-Butterfly** 平行 odd/even
- **Barrett reduction** 0 DSP
- **Fused INTT** 省最後 ×128⁻¹
- **5-parallel PWM** binomial 乘法
- 純加速器：**2071 LUT / 7 DSP / 4 BRAM** (Zynq-7020 約 4%)
- 計算延遲：**1647 cycle ≈ 18.3 μs @ 90 MHz**

---

## 目錄結構

```
.
├── README.md            ← 本檔（入口）
├── spec.md              ← 完整技術規格書（規格＋介面＋操作，659 行）
├── ref_model.py         Python 參考模型（golden 產生器）
├── rtl/                 18 個 Verilog 原始檔
├── tb/                  14 個 testbench
├── sim/data/            .memh 測資（模擬用）
├── sdk/main.c           ZedBoard SDK C app（SD＋DMA＋三方驗證）
├── sd_card/             40 個 .dat（pm_in/gold 0..19，上板用）
└── sd_card_20cases.zip  上述 40 檔打包（解壓進 SD 卡根目錄）
```

---

## 快速開始

### 跑 RTL 模擬（最快，~10 秒）

```bash
iverilog -g2012 -Irtl -o /tmp/x \
  rtl/kyber_params.v rtl/barret_reduction.v rtl/mod_add.v rtl/mod_sub.v \
  rtl/mod_multiplier.v rtl/butterfly_unit.v rtl/dual_butterfly_unit.v \
  rtl/bram_128x24.v rtl/zetas_rom.v rtl/zetas_pwm_rom.v rtl/addr_gen.v \
  rtl/pwm_unit.v rtl/polymul_top.v tb/tb_polymul.v
vvp /tmp/x
# 預期：[tb_polymul] PASS  a*b mod (X^256+1) verified (128 entries, 1647 cycle)
```

### 上板（ZedBoard）

四步驟，詳見 `spec.md` §8：

1. **IP 打包** — Vivado top = `polymul_axi_top`，用原版 `INPUT_STREAM_if.v`
2. **Block Design** — Zynq PS + AXI DMA(32-bit) + SmartConnect + 本 IP
3. **SD 卡** — 解壓 `sd_card_20cases.zip`，40 個 .dat 放 FAT32 根目錄
4. **SDK** — 匯入 `sdk/main.c`，BSP 勾 xilffs + use_lfn=1，Run

實機成功 = SDK Terminal 顯示 `SUMMARY: ALL PASS`，三方驗證
（PS-software vs PL-hardware vs golden）全 MATCH。

---

## 資料流

```
SD card ──► DDR ──DMA MM2S──► [ polymul_axi_top (PL) ]
                                 │
                          LOAD → NTT(a) → NTT(b) → PWM → INTT → STORE
                                 │
              DDR ◄──DMA S2MM──► c
```

SDK Terminal 完整呈現五階段（a → NTT → PWM → INTT → c），
左側為 PS 軟體逐步運算、右側為 PL 硬體一次算完，三方比對驗證正確性。

---

## 重點注意

| 項目 | 說明 |
|------|------|
| 不需 .memh | twiddle ROM 已硬編碼於 .v，IP 化不依賴外部檔 |
| 模擬用 _sim | iverilog 模擬用 `INPUT_STREAM_if_sim.v`（ILA define 已註解） |
| DMA 寬度 32 | Memory Map / Stream Data Width 都設 32-bit（非 64） |
| 頻率 90 MHz | 100 MHz timing 不收斂，降 90 MHz |
| redundant rep | 硬體輸出與 golden raw bits 可能不同，mod q 後等價（正常） |

---

## 驗證概要

```
Python ref_model (schoolbook + NTT 雙重交叉驗證)
   ↓
RTL 模擬 14 testbench (36000+ 驗證點全 PASS)
   ↓
Vivado synth + impl (timing 收斂 @ 90 MHz, Failed Routes = 0)
   ↓
ZedBoard 實機 20 組測資（含零/最大值/單項式/平方等邊界 case）
   三方驗證全 MATCH
```

完整內容見 **`spec.md`**：模組規格、port 定義、cycle 拆解、
資源分析、4 大 bug 修正、操作流程、Troubleshooting。

---

*詳細技術規格請參閱 `spec.md`。*