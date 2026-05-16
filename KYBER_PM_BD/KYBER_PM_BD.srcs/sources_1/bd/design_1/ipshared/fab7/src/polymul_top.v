`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// polymul_top.v -- Kyber Polynomial Multiplication 端到端整合
// -----------------------------------------------------------------------------
// 流程:
//   IDLE     → start → NTT_A
//   NTT_A    跑 NTT(a),BRAM_A ↔ BRAM_C 做 ping-pong (結果 â 在 C)
//   NTT_B    跑 NTT(b),BRAM_B ↔ BRAM_A 做 ping-pong (結果 b̂ 在 A)
//   PWM      讀 C[i] + A[i] → pwm_unit → 寫 B[i] (結果 ĉ 在 B)
//   INTT     跑 INTT(ĉ),BRAM_B ↔ BRAM_A 做 ping-pong (結果 c 在 A)
//   DONE     pulse,回 IDLE
//
// BRAM 角色:
//   BRAM_A: a 系列  (a → 中間 → b̂ → 中間 → c)
//   BRAM_B: b 系列  (b → 中間 → ĉ → 中間)
//   BRAM_C: ping-pong 暫存 (NTT(a) 結果 â → PWM 讀)
//
// 完整 cycle 預算:
//   NTT_A  ≈ 499
//   NTT_B  ≈ 499
//   PWM    ≈ 138 (128 binomial + 10 latency)
//   INTT   ≈ 499
//   total  ≈ 1635 cycle
//
// 跟 ntt_top 不同點:
//   - 3 BRAM 而非 2
//   - 每階段 FSM 決定哪兩塊 BRAM 做 ping-pong (用 mux 連到 BRAM ports)
//   - 新增 PWM 階段 (走 pwm_unit + 線性 counter)
// =============================================================================
module polymul_top #(
    parameter BRAM_A_INIT = "",
    parameter BRAM_B_INIT = "",
    parameter BRAM_C_INIT = "",
    parameter ZETAS_INIT     = "zetas.memh",
    parameter ZETAS_PWM_INIT = "zetas_pwm.memh"
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,
    output reg         busy,
    output reg         done,

    // Debug / read-out + write port (testbench / AXI load 用)
    input  wire [6:0]  dbg_addr,
    input  wire [1:0]  dbg_bram_sel,    // 0=A, 1=B, 2=C
    output wire [23:0] dbg_dout,
    input  wire [23:0] dbg_din,         // 寫入資料 (AXI LOAD 階段用)
    input  wire        dbg_we           // 寫入致能
);

    // ========================================================================
    // FSM
    // ========================================================================
    localparam ST_IDLE   = 3'd0;
    localparam ST_NTT_A  = 3'd1;
    localparam ST_NTT_B  = 3'd2;
    localparam ST_PWM    = 3'd3;
    localparam ST_INTT   = 3'd4;
    localparam ST_DONE   = 3'd5;

    reg [2:0] state, next_state;

    // 控制 addr_gen / pwm
    reg        ag_start;
    reg        ag_is_intt;
    reg        ag_start_bram_select;
    wire       ag_busy, ag_done;

    reg        pwm_start;
    reg        pwm_running_pulse;
    wire       pwm_done;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= ST_IDLE;
        else        state <= next_state;
    end

    always @(*) begin
        next_state = state;
        case (state)
            ST_IDLE:  if (start) next_state = ST_NTT_A;
            ST_NTT_A: if (ag_done) next_state = ST_NTT_B;
            ST_NTT_B: if (ag_done) next_state = ST_PWM;
            ST_PWM:   if (pwm_done) next_state = ST_INTT;
            ST_INTT:  if (ag_done) next_state = ST_DONE;
            ST_DONE:  next_state = ST_IDLE;
            default:  next_state = ST_IDLE;
        endcase
    end

    // busy / done
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            busy <= 1'b0;
            done <= 1'b0;
        end else begin
            done <= (state == ST_DONE);
            busy <= (state != ST_IDLE) && (state != ST_DONE);
        end
    end

    // ========================================================================
    // addr_gen 啟動邏輯
    //   - 進入 NTT_A/NTT_B/INTT 那 cycle 拉 start (1 cycle pulse)
    //   - is_intt 在 INTT 階段 = 1
    // ========================================================================
    reg ag_started;     // 已經 start 過 (避免重複 pulse)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ag_start              <= 1'b0;
            ag_is_intt            <= 1'b0;
            ag_start_bram_select  <= 1'b0;
            ag_started            <= 1'b0;
        end else begin
            ag_start <= 1'b0;     // default: pulse only
            if (state == ST_IDLE) ag_started <= 1'b0;

            // 進入 NTT/INTT 階段且還沒 start: 拉 1 cycle start
            if ((state == ST_NTT_A || state == ST_NTT_B || state == ST_INTT) && !ag_started && !ag_busy) begin
                ag_start   <= 1'b1;
                ag_started <= 1'b1;
                ag_is_intt <= (state == ST_INTT);
                // 起始 BRAM 選哪一個由 NTT/INTT_xx 對應 mux 處理
                // ping_pong 起始 = 0 (從 sel_0 讀)
                ag_start_bram_select <= 1'b0;
            end
            if (ag_done) ag_started <= 1'b0;     // 為下個階段重置
        end
    end

    // ========================================================================
    // PWM 啟動邏輯 (進入 ST_PWM 拉 start)
    // ========================================================================
    reg pwm_started;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pwm_start   <= 1'b0;
            pwm_started <= 1'b0;
        end else begin
            pwm_start <= 1'b0;
            if (state == ST_IDLE || state == ST_DONE) pwm_started <= 1'b0;
            if (state == ST_PWM && !pwm_started) begin
                pwm_start   <= 1'b1;
                pwm_started <= 1'b1;
            end
        end
    end

    // ========================================================================
    // addr_gen (NTT/INTT 用)
    // ========================================================================
    wire [2:0]  ag_stage;
    wire        ag_read_sel, ag_write_sel;
    wire [6:0]  ag_read_j, ag_read_jpk, ag_twiddle_addr;
    wire        ag_read_en, ag_twiddle_en;
    wire [6:0]  ag_write_j, ag_write_jpk;
    wire        ag_write_en;
    wire [2:0]  ag_write_stage;
    wire [1:0]  ag_bu_mode;

    addr_gen u_addr (
        .clk(clk), .rst_n(rst_n),
        .start(ag_start),
        .is_intt(ag_is_intt),
        .start_bram_select(ag_start_bram_select),
        .busy(ag_busy), .done(ag_done),
        .stage_out(ag_stage),
        .read_bram_sel(ag_read_sel),
        .write_bram_sel(ag_write_sel),
        .read_addr_j(ag_read_j),
        .read_addr_jpk(ag_read_jpk),
        .read_en(ag_read_en),
        .twiddle_addr(ag_twiddle_addr),
        .twiddle_en(ag_twiddle_en),
        .write_addr_j(ag_write_j),
        .write_addr_jpk(ag_write_jpk),
        .write_en(ag_write_en),
        .write_stage(ag_write_stage),
        .bu_mode(ag_bu_mode)
    );

    // ========================================================================
    // 階段 → BRAM 角色 mapping
    //   NTT_A: read_bank_0 = A (0), read_bank_1 = C (2)
    //   NTT_B: read_bank_0 = B (1), read_bank_1 = A (0)
    //   PWM:   讀 C+A (走 pwm 控制,不走 addr_gen)
    //   INTT:  read_bank_0 = B (1), read_bank_1 = A (0)
    //
    // 從 ag_read_sel (0/1) → 實際 BRAM ID (0/1/2)
    // ========================================================================
    function [1:0] map_bram_id;
        input [2:0] cur_state;
        input       sel;       // 0 = sel_0, 1 = sel_1
        begin
            case (cur_state)
                ST_NTT_A: map_bram_id = sel ? 2'd2 : 2'd0;   // 0=A, 1=C
                ST_NTT_B: map_bram_id = sel ? 2'd0 : 2'd1;   // 0=B, 1=A
                ST_INTT:  map_bram_id = sel ? 2'd0 : 2'd1;   // 0=B, 1=A
                default:  map_bram_id = 2'd0;
            endcase
        end
    endfunction

    wire [1:0] ntt_read_bid  = map_bram_id(state, ag_read_sel);
    wire [1:0] ntt_write_bid = map_bram_id(state, ag_write_sel);

    // ========================================================================
    // dual_butterfly_unit (跟 ntt_top 一樣連法)
    // ========================================================================
    // BRAM dout 1 cycle 後進 BU,read_sel 也延 1
    reg [1:0] ntt_read_bid_d1;
    reg       ag_read_en_d1;
    reg [1:0] ag_bu_mode_d1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ntt_read_bid_d1 <= 2'd0;
            ag_read_en_d1   <= 1'b0;
            ag_bu_mode_d1   <= 2'b00;
        end else begin
            ntt_read_bid_d1 <= ntt_read_bid;
            ag_read_en_d1   <= ag_read_en;
            ag_bu_mode_d1   <= ag_bu_mode;
        end
    end

    // ========================================================================
    // 3 塊 BRAM
    //   每個都是 dual-port,可以同 cycle 從 NTT (Port A=j, Port B=jpk) 讀寫
    //   PWM 階段重新配置 mux
    //
    // 為了同時支援 NTT 跟 PWM,每個 BRAM port 的訊號用 always block mux 決定
    // ========================================================================
    // BRAM A signals
    reg         A_ena, A_wea, A_enb, A_web;
    reg  [6:0]  A_addra, A_addrb;
    reg  [23:0] A_dina,  A_dinb;
    wire [23:0] A_douta, A_doutb;
    bram_128x24 #(.INIT_FILE(BRAM_A_INIT)) u_bram_A (
        .clk(clk),
        .ena(A_ena), .wea(A_wea), .addra(A_addra), .dina(A_dina), .douta(A_douta),
        .enb(A_enb), .web(A_web), .addrb(A_addrb), .dinb(A_dinb), .doutb(A_doutb)
    );

    // BRAM B
    reg         B_ena, B_wea, B_enb, B_web;
    reg  [6:0]  B_addra, B_addrb;
    reg  [23:0] B_dina,  B_dinb;
    wire [23:0] B_douta, B_doutb;
    bram_128x24 #(.INIT_FILE(BRAM_B_INIT)) u_bram_B (
        .clk(clk),
        .ena(B_ena), .wea(B_wea), .addra(B_addra), .dina(B_dina), .douta(B_douta),
        .enb(B_enb), .web(B_web), .addrb(B_addrb), .dinb(B_dinb), .doutb(B_doutb)
    );

    // BRAM C
    reg         C_ena, C_wea, C_enb, C_web;
    reg  [6:0]  C_addra, C_addrb;
    reg  [23:0] C_dina,  C_dinb;
    wire [23:0] C_douta, C_doutb;
    bram_128x24 #(.INIT_FILE(BRAM_C_INIT)) u_bram_C (
        .clk(clk),
        .ena(C_ena), .wea(C_wea), .addra(C_addra), .dina(C_dina), .douta(C_douta),
        .enb(C_enb), .web(C_web), .addrb(C_addrb), .dinb(C_dinb), .doutb(C_doutb)
    );

    // ========================================================================
    // PWM 控制: 線性 counter 0..127 + drain
    // ========================================================================
    localparam PWM_LAT = 10;
    localparam PWM_N   = 128;
    reg [7:0] pwm_cnt;            // 0..127 read counter
    reg [7:0] pwm_wcnt;           // PWM write counter (= pwm_cnt - PWM_LAT)
    reg       pwm_read_active;
    reg       pwm_write_active;   // delay 後 write 有效
    reg [7:0] pwm_wcnt_pipe [0:PWM_LAT-1];
    reg       pwm_wen_pipe  [0:PWM_LAT-1];
    integer pi;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pwm_cnt          <= 8'd0;
            pwm_read_active  <= 1'b0;
            pwm_write_active <= 1'b0;
            for (pi = 0; pi < PWM_LAT; pi = pi + 1) begin
                pwm_wcnt_pipe[pi] <= 8'd0;
                pwm_wen_pipe[pi]  <= 1'b0;
            end
        end else begin
            if (state == ST_IDLE || state == ST_DONE) begin
                pwm_cnt         <= 8'd0;
                pwm_read_active <= 1'b0;
            end else if (state == ST_PWM) begin
                if (pwm_start) begin
                    pwm_cnt         <= 8'd0;
                    pwm_read_active <= 1'b1;
                end else if (pwm_read_active) begin
                    if (pwm_cnt == PWM_N - 1) begin
                        pwm_read_active <= 1'b0;
                    end else begin
                        pwm_cnt <= pwm_cnt + 8'd1;
                    end
                end
            end

            // write pipe: 7 cycle 延遲 of (pwm_cnt, pwm_read_active)
            pwm_wcnt_pipe[0] <= pwm_cnt;
            pwm_wen_pipe[0]  <= pwm_read_active;
            for (pi = 1; pi < PWM_LAT; pi = pi + 1) begin
                pwm_wcnt_pipe[pi] <= pwm_wcnt_pipe[pi-1];
                pwm_wen_pipe[pi]  <= pwm_wen_pipe[pi-1];
            end
            pwm_wcnt         <= pwm_wcnt_pipe[PWM_LAT-1];
            pwm_write_active <= pwm_wen_pipe[PWM_LAT-1];
        end
    end

    // pwm_done: 最後一個 write 寫完 + drain
    // 簡單實作: pwm_write_active 從 1 變 0 那 cycle = done
    reg pwm_write_active_d1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) pwm_write_active_d1 <= 1'b0;
        else        pwm_write_active_d1 <= pwm_write_active;
    end
    assign pwm_done = pwm_write_active_d1 && !pwm_write_active && state == ST_PWM;

    // ========================================================================
    // pwm_unit
    // ========================================================================
    // PWM 讀 C[pwm_cnt] (â) + A[pwm_cnt] (b̂)
    // 從 BRAM 出來要 1 cycle latency,所以 pwm_unit 餵的時間是 pwm_cnt 出 BRAM 後
    wire [23:0] pwm_a_pkt = C_douta;
    wire [23:0] pwm_b_pkt = A_douta;
    wire [`DATA_WIDTH-1:0] pwm_gamma_w;

    // pwm_unit valid_in = pwm_read_active 延遲 1 cycle (= BRAM read latency)
    reg pwm_valid_in_d1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) pwm_valid_in_d1 <= 1'b0;
        else        pwm_valid_in_d1 <= pwm_read_active;
    end

    wire [23:0] pwm_c_pkt;
    wire        pwm_valid_out;
    pwm_unit u_pwm (
        .clk(clk), .rst_n(rst_n),
        .a_pkt(pwm_a_pkt),
        .b_pkt(pwm_b_pkt),
        .gamma(pwm_gamma_w),
        .valid_in(pwm_valid_in_d1),
        .c_pkt(pwm_c_pkt),
        .valid_out(pwm_valid_out)
    );

    // ========================================================================
    // zetas_rom (NTT/INTT 用)
    // ========================================================================
    wire [`DATA_WIDTH-1:0] zeta_dout;
    zetas_rom #(.INIT_FILE(ZETAS_INIT)) u_zeta_rom (
        .clk(clk),
        .en(ag_twiddle_en),
        .addr(ag_twiddle_addr),
        .dout(zeta_dout)
    );

    // ========================================================================
    // zetas_pwm_rom (PWM 用)
    // ========================================================================
    zetas_pwm_rom #(.INIT_FILE(ZETAS_PWM_INIT)) u_zeta_pwm_rom (
        .clk(clk),
        .en(pwm_read_active),
        .addr(pwm_cnt[6:0]),
        .dout(pwm_gamma_w)
    );

    // ========================================================================
    // dual_butterfly_unit (NTT/INTT 用)
    // ========================================================================
    // BRAM dout 1 cycle 後 = BU input
    // BRAM dout 來自哪塊 BRAM 依 ntt_read_bid_d1 mux
    reg [23:0] bu_data_a_r, bu_data_b_r;
    always @(*) begin
        case (ntt_read_bid_d1)
            2'd0: begin bu_data_a_r = A_douta; bu_data_b_r = A_doutb; end
            2'd1: begin bu_data_a_r = B_douta; bu_data_b_r = B_doutb; end
            2'd2: begin bu_data_a_r = C_douta; bu_data_b_r = C_doutb; end
            default: begin bu_data_a_r = 0; bu_data_b_r = 0; end
        endcase
    end

    wire [23:0] bu_result_u, bu_result_t;
    wire        bu_valid_out;
    dual_butterfly_unit u_dbu (
        .clk(clk), .rst_n(rst_n),
        .mode(ag_bu_mode_d1),
        .data_a(bu_data_a_r),
        .data_b(bu_data_b_r),
        .twiddle(zeta_dout),
        .valid_in(ag_read_en_d1),
        .result_u(bu_result_u),
        .result_t(bu_result_t),
        .valid_out(bu_valid_out)
    );

    // ========================================================================
    // BRAM ports mux (依 state 決定誰讀/寫哪塊)
    // ========================================================================
    always @(*) begin
        // === Default ===
        A_ena=0; A_wea=0; A_addra=0; A_dina=0;
        A_enb=0; A_web=0; A_addrb=0; A_dinb=0;
        B_ena=0; B_wea=0; B_addra=0; B_dina=0;
        B_enb=0; B_web=0; B_addrb=0; B_dinb=0;
        C_ena=0; C_wea=0; C_addra=0; C_dina=0;
        C_enb=0; C_web=0; C_addrb=0; C_dinb=0;

        // === NTT/INTT 階段: addr_gen 控制 read/write ===
        if (state == ST_NTT_A || state == ST_NTT_B || state == ST_INTT) begin
            // Read: ntt_read_bid 對應的 BRAM 用 Port A 讀 read_j, Port B 讀 read_jpk
            if (ag_read_en) begin
                case (ntt_read_bid)
                    2'd0: begin
                        A_ena=1; A_addra=ag_read_j;
                        A_enb=1; A_addrb=ag_read_jpk;
                    end
                    2'd1: begin
                        B_ena=1; B_addra=ag_read_j;
                        B_enb=1; B_addrb=ag_read_jpk;
                    end
                    2'd2: begin
                        C_ena=1; C_addra=ag_read_j;
                        C_enb=1; C_addrb=ag_read_jpk;
                    end
                endcase
            end
            // Write: ntt_write_bid 對應 BRAM Port A 寫 j, Port B 寫 jpk
            if (ag_write_en) begin
                case (ntt_write_bid)
                    2'd0: begin
                        A_ena=1; A_wea=1; A_addra=ag_write_j;   A_dina=bu_result_u;
                        A_enb=1; A_web=1; A_addrb=ag_write_jpk; A_dinb=bu_result_t;
                    end
                    2'd1: begin
                        B_ena=1; B_wea=1; B_addra=ag_write_j;   B_dina=bu_result_u;
                        B_enb=1; B_web=1; B_addrb=ag_write_jpk; B_dinb=bu_result_t;
                    end
                    2'd2: begin
                        C_ena=1; C_wea=1; C_addra=ag_write_j;   C_dina=bu_result_u;
                        C_enb=1; C_web=1; C_addrb=ag_write_jpk; C_dinb=bu_result_t;
                    end
                endcase
            end
        end

        // === PWM 階段 ===
        else if (state == ST_PWM) begin
            // Read: C[pwm_cnt] (â) + A[pwm_cnt] (b̂)
            if (pwm_read_active) begin
                C_ena=1; C_addra=pwm_cnt[6:0];
                A_ena=1; A_addra=pwm_cnt[6:0];
            end
            // Write: B[pwm_wcnt] = pwm_c_pkt (ĉ)
            if (pwm_write_active) begin
                B_ena=1; B_wea=1; B_addra=pwm_wcnt[6:0]; B_dina=pwm_c_pkt;
            end
        end

        // === IDLE / DONE: dbg port 從外部讀寫任意 BRAM ===
        else begin
            case (dbg_bram_sel)
                2'd0: begin
                    A_ena = 1'b1;
                    A_addra = dbg_addr;
                    if (dbg_we) begin A_wea = 1'b1; A_dina = dbg_din; end
                end
                2'd1: begin
                    B_ena = 1'b1;
                    B_addra = dbg_addr;
                    if (dbg_we) begin B_wea = 1'b1; B_dina = dbg_din; end
                end
                2'd2: begin
                    C_ena = 1'b1;
                    C_addra = dbg_addr;
                    if (dbg_we) begin C_wea = 1'b1; C_dina = dbg_din; end
                end
            endcase
        end
    end

    // ========================================================================
    // dbg port output mux
    // ========================================================================
    assign dbg_dout = (dbg_bram_sel == 2'd0) ? A_douta :
                      (dbg_bram_sel == 2'd1) ? B_douta : C_douta;

endmodule