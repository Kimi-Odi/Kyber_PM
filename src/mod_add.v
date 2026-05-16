`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// mod_add.v -- Modified modular adder (Li-Tian TCAD 2023, Fig.6)
// -----------------------------------------------------------------------------
// op = 0:  result = (a + b) mod' q       (NTT/CWM mode)
// op = 1:  result = (a + b)/2 mod' q     (INTT mode, fused ÷2)
//
// 輸出 ∈ [0, 4096),redundant representation。
// 後續 Barrett 嚴格 reduce 到 [0, q)。
//
// 2^{-1} mod 3329 = 1665
//
// Truth table:
//   op  u[12]  u[0]  |  base   addend     result
//   0    0      x    |  u       0         u
//   0    1      x    |  u       -3329     u - 3329
//   1    0      0    |  u_star  0         u_star
//   1    0      1    |  u_star  +1665     u_star + 1665
//   1    1      0    |  u_star  0         u_star
//   1    1      1    |  u_star  -1664     u_star - 1664
// =============================================================================
module mod_adder (
    input                        op,
    input  [`DATA_WIDTH-1:0]     a,
    input  [`DATA_WIDTH-1:0]     b,
    output [`DATA_WIDTH-1:0]     result
);
    wire [12:0] u      = a[11:0] + b[11:0];     // 13-bit sum
    wire [11:0] u_star = u[12:1];                // u >> 1

    // base 用完整 13-bit 表示 (不截掉 MSB)
    // 這樣加 -3329 後直接得到正確的 12-bit 結果
    reg [12:0]        base;
    reg signed [12:0] addend;

    always @(*) begin
        if (op == 1'b0) begin
            base   = u;
            addend = u[12] ? -13'sd3329 : 13'sd0;
        end else begin
            base   = {1'b0, u_star};            // 12-bit u_star 補 0 對齊 13-bit
            case ({u[12], u[0]})
                2'b00: addend =  13'sd0;
                2'b01: addend =  13'sd1665;
                2'b10: addend =  13'sd0;
                2'b11: addend = -13'sd1664;     // = 1665 - 3329
            endcase
        end
    end

    wire signed [13:0] sum_signed = $signed({1'b0, base}) + addend;
    assign result = {{(`DATA_WIDTH-12){1'b0}}, sum_signed[11:0]};
endmodule