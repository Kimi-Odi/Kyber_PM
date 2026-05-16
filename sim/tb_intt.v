`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_intt.v -- 獨立 INTT 測試
// -----------------------------------------------------------------------------
// 流程:
//   1. BRAM_A 載入 tv_a_ntt_bram.memh (NTT-domain 資料)
//   2. 跑 INTT (is_intt=1, start_bram_select=0,從 BRAM_A 讀)
//   3. 等 done
//   4. dump BRAM_B (結果)
//   5. 比對 tv_a_bram.memh (原始 a)
//
// INTT 是 fused (÷2 散在每層),結果不需要再 ×128^{-1}
// =============================================================================
module tb_intt;

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
        .BRAM_A_INIT("tv_a_ntt_bram.memh"),    // 載 NTT 結果
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

    reg [23:0] golden [0:127];

    integer i, errors, cycle_cnt;

    initial begin
        errors = 0;
        cycle_cnt = 0;
        $readmemh("tv_a_bram.memh", golden);    // 期望: INTT 結果應該等於原始 a

        rst_n = 1'b0;
        start = 1'b0;
        is_intt = 1'b1;                          // INTT mode
        start_bram_select = 1'b0;                // 從 BRAM_A 讀
        dbg_addr = 7'd0;
        dbg_read_bram_sel = 1'b0;

        @(posedge clk); @(posedge clk);
        @(negedge clk); rst_n = 1'b1;

        @(negedge clk); start = 1'b1;
        @(negedge clk); start = 1'b0;

        while (!done) begin
            @(posedge clk);
            cycle_cnt = cycle_cnt + 1;
            if (cycle_cnt > 800) begin
                $display("[tb_intt] TIMEOUT");
                $finish;
            end
        end
        $display("[tb_intt] INTT 完成,共 %0d cycle", cycle_cnt);

        repeat (4) @(posedge clk);

        // 結果在 BRAM_B (7 stage 後 ping_pong 反轉)
        dbg_read_bram_sel = 1'b1;

        for (i = 0; i < 128; i = i + 1) begin
            @(negedge clk);
            dbg_addr = i[6:0];
            @(posedge clk); #1;
            if ((dbg_dout[23:12] % 3329) !== (golden[i][23:12] % 3329) ||
                (dbg_dout[11: 0] % 3329) !== (golden[i][11: 0] % 3329)) begin
                errors = errors + 1;
                if (errors <= 10) begin
                    $display("FAIL addr=%0d got=%h (odd=%0d,even=%0d) exp=%h (odd=%0d,even=%0d)",
                             i, dbg_dout, dbg_dout[23:12]%3329, dbg_dout[11:0]%3329,
                             golden[i], golden[i][23:12]%3329, golden[i][11:0]%3329);
                end
            end
        end

        if (errors == 0)
            $display("[tb_intt] PASS  INTT(NTT(a)) == a  (128 entries verified)");
        else
            $display("[tb_intt] FAIL  %0d / 128 entries mismatch", errors);

        $finish;
    end

endmodule