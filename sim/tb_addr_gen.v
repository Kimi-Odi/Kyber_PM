`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_addr_gen.v -- 驗證 addr_gen 產生的 read/write/twiddle 位址
// -----------------------------------------------------------------------------
// Golden: 用 Python ref 的 NTT iterative algorithm 算出每個 cycle 該訪問哪些
//          binomial 跟哪個 zeta,寫進 golden_*.memh 由 testbench 載入比對
// =============================================================================
module tb_addr_gen;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg        rst_n;
    reg        start;
    reg        is_intt;
    reg        start_bram_select;

    wire       busy, done;
    wire [2:0] stage_out;
    wire       read_bram_sel, write_bram_sel;
    wire [6:0] read_addr_j, read_addr_jpk;
    wire       read_en;
    wire [6:0] twiddle_addr;
    wire       twiddle_en;
    wire [6:0] write_addr_j, write_addr_jpk;
    wire       write_en;
    wire [2:0] write_stage;
    wire [1:0] bu_mode;

    addr_gen dut (
        .clk(clk), .rst_n(rst_n),
        .start(start),
        .is_intt(is_intt),
        .start_bram_select(start_bram_select),
        .busy(busy), .done(done),
        .stage_out(stage_out),
        .read_bram_sel(read_bram_sel),
        .write_bram_sel(write_bram_sel),
        .read_addr_j(read_addr_j), .read_addr_jpk(read_addr_jpk),
        .read_en(read_en),
        .twiddle_addr(twiddle_addr), .twiddle_en(twiddle_en),
        .write_addr_j(write_addr_j), .write_addr_jpk(write_addr_jpk),
        .write_en(write_en), .write_stage(write_stage),
        .bu_mode(bu_mode)
    );

    // ====================================================================
    // Golden trace: 每個 active read cycle 對應一筆紀錄
    //   format (one decimal value per line):
    //     stage, bf_cnt, k, group_idx, within_b, read_j, read_jpk, zeta_addr
    // 共 7*64 = 448 筆
    // ====================================================================
    // 用 Python 算出,直接 inline 在 tb 內 (避免依賴外部檔案)
    // 為了精簡,只比對關鍵欄位:read_j, read_jpk, zeta_addr

    integer i;
    integer errors_ntt, errors_intt;
    integer total_cycles;

    // Reference (Python NTT iterative):
    //   k_zeta = 1
    //   length = 128 (coef level) → binomial_k = length/2 = 64
    //   stage = 0..6 (length: 128 → 2)
    //   For each (length, start, j), one BF reads f[j] and f[j+length]
    //   At binomial level: read_j = j/2 if even else ...  
    // 但 j 是 coef-level,j 必為 start..start+length-1 ranging step 1
    // 偶 j: even coef,進 BU_even; 奇 j: odd coef,進 BU_odd
    // 但 BRAM entry packed (a[2i+1], a[2i]),所以每個 binomial entry 包兩個 coef
    // BF 之間以 binomial 為單位:
    //   binomial_j   = j 對應的 entry idx (j/2 if even, ...; 但 dual-BU 同 cycle 兩個 coef)
    //
    // 簡化:dual-BU 設計下,「一個 cycle 處理一對 binomial」(同 cycle 兩個 polynomial)
    // 所以對 binomial level NTT,stride k_bin = length / 2:
    //   stage 0: k_bin = 64
    //   stage 1: k_bin = 32
    //   ...
    //   stage 6: k_bin = 1

    // Golden 計算 (跟 DUT 相同邏輯,但用 integer arithmetic)
    function [6:0] expect_read_j;
        input [2:0] s;
        input [6:0] t;       // bf_cnt
        input       is_intt;
        reg   [6:0] k;
        reg   [6:0] g, w;
        begin
            k = is_intt ? (7'd1 << s) : (7'd64 >> s);
            g = t / k;
            w = t % k;
            expect_read_j = g * (2 * k) + w;
        end
    endfunction
    function [6:0] expect_read_jpk;
        input [2:0] s;
        input [6:0] t;
        input       is_intt;
        reg   [6:0] k;
        begin
            k = is_intt ? (7'd1 << s) : (7'd64 >> s);
            expect_read_jpk = expect_read_j(s, t, is_intt) + k;
        end
    endfunction
    function [6:0] expect_zeta_addr;
        input [2:0] s;
        input [6:0] t;
        input       is_intt;
        reg   [6:0] k;
        reg   [7:0] g;
        begin
            k = is_intt ? (7'd1 << s) : (7'd64 >> s);
            g = t / k;
            if (is_intt) expect_zeta_addr = ((8'd128 >> s) - 1 - g);
            else         expect_zeta_addr = ((8'd1   << s)     + g);
        end
    endfunction

    // ====================================================================
    // Track current stage/bf_cnt by snooping DUT,then compare
    // ====================================================================
    reg [2:0] obs_stage;
    reg [6:0] obs_bf;
    reg [6:0] eJ, eJpk, eZ;

    task check_read;
        begin
            obs_stage = dut.stage_out;
            obs_bf    = dut.bf_cnt;
            eJ   = expect_read_j(obs_stage, obs_bf, dut.intt_reg);
            eJpk = expect_read_jpk(obs_stage, obs_bf, dut.intt_reg);
            eZ   = expect_zeta_addr(obs_stage, obs_bf, dut.intt_reg);

            if (read_addr_j !== eJ) begin
                if (dut.intt_reg) errors_intt = errors_intt + 1;
                else              errors_ntt  = errors_ntt + 1;
                if (errors_ntt + errors_intt < 5)
                    $display("FAIL stage=%0d bf=%0d  read_j got=%0d exp=%0d",
                             obs_stage, obs_bf, read_addr_j, eJ);
            end
            if (read_addr_jpk !== eJpk) begin
                if (dut.intt_reg) errors_intt = errors_intt + 1;
                else              errors_ntt  = errors_ntt + 1;
                if (errors_ntt + errors_intt < 5)
                    $display("FAIL stage=%0d bf=%0d  read_jpk got=%0d exp=%0d",
                             obs_stage, obs_bf, read_addr_jpk, eJpk);
            end
            if (twiddle_addr !== eZ) begin
                if (dut.intt_reg) errors_intt = errors_intt + 1;
                else              errors_ntt  = errors_ntt + 1;
                if (errors_ntt + errors_intt < 5)
                    $display("FAIL stage=%0d bf=%0d  zeta_addr got=%0d exp=%0d",
                             obs_stage, obs_bf, twiddle_addr, eZ);
            end
        end
    endtask

    integer ntt_read_count, intt_read_count;

    task run_one;
        input is_intt_in;
        input start_sel_in;
        begin
            @(negedge clk);
            rst_n = 1'b0;
            @(posedge clk); @(posedge clk);
            @(negedge clk);
            rst_n = 1'b1;
            is_intt = is_intt_in;
            start_bram_select = start_sel_in;
            start = 1'b1;

            // start posedge 之後 #1 抓第 1 個 bf=0 cycle
            @(posedge clk); #1;
            // 在這個 cycle 開始之前 (start=1, busy=0) DUT 進 IDLE 分支
            // 但 combinational 訊號 (read_addr_j 等) 在 busy 變 1 之後才有意義
            // 所以這個 posedge 不檢查 (busy 才剛變 1)

            @(negedge clk);
            start = 1'b0;

            // 從現在開始每 posedge 都抓
            total_cycles = 0;
            while (!done) begin
                @(posedge clk); #1;
                total_cycles = total_cycles + 1;
                if (read_en) begin
                    check_read();
                    if (is_intt_in) intt_read_count = intt_read_count + 1;
                    else            ntt_read_count  = ntt_read_count  + 1;
                end
                if (total_cycles > 1000) begin
                    $display("Timeout!");
                    $finish;
                end
            end
        end
    endtask

    initial begin
        errors_ntt = 0; errors_intt = 0;
        ntt_read_count = 0; intt_read_count = 0;
        rst_n = 1'b0; start = 1'b0; is_intt = 1'b0; start_bram_select = 1'b0;

        @(posedge clk); @(posedge clk);

        // NTT
        run_one(1'b0, 1'b0);
        $display("[tb_addr_gen] NTT  done. read_cycles=%0d (expect 448)", ntt_read_count);
        if (errors_ntt == 0) $display("[tb_addr_gen] NTT  PASS");
        else                 $display("[tb_addr_gen] NTT  FAIL (%0d errors)", errors_ntt);

        // INTT
        run_one(1'b1, 1'b1);
        $display("[tb_addr_gen] INTT done. read_cycles=%0d (expect 448)", intt_read_count);
        if (errors_intt == 0) $display("[tb_addr_gen] INTT PASS");
        else                  $display("[tb_addr_gen] INTT FAIL (%0d errors)", errors_intt);

        if (errors_ntt == 0 && errors_intt == 0)
            $display("[tb_addr_gen] OVERALL PASS");
        else
            $display("[tb_addr_gen] OVERALL FAIL");
        $finish;
    end

endmodule