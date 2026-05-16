`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_dual_bu.v -- 驗證 dual_butterfly_unit (CT + GS modes)
// -----------------------------------------------------------------------------
// 對每筆 case,餵入 24-bit packed binomial (a_odd, a_even, b_odd, b_even)
// 期望兩個 polynomial 各自獨立做 BF (共用 zeta)
//
// LAT = 6 (跟 single BU 一樣)
// =============================================================================
module tb_dual_bu;
    localparam Q     = 16'd3329;
    localparam INV2  = 16'd1665;
    localparam LAT   = 6;
    localparam N     = 1000;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg                    rst_n;
    reg  [1:0]             mode;
    reg  [23:0]            data_a, data_b;
    reg  [`DATA_WIDTH-1:0] twiddle;
    reg                    valid_in;
    wire [23:0]            result_u, result_t;
    wire                   valid_out;

    dual_butterfly_unit dut (
        .clk(clk), .rst_n(rst_n),
        .mode(mode),
        .data_a(data_a), .data_b(data_b), .twiddle(twiddle),
        .valid_in(valid_in),
        .result_u(result_u), .result_t(result_t),
        .valid_out(valid_out)
    );

    function [11:0] mm; input [11:0] x, y; reg [31:0] p;
        begin p = x * y; mm = p % Q; end
    endfunction
    function [11:0] ma; input [11:0] x, y; reg [12:0] s;
        begin s = x + y; ma = (s >= Q) ? s - Q : s[11:0]; end
    endfunction
    function [11:0] ms; input [11:0] x, y; reg signed [12:0] d;
        begin d = x - y; ms = (d < 0) ? d + Q : d[11:0]; end
    endfunction

    // history
    reg [23:0]  a_hist [0:LAT-1];
    reg [23:0]  b_hist [0:LAT-1];
    reg [15:0]  w_hist [0:LAT-1];
    reg [1:0]   m_hist [0:LAT-1];
    reg         v_hist [0:LAT-1];

    integer i, j, errors, valid_errors, seed;
    reg [23:0] a_in, b_in;
    reg [15:0] w_in;
    reg [1:0]  m_in;
    reg        v_in;

    // 期望
    reg [11:0] eU_odd,  eU_even, eT_odd, eT_even;
    reg [23:0] eU, eT;
    reg [23:0] aH, bH;
    reg [15:0] wH;
    reg [1:0]  mH;
    reg [11:0] aoH, aeH, boH, beH;

    task run_batch;
        input [1:0] batch_mode;
        begin
            rst_n = 1'b0;
            @(posedge clk); @(posedge clk);
            rst_n = 1'b1;
            for (j = 0; j < LAT; j = j + 1) begin
                a_hist[j]=0; b_hist[j]=0; w_hist[j]=0; m_hist[j]=0; v_hist[j]=0;
            end
            mode = batch_mode;

            for (i = 0; i < N + LAT; i = i + 1) begin
                if (i < N) begin
                    // 隨機 odd, even, w in [0, q)
                    a_in[23:12] = $random(seed) & 12'hFFF;
                    if (a_in[23:12] >= Q) a_in[23:12] = a_in[23:12] - Q;
                    a_in[11: 0] = $random(seed) & 12'hFFF;
                    if (a_in[11: 0] >= Q) a_in[11: 0] = a_in[11: 0] - Q;
                    b_in[23:12] = $random(seed) & 12'hFFF;
                    if (b_in[23:12] >= Q) b_in[23:12] = b_in[23:12] - Q;
                    b_in[11: 0] = $random(seed) & 12'hFFF;
                    if (b_in[11: 0] >= Q) b_in[11: 0] = b_in[11: 0] - Q;
                    w_in = $random(seed) & 16'hFFF;
                    if (w_in >= Q) w_in = w_in - Q;
                    m_in = batch_mode;
                    v_in = 1'b1;
                end else begin
                    a_in = 0; b_in = 0; w_in = 0; m_in = batch_mode; v_in = 0;
                end

                @(negedge clk);

                if (v_hist[LAT-1]) begin
                    aH = a_hist[LAT-1]; bH = b_hist[LAT-1]; wH = w_hist[LAT-1]; mH = m_hist[LAT-1];
                    aoH = aH[23:12]; aeH = aH[11:0];
                    boH = bH[23:12]; beH = bH[11:0];
                    if (mH == 2'b00) begin
                        // CT: U = a + w*b, T = a - w*b
                        eU_odd  = ma(aoH, mm(wH[11:0], boH));
                        eT_odd  = ms(aoH, mm(wH[11:0], boH));
                        eU_even = ma(aeH, mm(wH[11:0], beH));
                        eT_even = ms(aeH, mm(wH[11:0], beH));
                    end else begin
                        // GS: U = (a+b)/2, T = w*(b-a)/2
                        eU_odd  = mm(ma(aoH, boH), INV2[11:0]);
                        eT_odd  = mm(wH[11:0], mm(ms(boH, aoH), INV2[11:0]));
                        eU_even = mm(ma(aeH, beH), INV2[11:0]);
                        eT_even = mm(wH[11:0], mm(ms(beH, aeH), INV2[11:0]));
                    end
                    eU = {eU_odd, eU_even};
                    eT = {eT_odd, eT_even};

                    // 用 mod q 比對 (redundant rep)
                    if ((result_u[23:12] % Q) !== eU_odd  ||
                        (result_u[11: 0] % Q) !== eU_even ||
                        (result_t[23:12] % Q) !== eT_odd  ||
                        (result_t[11: 0] % Q) !== eT_even) begin
                        errors = errors + 1;
                        if (errors < 5)
                            $display("FAIL mode=%0d  expU=(%0d,%0d) expT=(%0d,%0d) gotU=(%0d,%0d) gotT=(%0d,%0d)",
                                     mH, eU_odd, eU_even, eT_odd, eT_even,
                                     result_u[23:12]%Q, result_u[11:0]%Q,
                                     result_t[23:12]%Q, result_t[11:0]%Q);
                    end
                end
                if (valid_out !== v_hist[LAT-1]) valid_errors = valid_errors + 1;

                for (j = LAT-1; j > 0; j = j - 1) begin
                    a_hist[j]=a_hist[j-1]; b_hist[j]=b_hist[j-1];
                    w_hist[j]=w_hist[j-1]; m_hist[j]=m_hist[j-1]; v_hist[j]=v_hist[j-1];
                end
                a_hist[0]=a_in; b_hist[0]=b_in; w_hist[0]=w_in; m_hist[0]=m_in; v_hist[0]=v_in;

                data_a=a_in; data_b=b_in; twiddle=w_in; valid_in=v_in;
            end
        end
    endtask

    initial begin
        errors=0; valid_errors=0; seed=32'hC0FFEE;
        rst_n=0; mode=2'b00; data_a=0; data_b=0; twiddle=0; valid_in=0;

        run_batch(2'b00);
        if (errors == 0) $display("[tb_dual_bu] CT mode PASS (%0d cases)", N);
        else             $display("[tb_dual_bu] CT mode FAIL (err=%0d)", errors);

        run_batch(2'b01);
        if (errors == 0) $display("[tb_dual_bu] GS mode PASS (%0d cases)", N);
        else             $display("[tb_dual_bu] GS mode FAIL (total err=%0d)", errors);

        if (errors == 0 && valid_errors == 0)
            $display("[tb_dual_bu] OVERALL PASS (CT %0d + GS %0d, LAT=%0d)", N, N, LAT);
        else
            $display("[tb_dual_bu] OVERALL FAIL data=%0d valid=%0d", errors, valid_errors);
        $finish;
    end
endmodule