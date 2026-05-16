`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// butterfly_unit.v -- Strict Fig.4 1st (NTT/INTT) implementation
// -----------------------------------------------------------------------------
// 6 個 MUX + 6 個 FF + folded GS path (跟 Li-Tian TCAD 2023 Fig.4 完全對齊)
//
// MUX 位置 (從左到右):
//   MUX1 (左上): Slice-A 上路入口
//                sel=0 (CT): 外部 u   sel=1 (GS): Slice-B 上路結果折返
//   MUX2 (左下): Slice-A 下路入口
//                sel=0 (CT): 外部 t   sel=1 (GS): Slice-B 下路結果折返
//   MUX3 (中上): Slice-B 上路入口
//                sel=0 (CT): Slice-A 上路 delay 結果   sel=1 (GS): 外部 u
//   MUX4 (中下): Slice-B 下路入口
//                sel=0 (CT): Slice-A 下路 mul 結果     sel=1 (GS): 外部 t
//   MUX5 (右上): 最終輸出 U
//                sel=0 (CT): Slice-B 上路 加法結果     sel=1 (GS): Slice-A 上路 delay 結果
//   MUX6 (右下): 最終輸出 T
//                sel=0 (CT): Slice-B 下路 減法結果     sel=1 (GS): Slice-A 下路 mul 結果
//
// 6 個 FF 位置:
//   FF_a1, FF_a2: 入口 MUX 後 (Slice-A 上下路入口)
//   Slice-A 上路內 4 FF: 純 4 級延遲 shift register
//   Slice-A 下路內 4 FF: DSP input + DSP M/P + Barrett 2 FF (在 mod_multiplier 內)
//   FF_b1, FF_b2: 中間 MUX 後 (Slice-B 入口)
//
// Slice-B 是純組合 (mod_adder/mod_subtractor with op=mode)
// MUX5/6 也是純組合,所以 result_a / result_b 是 wire 輸出
//
// Latency:
//   CT: 1 (FF_a) + 4 (Slice-A) + 1 (FF_b) + 0 (Slice-B 組合) = 6 cycle
//   GS: 1 (FF_b) + 0 (Slice-B 組合) + 1 (FF_a) + 4 (Slice-A) = 6 cycle
//
// 假設: 同一個 NTT/INTT 過程 mode 保持不變(由外部 FSM 控制),
//       不需要在 pipeline 內 per-stage 鎖存 mode。
// =============================================================================
module butterfly_unit #(
    parameter MODE_WIDTH = 2
)(
    input  wire                    clk,
    input  wire                    rst_n,
    input  wire [MODE_WIDTH-1:0]   mode,        // 00=CT, 01=GS, 10=PWM(reserved)
    input  wire [`DATA_WIDTH-1:0]  data_a,
    input  wire [`DATA_WIDTH-1:0]  data_b,
    input  wire [`DATA_WIDTH-1:0]  twiddle,     // CT 用 ξ,GS 用 ξ⁻¹ (由上層送進)
    input  wire                    valid_in,
    output wire [`DATA_WIDTH-1:0]  result_a,    // 組合輸出 (MUX5)
    output wire [`DATA_WIDTH-1:0]  result_b,    // 組合輸出 (MUX6)
    output wire                    valid_out    // 組合輸出 (跟 data 同步)
);

    localparam [MODE_WIDTH-1:0] MODE_CT  = 2'b00;
    localparam [MODE_WIDTH-1:0] MODE_GS  = 2'b01;
    localparam [MODE_WIDTH-1:0] MODE_PWM = 2'b10;

    // mode_sel = 1 表示 GS mode (走灰路徑)
    wire mode_sel = (mode == MODE_GS);

    // ========================================================================
    // Slice-B 組合邏輯 (純組合,給折返線使用,要在前面宣告)
    // mod_add 跟 mod_sub 的 op 訊號: GS 時 op=1 (÷2 fused),CT 時 op=0
    // ========================================================================
    wire [`DATA_WIDTH-1:0] sliceB_top_comb;  // mod_add 結果
    wire [`DATA_WIDTH-1:0] sliceB_bot_comb;  // mod_sub 結果
    wire [`DATA_WIDTH-1:0] b1_reg, b2_reg;   // FF_b1, FF_b2 輸出

    mod_adder      u_sliceB_add (
        .op    (mode_sel),
        .a     (b1_reg),
        .b     (b2_reg),
        .result(sliceB_top_comb)
    );
    mod_subtractor u_sliceB_sub (
        .op    (mode_sel),
        .a     (b1_reg),
        .b     (b2_reg),
        .result(sliceB_bot_comb)
    );

    // ========================================================================
    // MUX1, MUX2 + FF_a1, FF_a2  (Slice-A 入口)
    //   CT: 吃外部 u/t
    //   GS: 吃 Slice-B 結果 (折返)
    // ========================================================================
    wire [`DATA_WIDTH-1:0] mux1_out = mode_sel ? sliceB_top_comb : data_a;
    wire [`DATA_WIDTH-1:0] mux2_out = mode_sel ? sliceB_bot_comb : data_b;

    // ========================================================================
    // valid_a: GS 時延遲 1 cycle (因為 a_reg 鎖存的是「Slice-B 算完的 folded」,
    //          對應「上一個 cycle 餵進來的 valid_in」)
    //          CT 時直接 = valid_in (a_reg 鎖存的就是當前外部資料)
    // 同理:twiddle 在 GS 時也要延遲 1 cycle,才能跟 a_reg/folded data 對齊
    // ========================================================================
    reg                   valid_in_d1;
    reg [`DATA_WIDTH-1:0] twiddle_d1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            valid_in_d1 <= 1'b0;
            twiddle_d1  <= 0;
        end else begin
            valid_in_d1 <= valid_in;
            twiddle_d1  <= twiddle;
        end
    end
    wire                   valid_to_a   = mode_sel ? valid_in_d1 : valid_in;
    wire [`DATA_WIDTH-1:0] twiddle_to_a = mode_sel ? twiddle_d1  : twiddle;

    reg [`DATA_WIDTH-1:0] a1_reg, a2_reg;
    reg [`DATA_WIDTH-1:0] w_reg;
    reg                   valid_a;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            a1_reg  <= 0;
            a2_reg  <= 0;
            w_reg   <= 0;
            valid_a <= 1'b0;
        end else begin
            a1_reg  <= mux1_out;
            a2_reg  <= mux2_out;
            w_reg   <= twiddle_to_a;
            valid_a <= valid_to_a;
        end
    end

    // ========================================================================
    // Slice-A 上路: 4-stage shift register 純延遲
    // ========================================================================
    reg [`DATA_WIDTH-1:0]  upper_d [0:3];
    reg                    valid_upper [0:3];
    integer pi;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (pi = 0; pi < 4; pi = pi + 1) begin
                upper_d[pi]     <= 0;
                valid_upper[pi] <= 1'b0;
            end
        end else begin
            upper_d[0]     <= a1_reg;
            valid_upper[0] <= valid_a;
            for (pi = 1; pi < 4; pi = pi + 1) begin
                upper_d[pi]     <= upper_d[pi-1];
                valid_upper[pi] <= valid_upper[pi-1];
            end
        end
    end

    // ========================================================================
    // Slice-A 下路: mod_multiplier (內 4 FF: DSP input + DSP M/P + Barrett 2)
    // ========================================================================
    wire [`DATA_WIDTH-1:0] mul_out;
    mod_multiplier u_mul (
        .clk    (clk),
        .rst_n  (rst_n),
        .a      (w_reg),
        .b      (a2_reg),
        .result (mul_out)
    );

    // ========================================================================
    // MUX3, MUX4 + FF_b1, FF_b2  (Slice-B 入口)
    //   CT: 吃 Slice-A 上下路結果 (delayed_u / mul_out)
    //   GS: 吃外部 u/t (繞過 Slice-A,直接進 Slice-B)
    //
    // 注意: Slice-B 內 mod_subtractor 算 (b1_reg - b2_reg)。
    //       GS 要的數學是 (b - a)/2,所以:
    //         GS 時: b1_reg = data_b, b2_reg = data_a  ←  反過來
    //         CT 時: b1_reg = upper_d[3] (= a), b2_reg = mul_out (= t)
    //                這樣 mod_add  = a + t, mod_sub = a - t ✓
    // ========================================================================
    wire [`DATA_WIDTH-1:0] mux3_out = mode_sel ? data_b       : upper_d[3];
    wire [`DATA_WIDTH-1:0] mux4_out = mode_sel ? data_a       : mul_out;

    reg [`DATA_WIDTH-1:0] b1_reg_r, b2_reg_r;
    reg                   valid_b;
    assign b1_reg = b1_reg_r;
    assign b2_reg = b2_reg_r;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            b1_reg_r <= 0;
            b2_reg_r <= 0;
            valid_b  <= 1'b0;
        end else begin
            b1_reg_r <= mux3_out;
            b2_reg_r <= mux4_out;
            // CT: FF_b 的有效 = 4 cycle 前 valid_upper[3] (或 mul_out 對應的 valid)
            // GS: FF_b 的有效 = 當前 valid_in
            valid_b  <= mode_sel ? valid_in : valid_upper[3];
        end
    end

    // ========================================================================
    // MUX5, MUX6 (出口,純組合)
    //   CT: 輸出 Slice-B 加減法結果
    //   GS: 輸出 Slice-A 延遲 / 乘積結果
    // ========================================================================
    assign result_a = mode_sel ? upper_d[3] : sliceB_top_comb;
    assign result_b = mode_sel ? mul_out    : sliceB_bot_comb;

    // ========================================================================
    // valid_out (組合輸出,跟 result_a/b 同步)
    //   CT: 跟 Slice-B 結果同步 = valid_b
    //   GS: 跟 Slice-A 上下路結果同步 = valid_upper[3]
    // ========================================================================
    assign valid_out = mode_sel ? valid_upper[3] : valid_b;

endmodule