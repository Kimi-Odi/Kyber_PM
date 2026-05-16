`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_ntt.v -- Integration test: 跑 NTT 一次,比對結果
// -----------------------------------------------------------------------------
// 流程:
//   1. BRAM_A 用 tv_a_bram.memh 初始化
//   2. 拉 start,is_intt=0, start_bram_select=0 (從 BRAM_A 讀,結果寫到 BRAM_B)
//   3. 等 done
//   4. 用 dbg port 把 BRAM_B 128 個 entry 讀出來
//   5. 跟 tv_a_ntt_bram.memh 比對
// =============================================================================
module tb_ntt;

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

    reg [23:0] golden [0:127];

    integer i, errors;
    integer cycle_cnt;

    initial begin
        errors = 0;
        cycle_cnt = 0;
        $readmemh("tv_a_ntt_bram.memh", golden);

        rst_n = 1'b0;
        start = 1'b0;
        is_intt = 1'b0;
        start_bram_select = 1'b0;
        dbg_addr = 7'd0;
        dbg_read_bram_sel = 1'b0;

        @(posedge clk); @(posedge clk);
        @(negedge clk); rst_n = 1'b1;

        // 啟動 NTT
        @(negedge clk); start = 1'b1;
        @(negedge clk); start = 1'b0;

        // 等 done (附 timeout)
        while (!done) begin
            @(posedge clk);
            cycle_cnt = cycle_cnt + 1;
            if (cycle_cnt > 800) begin
                $display("TIMEOUT after %0d cycles!", cycle_cnt);
                $finish;
            end
        end
        $display("[tb_ntt] NTT 完成,共 %0d cycle", cycle_cnt);

        // 等幾個 cycle 讓 BRAM write 完全 settle
        repeat (4) @(posedge clk);

        // 結果在 BRAM_B (因為 ping_pong 從 0 開始,7 個 stage 後在 B)
        dbg_read_bram_sel = 1'b1;

        // 逐 entry 比對
        for (i = 0; i < 128; i = i + 1) begin
            @(negedge clk);
            dbg_addr = i[6:0];
            @(posedge clk); #1;
            // BRAM 內容是 redundant representation (12-bit 可能 >= q)
            // 用 mod q 比對 (Slice-B 輸出 [0, 4096),需 mod q 才嚴格 < q)
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
            $display("[tb_ntt] PASS  NTT result matches tv_a_ntt_bram.memh (128 entries)");
        else
            $display("[tb_ntt] FAIL  %0d / 128 entries mismatch", errors);

        $finish;
    end

endmodule