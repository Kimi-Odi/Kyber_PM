`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_ntt_intt.v -- NTT → INTT round-trip (one BRAM stays loaded all run)
// -----------------------------------------------------------------------------
// 流程:
//   1. BRAM_A 載入 tv_a_bram.memh (原始 a)
//   2. start NTT (is_intt=0, start_bram_select=0): A → B
//   3. 等 done0
//   4. start INTT (is_intt=1, start_bram_select=1): B → A
//   5. 等 done1
//   6. dump BRAM_A 跟原始 tv_a_bram.memh 比對
//      → 證明 INTT(NTT(a)) == a (real round-trip in hardware)
// =============================================================================
module tb_ntt_intt;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg         rst_n;
    reg         start;
    reg         is_intt;
    reg         start_bram_select;
    wire        busy, done;
    reg  [6:0]  dbg_addr;
    reg         dbg_read_bram_sel;
    wire [23:0] dbg_dout;

    ntt_top #(
        .BRAM_A_INIT("tv_a_bram.memh"),
        .BRAM_B_INIT(""),
        .ZETAS_INIT("zetas.memh")
    ) dut (
        .clk(clk), .rst_n(rst_n),
        .start(start),
        .is_intt(is_intt),
        .start_bram_select(start_bram_select),
        .busy(busy), .done(done),
        .dbg_addr(dbg_addr),
        .dbg_read_bram_sel(dbg_read_bram_sel),
        .dbg_dout(dbg_dout)
    );

    reg [23:0] orig_a [0:127];      // 原始 a (BRAM 載入的)

    integer i, errors;
    integer ntt_cycles, intt_cycles, total_cycles;

    initial begin
        errors = 0;
        ntt_cycles = 0; intt_cycles = 0; total_cycles = 0;
        $readmemh("tv_a_bram.memh", orig_a);

        rst_n = 1'b0;
        start = 1'b0;
        is_intt = 1'b0;
        start_bram_select = 1'b0;
        dbg_addr = 7'd0;
        dbg_read_bram_sel = 1'b0;

        @(posedge clk); @(posedge clk);
        @(negedge clk); rst_n = 1'b1;

        // ====================================================================
        // 第 1 階段: 跑 NTT (A → B)
        // ====================================================================
        @(negedge clk);
        is_intt = 1'b0;
        start_bram_select = 1'b0;
        start = 1'b1;
        @(negedge clk);
        start = 1'b0;

        while (!done) begin
            @(posedge clk);
            ntt_cycles = ntt_cycles + 1;
            if (ntt_cycles > 800) begin
                $display("[tb_ntt_intt] NTT TIMEOUT");
                $finish;
            end
        end
        $display("[tb_ntt_intt] NTT  done after %0d cycles (result in BRAM_B)", ntt_cycles);

        // 等 done pulse 結束 + BRAM write settle
        repeat (4) @(posedge clk);

        // ====================================================================
        // 第 2 階段: 跑 INTT (B → A)
        // ====================================================================
        @(negedge clk);
        is_intt = 1'b1;
        start_bram_select = 1'b1;        // 從 BRAM_B 讀 (NTT 結果)
        start = 1'b1;
        @(negedge clk);
        start = 1'b0;

        while (!done) begin
            @(posedge clk);
            intt_cycles = intt_cycles + 1;
            if (intt_cycles > 800) begin
                $display("[tb_ntt_intt] INTT TIMEOUT");
                $finish;
            end
        end
        $display("[tb_ntt_intt] INTT done after %0d cycles (result in BRAM_A)", intt_cycles);

        total_cycles = ntt_cycles + intt_cycles;
        repeat (4) @(posedge clk);

        // ====================================================================
        // 第 3 階段: dump BRAM_A 跟原始 a 比對
        // ====================================================================
        dbg_read_bram_sel = 1'b0;        // 讀 BRAM_A (INTT 結果應該在這)

        for (i = 0; i < 128; i = i + 1) begin
            @(negedge clk);
            dbg_addr = i[6:0];
            @(posedge clk); #1;
            if ((dbg_dout[23:12] % 3329) !== (orig_a[i][23:12] % 3329) ||
                (dbg_dout[11: 0] % 3329) !== (orig_a[i][11: 0] % 3329)) begin
                errors = errors + 1;
                if (errors <= 10) begin
                    $display("FAIL addr=%0d got=%h (odd=%0d,even=%0d) exp=%h (odd=%0d,even=%0d)",
                             i, dbg_dout,
                             dbg_dout[23:12]%3329, dbg_dout[11:0]%3329,
                             orig_a[i],
                             orig_a[i][23:12]%3329, orig_a[i][11:0]%3329);
                end
            end
        end

        $display("");
        $display("[tb_ntt_intt] ============ summary ============");
        $display("[tb_ntt_intt]   NTT  cycles:  %0d", ntt_cycles);
        $display("[tb_ntt_intt]   INTT cycles:  %0d", intt_cycles);
        $display("[tb_ntt_intt]   Total:        %0d", total_cycles);
        if (errors == 0)
            $display("[tb_ntt_intt] PASS  INTT(NTT(a)) == a  (HW round-trip, 128 entries)");
        else
            $display("[tb_ntt_intt] FAIL  %0d / 128 entries mismatch", errors);

        $finish;
    end

endmodule