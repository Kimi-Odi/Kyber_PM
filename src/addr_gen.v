`timescale 1ns/1ps
`include "kyber_params.v"
// =============================================================================
// addr_gen.v -- NTT/INTT address generator (Kyber 7-stage incomplete NTT)
// -----------------------------------------------------------------------------
// 對應 FIPS 203 Algorithm 9 (NTT) 跟 Algorithm 10 (INTT)。
//
// 7 stage,每 stage 64 對 BF。binomial-level stride:
//   NTT:  k = 64, 32, 16, 8, 4, 2, 1    (stage 0..6)
//   INTT: k =  1,  2, 4, 8, 16, 32, 64  (stage 0..6)
//
// 每個 stage 內,第 t 個 BF (t = 0..63):
//   group_idx = t / k
//   within_b    = t % k
//   read_j    = group_idx * 2k + within_b
//   read_jpk  = read_j + k
//
// Twiddle index:
//   NTT  stage s, group g: zetas[(1 << s) + g]
//   INTT 全局倒數: zetas[127], [126], ..., [1]  (每 k 個 BF 換一次)
//
// Pipeline 對齊:
//   T:       addr_gen 產生 read_addr
//   T+1:     BRAM 出 dout
//   T+1+6:   BU 出 result
//   T+7:     write_addr 跟 read_addr 對應 (延遲 7 cycle 的 shift register)
//
// Ping-pong:
//   起始 read_bram_sel 由 start_bram_select 指定
//   每個 stage 結束反轉 (read↔write)
// =============================================================================
module addr_gen #(
    parameter PIPE_DELAY = 7        // BRAM 1 cycle + BU 6 cycle
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,                  // 1-cycle pulse,啟動 NTT/INTT
    input  wire        is_intt,                // 0 = NTT, 1 = INTT
    input  wire        start_bram_select,      // 0 = 從 BRAM_A 讀, 1 = 從 BRAM_B 讀

    output reg         busy,                   // NTT/INTT 進行中
    output reg         done,                   // 1-cycle pulse,完成

    output reg  [2:0]  stage_out,              // 0..6
    output wire        read_bram_sel,          // 0=A, 1=B (跟 ping-pong 對應)
    output wire        write_bram_sel,         // = ~read_bram_sel

    // === Read side (給 BRAM 讀的位址) ===
    output reg  [6:0]  read_addr_j,
    output reg  [6:0]  read_addr_jpk,
    output reg         read_en,
    output reg  [6:0]  twiddle_addr,
    output reg         twiddle_en,

    // === Write side (延遲 PIPE_DELAY cycle 的版本) ===
    output wire [6:0]  write_addr_j,
    output wire [6:0]  write_addr_jpk,
    output wire        write_en,
    output wire [2:0]  write_stage,            // 寫的 stage (= 延遲後的 stage)

    // === BU mode ===
    output wire [1:0]  bu_mode                 // 00=CT (NTT), 01=GS (INTT)
);

    // =========================================================================
    // 內部 counters
    // =========================================================================
    reg [6:0] bf_cnt;       // 0..63 active,64..(63+PIPE_DELAY) drain
    reg       intt_reg;     // 鎖存 is_intt
    reg       ping_pong;    // 0=read A, 1=read B
    reg [6:0] k_intt;       // INTT 用,從 127 倒數
    reg       stage_active; // 1 當還在發 read addr (bf_cnt < 64)

    localparam BF_PER_STAGE   = 64;
    localparam STAGE_TOTAL    = BF_PER_STAGE + PIPE_DELAY;   // = 71

    // =========================================================================
    // Stage state machine + counter
    // =========================================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            busy         <= 1'b0;
            done         <= 1'b0;
            stage_out    <= 3'd0;
            bf_cnt       <= 7'd0;
            intt_reg     <= 1'b0;
            ping_pong    <= 1'b0;
            k_intt       <= 7'd127;
            stage_active <= 1'b0;
        end else begin
            done <= 1'b0;   // pulse default

            if (!busy) begin
                if (start) begin
                    // Phase 1: busy 拉高,但 stage_active 還是 0
                    // 下一個 cycle 才開始發第一個 read
                    busy         <= 1'b1;
                    stage_out    <= 3'd0;
                    bf_cnt       <= 7'd0;
                    intt_reg     <= is_intt;
                    ping_pong    <= start_bram_select;
                    k_intt       <= 7'd127;
                    stage_active <= 1'b0;   // 這個 cycle 還沒發 read
                end
            end else if (!stage_active && stage_out == 3'd0 && bf_cnt == 7'd0) begin
                // Phase 2: 真正開始發第一個 read (bf=0)
                stage_active <= 1'b1;
            end else begin
                // 正常運行
                if (bf_cnt == STAGE_TOTAL - 1) begin
                    bf_cnt    <= 7'd0;
                    ping_pong <= ~ping_pong;
                    if (stage_out == 3'd6) begin
                        busy <= 1'b0;
                        done <= 1'b1;
                        stage_active <= 1'b0;
                    end else begin
                        stage_out    <= stage_out + 3'd1;
                        stage_active <= 1'b1;
                    end
                end else begin
                    bf_cnt <= bf_cnt + 7'd1;
                    if (bf_cnt == BF_PER_STAGE - 1) begin
                        stage_active <= 1'b0;
                    end
                end
            end
        end
    end

    // =========================================================================
    // 位址計算 (組合邏輯,從 stage_out, bf_cnt, intt_reg 推出)
    // =========================================================================
    wire [6:0] cur_k_w = intt_reg ? (7'd1   << stage_out)
                                  : (7'd64 >> stage_out);
    // group_idx = bf_cnt / k,within_b = bf_cnt % k
    // 因為 k 是 2 的次方,可用 shift / mask
    // 但 stage 0 (NTT k=64) 跟 stage 6 (NTT k=1) k 都是 2 的次方
    // group_idx_shift = log2(k); 我們直接用「比較跟 mask」太麻煩
    // 用 case 比較簡潔
    reg [6:0] group_idx, within_b;
    always @(*) begin
        case (cur_k_w)
            7'd1:   begin group_idx = bf_cnt;            within_b = 7'd0;          end
            7'd2:   begin group_idx = {1'b0, bf_cnt[6:1]}; within_b = {6'd0, bf_cnt[0]}; end
            7'd4:   begin group_idx = {2'b0, bf_cnt[6:2]}; within_b = {5'd0, bf_cnt[1:0]}; end
            7'd8:   begin group_idx = {3'b0, bf_cnt[6:3]}; within_b = {4'd0, bf_cnt[2:0]}; end
            7'd16:  begin group_idx = {4'b0, bf_cnt[6:4]}; within_b = {3'd0, bf_cnt[3:0]}; end
            7'd32:  begin group_idx = {5'b0, bf_cnt[6:5]}; within_b = {2'd0, bf_cnt[4:0]}; end
            7'd64:  begin group_idx = 7'd0;              within_b = bf_cnt;        end
            default:begin group_idx = 7'd0;              within_b = 7'd0;          end
        endcase
    end

    wire [7:0] read_j_w   = {group_idx, 1'b0} * cur_k_w + within_b;  // group * 2k + within_b
    // 注意: cur_k_w 是 2 的次方,(group*2)*k 可以用 shift,但這邊用乘也 OK
    // (合成會優化成 shift+add)
    wire [7:0] read_jpk_w = read_j_w + cur_k_w;

    // Twiddle addr
    //  NTT:  (1 << stage) + group_idx
    //  INTT: k_intt - (offsets...). 但 group_idx 範圍是 0..(64/k - 1),
    //        zeta 應該是 127 - cumulative
    //        cumulative = (stage 前累計 group 數) + group_idx
    //        但在 stage s, 已用過的 group 數 = Σ_{i<s} (64/k_i) = 64/k_s 第 i 個 stage
    //        對 INTT: stage 0 用 64 個 zeta (127..64), stage 1 用 32 (63..32), ...
    //        zeta_addr 在 stage s, group g = 127 - (cumulative_count)
    //          cumulative_count_at_start_of_stage_s = Σ_{i<s} (64 / (1<<i))
    //            = 64 + 32 + 16 + ... = (1 << 7) - (1 << (7-s)) = 128 - (128>>s)
    //          stage 0: 0 (start)
    //          stage 1: 64
    //          stage 2: 96
    //          stage 3: 112
    //          ...
    //        所以 zeta_addr = 127 - (cumulative_at_start_of_stage_s + group_idx)
    //
    // 直接用 7 bit 公式:
    //   base_INTT[s] = 127 - cumulative_start
    //   stage 0: 127, 1: 63, 2: 31, 3: 15, 4: 7, 5: 3, 6: 1
    //   = (128 >> s) - 1
    // 所以 zeta_addr_INTT = (128 >> s) - 1 - group_idx
    //                    = (256 >> (stage+1)) - 1 - group_idx
    wire [7:0] base_ntt  = (8'd1 << stage_out);                  // 1, 2, 4, 8, 16, 32, 64
    wire [7:0] base_intt = (8'd128 >> stage_out) - 8'd1;         // 127, 63, 31, 15, 7, 3, 1
    wire [7:0] zeta_addr_w = intt_reg ? (base_intt - group_idx)
                                      : (base_ntt  + group_idx);

    always @(*) begin
        read_addr_j   = read_j_w[6:0];
        read_addr_jpk = read_jpk_w[6:0];
        twiddle_addr  = zeta_addr_w[6:0];
        read_en       = busy && stage_active;
        twiddle_en    = busy && stage_active;
    end

    // =========================================================================
    // Write side: 延遲 PIPE_DELAY cycle 的 shift register
    // =========================================================================
    reg [6:0] waj_pipe   [0:PIPE_DELAY-1];
    reg [6:0] wajpk_pipe [0:PIPE_DELAY-1];
    reg [2:0] wstage_pipe[0:PIPE_DELAY-1];
    reg       wen_pipe   [0:PIPE_DELAY-1];
    integer pi;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (pi = 0; pi < PIPE_DELAY; pi = pi + 1) begin
                waj_pipe[pi]    <= 7'd0;
                wajpk_pipe[pi]  <= 7'd0;
                wstage_pipe[pi] <= 3'd0;
                wen_pipe[pi]    <= 1'b0;
            end
        end else begin
            waj_pipe[0]    <= read_addr_j;
            wajpk_pipe[0]  <= read_addr_jpk;
            wstage_pipe[0] <= stage_out;
            wen_pipe[0]    <= read_en;
            for (pi = 1; pi < PIPE_DELAY; pi = pi + 1) begin
                waj_pipe[pi]    <= waj_pipe[pi-1];
                wajpk_pipe[pi]  <= wajpk_pipe[pi-1];
                wstage_pipe[pi] <= wstage_pipe[pi-1];
                wen_pipe[pi]    <= wen_pipe[pi-1];
            end
        end
    end

    assign write_addr_j   = waj_pipe[PIPE_DELAY-1];
    assign write_addr_jpk = wajpk_pipe[PIPE_DELAY-1];
    assign write_stage    = wstage_pipe[PIPE_DELAY-1];
    assign write_en       = wen_pipe[PIPE_DELAY-1];

    // =========================================================================
    // 其他 outputs
    // =========================================================================
    // read_bram_sel: 跟 read_addr 同 cycle (= ping_pong 當下值)
    // write_bram_sel: 跟 write_addr 同 cycle (= 7 cycle 前的 ping_pong)
    //
    // 為了簡化,我們維護「ping_pong 延遲版本」
    reg pp_pipe [0:PIPE_DELAY-1];
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (pi = 0; pi < PIPE_DELAY; pi = pi + 1) pp_pipe[pi] <= 1'b0;
        end else begin
            pp_pipe[0] <= ping_pong;
            for (pi = 1; pi < PIPE_DELAY; pi = pi + 1)
                pp_pipe[pi] <= pp_pipe[pi-1];
        end
    end

    assign read_bram_sel  = ping_pong;
    assign write_bram_sel = ~pp_pipe[PIPE_DELAY-1];

    // BU mode
    assign bu_mode = intt_reg ? 2'b01 : 2'b00;

endmodule