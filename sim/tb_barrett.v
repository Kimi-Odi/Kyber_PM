`timescale 1ns/1ps
`include "kyber_params.v"
module tb_barrett;
    localparam LAT    = 2;
    localparam N_TEST = 10000;

    reg                     clk = 1'b0;
    reg                     rst_n = 1'b0;
    reg  [23:0]             c;
    wire [`DATA_WIDTH-1:0]  r;

    barrett_reduction dut (.clk(clk), .rst_n(rst_n), .a(c), .result(r));

    always #5 clk = ~clk;

    reg [23:0]  c_hist [0:LAT-1];
    reg         v_hist [0:LAT-1];

    integer i, errors, seed;
    integer expected;
    reg [23:0] c_now;

    initial begin
        errors = 0; seed = 32'h1234_5678;
        for (i = 0; i < LAT; i = i + 1) begin
            c_hist[i] = 0; v_hist[i] = 1'b0;
        end
        c = 0;
        rst_n = 1'b0;
        @(posedge clk); @(posedge clk);
        rst_n = 1'b1;

        for (i = 0; i < N_TEST + 5; i = i + 1) begin
            case (i)
                0: c_now = 24'd0;
                1: c_now = 24'd3328;
                2: c_now = 24'd3329;
                3: c_now = 24'd6657;
                4: c_now = 24'd11075584;
                default: begin
                    c_now = $random(seed) & 24'hFFFFFF;
                    if (c_now > 24'd11075584) c_now = 24'd11075584;
                end
            endcase

            @(negedge clk);
            c = c_now;

            if (v_hist[LAT-1]) begin
                expected = c_hist[LAT-1] % 3329;
                if (r !== expected[`DATA_WIDTH-1:0]) begin
                    errors = errors + 1;
                    if (errors < 5)
                        $display("FAIL c=%0d got=%0d exp=%0d",
                                 c_hist[LAT-1], r, expected);
                end
            end
            c_hist[1] = c_hist[0]; v_hist[1] = v_hist[0];
            c_hist[0] = c_now;     v_hist[0] = 1'b1;
        end

        for (i = 0; i < LAT; i = i + 1) begin
            @(negedge clk);
            if (v_hist[LAT-1]) begin
                expected = c_hist[LAT-1] % 3329;
                if (r !== expected[`DATA_WIDTH-1:0]) begin
                    errors = errors + 1;
                    if (errors < 5)
                        $display("FAIL drain c=%0d got=%0d exp=%0d",
                                 c_hist[LAT-1], r, expected);
                end
            end
            c_hist[1] = c_hist[0]; v_hist[1] = v_hist[0];
            c_hist[0] = 0; v_hist[0] = 1'b0;
        end

        if (errors == 0) $display("[tb_barrett] PASS  (%0d cases)", N_TEST + 5);
        else             $display("[tb_barrett] FAIL  %0d errors", errors);
        $finish;
    end
endmodule