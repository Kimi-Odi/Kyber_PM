`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// zetas_rom.v -- 硬編碼 ROM (IP 化安全版,不依賴外部 .memh)
// -----------------------------------------------------------------------------
// 用 initial block 直接寫入 mem,Vivado synthesis 推斷成 ROM。
// 跟原 $readmemh 版功能完全相同,但 IP 打包/上板不會有路徑問題。
// 值來自 ref_model.py 產生的 memh (FIPS 203 App.A)。
// =============================================================================
module zetas_rom #(
    parameter INIT_FILE = ""   // 保留參數相容性,實際不用
)(
    input  wire                   clk,
    input  wire                   en,
    input  wire [6:0]             addr,
    output reg  [`DATA_WIDTH-1:0] dout
);

    reg [`DATA_WIDTH-1:0] mem [0:127];

    initial begin
        mem[  0] = 16'h001;
        mem[  1] = 16'h6c1;
        mem[  2] = 16'ha14;
        mem[  3] = 16'hcd9;
        mem[  4] = 16'ha52;
        mem[  5] = 16'h276;
        mem[  6] = 16'h769;
        mem[  7] = 16'h350;
        mem[  8] = 16'h426;
        mem[  9] = 16'h77f;
        mem[ 10] = 16'h0c1;
        mem[ 11] = 16'h31d;
        mem[ 12] = 16'hae2;
        mem[ 13] = 16'hcbc;
        mem[ 14] = 16'h239;
        mem[ 15] = 16'h6d2;
        mem[ 16] = 16'h128;
        mem[ 17] = 16'h98f;
        mem[ 18] = 16'h53b;
        mem[ 19] = 16'h5c4;
        mem[ 20] = 16'hbe6;
        mem[ 21] = 16'h038;
        mem[ 22] = 16'h8c0;
        mem[ 23] = 16'h535;
        mem[ 24] = 16'h592;
        mem[ 25] = 16'h82e;
        mem[ 26] = 16'h217;
        mem[ 27] = 16'hb42;
        mem[ 28] = 16'h959;
        mem[ 29] = 16'hb3f;
        mem[ 30] = 16'h7b6;
        mem[ 31] = 16'h335;
        mem[ 32] = 16'h121;
        mem[ 33] = 16'h14b;
        mem[ 34] = 16'hcb5;
        mem[ 35] = 16'h6dc;
        mem[ 36] = 16'h4ad;
        mem[ 37] = 16'h900;
        mem[ 38] = 16'h8e5;
        mem[ 39] = 16'h807;
        mem[ 40] = 16'h28a;
        mem[ 41] = 16'h7b9;
        mem[ 42] = 16'h9d1;
        mem[ 43] = 16'h278;
        mem[ 44] = 16'hb31;
        mem[ 45] = 16'h021;
        mem[ 46] = 16'h528;
        mem[ 47] = 16'h77b;
        mem[ 48] = 16'h90f;
        mem[ 49] = 16'h59b;
        mem[ 50] = 16'h327;
        mem[ 51] = 16'h1c4;
        mem[ 52] = 16'h59e;
        mem[ 53] = 16'hb34;
        mem[ 54] = 16'h5fe;
        mem[ 55] = 16'h962;
        mem[ 56] = 16'ha57;
        mem[ 57] = 16'ha39;
        mem[ 58] = 16'h5c9;
        mem[ 59] = 16'h288;
        mem[ 60] = 16'h9aa;
        mem[ 61] = 16'hc26;
        mem[ 62] = 16'h4cb;
        mem[ 63] = 16'h38e;
        mem[ 64] = 16'h011;
        mem[ 65] = 16'hac9;
        mem[ 66] = 16'h247;
        mem[ 67] = 16'ha59;
        mem[ 68] = 16'h665;
        mem[ 69] = 16'h2d3;
        mem[ 70] = 16'h8f0;
        mem[ 71] = 16'h44c;
        mem[ 72] = 16'h581;
        mem[ 73] = 16'ha66;
        mem[ 74] = 16'hcd1;
        mem[ 75] = 16'h0e9;
        mem[ 76] = 16'h2f4;
        mem[ 77] = 16'h86c;
        mem[ 78] = 16'hbc7;
        mem[ 79] = 16'hbea;
        mem[ 80] = 16'h6a7;
        mem[ 81] = 16'h673;
        mem[ 82] = 16'hae5;
        mem[ 83] = 16'h6fd;
        mem[ 84] = 16'h737;
        mem[ 85] = 16'h3b8;
        mem[ 86] = 16'h5b5;
        mem[ 87] = 16'ha7f;
        mem[ 88] = 16'h3ab;
        mem[ 89] = 16'h904;
        mem[ 90] = 16'h985;
        mem[ 91] = 16'h954;
        mem[ 92] = 16'h2dd;
        mem[ 93] = 16'h921;
        mem[ 94] = 16'h10c;
        mem[ 95] = 16'h281;
        mem[ 96] = 16'h630;
        mem[ 97] = 16'h8fa;
        mem[ 98] = 16'h7f5;
        mem[ 99] = 16'hc94;
        mem[100] = 16'h177;
        mem[101] = 16'h9f5;
        mem[102] = 16'h82a;
        mem[103] = 16'h66d;
        mem[104] = 16'h427;
        mem[105] = 16'h13f;
        mem[106] = 16'had5;
        mem[107] = 16'h2f5;
        mem[108] = 16'h833;
        mem[109] = 16'h231;
        mem[110] = 16'h9a2;
        mem[111] = 16'ha22;
        mem[112] = 16'haf4;
        mem[113] = 16'h444;
        mem[114] = 16'h193;
        mem[115] = 16'h402;
        mem[116] = 16'h477;
        mem[117] = 16'h866;
        mem[118] = 16'had7;
        mem[119] = 16'h376;
        mem[120] = 16'h6ba;
        mem[121] = 16'h4bc;
        mem[122] = 16'h752;
        mem[123] = 16'h405;
        mem[124] = 16'h83e;
        mem[125] = 16'hb77;
        mem[126] = 16'h375;
        mem[127] = 16'h86a;
    end

    always @(posedge clk) begin
        if (en) dout <= mem[addr];
    end

endmodule