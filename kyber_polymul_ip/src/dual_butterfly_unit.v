`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// dual_butterfly_unit.v -- Dual-BU 並列處理 odd/even polynomial
// -----------------------------------------------------------------------------
// 對應 FIPS 203 Algorithm 9 line 7-9:
//   u1*X + u0 ← f[j]                  (binomial 形式)
//   t1*X + t0 ← f[j+k]
//   (U1, T1) ← BU_CT(u1, t1, ζ)       (odd  polynomial)
//   (U0, T0) ← BU_CT(u0, t0, ζ)       (even polynomial)
//
// BRAM entry 是 24-bit packed binomial:
//   [23:12] = odd  coef (X 項)
//   [11:0]  = even coef (constant 項)
//
// 兩個 BU 共用同一個 zeta、同一個 mode,只是接 BRAM entry 的 high/low 兩半。
//
// Latency = BU latency = 6 cycle (跟 single BU 一樣)
// =============================================================================
module dual_butterfly_unit #(
    parameter MODE_WIDTH = 2
)(
    input  wire                    clk,
    input  wire                    rst_n,
    input  wire [MODE_WIDTH-1:0]   mode,         // 00=CT, 01=GS
    // 24-bit binomial input (high=odd, low=even)
    input  wire [23:0]             data_a,       // f[j]    = {a_odd, a_even}
    input  wire [23:0]             data_b,       // f[j+k]  = {b_odd, b_even}
    input  wire [`DATA_WIDTH-1:0]  twiddle,      // 共用 zeta
    input  wire                    valid_in,
    // 24-bit binomial output
    output wire [23:0]             result_u,     // U = {U_odd, U_even}
    output wire [23:0]             result_t,     // T = {T_odd, T_even}
    output wire                    valid_out
);

    // 拆 24-bit binomial 成 odd / even
    wire [11:0] a_odd  = data_a[23:12];
    wire [11:0] a_even = data_a[11: 0];
    wire [11:0] b_odd  = data_b[23:12];
    wire [11:0] b_even = data_b[11: 0];

    // BU_odd 接 odd polynomial
    wire [`DATA_WIDTH-1:0] U_odd_w, T_odd_w;
    wire                   valid_odd_w;
    butterfly_unit #(.MODE_WIDTH(MODE_WIDTH)) u_bu_odd (
        .clk      (clk),
        .rst_n    (rst_n),
        .mode     (mode),
        .data_a   ({{(`DATA_WIDTH-12){1'b0}}, a_odd}),
        .data_b   ({{(`DATA_WIDTH-12){1'b0}}, b_odd}),
        .twiddle  (twiddle),
        .valid_in (valid_in),
        .result_a (U_odd_w),
        .result_b (T_odd_w),
        .valid_out(valid_odd_w)
    );

    // BU_even 接 even polynomial
    wire [`DATA_WIDTH-1:0] U_even_w, T_even_w;
    wire                   valid_even_w;
    butterfly_unit #(.MODE_WIDTH(MODE_WIDTH)) u_bu_even (
        .clk      (clk),
        .rst_n    (rst_n),
        .mode     (mode),
        .data_a   ({{(`DATA_WIDTH-12){1'b0}}, a_even}),
        .data_b   ({{(`DATA_WIDTH-12){1'b0}}, b_even}),
        .twiddle  (twiddle),
        .valid_in (valid_in),
        .result_a (U_even_w),
        .result_b (T_even_w),
        .valid_out(valid_even_w)
    );

    // Pack 兩個 BU 結果回 24-bit binomial
    assign result_u  = {U_odd_w[11:0],  U_even_w[11:0]};
    assign result_t  = {T_odd_w[11:0],  T_even_w[11:0]};
    // valid_odd 跟 valid_even 必同步 (兩個 BU 接同樣訊號)
    assign valid_out = valid_odd_w;

endmodule