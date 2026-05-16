`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_bu.v -- Butterfly Unit (strict Fig.4 folded architecture) testbench
// -----------------------------------------------------------------------------
// LAT = 6 cycles (CT 跟 GS 都是)
//
// 介面變動:result_a/b/valid_out 都是組合 wire,所以從「@posedge clk 後鎖存」
//            變成「同 cycle 組合輸出」。
//            測試時直接在 negedge 比對 6 cycle 前餵的對應。
//
// 注意:GS mode 內部有 folded path,測試時前後不可切換 mode (否則折返訊號會混淆)
// =============================================================================
module tb_bu;
    localparam Q       = 16'd3329;
    localparam INV2    = 16'd1665;
    localparam LAT     = 6;
    localparam N_TEST  = 1000;     // 每種 mode 各跑這麼多

    reg                    clk = 1'b0;
    reg                    rst_n = 1'b0;
    reg  [1:0]             mode;
    reg  [`DATA_WIDTH-1:0] data_a, data_b, twiddle;
    reg                    valid_in;
    wire [`DATA_WIDTH-1:0] result_a, result_b;
    wire                   valid_out;

    butterfly_unit #(.MODE_WIDTH(2)) dut (
        .clk(clk), .rst_n(rst_n),
        .mode(mode),
        .data_a(data_a), .data_b(data_b), .twiddle(twiddle),
        .valid_in(valid_in),
        .result_a(result_a), .result_b(result_b),
        .valid_out(valid_out)
    );

    always #5 clk = ~clk;

    function [`DATA_WIDTH-1:0] mm;
        input [`DATA_WIDTH-1:0] x, y;
        reg   [31:0] p;
        begin p = x * y; mm = p % Q; end
    endfunction
    function [`DATA_WIDTH-1:0] ma;
        input [`DATA_WIDTH-1:0] x, y;
        reg   [`DATA_WIDTH:0] s;
        begin s = x + y; ma = (s >= Q) ? s - Q : s[`DATA_WIDTH-1:0]; end
    endfunction
    function [`DATA_WIDTH-1:0] ms;
        input [`DATA_WIDTH-1:0] x, y;
        reg signed [`DATA_WIDTH:0] d;
        begin d = x - y; ms = (d < 0) ? d + Q : d[`DATA_WIDTH-1:0]; end
    endfunction

    reg [`DATA_WIDTH-1:0] a_hist [0:LAT-1];
    reg [`DATA_WIDTH-1:0] b_hist [0:LAT-1];
    reg [`DATA_WIDTH-1:0] w_hist [0:LAT-1];
    reg [1:0]             m_hist [0:LAT-1];
    reg                   v_hist [0:LAT-1];

    integer i, j, errors, valid_errors, seed;
    reg [`DATA_WIDTH-1:0] a_in, b_in, w_in;
    reg [1:0]             m_in;
    reg                   v_in;
    reg [`DATA_WIDTH-1:0] eA, eB;
    reg [`DATA_WIDTH-1:0] aH, bH, wH;
    reg [1:0]             mH;

    // === task: run one mode batch ===
    task run_batch;
        input [1:0] batch_mode;
        integer k;
        begin
            // reset between modes
            rst_n = 1'b0;
            @(posedge clk); @(posedge clk);
            rst_n = 1'b1;
            for (k = 0; k < LAT; k = k + 1) begin
                a_hist[k] = 0; b_hist[k] = 0; w_hist[k] = 0;
                m_hist[k] = 0; v_hist[k] = 1'b0;
            end
            mode = batch_mode;

            for (i = 0; i < N_TEST + LAT; i = i + 1) begin
                if (i < N_TEST) begin
                    a_in = $random(seed) & 16'hFFF; if (a_in >= Q) a_in = a_in - Q;
                    b_in = $random(seed) & 16'hFFF; if (b_in >= Q) b_in = b_in - Q;
                    w_in = $random(seed) & 16'hFFF; if (w_in >= Q) w_in = w_in - Q;
                    m_in = batch_mode;
                    v_in = ((i % 7) == 3) ? 1'b0 : 1'b1;
                end else begin
                    a_in = 0; b_in = 0; w_in = 0; m_in = batch_mode; v_in = 1'b0;
                end

                @(negedge clk);

                // 比對
                if (v_hist[LAT-1]) begin
                    aH = a_hist[LAT-1]; bH = b_hist[LAT-1]; wH = w_hist[LAT-1];
                    mH = m_hist[LAT-1];
                    if (mH == 2'b00) begin
                        eA = ma(aH, mm(wH, bH));
                        eB = ms(aH, mm(wH, bH));
                    end else begin
                        eA = mm(ma(aH, bH), INV2);
                        eB = mm(wH, mm(ms(bH, aH), INV2));
                    end
                    if ((result_a % Q) !== eA || (result_b % Q) !== eB) begin
                        errors = errors + 1;
                        if (errors < 10)
                            $display("FAIL i=%0d mode=%0d a=%0d b=%0d w=%0d  exp=(%0d,%0d) got=(%0d,%0d)",
                                     i - LAT, mH, aH, bH, wH, eA, eB, result_a % Q, result_b % Q);
                    end
                end
                if (valid_out !== v_hist[LAT-1]) begin
                    valid_errors = valid_errors + 1;
                    if (valid_errors < 3)
                        $display("VALID FAIL i=%0d exp=%b got=%b", i - LAT, v_hist[LAT-1], valid_out);
                end

                for (j = LAT-1; j > 0; j = j - 1) begin
                    a_hist[j] = a_hist[j-1];
                    b_hist[j] = b_hist[j-1];
                    w_hist[j] = w_hist[j-1];
                    m_hist[j] = m_hist[j-1];
                    v_hist[j] = v_hist[j-1];
                end
                a_hist[0] = a_in; b_hist[0] = b_in; w_hist[0] = w_in;
                m_hist[0] = m_in; v_hist[0] = v_in;

                data_a = a_in; data_b = b_in; twiddle = w_in;
                valid_in = v_in;
            end
        end
    endtask

    initial begin
        errors       = 0;
        valid_errors = 0;
        seed         = 32'hCAFEBABE;

        rst_n = 1'b0;
        mode = 2'b00; data_a = 0; data_b = 0; twiddle = 0; valid_in = 0;

        // ============ CT batch (mode = 2'b00, NTT) ============
        run_batch(2'b00);
        if (errors == 0)
            $display("[tb_bu] CT mode PASS  (%0d cases)", N_TEST);
        else
            $display("[tb_bu] CT mode FAIL  (errors=%0d)", errors);

        // ============ GS batch (mode = 2'b01, INTT, fused divide-by-2) ============
        run_batch(2'b01);
        if (errors == 0)
            $display("[tb_bu] GS mode PASS  (%0d cases, INTT + fused divide-by-2)", N_TEST);
        else
            $display("[tb_bu] GS mode FAIL  (total errors=%0d)", errors);

        // ============ 總結 ============
        if (errors == 0 && valid_errors == 0)
            $display("[tb_bu] OVERALL PASS  (CT %0d + GS %0d cases, LAT=%0d)",
                     N_TEST, N_TEST, LAT);
        else
            $display("[tb_bu] OVERALL FAIL  data err=%0d  valid err=%0d", errors, valid_errors);
        $finish;
    end
endmodule