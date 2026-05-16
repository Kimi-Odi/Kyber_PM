`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_pwm.v -- 結構完全模仿 tb_dual_bu (Vivado-known-good)
// =============================================================================
module tb_pwm;
    localparam Q   = 16'd3329;
    localparam LAT = 10;
    localparam N   = 128;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg                    rst_n;
    reg  [23:0]            a_pkt, b_pkt;
    reg  [`DATA_WIDTH-1:0] gamma;
    reg                    valid_in;
    wire [23:0]            c_pkt;
    wire                   valid_out;

    pwm_unit dut (
        .clk(clk), .rst_n(rst_n),
        .a_pkt(a_pkt), .b_pkt(b_pkt), .gamma(gamma),
        .valid_in(valid_in),
        .c_pkt(c_pkt), .valid_out(valid_out)
    );

    // testvectors
    reg [11:0] a_ntt  [0:255];
    reg [11:0] b_ntt  [0:255];
    reg [11:0] c_gold [0:255];
    reg [11:0] gammas [0:127];

    // history (跟 tb_dual_bu 同樣 pattern)
    reg [7:0] idx_hist [0:LAT-1];
    reg       v_hist   [0:LAT-1];

    integer i, j;
    integer errors, valid_errors;
    integer checked_count;
    reg [7:0]  idx_in;
    reg [23:0] a_in, b_in;
    reg [15:0] g_in;
    reg        v_in;
    reg [11:0] exp_c0, exp_c1;
    reg [11:0] got_c0, got_c1;
    reg [7:0]  idxH;

    initial begin
        errors = 0; valid_errors = 0; checked_count = 0;
        $readmemh("tv_a_ntt.memh",  a_ntt);
        $readmemh("tv_b_ntt.memh",  b_ntt);
        $readmemh("tv_c_pwm.memh",  c_gold);
        $readmemh("zetas_pwm.memh", gammas);

        rst_n = 1'b0;
        valid_in = 1'b0;
        a_pkt = 0; b_pkt = 0; gamma = 0;

        @(posedge clk); @(posedge clk);
        rst_n = 1'b1;

        // Init history
        for (j = 0; j < LAT; j = j + 1) begin
            idx_hist[j] = 8'd0;
            v_hist[j]   = 1'b0;
        end

        for (i = 0; i < N + LAT; i = i + 1) begin
            // 算這 cycle 要餵的 (blocking,不涉及 clk)
            if (i < N) begin
                a_in   = {a_ntt[2*i + 1], a_ntt[2*i]};
                b_in   = {b_ntt[2*i + 1], b_ntt[2*i]};
                g_in   = {4'd0, gammas[i]};
                v_in   = 1'b1;
                idx_in = i[7:0];
            end else begin
                a_in = 0; b_in = 0; g_in = 0;
                v_in = 1'b0;
                idx_in = 8'd0;
            end

            // === negedge 邊界:check + shift + drive ===
            @(negedge clk);

            // CHECK (用 history[LAT-1] 對應 LAT cycle 前餵的)
            if (v_hist[LAT-1]) begin
                checked_count = checked_count + 1;
                idxH = idx_hist[LAT-1];
                exp_c0 = c_gold[2*idxH];
                exp_c1 = c_gold[2*idxH + 1];
                got_c0 = c_pkt[11: 0];
                got_c1 = c_pkt[23:12];
                if ((got_c0 % Q) !== exp_c0 || (got_c1 % Q) !== exp_c1) begin
                    errors = errors + 1;
                    if (errors <= 10)
                        $display("FAIL idx=%0d exp=(c0=%0d, c1=%0d) got=(c0=%0d, c1=%0d)",
                                 idxH, exp_c0, exp_c1, got_c0%Q, got_c1%Q);
                end
                if (valid_out !== 1'b1) valid_errors = valid_errors + 1;
            end else begin
                if (valid_out !== 1'b0) valid_errors = valid_errors + 1;
            end

            // SHIFT
            for (j = LAT-1; j > 0; j = j - 1) begin
                idx_hist[j] = idx_hist[j-1];
                v_hist[j]   = v_hist[j-1];
            end
            idx_hist[0] = idx_in;
            v_hist[0]   = v_in;

            // DRIVE
            a_pkt    = a_in;
            b_pkt    = b_in;
            gamma    = g_in;
            valid_in = v_in;
        end

        $display("[tb_pwm] checked=%0d", checked_count);
        if (errors == 0 && valid_errors == 0)
            $display("[tb_pwm] PASS  (128 binomials × 2 coefs = %0d values vs tv_c_pwm.memh)",
                     2*N);
        else
            $display("[tb_pwm] FAIL  data err=%0d  valid err=%0d", errors, valid_errors);
        $finish;
    end
endmodule