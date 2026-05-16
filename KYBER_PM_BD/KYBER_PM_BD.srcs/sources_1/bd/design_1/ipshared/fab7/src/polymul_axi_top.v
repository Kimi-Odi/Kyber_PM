`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// polymul_axi_top.v -- AXI4-Stream wrapper for polymul_top
// -----------------------------------------------------------------------------
// Stream packing: 1 word (32-bit) = 1 BRAM entry (24-bit binomial), 上 8-bit 0
//   input:  word [0..127]=a, word [128..255]=b, tlast 在 #255
//   output: word [0..127]=c, tlast 在 #127
//
// FSM: IDLE → LOAD_A → LOAD_B → COMPUTE → STORE → IDLE
// =============================================================================
module polymul_axi_top (
    input  wire        clk,
    input  wire        resetn,

    // AXI4-Stream Slave (DMA MM2S in)
    input  wire [31:0] S_AXIS_MM2S_tdata,
    input  wire        S_AXIS_MM2S_tvalid,
    output wire        S_AXIS_MM2S_tready,
    input  wire        S_AXIS_MM2S_tlast,
    input  wire [ 3:0] S_AXIS_MM2S_tkeep,

    // AXI4-Stream Master (DMA S2MM out)
    output wire [31:0] M_AXIS_S2MM_tdata,
    output wire        M_AXIS_S2MM_tvalid,
    input  wire        M_AXIS_S2MM_tready,
    output wire        M_AXIS_S2MM_tlast,
    output wire [ 3:0] M_AXIS_S2MM_tkeep,

    output wire [2:0]  state_dbg
);

    // ========================================================================
    // INPUT_STREAM_if
    // ========================================================================
    wire [31:0] isif_data_dout;
    wire [ 3:0] isif_strb_dout;
    wire        isif_last_dout;
    wire        isif_user_dout;
    wire        isif_empty_n;
    reg         isif_read;

    INPUT_STREAM_if #(.TBITS(32), .TBYTE(4)) u_isif (
        .ACLK(clk), .ARESETN(resetn),
        .TVALID(S_AXIS_MM2S_tvalid), .TREADY(S_AXIS_MM2S_tready),
        .TDATA(S_AXIS_MM2S_tdata), .TKEEP(S_AXIS_MM2S_tkeep),
        .TLAST(S_AXIS_MM2S_tlast), .TUSER(1'b0),
        .isif_data_dout(isif_data_dout),
        .isif_strb_dout(isif_strb_dout),
        .isif_last_dout(isif_last_dout),
        .isif_user_dout(isif_user_dout),
        .isif_empty_n(isif_empty_n),
        .isif_read(isif_read)
    );

    // ========================================================================
    // OUTPUT_STREAM_if
    // ========================================================================
    reg  [31:0] osif_data_din;
    wire [ 3:0] osif_strb_din = 4'b1111;
    reg         osif_last_din;
    wire        osif_full_n;
    reg         osif_write;

    OUTPUT_STREAM_if #(.TBITS(32), .TBYTE(4)) u_osif (
        .ACLK(clk), .ARESETN(resetn),
        .TVALID(M_AXIS_S2MM_tvalid), .TREADY(M_AXIS_S2MM_tready),
        .TDATA(M_AXIS_S2MM_tdata), .TKEEP(M_AXIS_S2MM_tkeep),
        .TLAST(M_AXIS_S2MM_tlast), .TUSER(),
        .osif_data_din(osif_data_din),
        .osif_strb_din(osif_strb_din),
        .osif_last_din(osif_last_din),
        .osif_user_din(1'b0),
        .osif_full_n(osif_full_n),
        .osif_write(osif_write)
    );

    // ========================================================================
    // polymul_top instance
    // ========================================================================
    reg         pm_start;
    wire        pm_busy, pm_done;
    reg  [6:0]  pm_dbg_addr;
    reg  [1:0]  pm_dbg_bram_sel;
    wire [23:0] pm_dbg_dout;
    reg  [23:0] pm_dbg_din;
    reg         pm_dbg_we;

    polymul_top u_core (
        .clk(clk), .rst_n(resetn),
        .start(pm_start),
        .busy(pm_busy), .done(pm_done),
        .dbg_addr(pm_dbg_addr),
        .dbg_bram_sel(pm_dbg_bram_sel),
        .dbg_dout(pm_dbg_dout),
        .dbg_din(pm_dbg_din),
        .dbg_we(pm_dbg_we)
    );

    // ========================================================================
    // FSM
    // ========================================================================
    localparam ST_IDLE    = 3'd0;
    localparam ST_LOAD_A  = 3'd1;
    localparam ST_LOAD_B  = 3'd2;
    localparam ST_COMPUTE = 3'd3;
    localparam ST_STORE   = 3'd4;

    reg [2:0]  state, next_state;
    reg [7:0]  cnt;          // 0..127 for load,  0..128 for store
    reg [7:0]  store_cnt_d1; // BRAM read latency 後對應的 cnt
    reg        store_valid_d1;

    assign state_dbg = state;

    localparam N = 128;

    always @(posedge clk or negedge resetn) begin
        if (!resetn) state <= ST_IDLE;
        else         state <= next_state;
    end

    always @(*) begin
        next_state = state;
        case (state)
            ST_IDLE:
                if (isif_empty_n) next_state = ST_LOAD_A;
            ST_LOAD_A:
                if (cnt == N - 1 && isif_empty_n) next_state = ST_LOAD_B;
            ST_LOAD_B:
                if (cnt == N - 1 && isif_empty_n) next_state = ST_COMPUTE;
            ST_COMPUTE:
                if (pm_done) next_state = ST_STORE;
            ST_STORE:
                // 跑到 cnt = N (= 128) 表示已發完所有 addr,且最後一個 osif write 完成
                // 因為 BRAM 1-cycle latency,cnt=N 時 osif 寫 cnt-1=N-1 (最後一筆)
                if (cnt == N && osif_full_n) next_state = ST_IDLE;
            default: next_state = ST_IDLE;
        endcase
    end

    // Counter
    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            cnt <= 8'd0;
        end else begin
            case (state)
                ST_IDLE: cnt <= 8'd0;
                ST_LOAD_A, ST_LOAD_B: begin
                    if (isif_empty_n) begin
                        if (cnt == N - 1) cnt <= 8'd0;
                        else              cnt <= cnt + 8'd1;
                    end
                end
                ST_COMPUTE: cnt <= 8'd0;
                ST_STORE: begin
                    if (osif_full_n && cnt != N) cnt <= cnt + 8'd1;
                    if (next_state == ST_IDLE) cnt <= 8'd0;
                end
                default: cnt <= 8'd0;
            endcase
        end
    end

    // BRAM read latency 1 cycle: store cnt_d1 跟 valid
    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            store_cnt_d1   <= 8'd0;
            store_valid_d1 <= 1'b0;
        end else begin
            if (state == ST_STORE && osif_full_n && cnt < N) begin
                store_cnt_d1   <= cnt;
                store_valid_d1 <= 1'b1;
            end else begin
                store_valid_d1 <= 1'b0;
            end
        end
    end

    // ========================================================================
    // 控制訊號
    // ========================================================================
    always @(*) begin
        isif_read       = 1'b0;
        pm_start        = 1'b0;
        pm_dbg_addr     = 7'd0;
        pm_dbg_bram_sel = 2'd0;
        pm_dbg_din      = 24'd0;
        pm_dbg_we       = 1'b0;
        osif_write      = 1'b0;
        osif_data_din   = 32'd0;
        osif_last_din   = 1'b0;

        case (state)
            ST_LOAD_A: begin
                if (isif_empty_n) begin
                    isif_read       = 1'b1;
                    pm_dbg_addr     = cnt[6:0];
                    pm_dbg_bram_sel = 2'd0;
                    pm_dbg_din      = isif_data_dout[23:0];
                    pm_dbg_we       = 1'b1;
                end
            end
            ST_LOAD_B: begin
                if (isif_empty_n) begin
                    isif_read       = 1'b1;
                    pm_dbg_addr     = cnt[6:0];
                    pm_dbg_bram_sel = 2'd1;
                    pm_dbg_din      = isif_data_dout[23:0];
                    pm_dbg_we       = 1'b1;
                end
            end
            ST_COMPUTE: begin
                // 進入 COMPUTE 第 1 cycle (pm_busy=0, pm_done=0) 拉 start
                if (!pm_busy && !pm_done) pm_start = 1'b1;
            end
            ST_STORE: begin
                // 發 BRAM read addr (cnt = 0..127)
                if (cnt < N) begin
                    pm_dbg_addr     = cnt[6:0];
                    pm_dbg_bram_sel = 2'd0;
                end
                // 寫 osif: 用 1 cycle 前的 BRAM dout (store_valid_d1)
                if (store_valid_d1 && osif_full_n) begin
                    osif_write      = 1'b1;
                    osif_data_din   = {8'd0, pm_dbg_dout};
                    osif_last_din   = (store_cnt_d1 == N - 1);
                end
            end
            default: ;
        endcase
    end

endmodule