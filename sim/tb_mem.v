`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// tb_mem.v -- BRAM (bram_128x24) + ROM (zetas_rom) ?Ÿº?œ¬??Ÿèƒ½é©—è??
// -----------------------------------------------------------------------------
// ??‚å??:
//   - posedge clk #N: set addr (blocking,ç«‹å³??Ÿæ??)
//   - @(posedge clk): ç­‰ä?‹å?? posedge,dout <= mem[addr] ?œ¨?™å?? posedge ??–å??
//   - #1:                ç­? dout ç©©å??
//   - check dout vs mem[addr_was_set]
//
// ä¹Ÿå°±?˜¯èª?: ?Œæ?‘é?™æ¬¡ loop set ??? addr å°æ?‰ç?? dout,?œ¨ä¸‹æ¬¡ posedge å¾Œå¯??‹åˆ°??
// =============================================================================
module tb_mem;

    reg clk = 1'b0;
    always #5 clk = ~clk;

    // ========================================================================
    // 1. BRAM ä¸è?? INIT_FILE
    // ========================================================================
    reg         ena_a, wea_a, enb_a, web_a;
    reg  [6:0]  addra_a, addrb_a;
    reg  [23:0] dina_a, dinb_a;
    wire [23:0] douta_a, doutb_a;

    bram_128x24 #(.INIT_FILE("")) u_bram_blank (
        .clk(clk),
        .ena(ena_a), .wea(wea_a), .addra(addra_a), .dina(dina_a), .douta(douta_a),
        .enb(enb_a), .web(web_a), .addrb(addrb_a), .dinb(dinb_a), .doutb(doutb_a)
    );

    // ========================================================================
    // 2. BRAM è¼? INIT_FILE = tv_a_bram.memh
    // ========================================================================
    reg         ena_b;
    reg  [6:0]  addra_b;
    wire [23:0] douta_b;

    bram_128x24 #(.INIT_FILE("tv_a_bram.memh")) u_bram_init (
        .clk(clk),
        .ena(ena_b), .wea(1'b0), .addra(addra_b), .dina(24'd0), .douta(douta_b),
        .enb(1'b0), .web(1'b0), .addrb(7'd0), .dinb(24'd0), .doutb()
    );

    // ========================================================================
    // 3. ROM è¼? zetas.memh
    // ========================================================================
    reg         rom_en;
    reg  [6:0]  rom_addr;
    wire [`DATA_WIDTH-1:0] rom_dout;

    zetas_rom #(.INIT_FILE("zetas.memh")) u_rom (
        .clk(clk), .en(rom_en), .addr(rom_addr), .dout(rom_dout)
    );

    // ========================================================================
    // Golden reference
    // ========================================================================
    reg [`DATA_WIDTH-1:0] zetas_ref [0:127];
    reg [23:0]            bram_ref  [0:127];

    integer i;
    integer errors_b, errors_r;
    reg [6:0] prev_addr;

    initial begin
        errors_b = 0;
        errors_r = 0;
        $readmemh("zetas.memh", zetas_ref);
        $readmemh("tv_a_bram.memh", bram_ref);

        ena_a = 0; wea_a = 0; enb_a = 0; web_a = 0;
        ena_b = 0; addra_b = 0;
        rom_en = 0; rom_addr = 0;
        addra_a = 0; addrb_a = 0; dina_a = 0; dinb_a = 0;

        @(posedge clk); @(posedge clk);

        // ====================================================================
        // æ¸¬è©¦ 1: BRAM Port A å¯«å…¥ 8 ?‹ä?å?,?„¶å¾Œè??‡ºæ¯”å??
        // ====================================================================
        // å¯«å…¥??æ®µ
        for (i = 0; i < 8; i = i + 1) begin
            @(negedge clk);
            ena_a = 1; wea_a = 1;
            addra_a = i[6:0];
            dina_a = 24'hAA0000 + i;
        end

        // ??‡è?,??? set addr=0,ç­? 1 cycle,?„¶å¾? set ä¸‹å?? addr ä¸? check ä¸Šå?? addr ??? dout
        @(negedge clk);
        ena_a = 1; wea_a = 0; addra_a = 0; prev_addr = 0;
        @(posedge clk); #1;   // T=N posedge: dout ??–å?? mem[0]

        for (i = 1; i < 8; i = i + 1) begin
            @(negedge clk);
            addra_a = i[6:0];     // set ä¸‹å?? addr
            @(posedge clk); #1;   // dout ??–å?? mem[i]
            // check ä¸Šæ¬¡ set ??? addr (= i-1) å°æ?‰ç?? dout
            // ç­‰ç?? - dout æ­¤æ?‚æ˜¯ mem[?–° set ??? addr]???„æ˜¯ mem[ä¸Šæ¬¡ set ??„]?
            //
            // RTL: always @(posedge) dout <= mem[addr]
            // T=posedge è§¸ç™¼??? addr ?˜¯?Œä?Šæ¬¡ negedge å¾? set ??„å?¼ã?? = ?–° set ??„å??
            // ??ä»? dout ?˜¯ mem[?–° set ??? addr] = mem[i]
            //
            // ?‚£ check ??‰è©²å°? mem[i] (?Œé?? i-1)
            if (douta_a !== (24'hAA0000 + i)) begin
                errors_b = errors_b + 1;
                if (errors_b < 5)
                    $display("TEST1 FAIL addr=%0d got=%h exp=%h",
                             i, douta_a, 24'hAA0000 + i);
            end
        end
        // ??„æ?? check addr=0,?œ¨??å¾Œå?? check ä¸?æ¬?
        // ç­‰ç?? - ??‘å?é¢å·²ç?? set addr=0 ?„¶å¾? wait posedge,ä½†æ?? check??
        // ??æ–°?•´???:
        // - "è®?ç¬¬ä?æ¬?":@(negedge), set addr=0, @(posedge) #1
        //               æ­¤æ?? dout = mem[0]
        //               ä½†æ?‘æ?? check
        // - ?? loop i=1: set addr=1, @(posedge) #1
        //               æ­¤æ?? dout = mem[1]
        //               check dout == mem[1] ???
        //
        // ç¼? addr=0 ??? check?‚æ?å¾Œè?œä???:
        @(negedge clk);
        addra_a = 0;          // ??è?ä¸?æ¬? addr=0
        @(posedge clk); #1;
        if (douta_a !== 24'hAA0000) begin
            errors_b = errors_b + 1;
            $display("TEST1 addr=0 FAIL got=%h exp=%h", douta_a, 24'hAA0000);
        end
        ena_a = 0;

        // ====================================================================
        // æ¸¬è©¦ 2: BRAM Port B ?¨ç«‹è?å¯?
        // ====================================================================
        for (i = 0; i < 8; i = i + 1) begin
            @(negedge clk);
            enb_a = 1; web_a = 1; addrb_a = i+64; dinb_a = 24'hBB0000 + i;
        end
        @(negedge clk);
        enb_a = 1; web_a = 0;
        addrb_a = 64;
        @(posedge clk); #1;     // dout=mem[64]
        for (i = 1; i < 8; i = i + 1) begin
            @(negedge clk);
            addrb_a = (i+64);
            @(posedge clk); #1;
            if (doutb_a !== (24'hBB0000 + i)) begin
                errors_b = errors_b + 1;
                if (errors_b < 5)
                    $display("TEST2 FAIL addr=%0d got=%h exp=%h",
                             i+64, doutb_a, 24'hBB0000 + i);
            end
        end
        @(negedge clk);
        addrb_a = 64;
        @(posedge clk); #1;
        if (doutb_a !== 24'hBB0000) begin
            errors_b = errors_b + 1;
            $display("TEST2 addr=64 FAIL got=%h exp=%h", doutb_a, 24'hBB0000);
        end
        enb_a = 0;

        // ====================================================================
        // æ¸¬è©¦ 3: ??™å? å?? cycle è®?ä¸å?Œä?å?
        // ====================================================================
        @(negedge clk);
        ena_a = 1; wea_a = 0; addra_a = 3;     // ä¹‹å?å¯«??? = 0xAA0003
        enb_a = 1; web_a = 0; addrb_a = 67;    // ä¹‹å?å¯«??? = 0xBB0003
        @(posedge clk); #1;
        if (douta_a !== 24'hAA0003) begin
            errors_b = errors_b + 1;
            $display("TEST3 PortA FAIL got=%h", douta_a);
        end
        if (doutb_a !== 24'hBB0003) begin
            errors_b = errors_b + 1;
            $display("TEST3 PortB FAIL got=%h", doutb_a);
        end
        ena_a = 0; enb_a = 0;

        // ====================================================================
        // æ¸¬è©¦ 4: BRAM INIT_FILE è¼‰å…¥ tv_a_bram.memh,?? entry æ¯”å??
        // ====================================================================
        @(negedge clk);
        ena_b = 1; addra_b = 0;
        @(posedge clk); #1;     // dout = mem[0]
        for (i = 1; i < 128; i = i + 1) begin
            @(negedge clk);
            addra_b = i[6:0];
            @(posedge clk); #1;
            if (douta_b !== bram_ref[i]) begin
                errors_b = errors_b + 1;
                if (errors_b < 5)
                    $display("TEST4 FAIL addr=%0d got=%h exp=%h",
                             i, douta_b, bram_ref[i]);
            end
        end
        // è£? check addr=0
        @(negedge clk);
        addra_b = 0;
        @(posedge clk); #1;
        if (douta_b !== bram_ref[0]) begin
            errors_b = errors_b + 1;
            $display("TEST4 addr=0 FAIL got=%h exp=%h", douta_b, bram_ref[0]);
        end
        ena_b = 0;

        // ====================================================================
        // æ¸¬è©¦ 5: ROM è®? zetas[0..127]
        // ====================================================================
        @(negedge clk);
        rom_en = 1; rom_addr = 0;
        @(posedge clk); #1;     // dout = zetas[0]
        for (i = 1; i < 128; i = i + 1) begin
            @(negedge clk);
            rom_addr = i[6:0];
            @(posedge clk); #1;
            if (rom_dout !== zetas_ref[i]) begin
                errors_r = errors_r + 1;
                if (errors_r < 5)
                    $display("ROM FAIL addr=%0d got=%h exp=%h",
                             i, rom_dout, zetas_ref[i]);
            end
        end
        @(negedge clk);
        rom_addr = 0;
        @(posedge clk); #1;
        if (rom_dout !== zetas_ref[0]) begin
            errors_r = errors_r + 1;
            $display("ROM addr=0 FAIL got=%h exp=%h", rom_dout, zetas_ref[0]);
        end
        rom_en = 0;

        // ====================================================================
        // çµæ??
        // ====================================================================
        if (errors_b == 0) $display("[tb_mem] BRAM PASS (port-A/B write+read, dual-port, INIT_FILE)");
        else               $display("[tb_mem] BRAM FAIL (%0d errors)", errors_b);
        if (errors_r == 0) $display("[tb_mem] ROM  PASS (zetas[0..127] verified)");
        else               $display("[tb_mem] ROM  FAIL (%0d errors)", errors_r);
        if (errors_b == 0 && errors_r == 0)
            $display("[tb_mem] OVERALL PASS");
        else
            $display("[tb_mem] OVERALL FAIL");
        $finish;
    end

endmodule