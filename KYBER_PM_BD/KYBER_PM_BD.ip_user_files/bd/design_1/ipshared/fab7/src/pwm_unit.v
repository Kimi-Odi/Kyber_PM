`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// pwm_unit.v -- Pointwise (Binomial) Multiplication
// -----------------------------------------------------------------------------
// 5 個並列 mod_multiplier (latency=4 each, pipelined)
//
// 演算法 (Kyber base multiplication mod (X² - γ)):
//   m0 = a0·b0
//   m1 = a1·b1
//   m2 = a0·b1
//   m3 = a1·b0
//   m4 = m1·γ
//   c0 = m0 + m4 (mod q)
//   c1 = m2 + m3 (mod q)
//
// Cycle 走查 (T=0 = valid_in 在 negedge 拉起後的 posedge):
//   T=1:  Stage 0 input FF 鎖存 a0_s0..b1_s0, gamma_s0
//   T=2:  mod_multiplier_0..3 內部 input FF 鎖存
//   T=5:  m0_w, m1_w, m2_w, m3_w (wire) 有效 (mod_mul latency=4)
//         gamma_d[3] 對齊 (gamma_s0 經 4 cycle 延遲)
//   T=6:  mul_4 input FF 鎖存 (m1_w, gamma_d[3])
//         同步 m0_d[0] <= m0_w, m2_d[0] <= m2_w, m3_d[0] <= m3_w
//   T=9:  m4_w 有效 (mul_4 latency=4)
//         m0_d[3], m2_d[3], m3_d[3] 也對齊 (4 cycle shift 從 T=6 開始)
//   T=10: c_pkt 輸出 FF 鎖存 (= valid_out)
//
// 整體 latency = 10 cycle
// Throughput = 1 binomial/cycle
// 資源: 5 × mod_multiplier (5 × DSP48E1) + 2 × mod_adder (LUT)
// =============================================================================
module pwm_unit (
    input  wire                    clk,
    input  wire                    rst_n,
    input  wire [23:0]             a_pkt,    // {a1[11:0], a0[11:0]}
    input  wire [23:0]             b_pkt,    // {b1[11:0], b0[11:0]}
    input  wire [`DATA_WIDTH-1:0]  gamma,
    input  wire                    valid_in,
    output reg  [23:0]             c_pkt,    // {c1[11:0], c0[11:0]}
    output reg                     valid_out
);

    // ========================================================================
    // Stage 0: 輸入 FF + 同時 reduce 到 < q (redundant rep cleanup)
    //   NTT 結果在 BRAM 是 [0, 4096) (redundant rep),可能 >= q
    //   Barrett 設計範圍假設輸入 < (q-1)²,因此 a, b 必須先 < q
    // ========================================================================
    reg [11:0]              a0_s0, a1_s0, b0_s0, b1_s0;
    reg [`DATA_WIDTH-1:0]   gamma_s0;
    reg                     valid_s0;

    // 組合 reduce
    wire [11:0] a0_in = a_pkt[11: 0];
    wire [11:0] a1_in = a_pkt[23:12];
    wire [11:0] b0_in = b_pkt[11: 0];
    wire [11:0] b1_in = b_pkt[23:12];
    wire [11:0] g_in  = gamma[11:0];
    wire [11:0] a0_red = (a0_in >= 12'd3329) ? a0_in - 12'd3329 : a0_in;
    wire [11:0] a1_red = (a1_in >= 12'd3329) ? a1_in - 12'd3329 : a1_in;
    wire [11:0] b0_red = (b0_in >= 12'd3329) ? b0_in - 12'd3329 : b0_in;
    wire [11:0] b1_red = (b1_in >= 12'd3329) ? b1_in - 12'd3329 : b1_in;
    wire [11:0] g_red  = (g_in  >= 12'd3329) ? g_in  - 12'd3329 : g_in;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            a0_s0 <= 0; a1_s0 <= 0; b0_s0 <= 0; b1_s0 <= 0;
            gamma_s0 <= 0;
            valid_s0 <= 1'b0;
        end else begin
            a0_s0    <= a0_red;
            a1_s0    <= a1_red;
            b0_s0    <= b0_red;
            b1_s0    <= b1_red;
            gamma_s0 <= {4'd0, g_red};
            valid_s0 <= valid_in;
        end
    end

    // ========================================================================
    // 4 個並列 mod_multiplier (m0..m3)
    // 輸入 T=1 鎖存 → result wire 在 T=5+ε 有效
    // ========================================================================
    wire [`DATA_WIDTH-1:0] m0_w, m1_w, m2_w, m3_w;

    mod_multiplier u_mul_0 (.clk(clk), .rst_n(rst_n),
        .a({{(`DATA_WIDTH-12){1'b0}}, a0_s0}),
        .b({{(`DATA_WIDTH-12){1'b0}}, b0_s0}),
        .result(m0_w));
    mod_multiplier u_mul_1 (.clk(clk), .rst_n(rst_n),
        .a({{(`DATA_WIDTH-12){1'b0}}, a1_s0}),
        .b({{(`DATA_WIDTH-12){1'b0}}, b1_s0}),
        .result(m1_w));
    mod_multiplier u_mul_2 (.clk(clk), .rst_n(rst_n),
        .a({{(`DATA_WIDTH-12){1'b0}}, a0_s0}),
        .b({{(`DATA_WIDTH-12){1'b0}}, b1_s0}),
        .result(m2_w));
    mod_multiplier u_mul_3 (.clk(clk), .rst_n(rst_n),
        .a({{(`DATA_WIDTH-12){1'b0}}, a1_s0}),
        .b({{(`DATA_WIDTH-12){1'b0}}, b0_s0}),
        .result(m3_w));

    // ========================================================================
    // gamma 延遲 4 cycle,對齊 m1_w 餵 mul_4
    // ========================================================================
    reg [`DATA_WIDTH-1:0] gamma_d [0:3];
    reg                   valid_d [0:3];
    integer di;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (di = 0; di < 4; di = di + 1) begin
                gamma_d[di] <= 0;
                valid_d[di] <= 1'b0;
            end
        end else begin
            gamma_d[0] <= gamma_s0;
            valid_d[0] <= valid_s0;
            for (di = 1; di < 4; di = di + 1) begin
                gamma_d[di] <= gamma_d[di-1];
                valid_d[di] <= valid_d[di-1];
            end
        end
    end

    // ========================================================================
    // mul_4 = m1·γ
    // 從 m1_w (T=5+ε 有效) 經 mod_mul 4 cycle → m4_w T=9+ε 有效
    // ========================================================================
    wire [`DATA_WIDTH-1:0] m4_w;
    mod_multiplier u_mul_4 (.clk(clk), .rst_n(rst_n),
        .a(m1_w),
        .b(gamma_d[3]),
        .result(m4_w));

    // ========================================================================
    // m0, m2, m3 延遲 4 cycle (= mul_4 latency) 等到 m4 出
    // T=6 posedge 開始鎖存 m0_d[0]..m3_d[0] (此時 m0_w..m3_w 已 T=5+ε 有效)
    // T=9+ε: m0_d[3], m2_d[3], m3_d[3] 對齊 m4_w
    // ========================================================================
    reg [`DATA_WIDTH-1:0] m0_d [0:3];
    reg [`DATA_WIDTH-1:0] m2_d [0:3];
    reg [`DATA_WIDTH-1:0] m3_d [0:3];
    reg                   valid_d2 [0:3];
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (di = 0; di < 4; di = di + 1) begin
                m0_d[di] <= 0; m2_d[di] <= 0; m3_d[di] <= 0;
                valid_d2[di] <= 1'b0;
            end
        end else begin
            m0_d[0] <= m0_w;
            m2_d[0] <= m2_w;
            m3_d[0] <= m3_w;
            valid_d2[0] <= valid_d[3];     // 跟 m_w 出現時間對齊
            for (di = 1; di < 4; di = di + 1) begin
                m0_d[di] <= m0_d[di-1];
                m2_d[di] <= m2_d[di-1];
                m3_d[di] <= m3_d[di-1];
                valid_d2[di] <= valid_d2[di-1];
            end
        end
    end

    // ========================================================================
    // Final adders (組合): c0 = m0 + m4, c1 = m2 + m3
    // ========================================================================
    wire [`DATA_WIDTH-1:0] c0_comb, c1_comb;
    mod_adder u_add_c0 (.op(1'b0), .a(m0_d[3]), .b(m4_w),    .result(c0_comb));
    mod_adder u_add_c1 (.op(1'b0), .a(m2_d[3]), .b(m3_d[3]), .result(c1_comb));

    // ========================================================================
    // Output FF
    // ========================================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            c_pkt     <= 24'd0;
            valid_out <= 1'b0;
        end else begin
            c_pkt     <= {c1_comb[11:0], c0_comb[11:0]};
            valid_out <= valid_d2[3];
        end
    end

endmodule