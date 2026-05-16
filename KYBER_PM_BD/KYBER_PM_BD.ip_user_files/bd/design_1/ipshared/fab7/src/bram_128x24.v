`timescale 1ns/1ps
// =============================================================================
// bram_128x24.v -- True dual-port BRAM, 128 entries × 24 bits
// -----------------------------------------------------------------------------
// 用途: Kyber polynomial coefficient storage (ping-pong BRAM_A / BRAM_B)
//       每個 24-bit entry 存 {odd_coef[11:0], even_coef[11:0]}
//
// 結構: True dual-port, 兩埠可獨立 read/write
//       Output register 1 cycle latency (Xilinx RAMB18 標準)
//       Vivado 會自動推斷成 RAMB18 (或 RAMB36 視情況)
//
// 模擬時可用 INIT_FILE 載入初值 (空字串 = 不載)
// =============================================================================
module bram_128x24 #(
    parameter         INIT_FILE = ""
)(
    input  wire        clk,

    // Port A
    input  wire        ena,
    input  wire        wea,
    input  wire [6:0]  addra,
    input  wire [23:0] dina,
    output reg  [23:0] douta,

    // Port B
    input  wire        enb,
    input  wire        web,
    input  wire [6:0]  addrb,
    input  wire [23:0] dinb,
    output reg  [23:0] doutb
);

    // 128 × 24-bit memory array
    reg [23:0] mem [0:127];

    // ------------------------------------------------------------------------
    // Initial value loading (simulation only; 合成時 INIT_FILE = "" 不會載)
    // ------------------------------------------------------------------------
    initial begin
        if (INIT_FILE != "") begin
            $readmemh(INIT_FILE, mem);
        end
    end

    // ------------------------------------------------------------------------
    // Port A: write-first 風格,Xilinx 標準 inferable 寫法
    // ------------------------------------------------------------------------
    always @(posedge clk) begin
        if (ena) begin
            if (wea) mem[addra] <= dina;
            douta <= mem[addra];   // read-old-value (READ_FIRST mode)
        end
    end

    // ------------------------------------------------------------------------
    // Port B
    // ------------------------------------------------------------------------
    always @(posedge clk) begin
        if (enb) begin
            if (web) mem[addrb] <= dinb;
            doutb <= mem[addrb];   // READ_FIRST
        end
    end

endmodule