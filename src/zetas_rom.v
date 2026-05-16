`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// zetas_rom.v -- Twiddle factor ROM, 128 × 16-bit
// -----------------------------------------------------------------------------
// 用途: 存 Kyber 7-layer incomplete NTT 的 ξ table。
//       (低 12-bit 是 twiddle 值,高 4-bit 補 0,對齊 DATA_WIDTH=16)
//
// NTT 用: addr 由 ntt_ctrl 產生 (Cooley-Tukey 順序)
// INTT 用: 同一張表,addr 反向訪問 (k 從 127 倒數,fused INTT 已在 ref 處理)
//
// 結構: 單埠 ROM,1 cycle latency (output register)
//       Vivado 會推斷成 RAMB18 ROM 或 distributed ROM (視大小)
//
// 初始化: $readmemh("zetas.memh", mem) -- Python ref_model.py 產生
// =============================================================================
module zetas_rom #(
    parameter         INIT_FILE = "zetas.memh"
)(
    input  wire                        clk,
    input  wire                        en,
    input  wire [6:0]                  addr,
    output reg  [`DATA_WIDTH-1:0]      dout
);

    reg [`DATA_WIDTH-1:0] mem [0:127];

    initial begin
        if (INIT_FILE != "")
            $readmemh(INIT_FILE, mem);
    end

    always @(posedge clk) begin
        if (en) dout <= mem[addr];
    end

endmodule