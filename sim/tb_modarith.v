`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_modarith.v -- Modified mod_adder / mod_subtractor (Fig.6)
// -----------------------------------------------------------------------------
// ?��?�都?��純�?��??,�? op=0 (�? mod) + op=1 (mod + ÷2)
// 輸出?��?�� >= q (redundant representation),比�?��?��?? mod q
//
// mod_multiplier �? pipelined,移到 tb_bu 裡�?起測??
// =============================================================================
module tb_modarith;
    localparam Q       = 16'd3329;
    localparam INV2    = 16'd1665;
    localparam N_RAND  = 5000;

    reg                     op;
    reg  [`DATA_WIDTH-1:0]  a, b;
    wire [`DATA_WIDTH-1:0]  add_r, sub_r;

    mod_adder      ua (.op(op), .a(a), .b(b), .result(add_r));
    mod_subtractor us (.op(op), .a(a), .b(b), .result(sub_r));

    integer i, seed;
    integer add_err = 0, sub_err = 0;
    integer e_add, e_sub;

    initial begin
        seed = 32'hC0DECAFE;

        // ---------- op = 0: pure mod ----------
        op = 1'b0;
        for (i = 0; i < N_RAND; i = i + 1) begin
            a = $random(seed) & 16'hFFF; if (a >= Q) a = a - Q;
            b = $random(seed) & 16'hFFF; if (b >= Q) b = b - Q;
            #1;
            e_add = (a + b) % 3329;
            e_sub = (a + 3329 - b) % 3329;
            if ((add_r % 3329) !== e_add[`DATA_WIDTH-1:0]) begin
                add_err = add_err + 1;
                if (add_err < 3)
                    $display("ADD op=0 FAIL a=%0d b=%0d got=%0d exp=%0d", a, b, add_r, e_add);
            end
            if ((sub_r % 3329) !== e_sub[`DATA_WIDTH-1:0]) begin
                sub_err = sub_err + 1;
                if (sub_err < 3)
                    $display("SUB op=0 FAIL a=%0d b=%0d got=%0d exp=%0d", a, b, sub_r, e_sub);
            end
        end

        // ---------- op = 1: mod + ÷2 ----------
        op = 1'b1;
        for (i = 0; i < N_RAND; i = i + 1) begin
            a = $random(seed) & 16'hFFF; if (a >= Q) a = a - Q;
            b = $random(seed) & 16'hFFF; if (b >= Q) b = b - Q;
            #1;
            e_add = ((a + b) * INV2) % 3329;
            e_sub = ((a + 3329 - b) * INV2) % 3329;
            if ((add_r % 3329) !== e_add[`DATA_WIDTH-1:0]) begin
                add_err = add_err + 1;
                if (add_err < 3)
                    $display("ADD op=1 FAIL a=%0d b=%0d got=%0d exp=%0d", a, b, add_r, e_add);
            end
            if ((sub_r % 3329) !== e_sub[`DATA_WIDTH-1:0]) begin
                sub_err = sub_err + 1;
                if (sub_err < 3)
                    $display("SUB op=1 FAIL a=%0d b=%0d got=%0d exp=%0d", a, b, sub_r, e_sub);
            end
        end

        $display("[modadd] %s  (%0d errors / %0d)",
                 (add_err == 0) ? "PASS" : "FAIL", add_err, 2*N_RAND);
        $display("[modsub] %s  (%0d errors / %0d)",
                 (sub_err == 0) ? "PASS" : "FAIL", sub_err, 2*N_RAND);
        $finish;
    end
endmodule