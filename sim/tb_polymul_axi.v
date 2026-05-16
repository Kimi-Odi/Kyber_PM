`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_polymul_axi.v -- 模擬 DMA AXI4-Stream 行為,測試 polymul_axi_top
// -----------------------------------------------------------------------------
// 1. 模擬 DMA MM2S: 餵 256 word (a[0..127], b[0..127]),tlast 在 #255
// 2. polymul_axi_top 內部 load → compute → store
// 3. 模擬 DMA S2MM: 收 128 word (c[0..127]),驗證 tlast 在 #127
// 4. 比對收到的 c 跟 tv_polymul_0_c_bram.memh
// =============================================================================
module tb_polymul_axi;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    reg         resetn;

    // MM2S (TB → DUT)
    reg  [31:0] mm2s_tdata;
    reg         mm2s_tvalid;
    wire        mm2s_tready;
    reg         mm2s_tlast;
    reg  [ 3:0] mm2s_tkeep;

    // S2MM (DUT → TB)
    wire [31:0] s2mm_tdata;
    wire        s2mm_tvalid;
    reg         s2mm_tready;
    wire        s2mm_tlast;
    wire [ 3:0] s2mm_tkeep;

    wire [2:0]  state_dbg;

    polymul_axi_top dut (
        .clk(clk), .resetn(resetn),
        .S_AXIS_MM2S_tdata(mm2s_tdata),
        .S_AXIS_MM2S_tvalid(mm2s_tvalid),
        .S_AXIS_MM2S_tready(mm2s_tready),
        .S_AXIS_MM2S_tlast(mm2s_tlast),
        .S_AXIS_MM2S_tkeep(mm2s_tkeep),
        .M_AXIS_S2MM_tdata(s2mm_tdata),
        .M_AXIS_S2MM_tvalid(s2mm_tvalid),
        .M_AXIS_S2MM_tready(s2mm_tready),
        .M_AXIS_S2MM_tlast(s2mm_tlast),
        .M_AXIS_S2MM_tkeep(s2mm_tkeep),
        .state_dbg(state_dbg)
    );

    // testvector
    reg [23:0] a_bram [0:127];
    reg [23:0] b_bram [0:127];
    reg [23:0] c_gold [0:127];
    reg [31:0] c_recv [0:127];

    integer i;
    integer recv_cnt;
    integer errors;
    integer last_errors;
    integer timeout;

    // ------------------------------------------------------------------
    // S2MM receiver (always active): 收 DUT 送出的 word
    // ------------------------------------------------------------------
    reg s2mm_done;
    initial begin
        recv_cnt  = 0;
        s2mm_done = 1'b0;
        s2mm_tready = 1'b1;     // 永遠 ready (簡化 DMA 行為)
        last_errors = 0;
    end

    always @(posedge clk) begin
        if (resetn && s2mm_tvalid && s2mm_tready) begin
            if (recv_cnt < 128) begin
                c_recv[recv_cnt] <= s2mm_tdata;
                if (s2mm_tlast && recv_cnt != 127)
                    last_errors <= last_errors + 1;   // tlast 太早
                if (!s2mm_tlast && recv_cnt == 127)
                    last_errors <= last_errors + 1;   // tlast 該出沒出
            end
            recv_cnt <= recv_cnt + 1;
            if (recv_cnt == 127) s2mm_done <= 1'b1;
        end
    end

    // ------------------------------------------------------------------
    // 主測試
    // ------------------------------------------------------------------
    initial begin
        errors = 0; timeout = 0;
        $readmemh("tv_polymul_0_a_bram.memh", a_bram);
        $readmemh("tv_polymul_0_b_bram.memh", b_bram);
        $readmemh("tv_polymul_0_c_bram.memh", c_gold);

        resetn      = 1'b0;
        mm2s_tdata  = 32'd0;
        mm2s_tvalid = 1'b0;
        mm2s_tlast  = 1'b0;
        mm2s_tkeep  = 4'b1111;

        repeat (4) @(posedge clk);
        @(negedge clk); resetn = 1'b1;
        repeat (2) @(posedge clk);

        // ===== 餵 a (word 0..127) =====
        for (i = 0; i < 128; i = i + 1) begin
            @(negedge clk);
            mm2s_tdata  = {8'd0, a_bram[i]};
            mm2s_tvalid = 1'b1;
            mm2s_tlast  = 1'b0;
            // 等 tready 握手
            @(posedge clk);
            while (!mm2s_tready) @(posedge clk);
        end

        // ===== 餵 b (word 128..255),tlast 在 #255 =====
        for (i = 0; i < 128; i = i + 1) begin
            @(negedge clk);
            mm2s_tdata  = {8'd0, b_bram[i]};
            mm2s_tvalid = 1'b1;
            mm2s_tlast  = (i == 127) ? 1'b1 : 1'b0;
            @(posedge clk);
            while (!mm2s_tready) @(posedge clk);
        end

        @(negedge clk);
        mm2s_tvalid = 1'b0;
        mm2s_tlast  = 1'b0;

        // ===== 等 S2MM 收完 128 word =====
        while (!s2mm_done) begin
            @(posedge clk);
            timeout = timeout + 1;
            if (timeout > 5000) begin
                $display("[tb_polymul_axi] TIMEOUT, recv_cnt=%0d state=%0d",
                         recv_cnt, state_dbg);
                $finish;
            end
        end

        repeat (4) @(posedge clk);

        // ===== 比對 =====
        for (i = 0; i < 128; i = i + 1) begin
            if ((c_recv[i][23:12] % 3329) !== (c_gold[i][23:12] % 3329) ||
                (c_recv[i][11: 0] % 3329) !== (c_gold[i][11: 0] % 3329)) begin
                errors = errors + 1;
                if (errors <= 10)
                    $display("FAIL word=%0d got=%h exp=%h",
                             i, c_recv[i], c_gold[i]);
            end
        end

        $display("");
        $display("[tb_polymul_axi] received %0d words, took %0d cycles after feed",
                 recv_cnt, timeout);
        if (errors == 0 && last_errors == 0)
            $display("[tb_polymul_axi] PASS  AXI stream polymul verified (128 words, tlast OK)");
        else
            $display("[tb_polymul_axi] FAIL  data_err=%0d tlast_err=%0d",
                     errors, last_errors);

        $finish;
    end

endmodule