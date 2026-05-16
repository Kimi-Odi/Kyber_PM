`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_polymul_multi.v -- 5 çµ„ç¨ç«? polynomial multiplication æ¸¬è©¦
// -----------------------------------------------------------------------------
// 5 ?‹ç¨ç«? polymul_top instance,??„è‡ªè¼‰ä?å?? (a, b) testvector,
// ??Œæ?‚è??,??„è‡ª dump BRAM_A è·? schoolbook çµæ?œæ?”å?ã??
//
// é©—è??:
//   (1) DUT å°ä?å?? input ?ƒ½ç®—å??
//   (2) è¨­è?ˆæ?’æ?? cross-instance state pollution
// =============================================================================
module tb_polymul_multi;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg         rst_n;
    reg         start;

    // 5 ?? DUT instance
    wire        busy0, done0, busy1, done1, busy2, done2, busy3, done3, busy4, done4;
    reg  [6:0]  dbg_addr;
    reg  [1:0]  dbg_sel;
    wire [23:0] dbg0, dbg1, dbg2, dbg3, dbg4;

    polymul_top #(
        .BRAM_A_INIT("tv_polymul_0_a_bram.memh"),
        .BRAM_B_INIT("tv_polymul_0_b_bram.memh")
    ) dut0 (
        .clk(clk), .rst_n(rst_n), .start(start),
        .busy(busy0), .done(done0),
        .dbg_addr(dbg_addr), .dbg_bram_sel(dbg_sel), .dbg_dout(dbg0)
    );

    polymul_top #(
        .BRAM_A_INIT("tv_polymul_1_a_bram.memh"),
        .BRAM_B_INIT("tv_polymul_1_b_bram.memh")
    ) dut1 (
        .clk(clk), .rst_n(rst_n), .start(start),
        .busy(busy1), .done(done1),
        .dbg_addr(dbg_addr), .dbg_bram_sel(dbg_sel), .dbg_dout(dbg1)
    );

    polymul_top #(
        .BRAM_A_INIT("tv_polymul_2_a_bram.memh"),
        .BRAM_B_INIT("tv_polymul_2_b_bram.memh")
    ) dut2 (
        .clk(clk), .rst_n(rst_n), .start(start),
        .busy(busy2), .done(done2),
        .dbg_addr(dbg_addr), .dbg_bram_sel(dbg_sel), .dbg_dout(dbg2)
    );

    polymul_top #(
        .BRAM_A_INIT("tv_polymul_3_a_bram.memh"),
        .BRAM_B_INIT("tv_polymul_3_b_bram.memh")
    ) dut3 (
        .clk(clk), .rst_n(rst_n), .start(start),
        .busy(busy3), .done(done3),
        .dbg_addr(dbg_addr), .dbg_bram_sel(dbg_sel), .dbg_dout(dbg3)
    );

    polymul_top #(
        .BRAM_A_INIT("tv_polymul_4_a_bram.memh"),
        .BRAM_B_INIT("tv_polymul_4_b_bram.memh")
    ) dut4 (
        .clk(clk), .rst_n(rst_n), .start(start),
        .busy(busy4), .done(done4),
        .dbg_addr(dbg_addr), .dbg_bram_sel(dbg_sel), .dbg_dout(dbg4)
    );

    reg [23:0] gold0 [0:127];
    reg [23:0] gold1 [0:127];
    reg [23:0] gold2 [0:127];
    reg [23:0] gold3 [0:127];
    reg [23:0] gold4 [0:127];

    integer i;
    integer e0, e1, e2, e3, e4;
    integer cycle_cnt;
    integer all_done;

    initial begin
        e0 = 0; e1 = 0; e2 = 0; e3 = 0; e4 = 0;
        cycle_cnt = 0; all_done = 0;
        $readmemh("tv_polymul_0_c_bram.memh", gold0);
        $readmemh("tv_polymul_1_c_bram.memh", gold1);
        $readmemh("tv_polymul_2_c_bram.memh", gold2);
        $readmemh("tv_polymul_3_c_bram.memh", gold3);
        $readmemh("tv_polymul_4_c_bram.memh", gold4);

        rst_n = 1'b0; start = 1'b0;
        dbg_addr = 0; dbg_sel = 2'd0;     // ?ƒ½è®? BRAM_A

        @(posedge clk); @(posedge clk);
        @(negedge clk); rst_n = 1'b1;

        @(negedge clk); start = 1'b1;
        @(negedge clk); start = 1'b0;

        while (!all_done) begin
            @(posedge clk);
            cycle_cnt = cycle_cnt + 1;
            if (done0 && done1 && done2 && done3 && done4) all_done = 1;
            if (cycle_cnt > 3000) begin
                $display("[tb_polymul_multi] TIMEOUT done=(%b,%b,%b,%b,%b)",
                         done0, done1, done2, done3, done4);
                $finish;
            end
        end
        $display("[tb_polymul_multi] All 5 polymul done after %0d cycles", cycle_cnt);

        repeat (4) @(posedge clk);

        // ?? entry æ¯”å?æ?ç??
        for (i = 0; i < 128; i = i + 1) begin
            @(negedge clk);
            dbg_addr = i[6:0];
            @(posedge clk); #1;
            // dut0
            if ((dbg0[23:12] % 3329) !== (gold0[i][23:12] % 3329) ||
                (dbg0[11: 0] % 3329) !== (gold0[i][11: 0] % 3329)) begin
                e0 = e0 + 1;
                if (e0 <= 2) $display("polymul_0 idx=%0d got=%h exp=%h", i, dbg0, gold0[i]);
            end
            if ((dbg1[23:12] % 3329) !== (gold1[i][23:12] % 3329) ||
                (dbg1[11: 0] % 3329) !== (gold1[i][11: 0] % 3329)) begin
                e1 = e1 + 1;
                if (e1 <= 2) $display("polymul_1 idx=%0d got=%h exp=%h", i, dbg1, gold1[i]);
            end
            if ((dbg2[23:12] % 3329) !== (gold2[i][23:12] % 3329) ||
                (dbg2[11: 0] % 3329) !== (gold2[i][11: 0] % 3329)) begin
                e2 = e2 + 1;
                if (e2 <= 2) $display("polymul_2 idx=%0d got=%h exp=%h", i, dbg2, gold2[i]);
            end
            if ((dbg3[23:12] % 3329) !== (gold3[i][23:12] % 3329) ||
                (dbg3[11: 0] % 3329) !== (gold3[i][11: 0] % 3329)) begin
                e3 = e3 + 1;
                if (e3 <= 2) $display("polymul_3 idx=%0d got=%h exp=%h", i, dbg3, gold3[i]);
            end
            if ((dbg4[23:12] % 3329) !== (gold4[i][23:12] % 3329) ||
                (dbg4[11: 0] % 3329) !== (gold4[i][11: 0] % 3329)) begin
                e4 = e4 + 1;
                if (e4 <= 2) $display("polymul_4 idx=%0d got=%h exp=%h", i, dbg4, gold4[i]);
            end
        end

        $display("");
        $display("[tb_polymul_multi] ========== summary ==========");
        $display("  polymul_0 (seed 100/200):     errors = %0d", e0);
        $display("  polymul_1 (seed 7/13):        errors = %0d", e1);
        $display("  polymul_2 (seed c0ffee/beef): errors = %0d", e2);
        $display("  polymul_3 (seed 1/2):         errors = %0d", e3);
        $display("  polymul_4 (seed 0/1):         errors = %0d", e4);
        if (e0+e1+e2+e3+e4 == 0)
            $display("[tb_polymul_multi] OVERALL PASS  (5 polymul ?? 128 entries = 640 values)");
        else
            $display("[tb_polymul_multi] OVERALL FAIL  (%0d total errors)", e0+e1+e2+e3+e4);

        $finish;
    end

endmodule