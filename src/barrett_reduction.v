`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// barret_reduction.v -- Li-Tian (TCAD 2023) Fig.5 strict implementation
// -----------------------------------------------------------------------------
// 2-stage pipeline,FF 位置嚴格按 Fig.5:
//
//   Stage 1 (FF #1, #2, #3): 鎖存 Q1', c0, c1[5:0]  (Segment 1 後)
//   Stage 2 (FF #4):        鎖存 R[13:0]  (Segment 2+3 減法後)
//   ±q 校正:                組合,在 Stage 2 FF 之後,輸出 r 是 wire
//
// 整體 latency = 2 cycle (a 輸入鎖存到 result 穩定)
//
// 參數: (ρ1, ρ2, σ) = (3, 0, 6),論文 Table I 最佳組合
// =============================================================================
module barrett_reduction (
    input                       clk,
    input                       rst_n,
    input  [23:0]               a,
    output [`DATA_WIDTH-1:0]    result    // wire (組合輸出,跟下級接組合 mux)
);

    // ========================================================================
    // Combinational: Segment 1  (估計 Q1' ≈ ⌊c1/13⌋)
    // ========================================================================
    wire [15:0] c1 = a[23:8];
    wire [ 7:0] c0 = a[ 7:0];

    wire [12:0] d1 = c1[15:3] + c1[15:5];                   // c1>>3 + c1>>5
    wire [12:0] d2 = d1 - {6'd0, d1[12:6]};                  // d1 - d1>>6
    wire [11:0] Q1_comb = d2[12:1];                          // d2 >> 1

    // ========================================================================
    // Stage 1 register: 鎖存 Q1', c0, c1[5:0]
    //   對應 Fig.5 的 FF #1 (Q1'), FF #2 (c0), FF #3 (c1[5:0])
    // ========================================================================
    reg [11:0] Q1_s1;
    reg [ 7:0] c0_s1;
    reg [ 5:0] c1_s1;     // 只需 c1[5:0] (Segment 2 只用到低 6 位)

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            Q1_s1 <= 12'd0;
            c0_s1 <= 8'd0;
            c1_s1 <= 6'd0;
        end else begin
            Q1_s1 <= Q1_comb;
            c0_s1 <= c0;
            c1_s1 <= c1[5:0];
        end
    end

    // ========================================================================
    // Combinational: Segment 2 (r1' = c1 - Q1'·13 in σ=6 SIGNED)
    //               + Segment 3 減法 (R = {r1', c0} - Q1')
    // ========================================================================
    wire [5:0] s1 = c1_s1 - {Q1_s1[2:0], 3'b0};             // c1[5:0] - Q1'[2:0]·8
    wire [5:0] s2 = {Q1_s1[3:0], 2'b0} + Q1_s1[5:0];         // Q1'[3:0]·4 + Q1'[5:0]
    wire [5:0] r1 = s1 - s2;                                  // = c1 - Q1'·13 (low 6 bits, signed)

    // R = r1'·256 + c0 - Q1' (14-bit signed)
    wire signed [13:0] r1_c0_signed = {{6{r1[5]}}, r1[5:0], c0_s1};
    wire signed [13:0] Q1_signed    = {2'b00, Q1_s1};
    wire signed [13:0] R_comb       = r1_c0_signed - Q1_signed;

    // ========================================================================
    // Stage 2 register: 鎖存 R[13:0]  (對應 Fig.5 的 FF #4)
    // ========================================================================
    reg signed [13:0] R_s2;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) R_s2 <= 14'sd0;
        else        R_s2 <= R_comb;
    end

    // ========================================================================
    // Combinational after Stage 2: ±q 校正  → 組合輸出 r
    //   Fig.5 右下: R[13] mux 選 -3329 或 +3329,加到 R 上;再用 ≥3329 mux
    //               選最終結果
    // ========================================================================
    wire signed [13:0] R_plus_q  = R_s2 + 14'sd3329;
    wire signed [13:0] R_minus_q = R_s2 - 14'sd3329;

    wire [12:0] r_chosen = R_s2[13]                  ? R_plus_q[12:0]      // R 為負 → +q
                         : (R_s2[12:0] >= 13'd3329)  ? R_minus_q[12:0]     // R ≥ q  → -q
                         :                              R_s2[12:0];        // 否則直接輸出

    assign result = {{(`DATA_WIDTH-13){1'b0}}, r_chosen};

endmodule