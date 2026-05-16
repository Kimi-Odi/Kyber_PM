`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_polymul.v -- 端到端 polynomial multiplication 測試
// -----------------------------------------------------------------------------
// 流程:
//   1. BRAM_A 載 tv_a_bram.memh (a 原始)
//   2. BRAM_B 載 tv_b_bram.memh (b 原始)
//   3. start
//   4. 等 done (≈1635 cycle)
//   5. dump BRAM_A,跟 tv_c_bram.memh 比對
//      (Python ref: c = INTT(PWM(NTT(a), NTT(b))) = a*b mod (X^256+1))
// =============================================================================
module tb_polymul;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg         rst_n;
    reg         start;
    wire        busy, done;
    reg  [6:0]  dbg_addr;
    reg  [1:0]  dbg_bram_sel;
    wire [23:0] dbg_dout;

    polymul_top #(
        .BRAM_A_INIT("tv_a_bram.memh"),
        .BRAM_B_INIT("tv_b_bram.memh"),
        .BRAM_C_INIT(""),
        .ZETAS_INIT("zetas.memh"),
        .ZETAS_PWM_INIT("zetas_pwm.memh")
    ) dut (
        .clk(clk), .rst_n(rst_n),
        .start(start),
        .busy(busy), .done(done),
        .dbg_addr(dbg_addr),
        .dbg_bram_sel(dbg_bram_sel),
        .dbg_dout(dbg_dout)
    );

    reg [23:0] golden [0:127];
    integer i, errors, cycle_cnt;

    initial begin
        errors = 0; cycle_cnt = 0;
        $readmemh("tv_c_bram.memh", golden);

        rst_n = 1'b0;
        start = 1'b0;
        dbg_addr = 7'd0;
        dbg_bram_sel = 2'd0;

        @(posedge clk); @(posedge clk);
        @(negedge clk); rst_n = 1'b1;

        @(negedge clk); start = 1'b1;
        @(negedge clk); start = 1'b0;

        // 等 done (timeout 3000 cycle 確保安全)
        while (!done) begin
            @(posedge clk);
            cycle_cnt = cycle_cnt + 1;
            if (cycle_cnt > 3000) begin
                $display("[tb_polymul] TIMEOUT after %0d cycles, state=%0d", cycle_cnt, dut.state);
                $finish;
            end
        end
        $display("[tb_polymul] poly_mul done after %0d cycles", cycle_cnt);

        repeat (4) @(posedge clk);

        // 結果在 BRAM_A
        dbg_bram_sel = 2'd0;

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
            $display("[tb_polymul] PASS  a*b mod (X^256+1) verified (128 entries, %0d cycle)", cycle_cnt);
        else
            $display("[tb_polymul] FAIL  %0d / 128 entries mismatch", errors);

        $finish;
    end

endmodule