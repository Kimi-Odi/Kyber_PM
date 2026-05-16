`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// ntt_top.v -- NTT/INTT 頂層整合
// -----------------------------------------------------------------------------
// 連接:
//   addr_gen → BRAM_A/B (ping-pong) → dual_butterfly_unit → 寫回 BRAM
//   addr_gen → zetas_rom → dual_butterfly_unit (twiddle)
//
// Pipeline timing:
//   T:     addr_gen 出 read_addr
//   T+1:   BRAM dout 有效 → 餵 dual_BU 的 data_a/data_b
//          zetas_rom dout 有效 → 餵 dual_BU 的 twiddle
//          dual_BU.valid_in = read_en 延遲 1 cycle
//   T+1+6=T+7: dual_BU result 出來,同時 addr_gen 的 write_addr 對齊
//
// BRAM 配置:
//   兩塊 bram_128x24,各自 dual-port (port A 讀 j,port B 讀 jpk)
//   依 read_bram_sel / write_bram_sel ping-pong
//
// 模擬時:
//   parameter BRAM_A_INIT 給 BRAM_A 載入 (= 'tv_a_bram.memh')
//   合成時:都用 '' (空,等 AXI 寫入)
// =============================================================================
module ntt_top #(
    parameter BRAM_A_INIT = "",
    parameter BRAM_B_INIT = "",
    parameter ZETAS_INIT  = "zetas.memh"
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,
    input  wire        is_intt,
    input  wire        start_bram_select,
    output wire        busy,
    output wire        done,

    // Debug / read-out port (testbench 用,從外部讀 BRAM 內容)
    input  wire [6:0]  dbg_addr,
    input  wire        dbg_read_bram_sel,    // 0=A, 1=B
    output wire [23:0] dbg_dout
);

    // ========================================================================
    // addr_gen
    // ========================================================================
    wire [2:0]  stage_out;
    wire        read_bram_sel, write_bram_sel;
    wire [6:0]  read_addr_j, read_addr_jpk, twiddle_addr;
    wire        read_en, twiddle_en;
    wire [6:0]  write_addr_j, write_addr_jpk;
    wire        write_en;
    wire [2:0]  write_stage;
    wire [1:0]  bu_mode;

    addr_gen u_addr (
        .clk(clk), .rst_n(rst_n),
        .start(start),
        .is_intt(is_intt),
        .start_bram_select(start_bram_select),
        .busy(busy), .done(done),
        .stage_out(stage_out),
        .read_bram_sel(read_bram_sel),
        .write_bram_sel(write_bram_sel),
        .read_addr_j(read_addr_j),
        .read_addr_jpk(read_addr_jpk),
        .read_en(read_en),
        .twiddle_addr(twiddle_addr),
        .twiddle_en(twiddle_en),
        .write_addr_j(write_addr_j),
        .write_addr_jpk(write_addr_jpk),
        .write_en(write_en),
        .write_stage(write_stage),
        .bu_mode(bu_mode)
    );

    // ========================================================================
    // 兩塊 BRAM (ping-pong)
    // 各自 dual-port: Port A 處理 j (read/write), Port B 處理 jpk (read/write)
    // ========================================================================

    // BRAM A signals
    reg         A_ena, A_wea, A_enb, A_web;
    reg  [6:0]  A_addra, A_addrb;
    reg  [23:0] A_dina,  A_dinb;
    wire [23:0] A_douta, A_doutb;

    bram_128x24 #(.INIT_FILE(BRAM_A_INIT)) u_bram_A (
        .clk(clk),
        .ena(A_ena), .wea(A_wea), .addra(A_addra), .dina(A_dina), .douta(A_douta),
        .enb(A_enb), .web(A_web), .addrb(A_addrb), .dinb(A_dinb), .doutb(A_doutb)
    );

    // BRAM B signals
    reg         B_ena, B_wea, B_enb, B_web;
    reg  [6:0]  B_addra, B_addrb;
    reg  [23:0] B_dina,  B_dinb;
    wire [23:0] B_douta, B_doutb;

    bram_128x24 #(.INIT_FILE(BRAM_B_INIT)) u_bram_B (
        .clk(clk),
        .ena(B_ena), .wea(B_wea), .addra(B_addra), .dina(B_dina), .douta(B_douta),
        .enb(B_enb), .web(B_web), .addrb(B_addrb), .dinb(B_dinb), .doutb(B_doutb)
    );

    // ========================================================================
    // BRAM port mux logic
    // ------------------------------------------------------------------------
    // 讀的 BRAM 依 read_bram_sel:
    //   Port A 讀 read_addr_j,Port B 讀 read_addr_jpk
    // 寫的 BRAM 依 write_bram_sel:
    //   Port A 寫 write_addr_j,Port B 寫 write_addr_jpk
    //
    // 寫入資料來自 dual_BU.result_u / result_t (24-bit each)
    // 但 dbg 也可能直接讀 (testbench 結尾)
    // ========================================================================

    wire [23:0] bu_result_u, bu_result_t;
    wire        bu_valid_out;

    // 為了支援 dbg,讀的時候允許從外部覆寫 addr
    // 簡化: 平常 NTT 跑時 dbg_addr 忽略;結束時 testbench 把 dbg_addr 接到 read 端
    // 為清楚,加一個 select: 當 done 之後外部用 dbg port 讀,平常用 read_addr
    //
    // 用最簡單方式: 多餵一個 read addr,所有 cycle 都用,平時是 NTT 在跑的 addr;
    //              結束時 NTT 不再讀,dbg 用 BRAM A/B 的 port A 任意讀。
    // → 直接讓 Port A 平時跟 NTT 走,完成後接 dbg。
    //
    // 用 done 後 ena_force 讓 dbg 工作

    wire ntt_running = busy;

    always @(*) begin
        // === Default 都關閉 ===
        A_ena   = 1'b0;  A_wea = 1'b0; A_addra = 7'd0; A_dina = 24'd0;
        A_enb   = 1'b0;  A_web = 1'b0; A_addrb = 7'd0; A_dinb = 24'd0;
        B_ena   = 1'b0;  B_wea = 1'b0; B_addra = 7'd0; B_dina = 24'd0;
        B_enb   = 1'b0;  B_web = 1'b0; B_addrb = 7'd0; B_dinb = 24'd0;

        // === Read 端: NTT 在跑時 ===
        if (read_en) begin
            if (read_bram_sel == 1'b0) begin
                // 讀 A
                A_ena = 1'b1; A_addra = read_addr_j;
                A_enb = 1'b1; A_addrb = read_addr_jpk;
            end else begin
                // 讀 B
                B_ena = 1'b1; B_addra = read_addr_j;
                B_enb = 1'b1; B_addrb = read_addr_jpk;
            end
        end

        // === Write 端: NTT 跑完 BU 結果出來時 ===
        if (write_en) begin
            if (write_bram_sel == 1'b0) begin
                // 寫 A (write back to BRAM_A)
                A_ena = 1'b1; A_wea = 1'b1; A_addra = write_addr_j;   A_dina = bu_result_u;
                A_enb = 1'b1; A_web = 1'b1; A_addrb = write_addr_jpk; A_dinb = bu_result_t;
            end else begin
                // 寫 B
                B_ena = 1'b1; B_wea = 1'b1; B_addra = write_addr_j;   B_dina = bu_result_u;
                B_enb = 1'b1; B_web = 1'b1; B_addrb = write_addr_jpk; B_dinb = bu_result_t;
            end
        end

        // === 注意 ===
        // 同 cycle 內,Port A 可能同時被 read (因 read_en=1) 跟 write (因 write_en=1) 嗎?
        // 答案: 不會。read_en 來自 stage_active phase (bf_cnt 0..63),
        //        write_en 來自 7-cycle 延遲版的 read_en,出現在 bf_cnt 7..70。
        //        交集 bf_cnt 7..63,讀寫同 cycle!
        // 但是讀的 BRAM 跟寫的 BRAM 是不同的兩塊 (ping-pong),所以同一塊 BRAM
        // 不會同時 read 跟 write。OK ✓

        // === Debug 讀 (NTT 結束後) ===
        // 只有 dbg_read_bram_sel 對應的塊用 dbg_addr 讀
        if (!ntt_running) begin
            if (dbg_read_bram_sel == 1'b0) begin
                A_ena = 1'b1; A_addra = dbg_addr;
            end else begin
                B_ena = 1'b1; B_addra = dbg_addr;
            end
        end
    end

    // ========================================================================
    // BRAM dout → dual_BU 輸入 (組合,有 1 cycle latency 從 read_addr 算起)
    // ========================================================================
    // 讀到的 j entry 跟 jpk entry,依 read_bram_sel_d1 (= 1 cycle 前的 read_bram_sel)
    reg read_bram_sel_d1;
    reg read_en_d1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            read_bram_sel_d1 <= 1'b0;
            read_en_d1       <= 1'b0;
        end else begin
            read_bram_sel_d1 <= read_bram_sel;
            read_en_d1       <= read_en;
        end
    end

    wire [23:0] bu_data_a = (read_bram_sel_d1 == 1'b0) ? A_douta : B_douta;
    wire [23:0] bu_data_b = (read_bram_sel_d1 == 1'b0) ? A_doutb : B_doutb;

    // ========================================================================
    // zetas ROM
    // ========================================================================
    wire [`DATA_WIDTH-1:0] twiddle_out;
    zetas_rom #(.INIT_FILE(ZETAS_INIT)) u_rom (
        .clk(clk),
        .en(twiddle_en),
        .addr(twiddle_addr),
        .dout(twiddle_out)
    );

    // bu_mode 也要延遲 1 cycle,跟 BRAM/ROM dout 對齊
    reg [1:0] bu_mode_d1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) bu_mode_d1 <= 2'b00;
        else        bu_mode_d1 <= bu_mode;
    end

    // ========================================================================
    // dual_butterfly_unit
    // ========================================================================
    dual_butterfly_unit u_dbu (
        .clk(clk), .rst_n(rst_n),
        .mode(bu_mode_d1),
        .data_a(bu_data_a),
        .data_b(bu_data_b),
        .twiddle(twiddle_out),
        .valid_in(read_en_d1),
        .result_u(bu_result_u),
        .result_t(bu_result_t),
        .valid_out(bu_valid_out)
    );

    // ========================================================================
    // Debug output
    // ========================================================================
    assign dbg_dout = (dbg_read_bram_sel == 1'b0) ? A_douta : B_douta;

endmodule