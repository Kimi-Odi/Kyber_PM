`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// zetas_pwm_rom.v -- Twiddle ROM for PWM (γ table)
// -----------------------------------------------------------------------------
// 用途: 存 Kyber PWM (Algorithm 11) 用的 γ_i = ζ^(2·BitRev7(i)+1) mod q
//       FIPS 203 Appendix A 表 2 (128 個 12-bit 值)
//
// 跟 zetas_rom 結構一致 (128 × 16-bit, 1 cycle latency,可推 RAMB18)
// =============================================================================
module zetas_pwm_rom #(
    parameter INIT_FILE = "zetas_pwm.memh"
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