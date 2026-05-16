`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// mod_multiplier.v -- pipelined modular multiplier (latency = 4)
// -----------------------------------------------------------------------------
// 結構:
//   Stage 0: 鎖存輸入 a, b           (對應 DSP48 內部 A/B input register)
//   Stage 1: a_reg * b_reg → product (對應 DSP48 內部 M/P register)
//   Stage 2~3: Barrett pipeline       (內 2 FF)
//
// 總介面 latency = 4 cycle → 完美對齊 Fig.4 Slice-A 上路 4 FF。
//
// DSP 使用: 1 個 DSP48E1。Vivado 合成時 a_reg, b_reg, product_reg 會被
//           完全吸收進 DSP48E1 內部 register,不佔 fabric LUT/FF。
// =============================================================================
module mod_multiplier (
    input                       clk,
    input                       rst_n,
    input  [`DATA_WIDTH-1:0]    a,
    input  [`DATA_WIDTH-1:0]    b,
    output [`DATA_WIDTH-1:0]    result
);
    // ========================================================================
    // Stage 0: input register (DSP48 A/B reg)
    // ========================================================================
    reg [`DATA_WIDTH-1:0] a_reg, b_reg;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            a_reg <= 0;
            b_reg <= 0;
        end else begin
            a_reg <= a;
            b_reg <= b;
        end
    end

    // ========================================================================
    // Stage 1: multiplication + output register (DSP48 M/P reg)
    //   16×16 → 32-bit; 取低 24-bit (因 (q-1)^2 < 2^24)
    // ========================================================================
    wire [31:0] product = a_reg * b_reg;
    reg  [23:0] product_reg;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) product_reg <= 24'd0;
        else        product_reg <= product[23:0];
    end

    // ========================================================================
    // Stage 2~3: Barrett reduction (sequential, latency = 2)
    //   result 是 wire (Barrett 內 ±q 校正組合輸出)
    // ========================================================================
    barrett_reduction br_inst (
        .clk    (clk),
        .rst_n  (rst_n),
        .a      (product_reg),
        .result (result)
    );
endmodule