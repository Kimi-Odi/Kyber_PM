# Kyber Polynomial Multiplier on ZedBoard

Independent SoC course project implementing polynomial multiplication modulo x^256 + 1 with q = 3329 on Zynq-7020. Includes NTT/INTT, point-wise multiplication, an AXI4-Stream wrapper, and a PS-side DMA application.

## Source map

- `src/`: arithmetic, memories, NTT/PWM control, and AXI streaming RTL.
- `sim/`: 14 RTL testbenches.
- `mem/`: simulation vectors; `PATTERN/`: 20 input/output pairs for SD-card board tests.
- `golden/ref_model.py`: Python reference and vector generator.
- `c_code/main.c`: ZedBoard application (requires a generated Xilinx SDK BSP and xilffs).
- [SPEC.md](SPEC.md): original detailed design notes. Historical paths in these notes may differ from this source export; use the folders above.

## Simulation

Install Icarus Verilog and Python 3, then run from the repository root:

```sh
python run_tests.py
```

The runner creates an ignored build directory and stages memory files there. The simulation stream wrapper is used in place of the ILA-enabled hardware wrapper.

## Hardware integration

Use Vivado/SDK 2019.1 with a ZedBoard (xc7z020clg484-1). Recreate a Zynq PS + AXI DMA + streaming accelerator design, package `polymul_axi_top`, and configure the BSP for xilffs. Copy `PATTERN/*.dat` to the SD card. Generated block designs, BSPs and bitstreams are intentionally excluded; this is not a one-command board build.

The original notes report a core computation latency of 1,647 cycles (18.3 us at 90 MHz), separate from system transfer overhead. Resource numbers differ between the original README and other project materials, so consult the specific implementation report and design scope before citing a LUT count. Historical board-validation claims are documented in SPEC.md; board tests are not rerun during packaging.

## Export verification

2026-09-30: 14 RTL testbenches completed successfully with Icarus Verilog. See `run_tests.py` to rerun. Synthesis and board validation were not rerun.
