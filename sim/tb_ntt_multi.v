`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_ntt_multi.v -- 跑 3 組不同 seed 的 NTT,確認穩健性
// -----------------------------------------------------------------------------
// 由於 Verilog `define INIT_FILE` 是 parameter,無法在 runtime 切換 BRAM 內容,
// 所以這個 tb 用 3 個 ntt_top instance,各自載入不同 init file。
// 都在同個 clk 下啟動,逐個檢查。
// =============================================================================
module tb_ntt_multi;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg         rst_n;
    reg         start;

    // ============ 3 個獨立的 ntt_top ============
    wire        busy0, done0;  reg [6:0] dbg0_addr; reg dbg0_sel; wire [23:0] dbg0_dout;
    wire        busy1, done1;  reg [6:0] dbg1_addr; reg dbg1_sel; wire [23:0] dbg1_dout;
    wire        busy2, done2;  reg [6:0] dbg2_addr; reg dbg2_sel; wire [23:0] dbg2_dout;

    ntt_top #(.BRAM_A_INIT("tv_multi_0_bram.memh")) dut0 (
        .clk(clk), .rst_n(rst_n),
        .start(start), .is_intt(1'b0), .start_bram_select(1'b0),
        .busy(busy0), .done(done0),
        .dbg_addr(dbg0_addr), .dbg_read_bram_sel(dbg0_sel), .dbg_dout(dbg0_dout)
    );
    ntt_top #(.BRAM_A_INIT("tv_multi_1_bram.memh")) dut1 (
        .clk(clk), .rst_n(rst_n),
        .start(start), .is_intt(1'b0), .start_bram_select(1'b0),
        .busy(busy1), .done(done1),
        .dbg_addr(dbg1_addr), .dbg_read_bram_sel(dbg1_sel), .dbg_dout(dbg1_dout)
    );
    ntt_top #(.BRAM_A_INIT("tv_multi_2_bram.memh")) dut2 (
        .clk(clk), .rst_n(rst_n),
        .start(start), .is_intt(1'b0), .start_bram_select(1'b0),
        .busy(busy2), .done(done2),
        .dbg_addr(dbg2_addr), .dbg_read_bram_sel(dbg2_sel), .dbg_dout(dbg2_dout)
    );

    reg [23:0] gold0 [0:127];
    reg [23:0] gold1 [0:127];
    reg [23:0] gold2 [0:127];

    integer i;
    integer errors0, errors1, errors2;
    integer cycle_cnt;
    integer all_done;

    initial begin
        errors0 = 0; errors1 = 0; errors2 = 0; cycle_cnt = 0;
        $readmemh("tv_multi_0_ntt_bram.memh", gold0);
        $readmemh("tv_multi_1_ntt_bram.memh", gold1);
        $readmemh("tv_multi_2_ntt_bram.memh", gold2);

        rst_n = 1'b0; start = 1'b0;
        dbg0_addr = 0; dbg0_sel = 1'b1;
        dbg1_addr = 0; dbg1_sel = 1'b1;
        dbg2_addr = 0; dbg2_sel = 1'b1;

        @(posedge clk); @(posedge clk);
        @(negedge clk); rst_n = 1'b1;

        @(negedge clk); start = 1'b1;
        @(negedge clk); start = 1'b0;

        // 等所有 done
        all_done = 0;
        while (!all_done) begin
            @(posedge clk);
            cycle_cnt = cycle_cnt + 1;
            if (done0 && done1 && done2) all_done = 1;
            if (cycle_cnt > 800) begin
                $display("[tb_ntt_multi] TIMEOUT (done = %b %b %b)", done0, done1, done2);
                $finish;
            end
        end
        $display("[tb_ntt_multi] 3 NTTs done,共 %0d cycle", cycle_cnt);

        repeat (4) @(posedge clk);

        // 逐 entry 比對 3 組
        for (i = 0; i < 128; i = i + 1) begin
            @(negedge clk);
            dbg0_addr = i[6:0];
            dbg1_addr = i[6:0];
            dbg2_addr = i[6:0];
            @(posedge clk); #1;

            if ((dbg0_dout[23:12] % 3329) !== (gold0[i][23:12] % 3329) ||
                (dbg0_dout[11: 0] % 3329) !== (gold0[i][11: 0] % 3329)) begin
                errors0 = errors0 + 1;
                if (errors0 <= 3) $display("seed_0 addr=%0d got=%h exp=%h", i, dbg0_dout, gold0[i]);
            end
            if ((dbg1_dout[23:12] % 3329) !== (gold1[i][23:12] % 3329) ||
                (dbg1_dout[11: 0] % 3329) !== (gold1[i][11: 0] % 3329)) begin
                errors1 = errors1 + 1;
                if (errors1 <= 3) $display("seed_1 addr=%0d got=%h exp=%h", i, dbg1_dout, gold1[i]);
            end
            if ((dbg2_dout[23:12] % 3329) !== (gold2[i][23:12] % 3329) ||
                (dbg2_dout[11: 0] % 3329) !== (gold2[i][11: 0] % 3329)) begin
                errors2 = errors2 + 1;
                if (errors2 <= 3) $display("seed_2 addr=%0d got=%h exp=%h", i, dbg2_dout, gold2[i]);
            end
        end

        $display("[tb_ntt_multi] seed_0 (=42)          errors = %0d", errors0);
        $display("[tb_ntt_multi] seed_1 (=1234)        errors = %0d", errors1);
        $display("[tb_ntt_multi] seed_2 (=0xdeadbeef)  errors = %0d", errors2);

        if (errors0 == 0 && errors1 == 0 && errors2 == 0)
            $display("[tb_ntt_multi] OVERALL PASS  (3 testvectors x 128 entries)");
        else
            $display("[tb_ntt_multi] OVERALL FAIL");

        $finish;
    end

endmodule