`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// mod_sub.v -- Modified modular subtractor (Li-Tian TCAD 2023, Fig.6)
// -----------------------------------------------------------------------------
// op = 0:  result = (a - b) mod' q       (NTT/CWM mode)
// op = 1:  result = (a - b)/2 mod' q     (INTT mode, fused ÷2)
//
// 輸出 ∈ [0, 4096),redundant representation。
//
// u = a - b 用 13-bit 2's complement:
//   a >= b: u[12] = 0,u 在 [0, 4096)
//   a <  b: u[12] = 1,u 在 [4096, 8192) 表示「邏輯為負」
//
// Truth table:
//   op  u[12]  u[0]  |  base    addend     result
//   0    0      x    |  u        0         u
//   0    1      x    |  u        +3329     u + 3329
//   1    0      0    |  u_star   0         u_star
//   1    0      1    |  u_star   +1665     u_star + 1665
//   1    1      0    |  u_star   +3329     u_star + 3329  (負且偶)
//   1    1      1    |  u_star   +1665     u_star + 1665  (負且奇)
// =============================================================================
module mod_subtractor (
    input                        op,
    input  [`DATA_WIDTH-1:0]     a,
    input  [`DATA_WIDTH-1:0]     b,
    output [`DATA_WIDTH-1:0]     result
);
    wire [12:0] u      = {1'b0, a[11:0]} - {1'b0, b[11:0]};   // 13-bit 2's complement
    wire [11:0] u_star = u[12:1];

    reg [12:0]        base;
    reg signed [12:0] addend;

    always @(*) begin
        if (op == 1'b0) begin
            base   = u;
            addend = u[12] ? 13'sd3329 : 13'sd0;
        end else begin
            base   = {1'b0, u_star};
            case ({u[12], u[0]})
                2'b00: addend = 13'sd0;
                2'b01: addend = 13'sd1665;
                2'b10: addend = 13'sd3329;
                2'b11: addend = 13'sd1665;
            endcase
        end
    end

    wire signed [13:0] sum_signed = $signed({1'b0, base}) + addend;
    assign result = {{(`DATA_WIDTH-12){1'b0}}, sum_signed[11:0]};
endmodule