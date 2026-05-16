`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// zetas_pwm_rom.v -- 硬編碼 ROM (IP 化安全版,不依賴外部 .memh)
// -----------------------------------------------------------------------------
// 用 initial block 直接寫入 mem,Vivado synthesis 推斷成 ROM。
// 跟原 $readmemh 版功能完全相同,但 IP 打包/上板不會有路徑問題。
// 值來自 ref_model.py 產生的 memh (FIPS 203 App.A)。
// =============================================================================
module zetas_pwm_rom #(
    parameter INIT_FILE = ""   // 保留參數相容性,實際不用
)(
    input  wire                   clk,
    input  wire                   en,
    input  wire [6:0]             addr,
    output reg  [`DATA_WIDTH-1:0] dout
);

    reg [`DATA_WIDTH-1:0] mem [0:127];

    initial begin
        mem[  0] = 16'h011;
        mem[  1] = 16'hcf0;
        mem[  2] = 16'hac9;
        mem[  3] = 16'h238;
        mem[  4] = 16'h247;
        mem[  5] = 16'haba;
        mem[  6] = 16'ha59;
        mem[  7] = 16'h2a8;
        mem[  8] = 16'h665;
        mem[  9] = 16'h69c;
        mem[ 10] = 16'h2d3;
        mem[ 11] = 16'ha2e;
        mem[ 12] = 16'h8f0;
        mem[ 13] = 16'h411;
        mem[ 14] = 16'h44c;
        mem[ 15] = 16'h8b5;
        mem[ 16] = 16'h581;
        mem[ 17] = 16'h780;
        mem[ 18] = 16'ha66;
        mem[ 19] = 16'h29b;
        mem[ 20] = 16'hcd1;
        mem[ 21] = 16'h030;
        mem[ 22] = 16'h0e9;
        mem[ 23] = 16'hc18;
        mem[ 24] = 16'h2f4;
        mem[ 25] = 16'ha0d;
        mem[ 26] = 16'h86c;
        mem[ 27] = 16'h495;
        mem[ 28] = 16'hbc7;
        mem[ 29] = 16'h13a;
        mem[ 30] = 16'hbea;
        mem[ 31] = 16'h117;
        mem[ 32] = 16'h6a7;
        mem[ 33] = 16'h65a;
        mem[ 34] = 16'h673;
        mem[ 35] = 16'h68e;
        mem[ 36] = 16'hae5;
        mem[ 37] = 16'h21c;
        mem[ 38] = 16'h6fd;
        mem[ 39] = 16'h604;
        mem[ 40] = 16'h737;
        mem[ 41] = 16'h5ca;
        mem[ 42] = 16'h3b8;
        mem[ 43] = 16'h949;
        mem[ 44] = 16'h5b5;
        mem[ 45] = 16'h74c;
        mem[ 46] = 16'ha7f;
        mem[ 47] = 16'h282;
        mem[ 48] = 16'h3ab;
        mem[ 49] = 16'h956;
        mem[ 50] = 16'h904;
        mem[ 51] = 16'h3fd;
        mem[ 52] = 16'h985;
        mem[ 53] = 16'h37c;
        mem[ 54] = 16'h954;
        mem[ 55] = 16'h3ad;
        mem[ 56] = 16'h2dd;
        mem[ 57] = 16'ha24;
        mem[ 58] = 16'h921;
        mem[ 59] = 16'h3e0;
        mem[ 60] = 16'h10c;
        mem[ 61] = 16'hbf5;
        mem[ 62] = 16'h281;
        mem[ 63] = 16'ha80;
        mem[ 64] = 16'h630;
        mem[ 65] = 16'h6d1;
        mem[ 66] = 16'h8fa;
        mem[ 67] = 16'h407;
        mem[ 68] = 16'h7f5;
        mem[ 69] = 16'h50c;
        mem[ 70] = 16'hc94;
        mem[ 71] = 16'h06d;
        mem[ 72] = 16'h177;
        mem[ 73] = 16'hb8a;
        mem[ 74] = 16'h9f5;
        mem[ 75] = 16'h30c;
        mem[ 76] = 16'h82a;
        mem[ 77] = 16'h4d7;
        mem[ 78] = 16'h66d;
        mem[ 79] = 16'h694;
        mem[ 80] = 16'h427;
        mem[ 81] = 16'h8da;
        mem[ 82] = 16'h13f;
        mem[ 83] = 16'hbc2;
        mem[ 84] = 16'had5;
        mem[ 85] = 16'h22c;
        mem[ 86] = 16'h2f5;
        mem[ 87] = 16'ha0c;
        mem[ 88] = 16'h833;
        mem[ 89] = 16'h4ce;
        mem[ 90] = 16'h231;
        mem[ 91] = 16'had0;
        mem[ 92] = 16'h9a2;
        mem[ 93] = 16'h35f;
        mem[ 94] = 16'ha22;
        mem[ 95] = 16'h2df;
        mem[ 96] = 16'haf4;
        mem[ 97] = 16'h20d;
        mem[ 98] = 16'h444;
        mem[ 99] = 16'h8bd;
        mem[100] = 16'h193;
        mem[101] = 16'hb6e;
        mem[102] = 16'h402;
        mem[103] = 16'h8ff;
        mem[104] = 16'h477;
        mem[105] = 16'h88a;
        mem[106] = 16'h866;
        mem[107] = 16'h49b;
        mem[108] = 16'had7;
        mem[109] = 16'h22a;
        mem[110] = 16'h376;
        mem[111] = 16'h98b;
        mem[112] = 16'h6ba;
        mem[113] = 16'h647;
        mem[114] = 16'h4bc;
        mem[115] = 16'h845;
        mem[116] = 16'h752;
        mem[117] = 16'h5af;
        mem[118] = 16'h405;
        mem[119] = 16'h8fc;
        mem[120] = 16'h83e;
        mem[121] = 16'h4c3;
        mem[122] = 16'hb77;
        mem[123] = 16'h18a;
        mem[124] = 16'h375;
        mem[125] = 16'h98c;
        mem[126] = 16'h86a;
        mem[127] = 16'h497;
    end

    always @(posedge clk) begin
        if (en) dout <= mem[addr];
    end

endmodule