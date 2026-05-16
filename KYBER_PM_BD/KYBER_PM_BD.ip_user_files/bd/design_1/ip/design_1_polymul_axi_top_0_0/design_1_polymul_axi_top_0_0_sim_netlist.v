// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat May 16 14:59:39 2026
// Host        : LAPTOP-RNRU6CQQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/user/Desktop/Kyber_PM/KYBER_PM_BD/KYBER_PM_BD.srcs/sources_1/bd/design_1/ip/design_1_polymul_axi_top_0_0/design_1_polymul_axi_top_0_0_sim_netlist.v
// Design      : design_1_polymul_axi_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_polymul_axi_top_0_0,polymul_axi_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "polymul_axi_top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_polymul_axi_top_0_0
   (clk,
    resetn,
    S_AXIS_MM2S_tdata,
    S_AXIS_MM2S_tvalid,
    S_AXIS_MM2S_tready,
    S_AXIS_MM2S_tlast,
    S_AXIS_MM2S_tkeep,
    M_AXIS_S2MM_tdata,
    M_AXIS_S2MM_tvalid,
    M_AXIS_S2MM_tready,
    M_AXIS_S2MM_tlast,
    M_AXIS_S2MM_tkeep,
    state_dbg);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXIS_S2MM:S_AXIS_MM2S, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MM2S TDATA" *) input [31:0]S_AXIS_MM2S_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MM2S TVALID" *) input S_AXIS_MM2S_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MM2S TREADY" *) output S_AXIS_MM2S_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MM2S TLAST" *) input S_AXIS_MM2S_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_MM2S TKEEP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_MM2S, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [3:0]S_AXIS_MM2S_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TDATA" *) output [31:0]M_AXIS_S2MM_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TVALID" *) output M_AXIS_S2MM_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TREADY" *) input M_AXIS_S2MM_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TLAST" *) output M_AXIS_S2MM_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_S2MM TKEEP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_S2MM, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [3:0]M_AXIS_S2MM_tkeep;
  output [2:0]state_dbg;

  wire \<const0> ;
  wire [23:0]\^M_AXIS_S2MM_tdata ;
  wire [3:0]M_AXIS_S2MM_tkeep;
  wire M_AXIS_S2MM_tlast;
  wire M_AXIS_S2MM_tready;
  wire M_AXIS_S2MM_tvalid;
  wire [31:0]S_AXIS_MM2S_tdata;
  wire S_AXIS_MM2S_tready;
  wire S_AXIS_MM2S_tvalid;
  wire \c0_s1_reg[7]_i_2__0_n_0 ;
  wire \c0_s1_reg[7]_i_2__1_n_0 ;
  wire \c0_s1_reg[7]_i_2__2_n_0 ;
  wire \c0_s1_reg[7]_i_2__3_n_0 ;
  wire \c0_s1_reg[7]_i_2__4_n_0 ;
  wire \c0_s1_reg[7]_i_2__5_n_0 ;
  wire \c0_s1_reg[7]_i_2_n_0 ;
  wire clk;
  wire inst_n_0;
  wire resetn;
  wire [2:0]state_dbg;

  assign M_AXIS_S2MM_tdata[31] = \<const0> ;
  assign M_AXIS_S2MM_tdata[30] = \<const0> ;
  assign M_AXIS_S2MM_tdata[29] = \<const0> ;
  assign M_AXIS_S2MM_tdata[28] = \<const0> ;
  assign M_AXIS_S2MM_tdata[27] = \<const0> ;
  assign M_AXIS_S2MM_tdata[26] = \<const0> ;
  assign M_AXIS_S2MM_tdata[25] = \<const0> ;
  assign M_AXIS_S2MM_tdata[24] = \<const0> ;
  assign M_AXIS_S2MM_tdata[23:0] = \^M_AXIS_S2MM_tdata [23:0];
  GND GND
       (.G(\<const0> ));
  FDCE \c0_s1_reg[7]_i_2 
       (.C(clk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(1'b1),
        .Q(\c0_s1_reg[7]_i_2_n_0 ));
  FDCE \c0_s1_reg[7]_i_2__0 
       (.C(clk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(1'b1),
        .Q(\c0_s1_reg[7]_i_2__0_n_0 ));
  FDCE \c0_s1_reg[7]_i_2__1 
       (.C(clk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(1'b1),
        .Q(\c0_s1_reg[7]_i_2__1_n_0 ));
  FDCE \c0_s1_reg[7]_i_2__2 
       (.C(clk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(1'b1),
        .Q(\c0_s1_reg[7]_i_2__2_n_0 ));
  FDCE \c0_s1_reg[7]_i_2__3 
       (.C(clk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(1'b1),
        .Q(\c0_s1_reg[7]_i_2__3_n_0 ));
  FDCE \c0_s1_reg[7]_i_2__4 
       (.C(clk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(1'b1),
        .Q(\c0_s1_reg[7]_i_2__4_n_0 ));
  FDCE \c0_s1_reg[7]_i_2__5 
       (.C(clk),
        .CE(1'b1),
        .CLR(inst_n_0),
        .D(1'b1),
        .Q(\c0_s1_reg[7]_i_2__5_n_0 ));
  design_1_polymul_axi_top_0_0_polymul_axi_top inst
       (.M_AXIS_S2MM_tready(M_AXIS_S2MM_tready),
        .M_AXIS_S2MM_tvalid(M_AXIS_S2MM_tvalid),
        .Q({M_AXIS_S2MM_tlast,M_AXIS_S2MM_tkeep,\^M_AXIS_S2MM_tdata }),
        .S_AXIS_MM2S_tdata(S_AXIS_MM2S_tdata[23:0]),
        .S_AXIS_MM2S_tvalid(S_AXIS_MM2S_tvalid),
        .\c0_s1_reg[0] (\c0_s1_reg[7]_i_2_n_0 ),
        .\c0_s1_reg[0]_0 (\c0_s1_reg[7]_i_2__0_n_0 ),
        .\c0_s1_reg[0]_1 (\c0_s1_reg[7]_i_2__1_n_0 ),
        .\c0_s1_reg[0]_2 (\c0_s1_reg[7]_i_2__2_n_0 ),
        .\c0_s1_reg[0]_3 (\c0_s1_reg[7]_i_2__3_n_0 ),
        .\c1_s1_reg[5] (\c0_s1_reg[7]_i_2__4_n_0 ),
        .\c1_s1_reg[5]_0 (\c0_s1_reg[7]_i_2__5_n_0 ),
        .clk(clk),
        .resetn(resetn),
        .resetn_0(inst_n_0),
        .s_ready_t_reg(S_AXIS_MM2S_tready),
        .state_dbg(state_dbg));
endmodule

(* ORIG_REF_NAME = "INPUT_STREAM_fifo" *) 
module design_1_polymul_axi_top_0_0_INPUT_STREAM_fifo
   (full_reg_0,
    empty_reg_0,
    \FSM_sequential_state_reg[0] ,
    empty_reg_1,
    pm_dbg_din,
    out,
    empty_reg_2,
    D,
    pm_dbg_bram_sel,
    clk,
    SR,
    empty_reg_3,
    Q,
    \FSM_sequential_state_reg[0]_0 ,
    \index_reg[1]_0 ,
    \FSM_sequential_state_reg[0]_1 ,
    done,
    \FSM_sequential_state_reg[0]_2 ,
    p_12_out,
    mem_reg);
  output full_reg_0;
  output empty_reg_0;
  output \FSM_sequential_state_reg[0] ;
  output empty_reg_1;
  output [23:0]pm_dbg_din;
  output [23:0]out;
  output empty_reg_2;
  output [0:0]D;
  output pm_dbg_bram_sel;
  input clk;
  input [0:0]SR;
  input empty_reg_3;
  input [3:0]Q;
  input \FSM_sequential_state_reg[0]_0 ;
  input [1:0]\index_reg[1]_0 ;
  input [2:0]\FSM_sequential_state_reg[0]_1 ;
  input done;
  input \FSM_sequential_state_reg[0]_2 ;
  input p_12_out;
  input [23:0]mem_reg;

  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [2:0]\FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_2 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk;
  wire done;
  wire empty_i_1_n_0;
  wire empty_i_2_n_0;
  wire empty_reg_0;
  wire empty_reg_1;
  wire empty_reg_2;
  wire empty_reg_3;
  wire full;
  wire full_i_1_n_0;
  wire full_reg_0;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index[3]_i_1_n_0 ;
  wire \index[3]_i_2_n_0 ;
  wire [3:0]index_reg;
  wire [1:0]\index_reg[1]_0 ;
  wire [23:0]mem_reg;
  wire [23:0]out;
  wire p_12_out;
  wire pm_dbg_bram_sel;
  wire [23:0]pm_dbg_din;

  LUT6 #(
    .INIT(64'hFFFFFFFF00004E00)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state_reg[0]_1 [0]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(done),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [2]),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(empty_reg_0),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C000C008C80BCB)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(empty_reg_1),
        .I1(\FSM_sequential_state_reg[0]_1 [0]),
        .I2(\FSM_sequential_state_reg[0]_1 [2]),
        .I3(\FSM_sequential_state_reg[0]_2 ),
        .I4(empty_reg_0),
        .I5(\FSM_sequential_state_reg[0]_1 [1]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(empty_reg_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(empty_reg_1));
  LUT5 #(
    .INIT(32'hFF010101)) 
    empty_i_1
       (.I0(empty_i_2_n_0),
        .I1(index_reg[2]),
        .I2(index_reg[3]),
        .I3(empty_reg_3),
        .I4(empty_reg_0),
        .O(empty_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF14)) 
    empty_i_2
       (.I0(full_reg_0),
        .I1(\index_reg[1]_0 [0]),
        .I2(\index_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[0] ),
        .I4(index_reg[0]),
        .I5(index_reg[1]),
        .O(empty_i_2_n_0));
  FDPE empty_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_i_1_n_0),
        .PRE(SR),
        .Q(empty_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFEBAAAAAAAA)) 
    full_i_1
       (.I0(full),
        .I1(\FSM_sequential_state_reg[0]_1 [0]),
        .I2(\FSM_sequential_state_reg[0]_1 [1]),
        .I3(empty_reg_0),
        .I4(\FSM_sequential_state_reg[0]_1 [2]),
        .I5(full_reg_0),
        .O(full_i_1_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    full_i_2
       (.I0(empty_reg_3),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(index_reg[0]),
        .I3(index_reg[1]),
        .I4(index_reg[2]),
        .I5(index_reg[3]),
        .O(full));
  FDCE full_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(full_i_1_n_0),
        .Q(full_reg_0));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][0]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[0]),
        .Q(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_sr[15].mem_reg[15][0]_srl16_i_3 
       (.I0(\FSM_sequential_state_reg[0]_1 [2]),
        .I1(\FSM_sequential_state_reg[0]_1 [1]),
        .I2(\FSM_sequential_state_reg[0]_1 [0]),
        .I3(empty_reg_0),
        .O(pm_dbg_bram_sel));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][10]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[10]),
        .Q(out[10]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][11]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][11]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[11]),
        .Q(out[11]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][12]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][12]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[12]),
        .Q(out[12]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][13]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][13]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[13]),
        .Q(out[13]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][14]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][14]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[14]),
        .Q(out[14]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][15]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][15]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[15]),
        .Q(out[15]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][16]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][16]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[16]),
        .Q(out[16]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][17]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][17]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[17]),
        .Q(out[17]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][18]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][18]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[18]),
        .Q(out[18]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][19]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][19]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[19]),
        .Q(out[19]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][1]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[1]),
        .Q(out[1]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][20]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][20]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[20]),
        .Q(out[20]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][21]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][21]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[21]),
        .Q(out[21]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][22]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][22]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[22]),
        .Q(out[22]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][23]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][23]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[23]),
        .Q(out[23]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][2]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[2]),
        .Q(out[2]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][3]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[3]),
        .Q(out[3]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][4]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[4]),
        .Q(out[4]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][5]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[5]),
        .Q(out[5]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][6]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[6]),
        .Q(out[6]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][7]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[7]),
        .Q(out[7]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][8]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[8]),
        .Q(out[8]));
  (* srl_bus_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_isif/isif_fifo/gen_sr[15].mem_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][9]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(p_12_out),
        .CLK(clk),
        .D(mem_reg[9]),
        .Q(out[9]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index_reg[0]),
        .O(\index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EBFF14FF1400EB)) 
    \index[1]_i_1 
       (.I0(full_reg_0),
        .I1(\index_reg[1]_0 [0]),
        .I2(\index_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[0] ),
        .I4(index_reg[0]),
        .I5(index_reg[1]),
        .O(\index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT5 #(
    .INIT(32'h59AAAAA6)) 
    \index[2]_i_1 
       (.I0(index_reg[2]),
        .I1(empty_reg_3),
        .I2(\FSM_sequential_state_reg[0] ),
        .I3(index_reg[0]),
        .I4(index_reg[1]),
        .O(\index[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5569)) 
    \index[3]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\index_reg[1]_0 [1]),
        .I2(\index_reg[1]_0 [0]),
        .I3(full_reg_0),
        .O(\index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAA96AAA6AAA)) 
    \index[3]_i_2 
       (.I0(index_reg[3]),
        .I1(index_reg[2]),
        .I2(index_reg[1]),
        .I3(index_reg[0]),
        .I4(\FSM_sequential_state_reg[0] ),
        .I5(empty_reg_3),
        .O(\index[3]_i_2_n_0 ));
  FDPE \index_reg[0] 
       (.C(clk),
        .CE(\index[3]_i_1_n_0 ),
        .D(\index[0]_i_1_n_0 ),
        .PRE(SR),
        .Q(index_reg[0]));
  FDPE \index_reg[1] 
       (.C(clk),
        .CE(\index[3]_i_1_n_0 ),
        .D(\index[1]_i_1_n_0 ),
        .PRE(SR),
        .Q(index_reg[1]));
  FDPE \index_reg[2] 
       (.C(clk),
        .CE(\index[3]_i_1_n_0 ),
        .D(\index[2]_i_1_n_0 ),
        .PRE(SR),
        .Q(index_reg[2]));
  FDPE \index_reg[3] 
       (.C(clk),
        .CE(\index[3]_i_1_n_0 ),
        .D(\index[3]_i_2_n_0 ),
        .PRE(SR),
        .Q(index_reg[3]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_100__0
       (.I0(out[2]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[2]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_101__0
       (.I0(out[1]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[1]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_102__0
       (.I0(out[0]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[0]));
  LUT5 #(
    .INIT(32'hFFFCFAAF)) 
    mem_reg_i_130
       (.I0(empty_reg_0),
        .I1(Q[3]),
        .I2(\FSM_sequential_state_reg[0]_1 [1]),
        .I3(\FSM_sequential_state_reg[0]_1 [0]),
        .I4(\FSM_sequential_state_reg[0]_1 [2]),
        .O(empty_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hFFF9)) 
    mem_reg_i_76__0
       (.I0(\FSM_sequential_state_reg[0]_1 [0]),
        .I1(\FSM_sequential_state_reg[0]_1 [1]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [2]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_79__0
       (.I0(out[23]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[23]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_80__0
       (.I0(out[22]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[22]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_81__0
       (.I0(out[21]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[21]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_82__0
       (.I0(out[20]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[20]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_83__0
       (.I0(out[19]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[19]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_84__0
       (.I0(out[18]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[18]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_85__0
       (.I0(out[17]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[17]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_86__0
       (.I0(out[16]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[16]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_87__0
       (.I0(out[15]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[15]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_88__0
       (.I0(out[14]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[14]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_89__0
       (.I0(out[13]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[13]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_90__0
       (.I0(out[12]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[12]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_91__0
       (.I0(out[11]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[11]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_92__0
       (.I0(out[10]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[10]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_93__0
       (.I0(out[9]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[9]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_94__0
       (.I0(out[8]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[8]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_95__0
       (.I0(out[7]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[7]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_96__0
       (.I0(out[6]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[6]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_97__0
       (.I0(out[5]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[5]));
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_98__0
       (.I0(out[4]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[4]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'h00020200)) 
    mem_reg_i_99__0
       (.I0(out[3]),
        .I1(\FSM_sequential_state_reg[0]_1 [2]),
        .I2(empty_reg_0),
        .I3(\FSM_sequential_state_reg[0]_1 [1]),
        .I4(\FSM_sequential_state_reg[0]_1 [0]),
        .O(pm_dbg_din[3]));
endmodule

(* ORIG_REF_NAME = "INPUT_STREAM_if" *) 
module design_1_polymul_axi_top_0_0_INPUT_STREAM_if
   (s_ready_t_reg,
    empty_reg,
    \FSM_sequential_state_reg[0] ,
    empty_reg_0,
    pm_dbg_din,
    out,
    empty_reg_1,
    D,
    pm_dbg_bram_sel,
    clk,
    SR,
    Q,
    \FSM_sequential_state_reg[0]_0 ,
    S_AXIS_MM2S_tvalid,
    \FSM_sequential_state_reg[0]_1 ,
    done,
    \FSM_sequential_state_reg[0]_2 ,
    S_AXIS_MM2S_tdata);
  output s_ready_t_reg;
  output empty_reg;
  output \FSM_sequential_state_reg[0] ;
  output empty_reg_0;
  output [23:0]pm_dbg_din;
  output [23:0]out;
  output empty_reg_1;
  output [0:0]D;
  output pm_dbg_bram_sel;
  input clk;
  input [0:0]SR;
  input [3:0]Q;
  input \FSM_sequential_state_reg[0]_0 ;
  input S_AXIS_MM2S_tvalid;
  input [2:0]\FSM_sequential_state_reg[0]_1 ;
  input done;
  input \FSM_sequential_state_reg[0]_2 ;
  input [23:0]S_AXIS_MM2S_tdata;

  wire [0:0]D;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [2:0]\FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_2 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [23:0]S_AXIS_MM2S_tdata;
  wire S_AXIS_MM2S_tvalid;
  wire clk;
  wire done;
  wire empty_reg;
  wire empty_reg_0;
  wire empty_reg_1;
  wire [23:0]isif_din;
  wire isif_fifo_n_0;
  wire [23:0]out;
  wire p_12_out;
  wire pm_dbg_bram_sel;
  wire [23:0]pm_dbg_din;
  wire rs_n_1;
  wire s_ready_t_reg;
  wire [1:0]state__0;

  design_1_polymul_axi_top_0_0_INPUT_STREAM_fifo isif_fifo
       (.D(D),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0]_0 ),
        .\FSM_sequential_state_reg[0]_1 (\FSM_sequential_state_reg[0]_1 ),
        .\FSM_sequential_state_reg[0]_2 (\FSM_sequential_state_reg[0]_2 ),
        .Q(Q),
        .SR(SR),
        .clk(clk),
        .done(done),
        .empty_reg_0(empty_reg),
        .empty_reg_1(empty_reg_0),
        .empty_reg_2(empty_reg_1),
        .empty_reg_3(rs_n_1),
        .full_reg_0(isif_fifo_n_0),
        .\index_reg[1]_0 (state__0),
        .mem_reg(isif_din),
        .out(out),
        .p_12_out(p_12_out),
        .pm_dbg_bram_sel(pm_dbg_bram_sel),
        .pm_dbg_din(pm_dbg_din));
  design_1_polymul_axi_top_0_0_INPUT_STREAM_reg_slice rs
       (.Q(state__0),
        .SR(SR),
        .S_AXIS_MM2S_tdata(S_AXIS_MM2S_tdata),
        .S_AXIS_MM2S_tvalid(S_AXIS_MM2S_tvalid),
        .clk(clk),
        .\data_p1_reg[23]_0 (isif_din),
        .full_reg(rs_n_1),
        .p_12_out(p_12_out),
        .s_ready_t_reg_0(s_ready_t_reg),
        .s_ready_t_reg_1(isif_fifo_n_0));
endmodule

(* ORIG_REF_NAME = "INPUT_STREAM_reg_slice" *) 
module design_1_polymul_axi_top_0_0_INPUT_STREAM_reg_slice
   (s_ready_t_reg_0,
    full_reg,
    Q,
    p_12_out,
    \data_p1_reg[23]_0 ,
    SR,
    clk,
    s_ready_t_reg_1,
    S_AXIS_MM2S_tvalid,
    S_AXIS_MM2S_tdata);
  output s_ready_t_reg_0;
  output full_reg;
  output [1:0]Q;
  output p_12_out;
  output [23:0]\data_p1_reg[23]_0 ;
  input [0:0]SR;
  input clk;
  input s_ready_t_reg_1;
  input S_AXIS_MM2S_tvalid;
  input [23:0]S_AXIS_MM2S_tdata;

  wire [1:0]Q;
  wire [0:0]SR;
  wire [23:0]S_AXIS_MM2S_tdata;
  wire S_AXIS_MM2S_tvalid;
  wire clk;
  wire [23:0]\data_p1_reg[23]_0 ;
  wire [23:0]data_p2;
  wire full_reg;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [23:0]p_0_in;
  wire p_12_out;
  wire s_ready_t_i_2_n_0;
  wire s_ready_t_reg_0;
  wire s_ready_t_reg_1;

  LUT4 #(
    .INIT(16'h2C00)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(S_AXIS_MM2S_tvalid),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_ready_t_reg_1),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT5 #(
    .INIT(32'h03080CF8)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(s_ready_t_reg_0),
        .I1(S_AXIS_MM2S_tvalid),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(s_ready_t_reg_1),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(Q[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1 
       (.I0(S_AXIS_MM2S_tdata[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[10]_i_1 
       (.I0(S_AXIS_MM2S_tdata[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[11]_i_1 
       (.I0(S_AXIS_MM2S_tdata[11]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[11]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_1 
       (.I0(S_AXIS_MM2S_tdata[12]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[12]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[13]_i_1 
       (.I0(S_AXIS_MM2S_tdata[13]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[14]_i_1 
       (.I0(S_AXIS_MM2S_tdata[14]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[14]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[15]_i_1 
       (.I0(S_AXIS_MM2S_tdata[15]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[15]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[16]_i_1 
       (.I0(S_AXIS_MM2S_tdata[16]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[16]),
        .O(p_0_in[16]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[17]_i_1 
       (.I0(S_AXIS_MM2S_tdata[17]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[17]),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[18]_i_1 
       (.I0(S_AXIS_MM2S_tdata[18]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[18]),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[19]_i_1 
       (.I0(S_AXIS_MM2S_tdata[19]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[19]),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1 
       (.I0(S_AXIS_MM2S_tdata[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[20]_i_1 
       (.I0(S_AXIS_MM2S_tdata[20]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[20]),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[21]_i_1 
       (.I0(S_AXIS_MM2S_tdata[21]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[21]),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[22]_i_1 
       (.I0(S_AXIS_MM2S_tdata[22]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[22]),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'h022E)) 
    \data_p1[23]_i_1 
       (.I0(S_AXIS_MM2S_tvalid),
        .I1(Q[0]),
        .I2(s_ready_t_reg_1),
        .I3(Q[1]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[23]_i_2 
       (.I0(S_AXIS_MM2S_tdata[23]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[23]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1 
       (.I0(S_AXIS_MM2S_tdata[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1 
       (.I0(S_AXIS_MM2S_tdata[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1 
       (.I0(S_AXIS_MM2S_tdata[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1 
       (.I0(S_AXIS_MM2S_tdata[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1 
       (.I0(S_AXIS_MM2S_tdata[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1 
       (.I0(S_AXIS_MM2S_tdata[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1 
       (.I0(S_AXIS_MM2S_tdata[8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1 
       (.I0(S_AXIS_MM2S_tdata[9]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_p2[9]),
        .O(p_0_in[9]));
  FDRE \data_p1_reg[0] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[0]),
        .Q(\data_p1_reg[23]_0 [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[10]),
        .Q(\data_p1_reg[23]_0 [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[11]),
        .Q(\data_p1_reg[23]_0 [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[12]),
        .Q(\data_p1_reg[23]_0 [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[13]),
        .Q(\data_p1_reg[23]_0 [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[14]),
        .Q(\data_p1_reg[23]_0 [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[15]),
        .Q(\data_p1_reg[23]_0 [15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[16]),
        .Q(\data_p1_reg[23]_0 [16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[17]),
        .Q(\data_p1_reg[23]_0 [17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[18]),
        .Q(\data_p1_reg[23]_0 [18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[19]),
        .Q(\data_p1_reg[23]_0 [19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[1]),
        .Q(\data_p1_reg[23]_0 [1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[20]),
        .Q(\data_p1_reg[23]_0 [20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[21]),
        .Q(\data_p1_reg[23]_0 [21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[22]),
        .Q(\data_p1_reg[23]_0 [22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[23]),
        .Q(\data_p1_reg[23]_0 [23]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[2]),
        .Q(\data_p1_reg[23]_0 [2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[3]),
        .Q(\data_p1_reg[23]_0 [3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[4]),
        .Q(\data_p1_reg[23]_0 [4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[5]),
        .Q(\data_p1_reg[23]_0 [5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[6]),
        .Q(\data_p1_reg[23]_0 [6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[7]),
        .Q(\data_p1_reg[23]_0 [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[8]),
        .Q(\data_p1_reg[23]_0 [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(clk),
        .CE(load_p1),
        .D(p_0_in[9]),
        .Q(\data_p1_reg[23]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[23]_i_1 
       (.I0(s_ready_t_reg_0),
        .I1(S_AXIS_MM2S_tvalid),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[10]),
        .Q(data_p2[10]),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[11]),
        .Q(data_p2[11]),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[12]),
        .Q(data_p2[12]),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[13]),
        .Q(data_p2[13]),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[14]),
        .Q(data_p2[14]),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[15]),
        .Q(data_p2[15]),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[16]),
        .Q(data_p2[16]),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[17]),
        .Q(data_p2[17]),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[18]),
        .Q(data_p2[18]),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[19]),
        .Q(data_p2[19]),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[1]),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[20]),
        .Q(data_p2[20]),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[21]),
        .Q(data_p2[21]),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[22]),
        .Q(data_p2[22]),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[23]),
        .Q(data_p2[23]),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[2]),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[3]),
        .Q(data_p2[3]),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[4]),
        .Q(data_p2[4]),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[5]),
        .Q(data_p2[5]),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[6]),
        .Q(data_p2[6]),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[7]),
        .Q(data_p2[7]),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[8]),
        .Q(data_p2[8]),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(clk),
        .CE(load_p2),
        .D(S_AXIS_MM2S_tdata[9]),
        .Q(data_p2[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \gen_sr[15].mem_reg[15][0]_srl16_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(s_ready_t_reg_1),
        .O(p_12_out));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \index[3]_i_3 
       (.I0(s_ready_t_reg_1),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(full_reg));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT5 #(
    .INIT(32'hDFFF003F)) 
    s_ready_t_i_2
       (.I0(S_AXIS_MM2S_tvalid),
        .I1(Q[0]),
        .I2(s_ready_t_reg_1),
        .I3(Q[1]),
        .I4(s_ready_t_reg_0),
        .O(s_ready_t_i_2_n_0));
  FDRE s_ready_t_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_ready_t_i_2_n_0),
        .Q(s_ready_t_reg_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "OUTPUT_STREAM_fifo" *) 
module design_1_polymul_axi_top_0_0_OUTPUT_STREAM_fifo
   (empty_reg_0,
    D,
    \cnt_reg[4] ,
    sel,
    E,
    \cnt_reg[7] ,
    out,
    clk,
    SR,
    Q,
    \store_cnt_d1_reg[0] ,
    s_ready,
    \cnt_reg[0] ,
    \cnt_reg[7]_0 ,
    \cnt_reg[7]_1 ,
    \index_reg[3]_0 ,
    \gen_sr[15].mem_reg[15][36]_srl16_i_1_0 ,
    store_valid_d1,
    in);
  output empty_reg_0;
  output [7:0]D;
  output \cnt_reg[4] ;
  output sel;
  output [0:0]E;
  output [0:0]\cnt_reg[7] ;
  output [28:0]out;
  input clk;
  input [0:0]SR;
  input [7:0]Q;
  input [2:0]\store_cnt_d1_reg[0] ;
  input s_ready;
  input \cnt_reg[0] ;
  input \cnt_reg[7]_0 ;
  input \cnt_reg[7]_1 ;
  input [0:0]\index_reg[3]_0 ;
  input [7:0]\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 ;
  input store_valid_d1;
  input [23:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[2]_i_3__0_n_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk;
  wire \cnt[7]_i_3_n_0 ;
  wire \cnt_reg[0] ;
  wire \cnt_reg[4] ;
  wire [0:0]\cnt_reg[7] ;
  wire \cnt_reg[7]_0 ;
  wire \cnt_reg[7]_1 ;
  wire empty_i_1__0_n_0;
  wire empty_i_2__0_n_0;
  wire empty_reg_0;
  wire full;
  wire full_i_1__0_n_0;
  wire full_reg_n_0;
  wire [7:0]\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 ;
  wire \gen_sr[15].mem_reg[15][36]_srl16_i_2_n_0 ;
  wire [23:0]in;
  wire \index[0]_i_1__0_n_0 ;
  wire \index[1]_i_1__0_n_0 ;
  wire \index[2]_i_1__0_n_0 ;
  wire \index[3]_i_1__0_n_0 ;
  wire \index[3]_i_2__0_n_0 ;
  wire [3:0]index_reg;
  wire [0:0]\index_reg[3]_0 ;
  wire osif_last_din;
  wire [28:0]out;
  wire s_ready;
  wire sel;
  wire [2:0]\store_cnt_d1_reg[0] ;
  wire store_valid_d1;

  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_sequential_state[2]_i_2__0 
       (.I0(\FSM_sequential_state[2]_i_3__0_n_0 ),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\cnt_reg[4] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_sequential_state[2]_i_3__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(full_reg_n_0),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[7]),
        .O(\FSM_sequential_state[2]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h01100114)) 
    \cnt[0]_i_1 
       (.I0(Q[0]),
        .I1(\store_cnt_d1_reg[0] [2]),
        .I2(\store_cnt_d1_reg[0] [0]),
        .I3(\store_cnt_d1_reg[0] [1]),
        .I4(\cnt_reg[4] ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \cnt[1]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[2]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt[3]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt[4]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[5]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(\cnt_reg[7]_0 ),
        .I3(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt[6]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\cnt_reg[7]_0 ),
        .I4(Q[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h01C301FF)) 
    \cnt[7]_i_1 
       (.I0(full_reg_n_0),
        .I1(\store_cnt_d1_reg[0] [1]),
        .I2(\store_cnt_d1_reg[0] [0]),
        .I3(\store_cnt_d1_reg[0] [2]),
        .I4(\cnt_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt[7]_i_2 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(\cnt_reg[7]_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h00021416)) 
    \cnt[7]_i_3 
       (.I0(\store_cnt_d1_reg[0] [2]),
        .I1(\store_cnt_d1_reg[0] [0]),
        .I2(\store_cnt_d1_reg[0] [1]),
        .I3(\cnt_reg[4] ),
        .I4(\cnt_reg[7]_1 ),
        .O(\cnt[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h01FF0101)) 
    empty_i_1__0
       (.I0(empty_i_2__0_n_0),
        .I1(index_reg[2]),
        .I2(index_reg[3]),
        .I3(sel),
        .I4(empty_reg_0),
        .O(empty_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    empty_i_2__0
       (.I0(s_ready),
        .I1(empty_reg_0),
        .I2(sel),
        .I3(index_reg[0]),
        .I4(index_reg[1]),
        .O(empty_i_2__0_n_0));
  FDPE empty_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_i_1__0_n_0),
        .PRE(SR),
        .Q(empty_reg_0));
  LUT4 #(
    .INIT(16'hFBAA)) 
    full_i_1__0
       (.I0(full),
        .I1(s_ready),
        .I2(empty_reg_0),
        .I3(full_reg_n_0),
        .O(full_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    full_i_2__0
       (.I0(\index_reg[3]_0 ),
        .I1(sel),
        .I2(index_reg[0]),
        .I3(index_reg[1]),
        .I4(index_reg[2]),
        .I5(index_reg[3]),
        .O(full));
  FDCE full_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(full_i_1__0_n_0),
        .Q(full_reg_n_0));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][0]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[0]),
        .Q(out[0]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \gen_sr[15].mem_reg[15][0]_srl16_i_1 
       (.I0(\store_cnt_d1_reg[0] [2]),
        .I1(\store_cnt_d1_reg[0] [0]),
        .I2(\store_cnt_d1_reg[0] [1]),
        .I3(store_valid_d1),
        .I4(full_reg_n_0),
        .O(sel));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][10]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][11]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][11]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][12]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][12]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][13]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][13]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][14]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][14]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][15]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][15]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][16]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][16]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][17]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][17]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][18]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][18]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][19]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][19]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][1]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][20]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][20]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][21]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][21]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][22]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][22]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][23]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][23]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][2]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][32]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][32]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(1'b1),
        .Q(out[24]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][33]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][33]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(1'b1),
        .Q(out[25]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][34]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][34]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(1'b1),
        .Q(out[26]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][35]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][35]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(1'b1),
        .Q(out[27]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][36]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][36]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(osif_last_din),
        .Q(out[28]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \gen_sr[15].mem_reg[15][36]_srl16_i_1 
       (.I0(sel),
        .I1(\gen_sr[15].mem_reg[15][36]_srl16_i_2_n_0 ),
        .I2(\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 [6]),
        .I3(\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 [3]),
        .I4(\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 [2]),
        .I5(\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 [0]),
        .O(osif_last_din));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gen_sr[15].mem_reg[15][36]_srl16_i_2 
       (.I0(\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 [5]),
        .I1(\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 [1]),
        .I2(\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 [4]),
        .I3(\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 [7]),
        .O(\gen_sr[15].mem_reg[15][36]_srl16_i_2_n_0 ));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][3]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][4]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][5]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][6]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][7]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][8]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15] " *) 
  (* srl_name = "\inst/u_osif/osif_fifo/gen_sr[15].mem_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \gen_sr[15].mem_reg[15][9]_srl16 
       (.A0(index_reg[0]),
        .A1(index_reg[1]),
        .A2(index_reg[2]),
        .A3(index_reg[3]),
        .CE(sel),
        .CLK(clk),
        .D(in[9]),
        .Q(out[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1__0 
       (.I0(index_reg[0]),
        .O(\index[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h02FDFD02)) 
    \index[1]_i_1__0 
       (.I0(s_ready),
        .I1(empty_reg_0),
        .I2(sel),
        .I3(index_reg[0]),
        .I4(index_reg[1]),
        .O(\index[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5559AAAAAAAAAAA6)) 
    \index[2]_i_1__0 
       (.I0(index_reg[2]),
        .I1(s_ready),
        .I2(empty_reg_0),
        .I3(sel),
        .I4(index_reg[0]),
        .I5(index_reg[1]),
        .O(\index[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \index[3]_i_1__0 
       (.I0(empty_reg_0),
        .I1(s_ready),
        .I2(sel),
        .O(\index[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAA96AAA6AAA)) 
    \index[3]_i_2__0 
       (.I0(index_reg[3]),
        .I1(index_reg[2]),
        .I2(index_reg[1]),
        .I3(index_reg[0]),
        .I4(sel),
        .I5(\index_reg[3]_0 ),
        .O(\index[3]_i_2__0_n_0 ));
  FDPE \index_reg[0] 
       (.C(clk),
        .CE(\index[3]_i_1__0_n_0 ),
        .D(\index[0]_i_1__0_n_0 ),
        .PRE(SR),
        .Q(index_reg[0]));
  FDPE \index_reg[1] 
       (.C(clk),
        .CE(\index[3]_i_1__0_n_0 ),
        .D(\index[1]_i_1__0_n_0 ),
        .PRE(SR),
        .Q(index_reg[1]));
  FDPE \index_reg[2] 
       (.C(clk),
        .CE(\index[3]_i_1__0_n_0 ),
        .D(\index[2]_i_1__0_n_0 ),
        .PRE(SR),
        .Q(index_reg[2]));
  FDPE \index_reg[3] 
       (.C(clk),
        .CE(\index[3]_i_1__0_n_0 ),
        .D(\index[3]_i_2__0_n_0 ),
        .PRE(SR),
        .Q(index_reg[3]));
  LUT5 #(
    .INIT(32'h00000100)) 
    store_valid_d1_i_1
       (.I0(Q[7]),
        .I1(\store_cnt_d1_reg[0] [1]),
        .I2(\store_cnt_d1_reg[0] [0]),
        .I3(\store_cnt_d1_reg[0] [2]),
        .I4(full_reg_n_0),
        .O(\cnt_reg[7] ));
endmodule

(* ORIG_REF_NAME = "OUTPUT_STREAM_if" *) 
module design_1_polymul_axi_top_0_0_OUTPUT_STREAM_if
   (D,
    \cnt_reg[4] ,
    p_12_out,
    E,
    \cnt_reg[7] ,
    M_AXIS_S2MM_tvalid,
    \data_p1_reg[36] ,
    SR,
    clk,
    Q,
    \store_cnt_d1_reg[0] ,
    \cnt_reg[0] ,
    \cnt_reg[7]_0 ,
    \cnt_reg[7]_1 ,
    \gen_sr[15].mem_reg[15][36]_srl16_i_1 ,
    store_valid_d1,
    M_AXIS_S2MM_tready,
    in);
  output [7:0]D;
  output \cnt_reg[4] ;
  output p_12_out;
  output [0:0]E;
  output [0:0]\cnt_reg[7] ;
  output M_AXIS_S2MM_tvalid;
  output [28:0]\data_p1_reg[36] ;
  input [0:0]SR;
  input clk;
  input [7:0]Q;
  input [2:0]\store_cnt_d1_reg[0] ;
  input \cnt_reg[0] ;
  input \cnt_reg[7]_0 ;
  input \cnt_reg[7]_1 ;
  input [7:0]\gen_sr[15].mem_reg[15][36]_srl16_i_1 ;
  input store_valid_d1;
  input M_AXIS_S2MM_tready;
  input [23:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire M_AXIS_S2MM_tready;
  wire M_AXIS_S2MM_tvalid;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk;
  wire \cnt_reg[0] ;
  wire \cnt_reg[4] ;
  wire [0:0]\cnt_reg[7] ;
  wire \cnt_reg[7]_0 ;
  wire \cnt_reg[7]_1 ;
  wire [28:0]\data_p1_reg[36] ;
  wire [7:0]\gen_sr[15].mem_reg[15][36]_srl16_i_1 ;
  wire [23:0]in;
  wire load_p2;
  wire [36:0]osif_dout;
  wire osif_fifo_n_0;
  wire p_12_out;
  wire s_ready;
  wire [2:0]\store_cnt_d1_reg[0] ;
  wire store_valid_d1;

  design_1_polymul_axi_top_0_0_OUTPUT_STREAM_fifo osif_fifo
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .clk(clk),
        .\cnt_reg[0] (\cnt_reg[0] ),
        .\cnt_reg[4] (\cnt_reg[4] ),
        .\cnt_reg[7] (\cnt_reg[7] ),
        .\cnt_reg[7]_0 (\cnt_reg[7]_0 ),
        .\cnt_reg[7]_1 (\cnt_reg[7]_1 ),
        .empty_reg_0(osif_fifo_n_0),
        .\gen_sr[15].mem_reg[15][36]_srl16_i_1_0 (\gen_sr[15].mem_reg[15][36]_srl16_i_1 ),
        .in(in),
        .\index_reg[3]_0 (load_p2),
        .out({osif_dout[36:32],osif_dout[23:0]}),
        .s_ready(s_ready),
        .sel(p_12_out),
        .\store_cnt_d1_reg[0] (\store_cnt_d1_reg[0] ),
        .store_valid_d1(store_valid_d1));
  design_1_polymul_axi_top_0_0_OUTPUT_STREAM_reg_slice rs
       (.D({osif_dout[36:32],osif_dout[23:0]}),
        .E(load_p2),
        .M_AXIS_S2MM_tready(M_AXIS_S2MM_tready),
        .M_AXIS_S2MM_tvalid(M_AXIS_S2MM_tvalid),
        .SR(SR),
        .clk(clk),
        .\data_p1_reg[36]_0 (\data_p1_reg[36] ),
        .s_ready(s_ready),
        .s_ready_t_reg_0(osif_fifo_n_0));
endmodule

(* ORIG_REF_NAME = "OUTPUT_STREAM_reg_slice" *) 
module design_1_polymul_axi_top_0_0_OUTPUT_STREAM_reg_slice
   (s_ready,
    M_AXIS_S2MM_tvalid,
    E,
    \data_p1_reg[36]_0 ,
    SR,
    clk,
    s_ready_t_reg_0,
    M_AXIS_S2MM_tready,
    D);
  output s_ready;
  output M_AXIS_S2MM_tvalid;
  output [0:0]E;
  output [28:0]\data_p1_reg[36]_0 ;
  input [0:0]SR;
  input clk;
  input s_ready_t_reg_0;
  input M_AXIS_S2MM_tready;
  input [28:0]D;

  wire [28:0]D;
  wire [0:0]E;
  wire M_AXIS_S2MM_tready;
  wire M_AXIS_S2MM_tvalid;
  wire [0:0]SR;
  wire clk;
  wire \data_p1[0]_i_1__0_n_0 ;
  wire \data_p1[10]_i_1__0_n_0 ;
  wire \data_p1[11]_i_1__0_n_0 ;
  wire \data_p1[12]_i_1__0_n_0 ;
  wire \data_p1[13]_i_1__0_n_0 ;
  wire \data_p1[14]_i_1__0_n_0 ;
  wire \data_p1[15]_i_1__0_n_0 ;
  wire \data_p1[16]_i_1__0_n_0 ;
  wire \data_p1[17]_i_1__0_n_0 ;
  wire \data_p1[18]_i_1__0_n_0 ;
  wire \data_p1[19]_i_1__0_n_0 ;
  wire \data_p1[1]_i_1__0_n_0 ;
  wire \data_p1[20]_i_1__0_n_0 ;
  wire \data_p1[21]_i_1__0_n_0 ;
  wire \data_p1[22]_i_1__0_n_0 ;
  wire \data_p1[23]_i_2__0_n_0 ;
  wire \data_p1[2]_i_1__0_n_0 ;
  wire \data_p1[32]_i_1_n_0 ;
  wire \data_p1[33]_i_1_n_0 ;
  wire \data_p1[34]_i_1_n_0 ;
  wire \data_p1[35]_i_1_n_0 ;
  wire \data_p1[36]_i_1_n_0 ;
  wire \data_p1[3]_i_1__0_n_0 ;
  wire \data_p1[4]_i_1__0_n_0 ;
  wire \data_p1[5]_i_1__0_n_0 ;
  wire \data_p1[6]_i_1__0_n_0 ;
  wire \data_p1[7]_i_1__0_n_0 ;
  wire \data_p1[8]_i_1__0_n_0 ;
  wire \data_p1[9]_i_1__0_n_0 ;
  wire [28:0]\data_p1_reg[36]_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[32] ;
  wire \data_p2_reg_n_0_[33] ;
  wire \data_p2_reg_n_0_[34] ;
  wire \data_p2_reg_n_0_[35] ;
  wire \data_p2_reg_n_0_[36] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire load_p1;
  wire [1:0]next__0;
  wire s_ready;
  wire s_ready_t_i_1__0_n_0;
  wire s_ready_t_reg_0;
  wire [1:1]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'h001C)) 
    \FSM_sequential_state[0]_i_1__2 
       (.I0(s_ready_t_reg_0),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(M_AXIS_S2MM_tready),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT5 #(
    .INIT(32'h03F20C02)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(s_ready),
        .I1(s_ready_t_reg_0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(M_AXIS_S2MM_tready),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1__0 
       (.I0(D[0]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[10]_i_1__0 
       (.I0(D[10]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[10] ),
        .O(\data_p1[10]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[11]_i_1__0 
       (.I0(D[11]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[11] ),
        .O(\data_p1[11]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[12]_i_1__0 
       (.I0(D[12]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[12] ),
        .O(\data_p1[12]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[13]_i_1__0 
       (.I0(D[13]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[13] ),
        .O(\data_p1[13]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[14]_i_1__0 
       (.I0(D[14]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[14] ),
        .O(\data_p1[14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[15]_i_1__0 
       (.I0(D[15]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[15] ),
        .O(\data_p1[15]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[16]_i_1__0 
       (.I0(D[16]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[16] ),
        .O(\data_p1[16]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[17]_i_1__0 
       (.I0(D[17]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[17] ),
        .O(\data_p1[17]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[18]_i_1__0 
       (.I0(D[18]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[18] ),
        .O(\data_p1[18]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[19]_i_1__0 
       (.I0(D[19]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[19] ),
        .O(\data_p1[19]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1__0 
       (.I0(D[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[1] ),
        .O(\data_p1[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[20]_i_1__0 
       (.I0(D[20]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[20] ),
        .O(\data_p1[20]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[21]_i_1__0 
       (.I0(D[21]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[21] ),
        .O(\data_p1[21]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[22]_i_1__0 
       (.I0(D[22]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[22] ),
        .O(\data_p1[22]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h10D1)) 
    \data_p1[23]_i_1__0 
       (.I0(s_ready_t_reg_0),
        .I1(state__0[0]),
        .I2(M_AXIS_S2MM_tready),
        .I3(state__0[1]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[23]_i_2__0 
       (.I0(D[23]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[23] ),
        .O(\data_p1[23]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1__0 
       (.I0(D[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[2] ),
        .O(\data_p1[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[32]_i_1 
       (.I0(D[24]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[32] ),
        .O(\data_p1[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[33]_i_1 
       (.I0(D[25]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[33] ),
        .O(\data_p1[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[34]_i_1 
       (.I0(D[26]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[34] ),
        .O(\data_p1[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[35]_i_1 
       (.I0(D[27]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[35] ),
        .O(\data_p1[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[36]_i_1 
       (.I0(D[28]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[36] ),
        .O(\data_p1[36]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1__0 
       (.I0(D[3]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1__0 
       (.I0(D[4]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[4] ),
        .O(\data_p1[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1__0 
       (.I0(D[5]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[5] ),
        .O(\data_p1[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1__0 
       (.I0(D[6]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[6] ),
        .O(\data_p1[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_1__0 
       (.I0(D[7]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[8]_i_1__0 
       (.I0(D[8]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[8] ),
        .O(\data_p1[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[9]_i_1__0 
       (.I0(D[9]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p2_reg_n_0_[9] ),
        .O(\data_p1[9]_i_1__0_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[23]_i_2__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [23]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [2]),
        .R(1'b0));
  FDRE \data_p1_reg[32] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[32]_i_1_n_0 ),
        .Q(\data_p1_reg[36]_0 [24]),
        .R(1'b0));
  FDRE \data_p1_reg[33] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[33]_i_1_n_0 ),
        .Q(\data_p1_reg[36]_0 [25]),
        .R(1'b0));
  FDRE \data_p1_reg[34] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[34]_i_1_n_0 ),
        .Q(\data_p1_reg[36]_0 [26]),
        .R(1'b0));
  FDRE \data_p1_reg[35] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[35]_i_1_n_0 ),
        .Q(\data_p1_reg[36]_0 [27]),
        .R(1'b0));
  FDRE \data_p1_reg[36] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[36]_i_1_n_0 ),
        .Q(\data_p1_reg[36]_0 [28]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__0_n_0 ),
        .Q(\data_p1_reg[36]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \data_p2[36]_i_1 
       (.I0(s_ready),
        .I1(s_ready_t_reg_0),
        .O(E));
  FDRE \data_p2_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\data_p2_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \data_p2_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\data_p2_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \data_p2_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\data_p2_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \data_p2_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\data_p2_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \data_p2_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\data_p2_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT5 #(
    .INIT(32'hFFFB3033)) 
    s_ready_t_i_1__0
       (.I0(s_ready_t_reg_0),
        .I1(state__0[1]),
        .I2(M_AXIS_S2MM_tready),
        .I3(state__0[0]),
        .I4(s_ready),
        .O(s_ready_t_i_1__0_n_0));
  FDRE s_ready_t_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_ready_t_i_1__0_n_0),
        .Q(s_ready),
        .R(SR));
  LUT5 #(
    .INIT(32'h4CFC4CCC)) 
    \state[0]_i_1 
       (.I0(M_AXIS_S2MM_tready),
        .I1(M_AXIS_S2MM_tvalid),
        .I2(state),
        .I3(s_ready_t_reg_0),
        .I4(s_ready),
        .O(\state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF8F)) 
    \state[1]_i_1 
       (.I0(state),
        .I1(s_ready_t_reg_0),
        .I2(M_AXIS_S2MM_tvalid),
        .I3(M_AXIS_S2MM_tready),
        .O(\state[1]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(M_AXIS_S2MM_tvalid),
        .R(SR));
  FDSE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "addr_gen" *) 
module design_1_polymul_axi_top_0_0_addr_gen
   (ag_read_en,
    ag_bu_mode,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[1] ,
    ag_started_reg,
    ag_started_reg_0,
    ADDRARDADDR,
    \waj_pipe_reg[6][6]_0 ,
    A_web,
    \pwm_cnt_reg[6] ,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[1]_0 ,
    A_enb0_out,
    ADDRBWRADDR,
    B_web,
    B_enb4_out,
    \FSM_sequential_state_reg[2] ,
    \wajpk_pipe_reg[6][6]_0 ,
    C_enb8_out,
    stage_active_reg_0,
    \wajpk_pipe_reg[6][6]_1 ,
    DIADI,
    WEA,
    ag_start0,
    \wen_pipe_reg[6]_0 ,
    D,
    twiddle_addr,
    clk,
    \pp_pipe_reg[6]_1 ,
    done_reg_0,
    state,
    ag_started_reg_1,
    ag_is_intt,
    Q,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    pm_dbg_bram_sel,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    mem_reg_8,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    mem_reg_12,
    mem_reg_13,
    mem_reg_14,
    pm_dbg_din,
    bu_result_u,
    c_pkt,
    pm_busy,
    \FSM_sequential_state_reg[0]_2 ,
    \FSM_sequential_state_reg[0]_3 ,
    pwm_write_active,
    pwm_write_active_d1,
    mem_reg_15,
    mem_reg_16,
    mem_reg_17,
    mem_reg_18,
    ag_start);
  output ag_read_en;
  output [0:0]ag_bu_mode;
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[0]_0 ;
  output \FSM_sequential_state_reg[1] ;
  output ag_started_reg;
  output ag_started_reg_0;
  output [6:0]ADDRARDADDR;
  output [6:0]\waj_pipe_reg[6][6]_0 ;
  output A_web;
  output [6:0]\pwm_cnt_reg[6] ;
  output \FSM_sequential_state_reg[0]_1 ;
  output \FSM_sequential_state_reg[1]_0 ;
  output A_enb0_out;
  output [6:0]ADDRBWRADDR;
  output B_web;
  output B_enb4_out;
  output \FSM_sequential_state_reg[2] ;
  output [6:0]\wajpk_pipe_reg[6][6]_0 ;
  output C_enb8_out;
  output stage_active_reg_0;
  output [6:0]\wajpk_pipe_reg[6][6]_1 ;
  output [23:0]DIADI;
  output [0:0]WEA;
  output ag_start0;
  output [0:0]\wen_pipe_reg[6]_0 ;
  output [1:0]D;
  output [6:0]twiddle_addr;
  input clk;
  input \pp_pipe_reg[6]_1 ;
  input done_reg_0;
  input [2:0]state;
  input ag_started_reg_1;
  input ag_is_intt;
  input [6:0]Q;
  input mem_reg;
  input mem_reg_0;
  input mem_reg_1;
  input [6:0]mem_reg_2;
  input mem_reg_3;
  input pm_dbg_bram_sel;
  input mem_reg_4;
  input mem_reg_5;
  input mem_reg_6;
  input mem_reg_7;
  input mem_reg_8;
  input mem_reg_9;
  input mem_reg_10;
  input mem_reg_11;
  input mem_reg_12;
  input mem_reg_13;
  input mem_reg_14;
  input [23:0]pm_dbg_din;
  input [23:0]bu_result_u;
  input [23:0]c_pkt;
  input pm_busy;
  input \FSM_sequential_state_reg[0]_2 ;
  input \FSM_sequential_state_reg[0]_3 ;
  input pwm_write_active;
  input pwm_write_active_d1;
  input mem_reg_15;
  input [6:0]mem_reg_16;
  input mem_reg_17;
  input mem_reg_18;
  input ag_start;

  wire [6:0]ADDRARDADDR;
  wire [6:0]ADDRBWRADDR;
  wire A_enb0_out;
  wire A_web;
  wire [5:0]B;
  wire B_enb4_out;
  wire B_web;
  wire C_enb8_out;
  wire [1:0]D;
  wire [23:0]DIADI;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_2 ;
  wire \FSM_sequential_state_reg[0]_3 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire [6:0]Q;
  wire [0:0]WEA;
  wire [0:0]ag_bu_mode;
  wire ag_busy;
  wire ag_done;
  wire ag_is_intt;
  wire ag_read_en;
  wire [6:0]ag_read_j;
  wire [6:0]ag_read_jpk;
  wire ag_read_sel;
  wire ag_start;
  wire ag_start0;
  wire ag_started_reg;
  wire ag_started_reg_0;
  wire ag_started_reg_1;
  wire ag_write_en;
  wire [6:0]ag_write_j;
  wire [6:0]ag_write_jpk;
  wire \bf_cnt[0]_i_1_n_0 ;
  wire \bf_cnt[0]_i_2_n_0 ;
  wire \bf_cnt[1]_i_1_n_0 ;
  wire \bf_cnt[2]_i_1_n_0 ;
  wire \bf_cnt[2]_i_2_n_0 ;
  wire \bf_cnt[3]_i_1_n_0 ;
  wire \bf_cnt[4]_i_1_n_0 ;
  wire \bf_cnt[5]_i_1_n_0 ;
  wire \bf_cnt[6]_i_1_n_0 ;
  wire \bf_cnt[6]_i_2_n_0 ;
  wire \bf_cnt[6]_i_3_n_0 ;
  wire \bf_cnt[6]_i_4_n_0 ;
  wire \bf_cnt[6]_i_5_n_0 ;
  wire \bf_cnt[6]_i_6_n_0 ;
  wire \bf_cnt[6]_i_7_n_0 ;
  wire \bf_cnt[6]_i_8_n_0 ;
  wire \bf_cnt_reg_n_0_[0] ;
  wire \bf_cnt_reg_n_0_[1] ;
  wire \bf_cnt_reg_n_0_[2] ;
  wire \bf_cnt_reg_n_0_[3] ;
  wire \bf_cnt_reg_n_0_[4] ;
  wire \bf_cnt_reg_n_0_[5] ;
  wire \bf_cnt_reg_n_0_[6] ;
  wire [23:0]bu_result_u;
  wire busy4_out;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire [23:0]c_pkt;
  wire clk;
  wire done_i_1_n_0;
  wire done_reg_0;
  wire dout_reg_i_13_n_0;
  wire dout_reg_i_14_n_0;
  wire dout_reg_i_15_n_0;
  wire dout_reg_i_16_n_0;
  wire dout_reg_i_17_n_0;
  wire dout_reg_i_18_n_0;
  wire dout_reg_i_19_n_0;
  wire dout_reg_i_20_n_0;
  wire dout_reg_i_21_n_0;
  wire dout_reg_i_22_n_0;
  wire dout_reg_i_23_n_0;
  wire dout_reg_i_24_n_0;
  wire dout_reg_i_25_n_0;
  wire dout_reg_i_26_n_0;
  wire dout_reg_i_27_n_0;
  wire dout_reg_i_28_n_0;
  wire dout_reg_i_29_n_0;
  wire dout_reg_i_2_n_2;
  wire dout_reg_i_2_n_3;
  wire dout_reg_i_30_n_0;
  wire dout_reg_i_31_n_0;
  wire dout_reg_i_32_n_0;
  wire dout_reg_i_33_n_0;
  wire dout_reg_i_34_n_0;
  wire dout_reg_i_35_n_0;
  wire dout_reg_i_3_n_0;
  wire dout_reg_i_3_n_1;
  wire dout_reg_i_3_n_2;
  wire dout_reg_i_3_n_3;
  wire dout_reg_i_6_n_0;
  wire dout_reg_i_7_n_0;
  wire dout_reg_i_8_n_0;
  wire intt_reg_i_1_n_0;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_10;
  wire mem_reg_11;
  wire mem_reg_12;
  wire mem_reg_13;
  wire mem_reg_14;
  wire mem_reg_15;
  wire [6:0]mem_reg_16;
  wire mem_reg_17;
  wire mem_reg_18;
  wire [6:0]mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire mem_reg_9;
  wire mem_reg_i_129_n_0;
  wire mem_reg_i_67__0_n_0;
  wire mem_reg_i_67_n_0;
  wire mem_reg_i_69_n_0;
  wire mem_reg_i_70_n_0;
  wire mem_reg_i_71__0_n_0;
  wire mem_reg_i_72__0_n_0;
  wire mem_reg_i_73__0_n_0;
  wire mem_reg_i_74__0_n_0;
  wire mem_reg_i_75__0_n_0;
  wire mem_reg_i_76_n_0;
  wire mem_reg_i_77__0_n_0;
  wire [5:0]p_1_in;
  wire ping_pong_i_1_n_0;
  wire pm_busy;
  wire pm_dbg_bram_sel;
  wire [23:0]pm_dbg_din;
  wire \pp_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \pp_pipe_reg[5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \pp_pipe_reg[6]_0 ;
  wire \pp_pipe_reg[6]_1 ;
  wire pp_pipe_reg_gate_n_0;
  wire [6:0]\pwm_cnt_reg[6] ;
  wire pwm_write_active;
  wire pwm_write_active_d1;
  wire [6:1]read_j_w0;
  wire stage_active_i_1_n_0;
  wire stage_active_i_2_n_0;
  wire stage_active_i_4_n_0;
  wire stage_active_i_5_n_0;
  wire stage_active_reg_0;
  wire stage_active_reg_n_0;
  wire \stage_out[0]_i_1_n_0 ;
  wire \stage_out[1]_i_1_n_0 ;
  wire \stage_out[2]_i_1_n_0 ;
  wire \stage_out_reg_n_0_[0] ;
  wire \stage_out_reg_n_0_[1] ;
  wire \stage_out_reg_n_0_[2] ;
  wire [2:0]state;
  wire [6:0]twiddle_addr;
  wire \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ;
  wire \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ;
  wire \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6_n_0 ;
  wire \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7_n_0 ;
  wire \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \waj_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \waj_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \waj_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_11_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_12_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_14_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_15_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_16_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_17_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_18_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_19_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_1 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_2 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_3 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_20_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_21_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_22_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_1 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_2 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_3 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_4 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_5 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_1 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_2 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_3 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_4 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_5 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_6 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_7 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_9_n_0 ;
  wire \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \waj_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_11_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_12_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_13_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_3 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_1 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_2 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_3 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_3 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_6 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_7 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_9_n_0 ;
  wire \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \waj_pipe_reg[5][0]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \waj_pipe_reg[5][1]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \waj_pipe_reg[5][2]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \waj_pipe_reg[5][3]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \waj_pipe_reg[5][4]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \waj_pipe_reg[5][5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \waj_pipe_reg[5][6]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire [6:0]\waj_pipe_reg[6][6]_0 ;
  wire waj_pipe_reg_gate__0_n_0;
  wire waj_pipe_reg_gate__1_n_0;
  wire waj_pipe_reg_gate__2_n_0;
  wire waj_pipe_reg_gate__3_n_0;
  wire waj_pipe_reg_gate__4_n_0;
  wire waj_pipe_reg_gate__5_n_0;
  wire waj_pipe_reg_gate_n_0;
  wire \wajpk_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \wajpk_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \wajpk_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_0 ;
  wire \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_1 ;
  wire \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_2 ;
  wire \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_3 ;
  wire \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ;
  wire \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ;
  wire \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ;
  wire \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_0 ;
  wire \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \wajpk_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \wajpk_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_2 ;
  wire \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_3 ;
  wire \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ;
  wire \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ;
  wire \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ;
  wire \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \wajpk_pipe_reg[5][0]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \wajpk_pipe_reg[5][1]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \wajpk_pipe_reg[5][2]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \wajpk_pipe_reg[5][3]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \wajpk_pipe_reg[5][4]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \wajpk_pipe_reg[5][5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire \wajpk_pipe_reg[5][6]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire [6:0]\wajpk_pipe_reg[6][6]_0 ;
  wire [6:0]\wajpk_pipe_reg[6][6]_1 ;
  wire wajpk_pipe_reg_gate__0_n_0;
  wire wajpk_pipe_reg_gate__1_n_0;
  wire wajpk_pipe_reg_gate__2_n_0;
  wire wajpk_pipe_reg_gate__3_n_0;
  wire wajpk_pipe_reg_gate__4_n_0;
  wire wajpk_pipe_reg_gate__5_n_0;
  wire wajpk_pipe_reg_gate_n_0;
  wire \wen_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \wen_pipe_reg[5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ;
  wire [0:0]\wen_pipe_reg[6]_0 ;
  wire wen_pipe_reg_gate_n_0;
  wire [4:1]within_b;
  wire [3:2]NLW_dout_reg_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_dout_reg_i_2_O_UNCONNECTED;
  wire [0:0]\NLW_waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_CO_UNCONNECTED ;
  wire [3:1]\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0F70)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state[0]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT4 #(
    .INIT(16'h2F40)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state[1]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2F10)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state[2]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(pm_busy),
        .I4(\FSM_sequential_state_reg[0]_2 ),
        .I5(\FSM_sequential_state_reg[0]_3 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h040FFFF004000F00)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(pwm_write_active),
        .I1(pwm_write_active_d1),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(ag_done),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFEF00000100)) 
    ag_is_intt_i_1
       (.I0(ag_started_reg_1),
        .I1(ag_busy),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(ag_is_intt),
        .O(ag_started_reg_0));
  LUT5 #(
    .INIT(32'h00100110)) 
    ag_start_i_1
       (.I0(ag_started_reg_1),
        .I1(ag_busy),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(ag_start0));
  LUT6 #(
    .INIT(64'h0A0A0B0A0A0B0B00)) 
    ag_started_i_1
       (.I0(ag_started_reg_1),
        .I1(ag_busy),
        .I2(ag_done),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(ag_started_reg));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \bf_cnt[0]_i_1 
       (.I0(\bf_cnt[6]_i_6_n_0 ),
        .I1(\bf_cnt_reg_n_0_[3] ),
        .I2(\bf_cnt_reg_n_0_[4] ),
        .I3(\bf_cnt_reg_n_0_[5] ),
        .I4(\bf_cnt_reg_n_0_[6] ),
        .I5(\bf_cnt[0]_i_2_n_0 ),
        .O(\bf_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bf_cnt[0]_i_2 
       (.I0(ag_busy),
        .I1(\bf_cnt_reg_n_0_[0] ),
        .O(\bf_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0B00F000)) 
    \bf_cnt[1]_i_1 
       (.I0(\bf_cnt[2]_i_2_n_0 ),
        .I1(\bf_cnt_reg_n_0_[2] ),
        .I2(\bf_cnt_reg_n_0_[0] ),
        .I3(ag_busy),
        .I4(\bf_cnt_reg_n_0_[1] ),
        .O(\bf_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h4A00F000)) 
    \bf_cnt[2]_i_1 
       (.I0(\bf_cnt_reg_n_0_[0] ),
        .I1(\bf_cnt[2]_i_2_n_0 ),
        .I2(\bf_cnt_reg_n_0_[2] ),
        .I3(ag_busy),
        .I4(\bf_cnt_reg_n_0_[1] ),
        .O(\bf_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \bf_cnt[2]_i_2 
       (.I0(\bf_cnt_reg_n_0_[3] ),
        .I1(\bf_cnt_reg_n_0_[4] ),
        .I2(\bf_cnt_reg_n_0_[5] ),
        .I3(\bf_cnt_reg_n_0_[6] ),
        .O(\bf_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7800F000)) 
    \bf_cnt[3]_i_1 
       (.I0(\bf_cnt_reg_n_0_[2] ),
        .I1(\bf_cnt_reg_n_0_[1] ),
        .I2(\bf_cnt_reg_n_0_[3] ),
        .I3(ag_busy),
        .I4(\bf_cnt_reg_n_0_[0] ),
        .O(\bf_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F800000FF000000)) 
    \bf_cnt[4]_i_1 
       (.I0(\bf_cnt_reg_n_0_[3] ),
        .I1(\bf_cnt_reg_n_0_[1] ),
        .I2(\bf_cnt_reg_n_0_[2] ),
        .I3(\bf_cnt_reg_n_0_[4] ),
        .I4(ag_busy),
        .I5(\bf_cnt_reg_n_0_[0] ),
        .O(\bf_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF200000FF000000)) 
    \bf_cnt[5]_i_1 
       (.I0(\bf_cnt_reg_n_0_[4] ),
        .I1(\bf_cnt[6]_i_6_n_0 ),
        .I2(\bf_cnt_reg_n_0_[3] ),
        .I3(\bf_cnt_reg_n_0_[5] ),
        .I4(ag_busy),
        .I5(\bf_cnt_reg_n_0_[0] ),
        .O(\bf_cnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFACA)) 
    \bf_cnt[6]_i_1 
       (.I0(ag_start),
        .I1(\bf_cnt_reg_n_0_[0] ),
        .I2(ag_busy),
        .I3(\bf_cnt[6]_i_3_n_0 ),
        .O(\bf_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAAAAAAAAAAAAA)) 
    \bf_cnt[6]_i_2 
       (.I0(\bf_cnt[6]_i_4_n_0 ),
        .I1(\bf_cnt_reg_n_0_[0] ),
        .I2(\bf_cnt[6]_i_5_n_0 ),
        .I3(\bf_cnt[6]_i_6_n_0 ),
        .I4(\bf_cnt_reg_n_0_[6] ),
        .I5(ag_busy),
        .O(\bf_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bf_cnt[6]_i_3 
       (.I0(\bf_cnt[6]_i_5_n_0 ),
        .I1(\bf_cnt[6]_i_7_n_0 ),
        .I2(\bf_cnt_reg_n_0_[2] ),
        .I3(\bf_cnt_reg_n_0_[6] ),
        .I4(stage_active_reg_n_0),
        .I5(\bf_cnt_reg_n_0_[1] ),
        .O(\bf_cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F20FF0000000000)) 
    \bf_cnt[6]_i_4 
       (.I0(\bf_cnt_reg_n_0_[3] ),
        .I1(\bf_cnt[6]_i_6_n_0 ),
        .I2(\bf_cnt_reg_n_0_[4] ),
        .I3(\bf_cnt_reg_n_0_[6] ),
        .I4(\bf_cnt_reg_n_0_[5] ),
        .I5(\bf_cnt[6]_i_8_n_0 ),
        .O(\bf_cnt[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bf_cnt[6]_i_5 
       (.I0(\bf_cnt_reg_n_0_[5] ),
        .I1(\bf_cnt_reg_n_0_[4] ),
        .I2(\bf_cnt_reg_n_0_[3] ),
        .O(\bf_cnt[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bf_cnt[6]_i_6 
       (.I0(\bf_cnt_reg_n_0_[1] ),
        .I1(\bf_cnt_reg_n_0_[2] ),
        .O(\bf_cnt[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bf_cnt[6]_i_7 
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(\stage_out_reg_n_0_[1] ),
        .I2(\stage_out_reg_n_0_[0] ),
        .O(\bf_cnt[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bf_cnt[6]_i_8 
       (.I0(\bf_cnt_reg_n_0_[0] ),
        .I1(ag_busy),
        .O(\bf_cnt[6]_i_8_n_0 ));
  FDCE \bf_cnt_reg[0] 
       (.C(clk),
        .CE(\bf_cnt[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\bf_cnt[0]_i_1_n_0 ),
        .Q(\bf_cnt_reg_n_0_[0] ));
  FDCE \bf_cnt_reg[1] 
       (.C(clk),
        .CE(\bf_cnt[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\bf_cnt[1]_i_1_n_0 ),
        .Q(\bf_cnt_reg_n_0_[1] ));
  FDCE \bf_cnt_reg[2] 
       (.C(clk),
        .CE(\bf_cnt[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\bf_cnt[2]_i_1_n_0 ),
        .Q(\bf_cnt_reg_n_0_[2] ));
  FDCE \bf_cnt_reg[3] 
       (.C(clk),
        .CE(\bf_cnt[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\bf_cnt[3]_i_1_n_0 ),
        .Q(\bf_cnt_reg_n_0_[3] ));
  FDCE \bf_cnt_reg[4] 
       (.C(clk),
        .CE(\bf_cnt[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\bf_cnt[4]_i_1_n_0 ),
        .Q(\bf_cnt_reg_n_0_[4] ));
  FDCE \bf_cnt_reg[5] 
       (.C(clk),
        .CE(\bf_cnt[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\bf_cnt[5]_i_1_n_0 ),
        .Q(\bf_cnt_reg_n_0_[5] ));
  FDCE \bf_cnt_reg[6] 
       (.C(clk),
        .CE(\bf_cnt[6]_i_1_n_0 ),
        .CLR(done_reg_0),
        .D(\bf_cnt[6]_i_2_n_0 ),
        .Q(\bf_cnt_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hDFFFFFFFDFFF0000)) 
    busy_i_1
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(busy_i_2_n_0),
        .I4(ag_busy),
        .I5(ag_start),
        .O(busy_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    busy_i_2
       (.I0(\bf_cnt[0]_i_2_n_0 ),
        .I1(\bf_cnt[6]_i_6_n_0 ),
        .I2(\bf_cnt_reg_n_0_[3] ),
        .I3(\bf_cnt_reg_n_0_[4] ),
        .I4(\bf_cnt_reg_n_0_[5] ),
        .I5(\bf_cnt_reg_n_0_[6] ),
        .O(busy_i_2_n_0));
  FDCE busy_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(busy_i_1_n_0),
        .Q(ag_busy));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    done_i_1
       (.I0(busy_i_2_n_0),
        .I1(\stage_out_reg_n_0_[1] ),
        .I2(\stage_out_reg_n_0_[0] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(done_i_1_n_0),
        .Q(ag_done));
  LUT2 #(
    .INIT(4'h8)) 
    dout_reg_i_1
       (.I0(ag_busy),
        .I1(stage_active_reg_n_0),
        .O(ag_read_en));
  LUT6 #(
    .INIT(64'h55555555556A6A6A)) 
    dout_reg_i_10
       (.I0(ag_bu_mode),
        .I1(dout_reg_i_18_n_0),
        .I2(\bf_cnt_reg_n_0_[2] ),
        .I3(\bf_cnt_reg_n_0_[3] ),
        .I4(dout_reg_i_17_n_0),
        .I5(dout_reg_i_21_n_0),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h5555556A)) 
    dout_reg_i_11
       (.I0(ag_bu_mode),
        .I1(dout_reg_i_18_n_0),
        .I2(\bf_cnt_reg_n_0_[1] ),
        .I3(dout_reg_i_22_n_0),
        .I4(dout_reg_i_23_n_0),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    dout_reg_i_12
       (.I0(ag_bu_mode),
        .I1(dout_reg_i_24_n_0),
        .I2(dout_reg_i_25_n_0),
        .I3(dout_reg_i_26_n_0),
        .I4(dout_reg_i_27_n_0),
        .I5(dout_reg_i_28_n_0),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hA9AAAA6A)) 
    dout_reg_i_13
       (.I0(p_1_in[3]),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(ag_bu_mode),
        .O(dout_reg_i_13_n_0));
  LUT5 #(
    .INIT(32'hAAA96AAA)) 
    dout_reg_i_14
       (.I0(p_1_in[2]),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[0] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(\stage_out_reg_n_0_[1] ),
        .O(dout_reg_i_14_n_0));
  LUT5 #(
    .INIT(32'hA6AAAA9A)) 
    dout_reg_i_15
       (.I0(p_1_in[1]),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[0] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(\stage_out_reg_n_0_[1] ),
        .O(dout_reg_i_15_n_0));
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    dout_reg_i_16
       (.I0(p_1_in[0]),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(ag_bu_mode),
        .O(dout_reg_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    dout_reg_i_17
       (.I0(\stage_out_reg_n_0_[1] ),
        .I1(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I2(\stage_out_reg_n_0_[0] ),
        .I3(ag_bu_mode),
        .I4(\stage_out_reg_n_0_[2] ),
        .O(dout_reg_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004200)) 
    dout_reg_i_18
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I4(\stage_out_reg_n_0_[0] ),
        .O(dout_reg_i_18_n_0));
  LUT6 #(
    .INIT(64'h000000000AC00CA0)) 
    dout_reg_i_19
       (.I0(\bf_cnt_reg_n_0_[4] ),
        .I1(\bf_cnt_reg_n_0_[6] ),
        .I2(ag_bu_mode),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(\stage_out_reg_n_0_[1] ),
        .I5(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10_n_0 ),
        .O(dout_reg_i_19_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 dout_reg_i_2
       (.CI(dout_reg_i_3_n_0),
        .CO({NLW_dout_reg_i_2_CO_UNCONNECTED[3:2],dout_reg_i_2_n_2,dout_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_1_in[5:4]}),
        .O({NLW_dout_reg_i_2_O_UNCONNECTED[3],twiddle_addr[6:4]}),
        .S({1'b0,dout_reg_i_6_n_0,dout_reg_i_7_n_0,dout_reg_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    dout_reg_i_20
       (.I0(\bf_cnt_reg_n_0_[5] ),
        .I1(dout_reg_i_29_n_0),
        .I2(\bf_cnt_reg_n_0_[6] ),
        .I3(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_16_n_0 ),
        .I4(\stage_out_reg_n_0_[0] ),
        .I5(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .O(dout_reg_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    dout_reg_i_21
       (.I0(dout_reg_i_30_n_0),
        .I1(dout_reg_i_31_n_0),
        .I2(dout_reg_i_32_n_0),
        .I3(\bf_cnt_reg_n_0_[5] ),
        .I4(\bf_cnt_reg_n_0_[4] ),
        .I5(dout_reg_i_29_n_0),
        .O(dout_reg_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    dout_reg_i_22
       (.I0(dout_reg_i_32_n_0),
        .I1(\bf_cnt_reg_n_0_[4] ),
        .I2(dout_reg_i_29_n_0),
        .I3(\bf_cnt_reg_n_0_[3] ),
        .I4(\bf_cnt_reg_n_0_[2] ),
        .I5(dout_reg_i_17_n_0),
        .O(dout_reg_i_22_n_0));
  LUT6 #(
    .INIT(64'h1F00004F11000044)) 
    dout_reg_i_23
       (.I0(dout_reg_i_33_n_0),
        .I1(\stage_out_reg_n_0_[1] ),
        .I2(dout_reg_i_34_n_0),
        .I3(ag_bu_mode),
        .I4(\stage_out_reg_n_0_[2] ),
        .I5(\bf_cnt_reg_n_0_[6] ),
        .O(dout_reg_i_23_n_0));
  LUT6 #(
    .INIT(64'h0004400000000000)) 
    dout_reg_i_24
       (.I0(\stage_out_reg_n_0_[0] ),
        .I1(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(ag_bu_mode),
        .I5(\bf_cnt_reg_n_0_[0] ),
        .O(dout_reg_i_24_n_0));
  LUT6 #(
    .INIT(64'h0000600000000000)) 
    dout_reg_i_25
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[0] ),
        .I3(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I4(\stage_out_reg_n_0_[1] ),
        .I5(\bf_cnt_reg_n_0_[1] ),
        .O(dout_reg_i_25_n_0));
  LUT6 #(
    .INIT(64'h0040040000000000)) 
    dout_reg_i_26
       (.I0(\stage_out_reg_n_0_[0] ),
        .I1(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(ag_bu_mode),
        .I5(\bf_cnt_reg_n_0_[2] ),
        .O(dout_reg_i_26_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    dout_reg_i_27
       (.I0(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(\bf_cnt_reg_n_0_[3] ),
        .O(dout_reg_i_27_n_0));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    dout_reg_i_28
       (.I0(dout_reg_i_35_n_0),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_14_n_0 ),
        .I5(\bf_cnt_reg_n_0_[5] ),
        .O(dout_reg_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00002400)) 
    dout_reg_i_29
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I4(\stage_out_reg_n_0_[0] ),
        .O(dout_reg_i_29_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 dout_reg_i_3
       (.CI(1'b0),
        .CO({dout_reg_i_3_n_0,dout_reg_i_3_n_1,dout_reg_i_3_n_2,dout_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_in[3:0]),
        .O(twiddle_addr[3:0]),
        .S({dout_reg_i_13_n_0,dout_reg_i_14_n_0,dout_reg_i_15_n_0,dout_reg_i_16_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h42)) 
    dout_reg_i_30
       (.I0(\stage_out_reg_n_0_[1] ),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(ag_bu_mode),
        .O(dout_reg_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    dout_reg_i_31
       (.I0(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\bf_cnt_reg_n_0_[6] ),
        .O(dout_reg_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    dout_reg_i_32
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(\stage_out_reg_n_0_[1] ),
        .I2(\stage_out_reg_n_0_[0] ),
        .I3(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .O(dout_reg_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    dout_reg_i_33
       (.I0(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\bf_cnt_reg_n_0_[5] ),
        .O(dout_reg_i_33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    dout_reg_i_34
       (.I0(\stage_out_reg_n_0_[0] ),
        .I1(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I2(\stage_out_reg_n_0_[1] ),
        .O(dout_reg_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000180000000000)) 
    dout_reg_i_35
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\bf_cnt_reg_n_0_[4] ),
        .I4(\stage_out_reg_n_0_[0] ),
        .I5(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .O(dout_reg_i_35_n_0));
  LUT5 #(
    .INIT(32'h556A6A6A)) 
    dout_reg_i_4
       (.I0(ag_bu_mode),
        .I1(dout_reg_i_17_n_0),
        .I2(\bf_cnt_reg_n_0_[6] ),
        .I3(dout_reg_i_18_n_0),
        .I4(\bf_cnt_reg_n_0_[5] ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'h556A)) 
    dout_reg_i_5
       (.I0(ag_bu_mode),
        .I1(dout_reg_i_17_n_0),
        .I2(\bf_cnt_reg_n_0_[5] ),
        .I3(dout_reg_i_19_n_0),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAA88AE8AAE8AAE8A)) 
    dout_reg_i_6
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[0] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I5(\bf_cnt_reg_n_0_[6] ),
        .O(dout_reg_i_6_n_0));
  LUT5 #(
    .INIT(32'hAA9AA6AA)) 
    dout_reg_i_7
       (.I0(p_1_in[5]),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[2] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\stage_out_reg_n_0_[0] ),
        .O(dout_reg_i_7_n_0));
  LUT5 #(
    .INIT(32'hAA6AA9AA)) 
    dout_reg_i_8
       (.I0(p_1_in[4]),
        .I1(\stage_out_reg_n_0_[1] ),
        .I2(ag_bu_mode),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(\stage_out_reg_n_0_[0] ),
        .O(dout_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'h5555566656665666)) 
    dout_reg_i_9
       (.I0(ag_bu_mode),
        .I1(dout_reg_i_20_n_0),
        .I2(\bf_cnt_reg_n_0_[4] ),
        .I3(dout_reg_i_17_n_0),
        .I4(dout_reg_i_18_n_0),
        .I5(\bf_cnt_reg_n_0_[3] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    intt_reg_i_1
       (.I0(ag_is_intt),
        .I1(ag_start),
        .I2(ag_busy),
        .I3(ag_bu_mode),
        .O(intt_reg_i_1_n_0));
  FDCE intt_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(intt_reg_i_1_n_0),
        .Q(ag_bu_mode));
  LUT6 #(
    .INIT(64'hAAEAAAAAEEFBEEBB)) 
    mem_reg_i_1
       (.I0(A_enb0_out),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(mem_reg_3),
        .I5(pm_dbg_bram_sel),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_10
       (.I0(ag_read_jpk[6]),
        .I1(mem_reg_i_70_n_0),
        .I2(ag_write_jpk[6]),
        .I3(B_web),
        .O(ADDRBWRADDR[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_10__0
       (.I0(ag_write_jpk[6]),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(ag_read_jpk[6]),
        .I3(mem_reg_i_69_n_0),
        .O(\wajpk_pipe_reg[6][6]_0 [6]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_10__1
       (.I0(ag_read_jpk[6]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(ag_write_jpk[6]),
        .I3(A_web),
        .O(\wajpk_pipe_reg[6][6]_1 [6]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_11
       (.I0(ag_read_jpk[5]),
        .I1(mem_reg_i_70_n_0),
        .I2(ag_write_jpk[5]),
        .I3(B_web),
        .O(ADDRBWRADDR[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_11__0
       (.I0(ag_write_jpk[5]),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(ag_read_jpk[5]),
        .I3(mem_reg_i_69_n_0),
        .O(\wajpk_pipe_reg[6][6]_0 [5]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_11__1
       (.I0(ag_read_jpk[5]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(ag_write_jpk[5]),
        .I3(A_web),
        .O(\wajpk_pipe_reg[6][6]_1 [5]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_12
       (.I0(ag_read_jpk[4]),
        .I1(mem_reg_i_70_n_0),
        .I2(ag_write_jpk[4]),
        .I3(B_web),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'h00000B000B700000)) 
    mem_reg_i_129
       (.I0(\pp_pipe_reg[6]_0 ),
        .I1(ag_write_en),
        .I2(state[0]),
        .I3(ag_read_sel),
        .I4(state[2]),
        .I5(state[1]),
        .O(mem_reg_i_129_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_12__0
       (.I0(ag_write_jpk[4]),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(ag_read_jpk[4]),
        .I3(mem_reg_i_69_n_0),
        .O(\wajpk_pipe_reg[6][6]_0 [4]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_12__1
       (.I0(ag_read_jpk[4]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(ag_write_jpk[4]),
        .I3(A_web),
        .O(\wajpk_pipe_reg[6][6]_1 [4]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_13
       (.I0(ag_read_jpk[3]),
        .I1(mem_reg_i_70_n_0),
        .I2(ag_write_jpk[3]),
        .I3(B_web),
        .O(ADDRBWRADDR[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_13__0
       (.I0(ag_write_jpk[3]),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(ag_read_jpk[3]),
        .I3(mem_reg_i_69_n_0),
        .O(\wajpk_pipe_reg[6][6]_0 [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_13__1
       (.I0(ag_read_jpk[3]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(ag_write_jpk[3]),
        .I3(A_web),
        .O(\wajpk_pipe_reg[6][6]_1 [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_14
       (.I0(ag_read_jpk[2]),
        .I1(mem_reg_i_70_n_0),
        .I2(ag_write_jpk[2]),
        .I3(B_web),
        .O(ADDRBWRADDR[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_14__0
       (.I0(ag_write_jpk[2]),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(ag_read_jpk[2]),
        .I3(mem_reg_i_69_n_0),
        .O(\wajpk_pipe_reg[6][6]_0 [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_14__1
       (.I0(ag_read_jpk[2]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(ag_write_jpk[2]),
        .I3(A_web),
        .O(\wajpk_pipe_reg[6][6]_1 [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_15
       (.I0(ag_read_jpk[1]),
        .I1(mem_reg_i_70_n_0),
        .I2(ag_write_jpk[1]),
        .I3(B_web),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_15__0
       (.I0(ag_write_jpk[1]),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(ag_read_jpk[1]),
        .I3(mem_reg_i_69_n_0),
        .O(\wajpk_pipe_reg[6][6]_0 [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_15__1
       (.I0(ag_read_jpk[1]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(ag_write_jpk[1]),
        .I3(A_web),
        .O(\wajpk_pipe_reg[6][6]_1 [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_16
       (.I0(ag_read_jpk[0]),
        .I1(mem_reg_i_70_n_0),
        .I2(ag_write_jpk[0]),
        .I3(B_web),
        .O(ADDRBWRADDR[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_16__0
       (.I0(ag_write_jpk[0]),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(ag_read_jpk[0]),
        .I3(mem_reg_i_69_n_0),
        .O(\wajpk_pipe_reg[6][6]_0 [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_i_16__1
       (.I0(ag_read_jpk[0]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(ag_write_jpk[0]),
        .I3(A_web),
        .O(\wajpk_pipe_reg[6][6]_1 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_17
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[23]),
        .I2(B_web),
        .I3(bu_result_u[23]),
        .I4(c_pkt[23]),
        .I5(mem_reg),
        .O(DIADI[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_18
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[22]),
        .I2(B_web),
        .I3(bu_result_u[22]),
        .I4(c_pkt[22]),
        .I5(mem_reg),
        .O(DIADI[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_19
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[21]),
        .I2(B_web),
        .I3(bu_result_u[21]),
        .I4(c_pkt[21]),
        .I5(mem_reg),
        .O(DIADI[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEFEEEE)) 
    mem_reg_i_1__0
       (.I0(mem_reg_i_67_n_0),
        .I1(mem_reg),
        .I2(state[2]),
        .I3(state[1]),
        .I4(pm_dbg_bram_sel),
        .I5(B_web),
        .O(\FSM_sequential_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    mem_reg_i_1__1
       (.I0(mem_reg_1),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(mem_reg_6),
        .I3(stage_active_reg_n_0),
        .I4(ag_busy),
        .I5(ag_read_sel),
        .O(stage_active_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00084800)) 
    mem_reg_i_2
       (.I0(ag_read_sel),
        .I1(ag_read_en),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(A_web),
        .O(A_enb0_out));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_20
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[20]),
        .I2(B_web),
        .I3(bu_result_u[20]),
        .I4(c_pkt[20]),
        .I5(mem_reg),
        .O(DIADI[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_21
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[19]),
        .I2(B_web),
        .I3(bu_result_u[19]),
        .I4(c_pkt[19]),
        .I5(mem_reg),
        .O(DIADI[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_22
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[18]),
        .I2(B_web),
        .I3(bu_result_u[18]),
        .I4(c_pkt[18]),
        .I5(mem_reg),
        .O(DIADI[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_23
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[17]),
        .I2(B_web),
        .I3(bu_result_u[17]),
        .I4(c_pkt[17]),
        .I5(mem_reg),
        .O(DIADI[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_24
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[16]),
        .I2(B_web),
        .I3(bu_result_u[16]),
        .I4(c_pkt[16]),
        .I5(mem_reg),
        .O(DIADI[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_25
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[15]),
        .I2(B_web),
        .I3(bu_result_u[15]),
        .I4(c_pkt[15]),
        .I5(mem_reg),
        .O(DIADI[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_26
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[14]),
        .I2(B_web),
        .I3(bu_result_u[14]),
        .I4(c_pkt[14]),
        .I5(mem_reg),
        .O(DIADI[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_27
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[13]),
        .I2(B_web),
        .I3(bu_result_u[13]),
        .I4(c_pkt[13]),
        .I5(mem_reg),
        .O(DIADI[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_28
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[12]),
        .I2(B_web),
        .I3(bu_result_u[12]),
        .I4(c_pkt[12]),
        .I5(mem_reg),
        .O(DIADI[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_29
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[11]),
        .I2(B_web),
        .I3(bu_result_u[11]),
        .I4(c_pkt[11]),
        .I5(mem_reg),
        .O(DIADI[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    mem_reg_i_2__0
       (.I0(mem_reg_5),
        .I1(state[0]),
        .I2(stage_active_reg_n_0),
        .I3(ag_busy),
        .I4(ag_read_sel),
        .I5(B_web),
        .O(B_enb4_out));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    mem_reg_i_2__1
       (.I0(mem_reg_7),
        .I1(state[0]),
        .I2(stage_active_reg_n_0),
        .I3(ag_busy),
        .I4(ag_read_sel),
        .I5(\FSM_sequential_state_reg[0]_1 ),
        .O(C_enb8_out));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_3
       (.I0(Q[6]),
        .I1(mem_reg),
        .I2(mem_reg_i_70_n_0),
        .I3(ag_read_j[6]),
        .I4(mem_reg_i_71__0_n_0),
        .O(ADDRARDADDR[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_30
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[10]),
        .I2(B_web),
        .I3(bu_result_u[10]),
        .I4(c_pkt[10]),
        .I5(mem_reg),
        .O(DIADI[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_31
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[9]),
        .I2(B_web),
        .I3(bu_result_u[9]),
        .I4(c_pkt[9]),
        .I5(mem_reg),
        .O(DIADI[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_32
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[8]),
        .I2(B_web),
        .I3(bu_result_u[8]),
        .I4(c_pkt[8]),
        .I5(mem_reg),
        .O(DIADI[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_33
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[7]),
        .I2(B_web),
        .I3(bu_result_u[7]),
        .I4(c_pkt[7]),
        .I5(mem_reg),
        .O(DIADI[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_34
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[6]),
        .I2(B_web),
        .I3(bu_result_u[6]),
        .I4(c_pkt[6]),
        .I5(mem_reg),
        .O(DIADI[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_35
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[5]),
        .I2(B_web),
        .I3(bu_result_u[5]),
        .I4(c_pkt[5]),
        .I5(mem_reg),
        .O(DIADI[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_36
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[4]),
        .I2(B_web),
        .I3(bu_result_u[4]),
        .I4(c_pkt[4]),
        .I5(mem_reg),
        .O(DIADI[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_37
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[3]),
        .I2(B_web),
        .I3(bu_result_u[3]),
        .I4(c_pkt[3]),
        .I5(mem_reg),
        .O(DIADI[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_38
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[2]),
        .I2(B_web),
        .I3(bu_result_u[2]),
        .I4(c_pkt[2]),
        .I5(mem_reg),
        .O(DIADI[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_39
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[1]),
        .I2(B_web),
        .I3(bu_result_u[1]),
        .I4(c_pkt[1]),
        .I5(mem_reg),
        .O(DIADI[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_3__0
       (.I0(mem_reg_1),
        .I1(mem_reg_2[6]),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(ag_write_j[6]),
        .I4(ag_read_j[6]),
        .I5(mem_reg_i_69_n_0),
        .O(\pwm_cnt_reg[6] [6]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_3__1
       (.I0(ag_read_j[6]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(A_web),
        .I3(ag_write_j[6]),
        .I4(mem_reg_13),
        .O(\waj_pipe_reg[6][6]_0 [6]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_4
       (.I0(Q[5]),
        .I1(mem_reg),
        .I2(mem_reg_i_70_n_0),
        .I3(ag_read_j[5]),
        .I4(mem_reg_i_72__0_n_0),
        .O(ADDRARDADDR[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_40
       (.I0(mem_reg_14),
        .I1(pm_dbg_din[0]),
        .I2(B_web),
        .I3(bu_result_u[0]),
        .I4(c_pkt[0]),
        .I5(mem_reg),
        .O(DIADI[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_4__0
       (.I0(mem_reg_1),
        .I1(mem_reg_2[5]),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(ag_write_j[5]),
        .I4(ag_read_j[5]),
        .I5(mem_reg_i_69_n_0),
        .O(\pwm_cnt_reg[6] [5]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_4__1
       (.I0(ag_read_j[5]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(A_web),
        .I3(ag_write_j[5]),
        .I4(mem_reg_12),
        .O(\waj_pipe_reg[6][6]_0 [5]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_5
       (.I0(Q[4]),
        .I1(mem_reg),
        .I2(mem_reg_i_70_n_0),
        .I3(ag_read_j[4]),
        .I4(mem_reg_i_73__0_n_0),
        .O(ADDRARDADDR[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_5__0
       (.I0(mem_reg_1),
        .I1(mem_reg_2[4]),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(ag_write_j[4]),
        .I4(ag_read_j[4]),
        .I5(mem_reg_i_69_n_0),
        .O(\pwm_cnt_reg[6] [4]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_5__1
       (.I0(ag_read_j[4]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(A_web),
        .I3(ag_write_j[4]),
        .I4(mem_reg_11),
        .O(\waj_pipe_reg[6][6]_0 [4]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_6
       (.I0(Q[3]),
        .I1(mem_reg),
        .I2(mem_reg_i_70_n_0),
        .I3(ag_read_j[3]),
        .I4(mem_reg_i_74__0_n_0),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'hEEFEEEEEEEEEEEEE)) 
    mem_reg_i_65
       (.I0(mem_reg_14),
        .I1(B_web),
        .I2(pwm_write_active),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(WEA));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAEEA)) 
    mem_reg_i_65__0
       (.I0(mem_reg_15),
        .I1(ag_write_en),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\pp_pipe_reg[6]_0 ),
        .O(\wen_pipe_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    mem_reg_i_65__1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(ag_write_en),
        .I4(\pp_pipe_reg[6]_0 ),
        .O(\FSM_sequential_state_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h01900000)) 
    mem_reg_i_66__0
       (.I0(\pp_pipe_reg[6]_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(ag_write_en),
        .O(A_web));
  LUT5 #(
    .INIT(32'h14000000)) 
    mem_reg_i_66__1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\pp_pipe_reg[6]_0 ),
        .I4(ag_write_en),
        .O(B_web));
  LUT6 #(
    .INIT(64'h0000004000400000)) 
    mem_reg_i_67
       (.I0(ag_read_sel),
        .I1(ag_busy),
        .I2(stage_active_reg_n_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(mem_reg_i_67_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_67__0
       (.I0(mem_reg_i_129_n_0),
        .I1(stage_active_reg_n_0),
        .I2(ag_busy),
        .O(mem_reg_i_67__0_n_0));
  LUT6 #(
    .INIT(64'h8000800000008000)) 
    mem_reg_i_69
       (.I0(mem_reg_6),
        .I1(stage_active_reg_n_0),
        .I2(ag_busy),
        .I3(ag_read_sel),
        .I4(ag_write_en),
        .I5(\pp_pipe_reg[6]_0 ),
        .O(mem_reg_i_69_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_6__0
       (.I0(mem_reg_1),
        .I1(mem_reg_2[3]),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(ag_write_j[3]),
        .I4(ag_read_j[3]),
        .I5(mem_reg_i_69_n_0),
        .O(\pwm_cnt_reg[6] [3]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_6__1
       (.I0(ag_read_j[3]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(A_web),
        .I3(ag_write_j[3]),
        .I4(mem_reg_10),
        .O(\waj_pipe_reg[6][6]_0 [3]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_7
       (.I0(Q[2]),
        .I1(mem_reg),
        .I2(mem_reg_i_70_n_0),
        .I3(ag_read_j[2]),
        .I4(mem_reg_i_75__0_n_0),
        .O(ADDRARDADDR[2]));
  LUT6 #(
    .INIT(64'h0000008000800080)) 
    mem_reg_i_70
       (.I0(mem_reg_4),
        .I1(stage_active_reg_n_0),
        .I2(ag_busy),
        .I3(ag_read_sel),
        .I4(\pp_pipe_reg[6]_0 ),
        .I5(ag_write_en),
        .O(mem_reg_i_70_n_0));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_71__0
       (.I0(ag_write_j[6]),
        .I1(B_web),
        .I2(mem_reg_16[6]),
        .I3(mem_reg_17),
        .I4(mem_reg_18),
        .O(mem_reg_i_71__0_n_0));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_72__0
       (.I0(ag_write_j[5]),
        .I1(B_web),
        .I2(mem_reg_16[5]),
        .I3(mem_reg_17),
        .I4(mem_reg_18),
        .O(mem_reg_i_72__0_n_0));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_73__0
       (.I0(ag_write_j[4]),
        .I1(B_web),
        .I2(mem_reg_16[4]),
        .I3(mem_reg_17),
        .I4(mem_reg_18),
        .O(mem_reg_i_73__0_n_0));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_74__0
       (.I0(ag_write_j[3]),
        .I1(B_web),
        .I2(mem_reg_16[3]),
        .I3(mem_reg_17),
        .I4(mem_reg_18),
        .O(mem_reg_i_74__0_n_0));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_75__0
       (.I0(ag_write_j[2]),
        .I1(B_web),
        .I2(mem_reg_16[2]),
        .I3(mem_reg_17),
        .I4(mem_reg_18),
        .O(mem_reg_i_75__0_n_0));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_76
       (.I0(ag_write_j[1]),
        .I1(B_web),
        .I2(mem_reg_16[1]),
        .I3(mem_reg_17),
        .I4(mem_reg_18),
        .O(mem_reg_i_76_n_0));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_77__0
       (.I0(ag_write_j[0]),
        .I1(B_web),
        .I2(mem_reg_16[0]),
        .I3(mem_reg_17),
        .I4(mem_reg_18),
        .O(mem_reg_i_77__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_7__0
       (.I0(mem_reg_1),
        .I1(mem_reg_2[2]),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(ag_write_j[2]),
        .I4(ag_read_j[2]),
        .I5(mem_reg_i_69_n_0),
        .O(\pwm_cnt_reg[6] [2]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_7__1
       (.I0(ag_read_j[2]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(A_web),
        .I3(ag_write_j[2]),
        .I4(mem_reg_9),
        .O(\waj_pipe_reg[6][6]_0 [2]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_8
       (.I0(Q[1]),
        .I1(mem_reg),
        .I2(mem_reg_i_70_n_0),
        .I3(ag_read_j[1]),
        .I4(mem_reg_i_76_n_0),
        .O(ADDRARDADDR[1]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_8__0
       (.I0(ag_read_j[1]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(A_web),
        .I3(ag_write_j[1]),
        .I4(mem_reg_0),
        .O(\waj_pipe_reg[6][6]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_8__1
       (.I0(mem_reg_1),
        .I1(mem_reg_2[1]),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(ag_write_j[1]),
        .I4(ag_read_j[1]),
        .I5(mem_reg_i_69_n_0),
        .O(\pwm_cnt_reg[6] [1]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_9
       (.I0(Q[0]),
        .I1(mem_reg),
        .I2(mem_reg_i_70_n_0),
        .I3(ag_read_j[0]),
        .I4(mem_reg_i_77__0_n_0),
        .O(ADDRARDADDR[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    mem_reg_i_9__0
       (.I0(mem_reg_1),
        .I1(mem_reg_2[0]),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(ag_write_j[0]),
        .I4(ag_read_j[0]),
        .I5(mem_reg_i_69_n_0),
        .O(\pwm_cnt_reg[6] [0]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    mem_reg_i_9__1
       (.I0(ag_read_j[0]),
        .I1(mem_reg_i_67__0_n_0),
        .I2(A_web),
        .I3(ag_write_j[0]),
        .I4(mem_reg_8),
        .O(\waj_pipe_reg[6][6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \ntt_read_bid_d1[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(ag_read_sel),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \ntt_read_bid_d1[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(ag_read_sel),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4588)) 
    ping_pong_i_1
       (.I0(busy_i_2_n_0),
        .I1(ag_busy),
        .I2(ag_start),
        .I3(ag_read_sel),
        .O(ping_pong_i_1_n_0));
  FDCE ping_pong_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(ping_pong_i_1_n_0),
        .Q(ag_read_sel));
  (* srl_bus_name = "\inst/u_core/u_addr/pp_pipe_reg " *) 
  (* srl_name = "\inst/u_core/u_addr/pp_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \pp_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_sel),
        .Q(\pp_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  FDRE \pp_pipe_reg[5]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\pp_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\pp_pipe_reg[5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDCE \pp_pipe_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(pp_pipe_reg_gate_n_0),
        .Q(\pp_pipe_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pp_pipe_reg_gate
       (.I0(\pp_pipe_reg[5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(pp_pipe_reg_gate_n_0));
  LUT6 #(
    .INIT(64'hFFFFA0A3FFFFA0A0)) 
    stage_active_i_1
       (.I0(stage_active_i_2_n_0),
        .I1(busy4_out),
        .I2(busy_i_2_n_0),
        .I3(stage_active_i_4_n_0),
        .I4(stage_active_i_5_n_0),
        .I5(stage_active_reg_n_0),
        .O(stage_active_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    stage_active_i_2
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .O(stage_active_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    stage_active_i_3
       (.I0(ag_start),
        .I1(ag_busy),
        .O(busy4_out));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    stage_active_i_4
       (.I0(\bf_cnt[6]_i_8_n_0 ),
        .I1(\bf_cnt_reg_n_0_[5] ),
        .I2(\bf_cnt_reg_n_0_[6] ),
        .I3(\bf_cnt_reg_n_0_[4] ),
        .I4(\bf_cnt[6]_i_6_n_0 ),
        .I5(\bf_cnt_reg_n_0_[3] ),
        .O(stage_active_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    stage_active_i_5
       (.I0(\bf_cnt_reg_n_0_[0] ),
        .I1(ag_busy),
        .I2(\bf_cnt[6]_i_3_n_0 ),
        .O(stage_active_i_5_n_0));
  FDCE stage_active_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(stage_active_i_1_n_0),
        .Q(stage_active_reg_n_0));
  LUT6 #(
    .INIT(64'h13CC000013CC00CC)) 
    \stage_out[0]_i_1 
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(busy_i_2_n_0),
        .I4(ag_busy),
        .I5(ag_start),
        .O(\stage_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3CF000003CF020F0)) 
    \stage_out[1]_i_1 
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(busy_i_2_n_0),
        .I4(ag_busy),
        .I5(ag_start),
        .O(\stage_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA00006AAA20AA)) 
    \stage_out[2]_i_1 
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(busy_i_2_n_0),
        .I4(ag_busy),
        .I5(ag_start),
        .O(\stage_out[2]_i_1_n_0 ));
  FDCE \stage_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(\stage_out[0]_i_1_n_0 ),
        .Q(\stage_out_reg_n_0_[0] ));
  FDCE \stage_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(\stage_out[1]_i_1_n_0 ),
        .Q(\stage_out_reg_n_0_[1] ));
  FDCE \stage_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(\stage_out[2]_i_1_n_0 ),
        .Q(\stage_out_reg_n_0_[2] ));
  (* srl_bus_name = "\inst/u_core/u_addr/waj_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_j[0]),
        .Q(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  LUT6 #(
    .INIT(64'h2FFD000000000000)) 
    \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1 
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[2] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\bf_cnt_reg_n_0_[0] ),
        .I5(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .O(ag_read_j[0]));
  LUT5 #(
    .INIT(32'h00000116)) 
    \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2 
       (.I0(B[0]),
        .I1(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ),
        .I2(B[2]),
        .I3(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6_n_0 ),
        .I4(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7_n_0 ),
        .O(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0042)) 
    \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3 
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[0] ),
        .O(B[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4 
       (.I0(\stage_out_reg_n_0_[1] ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(ag_bu_mode),
        .I3(\stage_out_reg_n_0_[2] ),
        .O(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0024)) 
    \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5 
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[0] ),
        .O(B[2]));
  LUT6 #(
    .INIT(64'h0000CF7ECF7E3081)) 
    \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6 
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[0] ),
        .I4(B[4]),
        .I5(B[5]),
        .O(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF308130810000)) 
    \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7 
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[0] ),
        .I4(B[4]),
        .I5(B[5]),
        .O(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0018)) 
    \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8 
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[0] ),
        .O(B[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_9 
       (.I0(\stage_out_reg_n_0_[1] ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(ag_bu_mode),
        .I3(\stage_out_reg_n_0_[2] ),
        .O(B[5]));
  (* srl_bus_name = "\inst/u_core/u_addr/waj_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/waj_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \waj_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_j[1]),
        .Q(\waj_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \waj_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1 
       (.I0(read_j_w0[1]),
        .I1(within_b[1]),
        .O(ag_read_j[1]));
  LUT6 #(
    .INIT(64'h2000A2008A008A00)) 
    \waj_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2 
       (.I0(\bf_cnt_reg_n_0_[1] ),
        .I1(\stage_out_reg_n_0_[1] ),
        .I2(ag_bu_mode),
        .I3(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I4(\stage_out_reg_n_0_[0] ),
        .I5(\stage_out_reg_n_0_[2] ),
        .O(within_b[1]));
  (* srl_bus_name = "\inst/u_core/u_addr/waj_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/waj_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \waj_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_j[2]),
        .Q(\waj_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/waj_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/waj_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \waj_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_j[3]),
        .Q(\waj_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/waj_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_j[4]),
        .Q(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  CARRY4 \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1 
       (.CI(1'b0),
        .CO({\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_1 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_2 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(read_j_w0[4:1]),
        .O({ag_read_j[4:2],\NLW_waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_O_UNCONNECTED [0]}),
        .S({\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7_n_0 }));
  LUT6 #(
    .INIT(64'h0000202020800000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10 
       (.I0(\bf_cnt_reg_n_0_[2] ),
        .I1(\stage_out_reg_n_0_[1] ),
        .I2(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I3(\stage_out_reg_n_0_[0] ),
        .I4(ag_bu_mode),
        .I5(\stage_out_reg_n_0_[2] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0028000020080000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_11 
       (.I0(\bf_cnt_reg_n_0_[1] ),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[2] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I5(\stage_out_reg_n_0_[0] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0004400000000000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_12 
       (.I0(\stage_out_reg_n_0_[0] ),
        .I1(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(ag_bu_mode),
        .I5(\bf_cnt_reg_n_0_[0] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000800880000008)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_13 
       (.I0(\bf_cnt_reg_n_0_[4] ),
        .I1(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I2(ag_bu_mode),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(\stage_out_reg_n_0_[1] ),
        .I5(\stage_out_reg_n_0_[0] ),
        .O(within_b[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_14 
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(ag_bu_mode),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h4030C030)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_15 
       (.I0(\stage_out_reg_n_0_[1] ),
        .I1(ag_bu_mode),
        .I2(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(\stage_out_reg_n_0_[0] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_16 
       (.I0(\stage_out_reg_n_0_[1] ),
        .I1(\stage_out_reg_n_0_[2] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000208000A00000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_17 
       (.I0(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\bf_cnt_reg_n_0_[4] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(ag_bu_mode),
        .I5(\stage_out_reg_n_0_[2] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000600000000000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_18 
       (.I0(\stage_out_reg_n_0_[2] ),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[0] ),
        .I3(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I4(\stage_out_reg_n_0_[1] ),
        .I5(\bf_cnt_reg_n_0_[3] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0A08000028200000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_19 
       (.I0(\bf_cnt_reg_n_0_[5] ),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[2] ),
        .I3(\stage_out_reg_n_0_[0] ),
        .I4(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I5(\stage_out_reg_n_0_[1] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2 
       (.I0(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_5 ),
        .I1(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_7 ),
        .O(read_j_w0[3]));
  LUT6 #(
    .INIT(64'h0028000028280000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_20 
       (.I0(\bf_cnt_reg_n_0_[4] ),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[2] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I5(\stage_out_reg_n_0_[0] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0028000020080000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_21 
       (.I0(\bf_cnt_reg_n_0_[3] ),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[2] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I5(\stage_out_reg_n_0_[0] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0004400000000000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_22 
       (.I0(\stage_out_reg_n_0_[0] ),
        .I1(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(ag_bu_mode),
        .I5(\bf_cnt_reg_n_0_[2] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_22_n_0 ));
  CARRY4 \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3 
       (.CI(1'b0),
        .CO({\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_1 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_2 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({dout_reg_i_27_n_0,dout_reg_i_26_n_0,dout_reg_i_25_n_0,1'b0}),
        .O({\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_4 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_5 ,read_j_w0[2:1]}),
        .S({\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_9_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_11_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_12_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4 
       (.I0(read_j_w0[4]),
        .I1(within_b[4]),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9A5AAAAAAAAAAAAA)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5 
       (.I0(read_j_w0[3]),
        .I1(\stage_out_reg_n_0_[1] ),
        .I2(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I3(\stage_out_reg_n_0_[0] ),
        .I4(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_14_n_0 ),
        .I5(\bf_cnt_reg_n_0_[3] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5A6A6A6A6A6A6A6A)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6 
       (.I0(read_j_w0[2]),
        .I1(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_15_n_0 ),
        .I2(\bf_cnt_reg_n_0_[2] ),
        .I3(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I4(\stage_out_reg_n_0_[0] ),
        .I5(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_16_n_0 ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7 
       (.I0(read_j_w0[1]),
        .I1(within_b[1]),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7_n_0 ));
  CARRY4 \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8 
       (.CI(1'b0),
        .CO({\NLW_waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_CO_UNCONNECTED [3],\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_1 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_2 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_17_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_18_n_0 ,1'b0}),
        .O({\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_4 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_5 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_6 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_7 }),
        .S({\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_19_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_20_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_21_n_0 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_22_n_0 }));
  LUT6 #(
    .INIT(64'h0A00000008200000)) 
    \waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_9 
       (.I0(\bf_cnt_reg_n_0_[3] ),
        .I1(ag_bu_mode),
        .I2(\stage_out_reg_n_0_[2] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I5(\stage_out_reg_n_0_[0] ),
        .O(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_9_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/waj_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/waj_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \waj_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_j[5]),
        .Q(\waj_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/waj_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_j[6]),
        .Q(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  CARRY4 \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1 
       (.CI(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_0 ),
        .CO({\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_CO_UNCONNECTED [3:1],\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,read_j_w0[5]}),
        .O({\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_O_UNCONNECTED [3:2],ag_read_j[6:5]}),
        .S({1'b0,1'b0,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hB)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10 
       (.I0(\stage_out_reg_n_0_[0] ),
        .I1(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0084000004800000)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_11 
       (.I0(ag_bu_mode),
        .I1(\bf_cnt_reg_n_0_[5] ),
        .I2(\stage_out_reg_n_0_[2] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I5(\stage_out_reg_n_0_[0] ),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0C00048000000000)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_12 
       (.I0(ag_bu_mode),
        .I1(\bf_cnt_reg_n_0_[4] ),
        .I2(\stage_out_reg_n_0_[2] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\stage_out_reg_n_0_[0] ),
        .I5(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_13 
       (.I0(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_6 ),
        .I1(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_4 ),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_13_n_0 ));
  CARRY4 \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2 
       (.CI(1'b0),
        .CO({\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_CO_UNCONNECTED [3],\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_1 ,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_2 ,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_7 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_4 ,\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_5 }),
        .O({read_j_w0[6:4],\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_O_UNCONNECTED [0]}),
        .S({\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6_n_0 ,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7_n_0 ,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_0 ,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_9_n_0 }));
  LUT6 #(
    .INIT(64'hFFFF7EFF00008100)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3 
       (.I0(\stage_out_reg_n_0_[1] ),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(ag_bu_mode),
        .I3(\bf_cnt_reg_n_0_[6] ),
        .I4(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10_n_0 ),
        .I5(read_j_w0[6]),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAA9A)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4 
       (.I0(read_j_w0[5]),
        .I1(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10_n_0 ),
        .I2(\bf_cnt_reg_n_0_[5] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\stage_out_reg_n_0_[2] ),
        .I5(ag_bu_mode),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ));
  CARRY4 \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5 
       (.CI(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ),
        .CO({\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_CO_UNCONNECTED [3:1],\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,dout_reg_i_35_n_0}),
        .O({\NLW_waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_O_UNCONNECTED [3:2],\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_6 ,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_7 }),
        .S({1'b0,1'b0,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_11_n_0 ,\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_12_n_0 }));
  LUT6 #(
    .INIT(64'hFF00E718FF00FF00)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6 
       (.I0(\stage_out_reg_n_0_[1] ),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(ag_bu_mode),
        .I3(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_13_n_0 ),
        .I4(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_10_n_0 ),
        .I5(\bf_cnt_reg_n_0_[5] ),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7 
       (.I0(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_7 ),
        .I1(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_5 ),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8 
       (.I0(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_4 ),
        .I1(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_6 ),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_9 
       (.I0(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_5 ),
        .I1(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_8_n_7 ),
        .O(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_9_n_0 ));
  FDRE \waj_pipe_reg[5][0]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\waj_pipe_reg[5][0]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \waj_pipe_reg[5][1]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\waj_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\waj_pipe_reg[5][1]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \waj_pipe_reg[5][2]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\waj_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\waj_pipe_reg[5][2]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \waj_pipe_reg[5][3]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\waj_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\waj_pipe_reg[5][3]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \waj_pipe_reg[5][4]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\waj_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\waj_pipe_reg[5][4]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \waj_pipe_reg[5][5]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\waj_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\waj_pipe_reg[5][5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \waj_pipe_reg[5][6]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\waj_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\waj_pipe_reg[5][6]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDCE \waj_pipe_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(waj_pipe_reg_gate__5_n_0),
        .Q(ag_write_j[0]));
  FDCE \waj_pipe_reg[6][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(waj_pipe_reg_gate__4_n_0),
        .Q(ag_write_j[1]));
  FDCE \waj_pipe_reg[6][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(waj_pipe_reg_gate__3_n_0),
        .Q(ag_write_j[2]));
  FDCE \waj_pipe_reg[6][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(waj_pipe_reg_gate__2_n_0),
        .Q(ag_write_j[3]));
  FDCE \waj_pipe_reg[6][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(waj_pipe_reg_gate__1_n_0),
        .Q(ag_write_j[4]));
  FDCE \waj_pipe_reg[6][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(waj_pipe_reg_gate__0_n_0),
        .Q(ag_write_j[5]));
  FDCE \waj_pipe_reg[6][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(waj_pipe_reg_gate_n_0),
        .Q(ag_write_j[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    waj_pipe_reg_gate
       (.I0(\waj_pipe_reg[5][6]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(waj_pipe_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    waj_pipe_reg_gate__0
       (.I0(\waj_pipe_reg[5][5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(waj_pipe_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    waj_pipe_reg_gate__1
       (.I0(\waj_pipe_reg[5][4]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(waj_pipe_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    waj_pipe_reg_gate__2
       (.I0(\waj_pipe_reg[5][3]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(waj_pipe_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    waj_pipe_reg_gate__3
       (.I0(\waj_pipe_reg[5][2]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(waj_pipe_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    waj_pipe_reg_gate__4
       (.I0(\waj_pipe_reg[5][1]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(waj_pipe_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    waj_pipe_reg_gate__5
       (.I0(\waj_pipe_reg[5][0]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(waj_pipe_reg_gate__5_n_0));
  (* srl_bus_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \wajpk_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_jpk[0]),
        .Q(\wajpk_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \wajpk_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_jpk[1]),
        .Q(\wajpk_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \wajpk_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_jpk[2]),
        .Q(\wajpk_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_jpk[3]),
        .Q(\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  CARRY4 \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1 
       (.CI(1'b0),
        .CO({\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_0 ,\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_1 ,\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_2 ,\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(ag_read_j[3:0]),
        .O(ag_read_jpk[3:0]),
        .S({\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ,\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ,\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ,\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_0 }));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2 
       (.I0(ag_read_j[3]),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .O(\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA9AA9AA)) 
    \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3 
       (.I0(ag_read_j[2]),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(ag_bu_mode),
        .O(\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA96AA)) 
    \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4 
       (.I0(ag_read_j[1]),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(ag_bu_mode),
        .I3(\stage_out_reg_n_0_[0] ),
        .I4(\stage_out_reg_n_0_[1] ),
        .O(\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0888888F0F888888)) 
    \wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5 
       (.I0(\waj_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ),
        .I1(\bf_cnt_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[0] ),
        .I3(\stage_out_reg_n_0_[1] ),
        .I4(\stage_out_reg_n_0_[2] ),
        .I5(ag_bu_mode),
        .O(\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_5_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \wajpk_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_jpk[4]),
        .Q(\wajpk_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \wajpk_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_jpk[5]),
        .Q(\wajpk_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4] " *) 
  (* srl_name = "\inst/u_core/u_addr/wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_jpk[6]),
        .Q(\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  CARRY4 \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1 
       (.CI(\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_0 ),
        .CO({\NLW_wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_CO_UNCONNECTED [3:2],\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_2 ,\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ag_read_j[5:4]}),
        .O({\NLW_wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_1_O_UNCONNECTED [3],ag_read_jpk[6:4]}),
        .S({1'b0,\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ,\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ,\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 }));
  LUT5 #(
    .INIT(32'hFF007E81)) 
    \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2 
       (.I0(ag_bu_mode),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(ag_read_j[6]),
        .I4(\stage_out_reg_n_0_[0] ),
        .O(\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA69AA)) 
    \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3 
       (.I0(ag_read_j[5]),
        .I1(\stage_out_reg_n_0_[2] ),
        .I2(ag_bu_mode),
        .I3(\stage_out_reg_n_0_[0] ),
        .I4(\stage_out_reg_n_0_[1] ),
        .O(\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA9AAAA9A)) 
    \wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4 
       (.I0(ag_read_j[4]),
        .I1(\stage_out_reg_n_0_[0] ),
        .I2(\stage_out_reg_n_0_[1] ),
        .I3(\stage_out_reg_n_0_[2] ),
        .I4(ag_bu_mode),
        .O(\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_i_4_n_0 ));
  FDRE \wajpk_pipe_reg[5][0]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\wajpk_pipe_reg[4][0]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\wajpk_pipe_reg[5][0]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \wajpk_pipe_reg[5][1]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\wajpk_pipe_reg[4][1]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\wajpk_pipe_reg[5][1]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \wajpk_pipe_reg[5][2]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\wajpk_pipe_reg[4][2]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\wajpk_pipe_reg[5][2]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \wajpk_pipe_reg[5][3]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\wajpk_pipe_reg[4][3]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\wajpk_pipe_reg[5][3]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \wajpk_pipe_reg[5][4]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\wajpk_pipe_reg[4][4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\wajpk_pipe_reg[5][4]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \wajpk_pipe_reg[5][5]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\wajpk_pipe_reg[4][5]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\wajpk_pipe_reg[5][5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDRE \wajpk_pipe_reg[5][6]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\wajpk_pipe_reg[4][6]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\wajpk_pipe_reg[5][6]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDCE \wajpk_pipe_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(wajpk_pipe_reg_gate__5_n_0),
        .Q(ag_write_jpk[0]));
  FDCE \wajpk_pipe_reg[6][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(wajpk_pipe_reg_gate__4_n_0),
        .Q(ag_write_jpk[1]));
  FDCE \wajpk_pipe_reg[6][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(wajpk_pipe_reg_gate__3_n_0),
        .Q(ag_write_jpk[2]));
  FDCE \wajpk_pipe_reg[6][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(wajpk_pipe_reg_gate__2_n_0),
        .Q(ag_write_jpk[3]));
  FDCE \wajpk_pipe_reg[6][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(wajpk_pipe_reg_gate__1_n_0),
        .Q(ag_write_jpk[4]));
  FDCE \wajpk_pipe_reg[6][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(wajpk_pipe_reg_gate__0_n_0),
        .Q(ag_write_jpk[5]));
  FDCE \wajpk_pipe_reg[6][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(wajpk_pipe_reg_gate_n_0),
        .Q(ag_write_jpk[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wajpk_pipe_reg_gate
       (.I0(\wajpk_pipe_reg[5][6]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(wajpk_pipe_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wajpk_pipe_reg_gate__0
       (.I0(\wajpk_pipe_reg[5][5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(wajpk_pipe_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wajpk_pipe_reg_gate__1
       (.I0(\wajpk_pipe_reg[5][4]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(wajpk_pipe_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wajpk_pipe_reg_gate__2
       (.I0(\wajpk_pipe_reg[5][3]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(wajpk_pipe_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wajpk_pipe_reg_gate__3
       (.I0(\wajpk_pipe_reg[5][2]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(wajpk_pipe_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wajpk_pipe_reg_gate__4
       (.I0(\wajpk_pipe_reg[5][1]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(wajpk_pipe_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wajpk_pipe_reg_gate__5
       (.I0(\wajpk_pipe_reg[5][0]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(wajpk_pipe_reg_gate__5_n_0));
  (* srl_bus_name = "\inst/u_core/u_addr/wen_pipe_reg " *) 
  (* srl_name = "\inst/u_core/u_addr/wen_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 " *) 
  SRL16E \wen_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(ag_read_en),
        .Q(\wen_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ));
  FDRE \wen_pipe_reg[5]_inst_u_core_pwm_wen_pipe_reg_c_3 
       (.C(clk),
        .CE(1'b1),
        .D(\wen_pipe_reg[4]_srl5_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .Q(\wen_pipe_reg[5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .R(1'b0));
  FDCE \wen_pipe_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_reg_0),
        .D(wen_pipe_reg_gate_n_0),
        .Q(ag_write_en));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wen_pipe_reg_gate
       (.I0(\wen_pipe_reg[5]_inst_u_core_pwm_wen_pipe_reg_c_3_n_0 ),
        .I1(\pp_pipe_reg[6]_1 ),
        .O(wen_pipe_reg_gate_n_0));
endmodule

(* ORIG_REF_NAME = "barrett_reduction" *) 
module design_1_polymul_axi_top_0_0_barrett_reduction
   (\R_s2_reg[0]_0 ,
    Q,
    \R_s2_reg[7]_0 ,
    \R_s2_reg[9]_0 ,
    \R_s2_reg[0]_1 ,
    \R_s2_reg[8]_0 ,
    \R_s2_reg[10]_0 ,
    resetn_0,
    \R_s2_reg[12]_0 ,
    \m0_d_reg[3][3] ,
    \m0_d_reg[3][7] ,
    \m0_d_reg[3][11] ,
    CO,
    S,
    product,
    product_0,
    O,
    \Q1_s1_reg[6]_0 ,
    \Q1_s1_reg[10]_0 ,
    \Q1_s1_reg[11]_0 ,
    P,
    \c0_s1_reg[0]_0 ,
    resetn,
    I66,
    \c_pkt_reg[3] ,
    \c_pkt_reg[7] ,
    \c_pkt_reg[11] ,
    clk);
  output [3:0]\R_s2_reg[0]_0 ;
  output [12:0]Q;
  output [3:0]\R_s2_reg[7]_0 ;
  output [2:0]\R_s2_reg[9]_0 ;
  output [3:0]\R_s2_reg[0]_1 ;
  output [3:0]\R_s2_reg[8]_0 ;
  output [2:0]\R_s2_reg[10]_0 ;
  output resetn_0;
  output \R_s2_reg[12]_0 ;
  output [3:0]\m0_d_reg[3][3] ;
  output [3:0]\m0_d_reg[3][7] ;
  output [3:0]\m0_d_reg[3][11] ;
  output [0:0]CO;
  output [3:0]S;
  output [3:0]product;
  output [2:0]product_0;
  input [3:0]O;
  input [3:0]\Q1_s1_reg[6]_0 ;
  input [3:0]\Q1_s1_reg[10]_0 ;
  input [0:0]\Q1_s1_reg[11]_0 ;
  input [23:0]P;
  input \c0_s1_reg[0]_0 ;
  input resetn;
  input [11:0]I66;
  input [3:0]\c_pkt_reg[3] ;
  input [3:0]\c_pkt_reg[7] ;
  input [3:0]\c_pkt_reg[11] ;
  input clk;

  wire [0:0]CO;
  wire [11:0]I66;
  wire [3:0]O;
  wire [23:0]P;
  wire [12:0]Q;
  wire \Q1_s1[10]_i_3__0_n_0 ;
  wire \Q1_s1[10]_i_4__0_n_0 ;
  wire \Q1_s1[10]_i_5__0_n_0 ;
  wire \Q1_s1[10]_i_6__0_n_0 ;
  wire \Q1_s1[11]_i_2__0_n_0 ;
  wire \Q1_s1[2]_i_3__0_n_0 ;
  wire \Q1_s1[2]_i_4__0_n_0 ;
  wire \Q1_s1[2]_i_5__0_n_0 ;
  wire \Q1_s1[2]_i_6__0_n_0 ;
  wire \Q1_s1[6]_i_3__0_n_0 ;
  wire \Q1_s1[6]_i_4__0_n_0 ;
  wire \Q1_s1[6]_i_5__0_n_0 ;
  wire \Q1_s1[6]_i_6__0_n_0 ;
  wire [3:0]\Q1_s1_reg[10]_0 ;
  wire \Q1_s1_reg[10]_i_1__0_n_0 ;
  wire \Q1_s1_reg[10]_i_1__0_n_1 ;
  wire \Q1_s1_reg[10]_i_1__0_n_2 ;
  wire \Q1_s1_reg[10]_i_1__0_n_3 ;
  wire \Q1_s1_reg[10]_i_1__0_n_4 ;
  wire \Q1_s1_reg[10]_i_1__0_n_5 ;
  wire \Q1_s1_reg[10]_i_1__0_n_6 ;
  wire \Q1_s1_reg[10]_i_1__0_n_7 ;
  wire [0:0]\Q1_s1_reg[11]_0 ;
  wire \Q1_s1_reg[11]_i_1__0_n_7 ;
  wire \Q1_s1_reg[2]_i_1__0_n_0 ;
  wire \Q1_s1_reg[2]_i_1__0_n_1 ;
  wire \Q1_s1_reg[2]_i_1__0_n_2 ;
  wire \Q1_s1_reg[2]_i_1__0_n_3 ;
  wire \Q1_s1_reg[2]_i_1__0_n_4 ;
  wire \Q1_s1_reg[2]_i_1__0_n_5 ;
  wire \Q1_s1_reg[2]_i_1__0_n_6 ;
  wire [3:0]\Q1_s1_reg[6]_0 ;
  wire \Q1_s1_reg[6]_i_1__0_n_0 ;
  wire \Q1_s1_reg[6]_i_1__0_n_1 ;
  wire \Q1_s1_reg[6]_i_1__0_n_2 ;
  wire \Q1_s1_reg[6]_i_1__0_n_3 ;
  wire \Q1_s1_reg[6]_i_1__0_n_4 ;
  wire \Q1_s1_reg[6]_i_1__0_n_5 ;
  wire \Q1_s1_reg[6]_i_1__0_n_6 ;
  wire \Q1_s1_reg[6]_i_1__0_n_7 ;
  wire \Q1_s1_reg_n_0_[0] ;
  wire \Q1_s1_reg_n_0_[10] ;
  wire \Q1_s1_reg_n_0_[11] ;
  wire \Q1_s1_reg_n_0_[1] ;
  wire \Q1_s1_reg_n_0_[2] ;
  wire \Q1_s1_reg_n_0_[3] ;
  wire \Q1_s1_reg_n_0_[4] ;
  wire \Q1_s1_reg_n_0_[5] ;
  wire \Q1_s1_reg_n_0_[6] ;
  wire \Q1_s1_reg_n_0_[7] ;
  wire \Q1_s1_reg_n_0_[8] ;
  wire \Q1_s1_reg_n_0_[9] ;
  wire R_comb_carry__0_i_1__0_n_0;
  wire R_comb_carry__0_i_2__0_n_0;
  wire R_comb_carry__0_i_3__0_n_0;
  wire R_comb_carry__0_i_4__0_n_0;
  wire R_comb_carry__0_n_0;
  wire R_comb_carry__0_n_1;
  wire R_comb_carry__0_n_2;
  wire R_comb_carry__0_n_3;
  wire R_comb_carry__0_n_4;
  wire R_comb_carry__0_n_5;
  wire R_comb_carry__0_n_6;
  wire R_comb_carry__0_n_7;
  wire R_comb_carry__1_i_1__0_n_0;
  wire R_comb_carry__1_i_2__0_n_0;
  wire R_comb_carry__1_i_3__0_n_0;
  wire R_comb_carry__1_i_4__0_n_0;
  wire R_comb_carry__1_n_0;
  wire R_comb_carry__1_n_1;
  wire R_comb_carry__1_n_2;
  wire R_comb_carry__1_n_3;
  wire R_comb_carry__1_n_4;
  wire R_comb_carry__1_n_5;
  wire R_comb_carry__1_n_6;
  wire R_comb_carry__1_n_7;
  wire R_comb_carry__2_i_1__0_n_0;
  wire R_comb_carry__2_i_2__0_n_0;
  wire R_comb_carry__2_n_3;
  wire R_comb_carry__2_n_6;
  wire R_comb_carry__2_n_7;
  wire R_comb_carry_i_1__0_n_0;
  wire R_comb_carry_i_2__0_n_0;
  wire R_comb_carry_i_3__0_n_0;
  wire R_comb_carry_i_4__0_n_0;
  wire R_comb_carry_n_0;
  wire R_comb_carry_n_1;
  wire R_comb_carry_n_2;
  wire R_comb_carry_n_3;
  wire R_comb_carry_n_4;
  wire R_comb_carry_n_5;
  wire R_comb_carry_n_6;
  wire R_comb_carry_n_7;
  wire R_minus_q_carry__0_i_1__0_n_0;
  wire R_minus_q_carry__0_i_2__0_n_0;
  wire R_minus_q_carry__0_i_3__0_n_0;
  wire R_minus_q_carry__0_n_0;
  wire R_minus_q_carry__0_n_1;
  wire R_minus_q_carry__0_n_2;
  wire R_minus_q_carry__0_n_3;
  wire R_minus_q_carry__1_i_1__0_n_0;
  wire R_minus_q_carry__1_n_2;
  wire R_minus_q_carry__1_n_3;
  wire R_minus_q_carry_i_1__0_n_0;
  wire R_minus_q_carry_i_2__0_n_0;
  wire R_minus_q_carry_i_3__0_n_0;
  wire R_minus_q_carry_i_4__0_n_0;
  wire R_minus_q_carry_n_0;
  wire R_minus_q_carry_n_1;
  wire R_minus_q_carry_n_2;
  wire R_minus_q_carry_n_3;
  wire R_plus_q_carry__0_i_1__0_n_0;
  wire R_plus_q_carry__0_n_0;
  wire R_plus_q_carry__0_n_1;
  wire R_plus_q_carry__0_n_2;
  wire R_plus_q_carry__0_n_3;
  wire R_plus_q_carry__1_i_1__0_n_0;
  wire R_plus_q_carry__1_i_2__0_n_0;
  wire R_plus_q_carry__1_n_2;
  wire R_plus_q_carry__1_n_3;
  wire R_plus_q_carry_n_0;
  wire R_plus_q_carry_n_1;
  wire R_plus_q_carry_n_2;
  wire R_plus_q_carry_n_3;
  wire [3:0]\R_s2_reg[0]_0 ;
  wire [3:0]\R_s2_reg[0]_1 ;
  wire [2:0]\R_s2_reg[10]_0 ;
  wire \R_s2_reg[12]_0 ;
  wire [3:0]\R_s2_reg[7]_0 ;
  wire [3:0]\R_s2_reg[8]_0 ;
  wire [2:0]\R_s2_reg[9]_0 ;
  wire \R_s2_reg_n_0_[12] ;
  wire [3:0]S;
  wire \c0_s1[0]_i_1__0_n_0 ;
  wire \c0_s1[1]_i_1__0_n_0 ;
  wire \c0_s1[2]_i_1__0_n_0 ;
  wire \c0_s1[3]_i_1__0_n_0 ;
  wire \c0_s1[4]_i_1__0_n_0 ;
  wire \c0_s1[5]_i_1__0_n_0 ;
  wire \c0_s1[6]_i_1__0_n_0 ;
  wire \c0_s1[7]_i_1__0_n_0 ;
  wire \c0_s1_reg[0]_0 ;
  wire \c0_s1_reg_n_0_[0] ;
  wire \c0_s1_reg_n_0_[1] ;
  wire \c0_s1_reg_n_0_[2] ;
  wire \c0_s1_reg_n_0_[3] ;
  wire \c0_s1_reg_n_0_[4] ;
  wire \c0_s1_reg_n_0_[5] ;
  wire \c0_s1_reg_n_0_[6] ;
  wire \c0_s1_reg_n_0_[7] ;
  wire \c1_s1[0]_i_1__0_n_0 ;
  wire \c1_s1[1]_i_1__0_n_0 ;
  wire \c1_s1[2]_i_1__0_n_0 ;
  wire \c1_s1[3]_i_1__0_n_0 ;
  wire \c1_s1[4]_i_1__0_n_0 ;
  wire \c1_s1[5]_i_1__0_n_0 ;
  wire \c1_s1_reg_n_0_[0] ;
  wire \c1_s1_reg_n_0_[1] ;
  wire \c1_s1_reg_n_0_[2] ;
  wire \c1_s1_reg_n_0_[3] ;
  wire \c1_s1_reg_n_0_[4] ;
  wire \c1_s1_reg_n_0_[5] ;
  wire [3:0]\c_pkt_reg[11] ;
  wire [3:0]\c_pkt_reg[3] ;
  wire [3:0]\c_pkt_reg[7] ;
  wire clk;
  wire [3:0]\m0_d_reg[3][11] ;
  wire [3:0]\m0_d_reg[3][3] ;
  wire [3:0]\m0_d_reg[3][7] ;
  wire [3:0]product;
  wire [2:0]product_0;
  wire r1__0_carry__0_i_1__0_n_0;
  wire r1__0_carry__0_i_2__0_n_0;
  wire r1__0_carry__0_i_3__0_n_0;
  wire r1__0_carry__0_i_4__0_n_0;
  wire r1__0_carry__0_i_5__0_n_0;
  wire r1__0_carry__0_n_3;
  wire r1__0_carry__0_n_6;
  wire r1__0_carry__0_n_7;
  wire r1__0_carry_i_1__0_n_0;
  wire r1__0_carry_i_2__0_n_0;
  wire r1__0_carry_i_3__0_n_0;
  wire r1__0_carry_i_4__0_n_0;
  wire r1__0_carry_i_5__0_n_0;
  wire r1__0_carry_n_0;
  wire r1__0_carry_n_1;
  wire r1__0_carry_n_2;
  wire r1__0_carry_n_3;
  wire r1__0_carry_n_4;
  wire r1__0_carry_n_5;
  wire r1__0_carry_n_6;
  wire r1__0_carry_n_7;
  wire resetn;
  wire resetn_0;
  wire sum_signed_carry__0_i_1_n_0;
  wire sum_signed_carry__0_i_1_n_1;
  wire sum_signed_carry__0_i_1_n_2;
  wire sum_signed_carry__0_i_1_n_3;
  wire sum_signed_carry__1_i_1_n_0;
  wire sum_signed_carry__1_i_1_n_1;
  wire sum_signed_carry__1_i_1_n_2;
  wire sum_signed_carry__1_i_1_n_3;
  wire sum_signed_carry_i_12_n_0;
  wire sum_signed_carry_i_13_n_0;
  wire sum_signed_carry_i_1_n_0;
  wire sum_signed_carry_i_1_n_1;
  wire sum_signed_carry_i_1_n_2;
  wire sum_signed_carry_i_1_n_3;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_1__0_O_UNCONNECTED ;
  wire [0:0]\NLW_Q1_s1_reg[2]_i_1__0_O_UNCONNECTED ;
  wire [3:1]NLW_R_comb_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_R_comb_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_R_minus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_minus_q_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_R_plus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_plus_q_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_r1__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_r1__0_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_sum_signed_carry_i_10_CO_UNCONNECTED;
  wire [3:0]NLW_sum_signed_carry_i_10_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_11 
       (.I0(P[21]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[23]),
        .O(product_0[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_12 
       (.I0(P[20]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[22]),
        .O(product_0[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_13 
       (.I0(P[19]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[21]),
        .O(product_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_3__0 
       (.I0(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[10]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_4__0 
       (.I0(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[10]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_5__0 
       (.I0(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[10]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_6__0 
       (.I0(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[10]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[11]_i_2__0 
       (.I0(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[11]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_11 
       (.I0(P[14]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[16]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_12 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[15]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_13 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[14]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_14 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[13]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_3__0 
       (.I0(O[3]),
        .I1(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[2]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_4__0 
       (.I0(O[2]),
        .I1(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[2]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_5__0 
       (.I0(O[1]),
        .I1(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[2]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_6__0 
       (.I0(O[0]),
        .I1(\Q1_s1_reg[6]_0 [2]),
        .O(\Q1_s1[2]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_11 
       (.I0(P[18]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[20]),
        .O(product[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_12 
       (.I0(P[17]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[19]),
        .O(product[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_13 
       (.I0(P[16]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[18]),
        .O(product[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_14 
       (.I0(P[15]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[17]),
        .O(product[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[6]_i_3__0 
       (.I0(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[6]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_4__0 
       (.I0(\Q1_s1_reg[6]_0 [2]),
        .I1(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[6]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_5__0 
       (.I0(\Q1_s1_reg[6]_0 [1]),
        .I1(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[6]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_6__0 
       (.I0(\Q1_s1_reg[6]_0 [0]),
        .I1(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[6]_i_6__0_n_0 ));
  FDCE \Q1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[2]_i_1__0_n_6 ),
        .Q(\Q1_s1_reg_n_0_[0] ));
  FDCE \Q1_s1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[10]_i_1__0_n_4 ),
        .Q(\Q1_s1_reg_n_0_[10] ));
  CARRY4 \Q1_s1_reg[10]_i_1__0 
       (.CI(\Q1_s1_reg[6]_i_1__0_n_0 ),
        .CO({\Q1_s1_reg[10]_i_1__0_n_0 ,\Q1_s1_reg[10]_i_1__0_n_1 ,\Q1_s1_reg[10]_i_1__0_n_2 ,\Q1_s1_reg[10]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[10]_0 ),
        .O({\Q1_s1_reg[10]_i_1__0_n_4 ,\Q1_s1_reg[10]_i_1__0_n_5 ,\Q1_s1_reg[10]_i_1__0_n_6 ,\Q1_s1_reg[10]_i_1__0_n_7 }),
        .S({\Q1_s1[10]_i_3__0_n_0 ,\Q1_s1[10]_i_4__0_n_0 ,\Q1_s1[10]_i_5__0_n_0 ,\Q1_s1[10]_i_6__0_n_0 }));
  FDCE \Q1_s1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[11]_i_1__0_n_7 ),
        .Q(\Q1_s1_reg_n_0_[11] ));
  CARRY4 \Q1_s1_reg[11]_i_1__0 
       (.CI(\Q1_s1_reg[10]_i_1__0_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_1__0_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_2__0_n_0 }));
  FDCE \Q1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[2]_i_1__0_n_5 ),
        .Q(\Q1_s1_reg_n_0_[1] ));
  FDCE \Q1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[2]_i_1__0_n_4 ),
        .Q(\Q1_s1_reg_n_0_[2] ));
  CARRY4 \Q1_s1_reg[2]_i_1__0 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_1__0_n_0 ,\Q1_s1_reg[2]_i_1__0_n_1 ,\Q1_s1_reg[2]_i_1__0_n_2 ,\Q1_s1_reg[2]_i_1__0_n_3 }),
        .CYINIT(1'b1),
        .DI(O),
        .O({\Q1_s1_reg[2]_i_1__0_n_4 ,\Q1_s1_reg[2]_i_1__0_n_5 ,\Q1_s1_reg[2]_i_1__0_n_6 ,\NLW_Q1_s1_reg[2]_i_1__0_O_UNCONNECTED [0]}),
        .S({\Q1_s1[2]_i_3__0_n_0 ,\Q1_s1[2]_i_4__0_n_0 ,\Q1_s1[2]_i_5__0_n_0 ,\Q1_s1[2]_i_6__0_n_0 }));
  FDCE \Q1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[6]_i_1__0_n_7 ),
        .Q(\Q1_s1_reg_n_0_[3] ));
  FDCE \Q1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[6]_i_1__0_n_6 ),
        .Q(\Q1_s1_reg_n_0_[4] ));
  FDCE \Q1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[6]_i_1__0_n_5 ),
        .Q(\Q1_s1_reg_n_0_[5] ));
  FDCE \Q1_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[6]_i_1__0_n_4 ),
        .Q(\Q1_s1_reg_n_0_[6] ));
  CARRY4 \Q1_s1_reg[6]_i_1__0 
       (.CI(\Q1_s1_reg[2]_i_1__0_n_0 ),
        .CO({\Q1_s1_reg[6]_i_1__0_n_0 ,\Q1_s1_reg[6]_i_1__0_n_1 ,\Q1_s1_reg[6]_i_1__0_n_2 ,\Q1_s1_reg[6]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[6]_0 ),
        .O({\Q1_s1_reg[6]_i_1__0_n_4 ,\Q1_s1_reg[6]_i_1__0_n_5 ,\Q1_s1_reg[6]_i_1__0_n_6 ,\Q1_s1_reg[6]_i_1__0_n_7 }),
        .S({\Q1_s1[6]_i_3__0_n_0 ,\Q1_s1[6]_i_4__0_n_0 ,\Q1_s1[6]_i_5__0_n_0 ,\Q1_s1[6]_i_6__0_n_0 }));
  FDCE \Q1_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[10]_i_1__0_n_7 ),
        .Q(\Q1_s1_reg_n_0_[7] ));
  FDCE \Q1_s1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[10]_i_1__0_n_6 ),
        .Q(\Q1_s1_reg_n_0_[8] ));
  FDCE \Q1_s1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\Q1_s1_reg[10]_i_1__0_n_5 ),
        .Q(\Q1_s1_reg_n_0_[9] ));
  CARRY4 R_comb_carry
       (.CI(1'b0),
        .CO({R_comb_carry_n_0,R_comb_carry_n_1,R_comb_carry_n_2,R_comb_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\c0_s1_reg_n_0_[3] ,\c0_s1_reg_n_0_[2] ,\c0_s1_reg_n_0_[1] ,\c0_s1_reg_n_0_[0] }),
        .O({R_comb_carry_n_4,R_comb_carry_n_5,R_comb_carry_n_6,R_comb_carry_n_7}),
        .S({R_comb_carry_i_1__0_n_0,R_comb_carry_i_2__0_n_0,R_comb_carry_i_3__0_n_0,R_comb_carry_i_4__0_n_0}));
  CARRY4 R_comb_carry__0
       (.CI(R_comb_carry_n_0),
        .CO({R_comb_carry__0_n_0,R_comb_carry__0_n_1,R_comb_carry__0_n_2,R_comb_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\c0_s1_reg_n_0_[7] ,\c0_s1_reg_n_0_[6] ,\c0_s1_reg_n_0_[5] ,\c0_s1_reg_n_0_[4] }),
        .O({R_comb_carry__0_n_4,R_comb_carry__0_n_5,R_comb_carry__0_n_6,R_comb_carry__0_n_7}),
        .S({R_comb_carry__0_i_1__0_n_0,R_comb_carry__0_i_2__0_n_0,R_comb_carry__0_i_3__0_n_0,R_comb_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_1__0
       (.I0(\c0_s1_reg_n_0_[7] ),
        .I1(\Q1_s1_reg_n_0_[7] ),
        .O(R_comb_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_2__0
       (.I0(\c0_s1_reg_n_0_[6] ),
        .I1(\Q1_s1_reg_n_0_[6] ),
        .O(R_comb_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_3__0
       (.I0(\c0_s1_reg_n_0_[5] ),
        .I1(\Q1_s1_reg_n_0_[5] ),
        .O(R_comb_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_4__0
       (.I0(\c0_s1_reg_n_0_[4] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .O(R_comb_carry__0_i_4__0_n_0));
  CARRY4 R_comb_carry__1
       (.CI(R_comb_carry__0_n_0),
        .CO({R_comb_carry__1_n_0,R_comb_carry__1_n_1,R_comb_carry__1_n_2,R_comb_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .O({R_comb_carry__1_n_4,R_comb_carry__1_n_5,R_comb_carry__1_n_6,R_comb_carry__1_n_7}),
        .S({R_comb_carry__1_i_1__0_n_0,R_comb_carry__1_i_2__0_n_0,R_comb_carry__1_i_3__0_n_0,R_comb_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_1__0
       (.I0(r1__0_carry_n_4),
        .I1(\Q1_s1_reg_n_0_[11] ),
        .O(R_comb_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_2__0
       (.I0(r1__0_carry_n_5),
        .I1(\Q1_s1_reg_n_0_[10] ),
        .O(R_comb_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_3__0
       (.I0(r1__0_carry_n_6),
        .I1(\Q1_s1_reg_n_0_[9] ),
        .O(R_comb_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_4__0
       (.I0(r1__0_carry_n_7),
        .I1(\Q1_s1_reg_n_0_[8] ),
        .O(R_comb_carry__1_i_4__0_n_0));
  CARRY4 R_comb_carry__2
       (.CI(R_comb_carry__1_n_0),
        .CO({NLW_R_comb_carry__2_CO_UNCONNECTED[3:1],R_comb_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_n_7}),
        .O({NLW_R_comb_carry__2_O_UNCONNECTED[3:2],R_comb_carry__2_n_6,R_comb_carry__2_n_7}),
        .S({1'b0,1'b0,R_comb_carry__2_i_1__0_n_0,R_comb_carry__2_i_2__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_1__0
       (.I0(r1__0_carry__0_n_6),
        .O(R_comb_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_2__0
       (.I0(r1__0_carry__0_n_7),
        .O(R_comb_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_1__0
       (.I0(\c0_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .O(R_comb_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_2__0
       (.I0(\c0_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[2] ),
        .O(R_comb_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_3__0
       (.I0(\c0_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(R_comb_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_4__0
       (.I0(\c0_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(R_comb_carry_i_4__0_n_0));
  CARRY4 R_minus_q_carry
       (.CI(1'b0),
        .CO({R_minus_q_carry_n_0,R_minus_q_carry_n_1,R_minus_q_carry_n_2,R_minus_q_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(\R_s2_reg[0]_0 ),
        .S({R_minus_q_carry_i_1__0_n_0,R_minus_q_carry_i_2__0_n_0,R_minus_q_carry_i_3__0_n_0,R_minus_q_carry_i_4__0_n_0}));
  CARRY4 R_minus_q_carry__0
       (.CI(R_minus_q_carry_n_0),
        .CO({R_minus_q_carry__0_n_0,R_minus_q_carry__0_n_1,R_minus_q_carry__0_n_2,R_minus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[7:5]}),
        .O(\R_s2_reg[7]_0 ),
        .S({Q[8],R_minus_q_carry__0_i_1__0_n_0,R_minus_q_carry__0_i_2__0_n_0,R_minus_q_carry__0_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_1__0
       (.I0(Q[7]),
        .O(R_minus_q_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_2__0
       (.I0(Q[6]),
        .O(R_minus_q_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_3__0
       (.I0(Q[5]),
        .O(R_minus_q_carry__0_i_3__0_n_0));
  CARRY4 R_minus_q_carry__1
       (.CI(R_minus_q_carry__0_n_0),
        .CO({NLW_R_minus_q_carry__1_CO_UNCONNECTED[3:2],R_minus_q_carry__1_n_2,R_minus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[9]}),
        .O({NLW_R_minus_q_carry__1_O_UNCONNECTED[3],\R_s2_reg[9]_0 }),
        .S({1'b0,Q[11:10],R_minus_q_carry__1_i_1__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__1_i_1__0
       (.I0(Q[9]),
        .O(R_minus_q_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_1__0
       (.I0(Q[4]),
        .O(R_minus_q_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_2__0
       (.I0(Q[3]),
        .O(R_minus_q_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_3__0
       (.I0(Q[2]),
        .O(R_minus_q_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_4__0
       (.I0(Q[1]),
        .O(R_minus_q_carry_i_4__0_n_0));
  CARRY4 R_plus_q_carry
       (.CI(1'b0),
        .CO({R_plus_q_carry_n_0,R_plus_q_carry_n_1,R_plus_q_carry_n_2,R_plus_q_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\R_s2_reg[0]_1 ),
        .S(Q[4:1]));
  CARRY4 R_plus_q_carry__0
       (.CI(R_plus_q_carry_n_0),
        .CO({R_plus_q_carry__0_n_0,R_plus_q_carry__0_n_1,R_plus_q_carry__0_n_2,R_plus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Q[8],1'b0,1'b0,1'b0}),
        .O(\R_s2_reg[8]_0 ),
        .S({R_plus_q_carry__0_i_1__0_n_0,Q[7:5]}));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__0_i_1__0
       (.I0(Q[8]),
        .O(R_plus_q_carry__0_i_1__0_n_0));
  CARRY4 R_plus_q_carry__1
       (.CI(R_plus_q_carry__0_n_0),
        .CO({NLW_R_plus_q_carry__1_CO_UNCONNECTED[3:2],R_plus_q_carry__1_n_2,R_plus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[10],1'b0}),
        .O({NLW_R_plus_q_carry__1_O_UNCONNECTED[3],\R_s2_reg[10]_0 }),
        .S({1'b0,R_plus_q_carry__1_i_1__0_n_0,R_plus_q_carry__1_i_2__0_n_0,Q[9]}));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_1__0
       (.I0(Q[11]),
        .O(R_plus_q_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_2__0
       (.I0(Q[10]),
        .O(R_plus_q_carry__1_i_2__0_n_0));
  FDCE \R_s2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry_n_7),
        .Q(Q[0]));
  FDCE \R_s2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__1_n_5),
        .Q(Q[10]));
  FDCE \R_s2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__1_n_4),
        .Q(Q[11]));
  FDCE \R_s2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__2_n_7),
        .Q(\R_s2_reg_n_0_[12] ));
  FDCE \R_s2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__2_n_6),
        .Q(Q[12]));
  FDCE \R_s2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry_n_6),
        .Q(Q[1]));
  FDCE \R_s2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry_n_5),
        .Q(Q[2]));
  FDCE \R_s2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry_n_4),
        .Q(Q[3]));
  FDCE \R_s2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__0_n_7),
        .Q(Q[4]));
  FDCE \R_s2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__0_n_6),
        .Q(Q[5]));
  FDCE \R_s2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__0_n_5),
        .Q(Q[6]));
  FDCE \R_s2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__0_n_4),
        .Q(Q[7]));
  FDCE \R_s2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__1_n_7),
        .Q(Q[8]));
  FDCE \R_s2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(R_comb_carry__1_n_6),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[0]_i_1__0 
       (.I0(P[0]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[1]_i_1__0 
       (.I0(P[1]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[2]_i_1__0 
       (.I0(P[2]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[3]_i_1__0 
       (.I0(P[3]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[4]_i_1__0 
       (.I0(P[4]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[5]_i_1__0 
       (.I0(P[5]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[6]_i_1__0 
       (.I0(P[6]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[7]_i_1__0 
       (.I0(P[7]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[7]_i_1__0_n_0 ));
  FDCE \c0_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c0_s1[0]_i_1__0_n_0 ),
        .Q(\c0_s1_reg_n_0_[0] ));
  FDCE \c0_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c0_s1[1]_i_1__0_n_0 ),
        .Q(\c0_s1_reg_n_0_[1] ));
  FDCE \c0_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c0_s1[2]_i_1__0_n_0 ),
        .Q(\c0_s1_reg_n_0_[2] ));
  FDCE \c0_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c0_s1[3]_i_1__0_n_0 ),
        .Q(\c0_s1_reg_n_0_[3] ));
  FDCE \c0_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c0_s1[4]_i_1__0_n_0 ),
        .Q(\c0_s1_reg_n_0_[4] ));
  FDCE \c0_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c0_s1[5]_i_1__0_n_0 ),
        .Q(\c0_s1_reg_n_0_[5] ));
  FDCE \c0_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c0_s1[6]_i_1__0_n_0 ),
        .Q(\c0_s1_reg_n_0_[6] ));
  FDCE \c0_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c0_s1[7]_i_1__0_n_0 ),
        .Q(\c0_s1_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[0]_i_1__0 
       (.I0(P[8]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[1]_i_1__0 
       (.I0(P[9]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[2]_i_1__0 
       (.I0(P[10]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[3]_i_1__0 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[4]_i_1__0 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[5]_i_1__0 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[5]_i_1__0_n_0 ));
  FDCE \c1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c1_s1[0]_i_1__0_n_0 ),
        .Q(\c1_s1_reg_n_0_[0] ));
  FDCE \c1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c1_s1[1]_i_1__0_n_0 ),
        .Q(\c1_s1_reg_n_0_[1] ));
  FDCE \c1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c1_s1[2]_i_1__0_n_0 ),
        .Q(\c1_s1_reg_n_0_[2] ));
  FDCE \c1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c1_s1[3]_i_1__0_n_0 ),
        .Q(\c1_s1_reg_n_0_[3] ));
  FDCE \c1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c1_s1[4]_i_1__0_n_0 ),
        .Q(\c1_s1_reg_n_0_[4] ));
  FDCE \c1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\c1_s1[5]_i_1__0_n_0 ),
        .Q(\c1_s1_reg_n_0_[5] ));
  CARRY4 r1__0_carry
       (.CI(1'b0),
        .CO({r1__0_carry_n_0,r1__0_carry_n_1,r1__0_carry_n_2,r1__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({r1__0_carry_i_1__0_n_0,\c1_s1_reg_n_0_[2] ,\c1_s1_reg_n_0_[1] ,\c1_s1_reg_n_0_[0] }),
        .O({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .S({r1__0_carry_i_2__0_n_0,r1__0_carry_i_3__0_n_0,r1__0_carry_i_4__0_n_0,r1__0_carry_i_5__0_n_0}));
  CARRY4 r1__0_carry__0
       (.CI(r1__0_carry_n_0),
        .CO({NLW_r1__0_carry__0_CO_UNCONNECTED[3:1],r1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_i_1__0_n_0}),
        .O({NLW_r1__0_carry__0_O_UNCONNECTED[3:2],r1__0_carry__0_n_6,r1__0_carry__0_n_7}),
        .S({1'b0,1'b0,r1__0_carry__0_i_2__0_n_0,r1__0_carry__0_i_3__0_n_0}));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hD44D)) 
    r1__0_carry__0_i_1__0
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry__0_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h088FF770)) 
    r1__0_carry__0_i_2__0
       (.I0(\Q1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .I2(r1__0_carry__0_i_4__0_n_0),
        .I3(\c1_s1_reg_n_0_[4] ),
        .I4(r1__0_carry__0_i_5__0_n_0),
        .O(r1__0_carry__0_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    r1__0_carry__0_i_3__0
       (.I0(r1__0_carry__0_i_1__0_n_0),
        .I1(r1__0_carry__0_i_4__0_n_0),
        .I2(\c1_s1_reg_n_0_[4] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[3] ),
        .O(r1__0_carry__0_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry__0_i_4__0
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    r1__0_carry__0_i_5__0
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\c1_s1_reg_n_0_[5] ),
        .I3(\Q1_s1_reg_n_0_[3] ),
        .I4(\Q1_s1_reg_n_0_[5] ),
        .I5(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r1__0_carry_i_1__0
       (.I0(\Q1_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .I3(\c1_s1_reg_n_0_[3] ),
        .O(r1__0_carry_i_1__0_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h69699669)) 
    r1__0_carry_i_2__0
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry_i_3__0
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\c1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_4__0
       (.I0(\c1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_5__0
       (.I0(\c1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry_i_5__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_ready_t_i_1
       (.I0(resetn),
        .O(resetn_0));
  CARRY4 sum_signed_carry__0_i_1
       (.CI(sum_signed_carry_i_1_n_0),
        .CO({sum_signed_carry__0_i_1_n_0,sum_signed_carry__0_i_1_n_1,sum_signed_carry__0_i_1_n_2,sum_signed_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(I66[7:4]),
        .O(\m0_d_reg[3][7] ),
        .S(\c_pkt_reg[7] ));
  CARRY4 sum_signed_carry__1_i_1
       (.CI(sum_signed_carry__0_i_1_n_0),
        .CO({sum_signed_carry__1_i_1_n_0,sum_signed_carry__1_i_1_n_1,sum_signed_carry__1_i_1_n_2,sum_signed_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(I66[11:8]),
        .O(\m0_d_reg[3][11] ),
        .S(\c_pkt_reg[11] ));
  CARRY4 sum_signed_carry_i_1
       (.CI(1'b0),
        .CO({sum_signed_carry_i_1_n_0,sum_signed_carry_i_1_n_1,sum_signed_carry_i_1_n_2,sum_signed_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(I66[3:0]),
        .O(\m0_d_reg[3][3] ),
        .S(\c_pkt_reg[3] ));
  CARRY4 sum_signed_carry_i_10
       (.CI(sum_signed_carry__1_i_1_n_0),
        .CO({NLW_sum_signed_carry_i_10_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sum_signed_carry_i_10_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT5 #(
    .INIT(32'hEEEAAAAA)) 
    sum_signed_carry_i_11
       (.I0(\R_s2_reg_n_0_[12] ),
        .I1(Q[11]),
        .I2(sum_signed_carry_i_12_n_0),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\R_s2_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    sum_signed_carry_i_12
       (.I0(Q[8]),
        .I1(sum_signed_carry_i_13_n_0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(sum_signed_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sum_signed_carry_i_13
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(Q[7]),
        .O(sum_signed_carry_i_13_n_0));
endmodule

(* ORIG_REF_NAME = "barrett_reduction" *) 
module design_1_polymul_axi_top_0_0_barrett_reduction_10
   (S,
    product,
    product_0,
    \R_s2_reg[13]_0 ,
    \R_s2_reg[13]_1 ,
    \R_s2_reg[13]_2 ,
    \R_s2_reg[13]_3 ,
    \R_s2_reg[13]_4 ,
    \R_s2_reg[13]_5 ,
    \R_s2_reg[13]_6 ,
    \R_s2_reg[13]_7 ,
    \R_s2_reg[13]_8 ,
    \R_s2_reg[13]_9 ,
    \R_s2_reg[13]_10 ,
    \R_s2_reg[13]_11 ,
    d1,
    P,
    \c0_s1_reg[0]_0 ,
    clk,
    \c1_s1_reg[0]_0 );
  output [3:0]S;
  output [3:0]product;
  output [2:0]product_0;
  output \R_s2_reg[13]_0 ;
  output \R_s2_reg[13]_1 ;
  output \R_s2_reg[13]_2 ;
  output \R_s2_reg[13]_3 ;
  output \R_s2_reg[13]_4 ;
  output \R_s2_reg[13]_5 ;
  output \R_s2_reg[13]_6 ;
  output \R_s2_reg[13]_7 ;
  output \R_s2_reg[13]_8 ;
  output \R_s2_reg[13]_9 ;
  output \R_s2_reg[13]_10 ;
  output \R_s2_reg[13]_11 ;
  input [12:0]d1;
  input [23:0]P;
  input \c0_s1_reg[0]_0 ;
  input clk;
  input \c1_s1_reg[0]_0 ;

  wire [23:0]P;
  wire [11:0]Q1_comb;
  wire \Q1_s1[10]_i_3__1_n_0 ;
  wire \Q1_s1[10]_i_4__1_n_0 ;
  wire \Q1_s1[10]_i_5__1_n_0 ;
  wire \Q1_s1[10]_i_6__1_n_0 ;
  wire \Q1_s1[11]_i_2__1_n_0 ;
  wire \Q1_s1[2]_i_3__1_n_0 ;
  wire \Q1_s1[2]_i_4__1_n_0 ;
  wire \Q1_s1[2]_i_5__1_n_0 ;
  wire \Q1_s1[2]_i_6__1_n_0 ;
  wire \Q1_s1[6]_i_3__1_n_0 ;
  wire \Q1_s1[6]_i_4__1_n_0 ;
  wire \Q1_s1[6]_i_5__1_n_0 ;
  wire \Q1_s1[6]_i_6__1_n_0 ;
  wire \Q1_s1_reg[10]_i_1__1_n_0 ;
  wire \Q1_s1_reg[10]_i_1__1_n_1 ;
  wire \Q1_s1_reg[10]_i_1__1_n_2 ;
  wire \Q1_s1_reg[10]_i_1__1_n_3 ;
  wire \Q1_s1_reg[2]_i_1__1_n_0 ;
  wire \Q1_s1_reg[2]_i_1__1_n_1 ;
  wire \Q1_s1_reg[2]_i_1__1_n_2 ;
  wire \Q1_s1_reg[2]_i_1__1_n_3 ;
  wire \Q1_s1_reg[6]_i_1__1_n_0 ;
  wire \Q1_s1_reg[6]_i_1__1_n_1 ;
  wire \Q1_s1_reg[6]_i_1__1_n_2 ;
  wire \Q1_s1_reg[6]_i_1__1_n_3 ;
  wire \Q1_s1_reg_n_0_[0] ;
  wire \Q1_s1_reg_n_0_[10] ;
  wire \Q1_s1_reg_n_0_[11] ;
  wire \Q1_s1_reg_n_0_[1] ;
  wire \Q1_s1_reg_n_0_[2] ;
  wire \Q1_s1_reg_n_0_[3] ;
  wire \Q1_s1_reg_n_0_[4] ;
  wire \Q1_s1_reg_n_0_[5] ;
  wire \Q1_s1_reg_n_0_[6] ;
  wire \Q1_s1_reg_n_0_[7] ;
  wire \Q1_s1_reg_n_0_[8] ;
  wire \Q1_s1_reg_n_0_[9] ;
  wire [13:0]R_comb;
  wire R_comb_carry__0_i_1__1_n_0;
  wire R_comb_carry__0_i_2__1_n_0;
  wire R_comb_carry__0_i_3__1_n_0;
  wire R_comb_carry__0_i_4__1_n_0;
  wire R_comb_carry__0_n_0;
  wire R_comb_carry__0_n_1;
  wire R_comb_carry__0_n_2;
  wire R_comb_carry__0_n_3;
  wire R_comb_carry__1_i_1__1_n_0;
  wire R_comb_carry__1_i_2__1_n_0;
  wire R_comb_carry__1_i_3__1_n_0;
  wire R_comb_carry__1_i_4__1_n_0;
  wire R_comb_carry__1_n_0;
  wire R_comb_carry__1_n_1;
  wire R_comb_carry__1_n_2;
  wire R_comb_carry__1_n_3;
  wire R_comb_carry__2_i_1__1_n_0;
  wire R_comb_carry__2_i_2__1_n_0;
  wire R_comb_carry__2_n_3;
  wire R_comb_carry_i_1__1_n_0;
  wire R_comb_carry_i_2__1_n_0;
  wire R_comb_carry_i_3__1_n_0;
  wire R_comb_carry_i_4__1_n_0;
  wire R_comb_carry_n_0;
  wire R_comb_carry_n_1;
  wire R_comb_carry_n_2;
  wire R_comb_carry_n_3;
  wire R_minus_q_carry__0_i_1__1_n_0;
  wire R_minus_q_carry__0_i_2__1_n_0;
  wire R_minus_q_carry__0_i_3__1_n_0;
  wire R_minus_q_carry__0_n_0;
  wire R_minus_q_carry__0_n_1;
  wire R_minus_q_carry__0_n_2;
  wire R_minus_q_carry__0_n_3;
  wire R_minus_q_carry__0_n_4;
  wire R_minus_q_carry__0_n_5;
  wire R_minus_q_carry__0_n_6;
  wire R_minus_q_carry__0_n_7;
  wire R_minus_q_carry__1_i_1__1_n_0;
  wire R_minus_q_carry__1_n_2;
  wire R_minus_q_carry__1_n_3;
  wire R_minus_q_carry__1_n_5;
  wire R_minus_q_carry__1_n_6;
  wire R_minus_q_carry__1_n_7;
  wire R_minus_q_carry_i_1__1_n_0;
  wire R_minus_q_carry_i_2__1_n_0;
  wire R_minus_q_carry_i_3__1_n_0;
  wire R_minus_q_carry_i_4__1_n_0;
  wire R_minus_q_carry_n_0;
  wire R_minus_q_carry_n_1;
  wire R_minus_q_carry_n_2;
  wire R_minus_q_carry_n_3;
  wire R_minus_q_carry_n_4;
  wire R_minus_q_carry_n_5;
  wire R_minus_q_carry_n_6;
  wire R_minus_q_carry_n_7;
  wire R_plus_q_carry__0_i_1__1_n_0;
  wire R_plus_q_carry__0_n_0;
  wire R_plus_q_carry__0_n_1;
  wire R_plus_q_carry__0_n_2;
  wire R_plus_q_carry__0_n_3;
  wire R_plus_q_carry__0_n_4;
  wire R_plus_q_carry__0_n_5;
  wire R_plus_q_carry__0_n_6;
  wire R_plus_q_carry__0_n_7;
  wire R_plus_q_carry__1_i_1__1_n_0;
  wire R_plus_q_carry__1_i_2__1_n_0;
  wire R_plus_q_carry__1_n_2;
  wire R_plus_q_carry__1_n_3;
  wire R_plus_q_carry__1_n_5;
  wire R_plus_q_carry__1_n_6;
  wire R_plus_q_carry__1_n_7;
  wire R_plus_q_carry_n_0;
  wire R_plus_q_carry_n_1;
  wire R_plus_q_carry_n_2;
  wire R_plus_q_carry_n_3;
  wire R_plus_q_carry_n_4;
  wire R_plus_q_carry_n_5;
  wire R_plus_q_carry_n_6;
  wire R_plus_q_carry_n_7;
  wire [13:0]R_s2;
  wire \R_s2_reg[13]_0 ;
  wire \R_s2_reg[13]_1 ;
  wire \R_s2_reg[13]_10 ;
  wire \R_s2_reg[13]_11 ;
  wire \R_s2_reg[13]_2 ;
  wire \R_s2_reg[13]_3 ;
  wire \R_s2_reg[13]_4 ;
  wire \R_s2_reg[13]_5 ;
  wire \R_s2_reg[13]_6 ;
  wire \R_s2_reg[13]_7 ;
  wire \R_s2_reg[13]_8 ;
  wire \R_s2_reg[13]_9 ;
  wire [3:0]S;
  wire [7:0]c0_s1;
  wire \c0_s1[0]_i_1__1_n_0 ;
  wire \c0_s1[1]_i_1__1_n_0 ;
  wire \c0_s1[2]_i_1__1_n_0 ;
  wire \c0_s1[3]_i_1__1_n_0 ;
  wire \c0_s1[4]_i_1__1_n_0 ;
  wire \c0_s1[5]_i_1__1_n_0 ;
  wire \c0_s1[6]_i_1__1_n_0 ;
  wire \c0_s1[7]_i_1__1_n_0 ;
  wire \c0_s1_reg[0]_0 ;
  wire [5:0]c1_s1;
  wire \c1_s1[0]_i_1__1_n_0 ;
  wire \c1_s1[1]_i_1__1_n_0 ;
  wire \c1_s1[2]_i_1__1_n_0 ;
  wire \c1_s1[3]_i_1__1_n_0 ;
  wire \c1_s1[4]_i_1__1_n_0 ;
  wire \c1_s1_reg[0]_0 ;
  wire clk;
  wire [12:0]d1;
  wire \m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ;
  wire \m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3_n_0 ;
  wire \m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4_n_0 ;
  wire [0:0]p_0_in;
  wire [3:0]product;
  wire [2:0]product_0;
  wire [5:0]r1;
  wire r1__0_carry__0_i_1__1_n_0;
  wire r1__0_carry__0_i_2__1_n_0;
  wire r1__0_carry__0_i_3__1_n_0;
  wire r1__0_carry__0_i_4__1_n_0;
  wire r1__0_carry__0_i_5__1_n_0;
  wire r1__0_carry__0_n_3;
  wire r1__0_carry_i_1__1_n_0;
  wire r1__0_carry_i_2__1_n_0;
  wire r1__0_carry_i_3__1_n_0;
  wire r1__0_carry_i_4__1_n_0;
  wire r1__0_carry_i_5__1_n_0;
  wire r1__0_carry_n_0;
  wire r1__0_carry_n_1;
  wire r1__0_carry_n_2;
  wire r1__0_carry_n_3;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_1__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_1__1_O_UNCONNECTED ;
  wire [0:0]\NLW_Q1_s1_reg[2]_i_1__1_O_UNCONNECTED ;
  wire [3:1]NLW_R_comb_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_R_comb_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_R_minus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_minus_q_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_R_plus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_plus_q_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_r1__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_r1__0_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_11 
       (.I0(P[21]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[23]),
        .O(product_0[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_12 
       (.I0(P[20]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[22]),
        .O(product_0[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_13 
       (.I0(P[19]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[21]),
        .O(product_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_3__1 
       (.I0(d1[11]),
        .O(\Q1_s1[10]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_4__1 
       (.I0(d1[10]),
        .O(\Q1_s1[10]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_5__1 
       (.I0(d1[9]),
        .O(\Q1_s1[10]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_6__1 
       (.I0(d1[8]),
        .O(\Q1_s1[10]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[11]_i_2__1 
       (.I0(d1[12]),
        .O(\Q1_s1[11]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_11 
       (.I0(P[14]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[16]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_12 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[15]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_13 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[14]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_14 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[13]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_3__1 
       (.I0(d1[3]),
        .I1(d1[9]),
        .O(\Q1_s1[2]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_4__1 
       (.I0(d1[2]),
        .I1(d1[8]),
        .O(\Q1_s1[2]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_5__1 
       (.I0(d1[1]),
        .I1(d1[7]),
        .O(\Q1_s1[2]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_6__1 
       (.I0(d1[0]),
        .I1(d1[6]),
        .O(\Q1_s1[2]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_11 
       (.I0(P[18]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[20]),
        .O(product[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_12 
       (.I0(P[17]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[19]),
        .O(product[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_13 
       (.I0(P[16]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[18]),
        .O(product[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_14 
       (.I0(P[15]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[17]),
        .O(product[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[6]_i_3__1 
       (.I0(d1[7]),
        .O(\Q1_s1[6]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_4__1 
       (.I0(d1[6]),
        .I1(d1[12]),
        .O(\Q1_s1[6]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_5__1 
       (.I0(d1[5]),
        .I1(d1[11]),
        .O(\Q1_s1[6]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_6__1 
       (.I0(d1[4]),
        .I1(d1[10]),
        .O(\Q1_s1[6]_i_6__1_n_0 ));
  FDCE \Q1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[0]),
        .Q(\Q1_s1_reg_n_0_[0] ));
  FDCE \Q1_s1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[10]),
        .Q(\Q1_s1_reg_n_0_[10] ));
  CARRY4 \Q1_s1_reg[10]_i_1__1 
       (.CI(\Q1_s1_reg[6]_i_1__1_n_0 ),
        .CO({\Q1_s1_reg[10]_i_1__1_n_0 ,\Q1_s1_reg[10]_i_1__1_n_1 ,\Q1_s1_reg[10]_i_1__1_n_2 ,\Q1_s1_reg[10]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI(d1[11:8]),
        .O(Q1_comb[10:7]),
        .S({\Q1_s1[10]_i_3__1_n_0 ,\Q1_s1[10]_i_4__1_n_0 ,\Q1_s1[10]_i_5__1_n_0 ,\Q1_s1[10]_i_6__1_n_0 }));
  FDCE \Q1_s1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[11]),
        .Q(\Q1_s1_reg_n_0_[11] ));
  CARRY4 \Q1_s1_reg[11]_i_1__1 
       (.CI(\Q1_s1_reg[10]_i_1__1_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_1__1_O_UNCONNECTED [3:1],Q1_comb[11]}),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_2__1_n_0 }));
  FDCE \Q1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[1]),
        .Q(\Q1_s1_reg_n_0_[1] ));
  FDCE \Q1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[2]),
        .Q(\Q1_s1_reg_n_0_[2] ));
  CARRY4 \Q1_s1_reg[2]_i_1__1 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_1__1_n_0 ,\Q1_s1_reg[2]_i_1__1_n_1 ,\Q1_s1_reg[2]_i_1__1_n_2 ,\Q1_s1_reg[2]_i_1__1_n_3 }),
        .CYINIT(1'b1),
        .DI(d1[3:0]),
        .O({Q1_comb[2:0],\NLW_Q1_s1_reg[2]_i_1__1_O_UNCONNECTED [0]}),
        .S({\Q1_s1[2]_i_3__1_n_0 ,\Q1_s1[2]_i_4__1_n_0 ,\Q1_s1[2]_i_5__1_n_0 ,\Q1_s1[2]_i_6__1_n_0 }));
  FDCE \Q1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[3]),
        .Q(\Q1_s1_reg_n_0_[3] ));
  FDCE \Q1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[4]),
        .Q(\Q1_s1_reg_n_0_[4] ));
  FDCE \Q1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[5]),
        .Q(\Q1_s1_reg_n_0_[5] ));
  FDCE \Q1_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[6]),
        .Q(\Q1_s1_reg_n_0_[6] ));
  CARRY4 \Q1_s1_reg[6]_i_1__1 
       (.CI(\Q1_s1_reg[2]_i_1__1_n_0 ),
        .CO({\Q1_s1_reg[6]_i_1__1_n_0 ,\Q1_s1_reg[6]_i_1__1_n_1 ,\Q1_s1_reg[6]_i_1__1_n_2 ,\Q1_s1_reg[6]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI(d1[7:4]),
        .O(Q1_comb[6:3]),
        .S({\Q1_s1[6]_i_3__1_n_0 ,\Q1_s1[6]_i_4__1_n_0 ,\Q1_s1[6]_i_5__1_n_0 ,\Q1_s1[6]_i_6__1_n_0 }));
  FDCE \Q1_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[7]),
        .Q(\Q1_s1_reg_n_0_[7] ));
  FDCE \Q1_s1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[8]),
        .Q(\Q1_s1_reg_n_0_[8] ));
  FDCE \Q1_s1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[9]),
        .Q(\Q1_s1_reg_n_0_[9] ));
  CARRY4 R_comb_carry
       (.CI(1'b0),
        .CO({R_comb_carry_n_0,R_comb_carry_n_1,R_comb_carry_n_2,R_comb_carry_n_3}),
        .CYINIT(1'b1),
        .DI(c0_s1[3:0]),
        .O(R_comb[3:0]),
        .S({R_comb_carry_i_1__1_n_0,R_comb_carry_i_2__1_n_0,R_comb_carry_i_3__1_n_0,R_comb_carry_i_4__1_n_0}));
  CARRY4 R_comb_carry__0
       (.CI(R_comb_carry_n_0),
        .CO({R_comb_carry__0_n_0,R_comb_carry__0_n_1,R_comb_carry__0_n_2,R_comb_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(c0_s1[7:4]),
        .O(R_comb[7:4]),
        .S({R_comb_carry__0_i_1__1_n_0,R_comb_carry__0_i_2__1_n_0,R_comb_carry__0_i_3__1_n_0,R_comb_carry__0_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_1__1
       (.I0(c0_s1[7]),
        .I1(\Q1_s1_reg_n_0_[7] ),
        .O(R_comb_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_2__1
       (.I0(c0_s1[6]),
        .I1(\Q1_s1_reg_n_0_[6] ),
        .O(R_comb_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_3__1
       (.I0(c0_s1[5]),
        .I1(\Q1_s1_reg_n_0_[5] ),
        .O(R_comb_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_4__1
       (.I0(c0_s1[4]),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .O(R_comb_carry__0_i_4__1_n_0));
  CARRY4 R_comb_carry__1
       (.CI(R_comb_carry__0_n_0),
        .CO({R_comb_carry__1_n_0,R_comb_carry__1_n_1,R_comb_carry__1_n_2,R_comb_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(r1[3:0]),
        .O(R_comb[11:8]),
        .S({R_comb_carry__1_i_1__1_n_0,R_comb_carry__1_i_2__1_n_0,R_comb_carry__1_i_3__1_n_0,R_comb_carry__1_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_1__1
       (.I0(r1[3]),
        .I1(\Q1_s1_reg_n_0_[11] ),
        .O(R_comb_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_2__1
       (.I0(r1[2]),
        .I1(\Q1_s1_reg_n_0_[10] ),
        .O(R_comb_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_3__1
       (.I0(r1[1]),
        .I1(\Q1_s1_reg_n_0_[9] ),
        .O(R_comb_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_4__1
       (.I0(r1[0]),
        .I1(\Q1_s1_reg_n_0_[8] ),
        .O(R_comb_carry__1_i_4__1_n_0));
  CARRY4 R_comb_carry__2
       (.CI(R_comb_carry__1_n_0),
        .CO({NLW_R_comb_carry__2_CO_UNCONNECTED[3:1],R_comb_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1[4]}),
        .O({NLW_R_comb_carry__2_O_UNCONNECTED[3:2],R_comb[13:12]}),
        .S({1'b0,1'b0,R_comb_carry__2_i_1__1_n_0,R_comb_carry__2_i_2__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_1__1
       (.I0(r1[5]),
        .O(R_comb_carry__2_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_2__1
       (.I0(r1[4]),
        .O(R_comb_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_1__1
       (.I0(c0_s1[3]),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .O(R_comb_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_2__1
       (.I0(c0_s1[2]),
        .I1(\Q1_s1_reg_n_0_[2] ),
        .O(R_comb_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_3__1
       (.I0(c0_s1[1]),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(R_comb_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_4__1
       (.I0(c0_s1[0]),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(R_comb_carry_i_4__1_n_0));
  CARRY4 R_minus_q_carry
       (.CI(1'b0),
        .CO({R_minus_q_carry_n_0,R_minus_q_carry_n_1,R_minus_q_carry_n_2,R_minus_q_carry_n_3}),
        .CYINIT(R_s2[0]),
        .DI(R_s2[4:1]),
        .O({R_minus_q_carry_n_4,R_minus_q_carry_n_5,R_minus_q_carry_n_6,R_minus_q_carry_n_7}),
        .S({R_minus_q_carry_i_1__1_n_0,R_minus_q_carry_i_2__1_n_0,R_minus_q_carry_i_3__1_n_0,R_minus_q_carry_i_4__1_n_0}));
  CARRY4 R_minus_q_carry__0
       (.CI(R_minus_q_carry_n_0),
        .CO({R_minus_q_carry__0_n_0,R_minus_q_carry__0_n_1,R_minus_q_carry__0_n_2,R_minus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,R_s2[7:5]}),
        .O({R_minus_q_carry__0_n_4,R_minus_q_carry__0_n_5,R_minus_q_carry__0_n_6,R_minus_q_carry__0_n_7}),
        .S({R_s2[8],R_minus_q_carry__0_i_1__1_n_0,R_minus_q_carry__0_i_2__1_n_0,R_minus_q_carry__0_i_3__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_1__1
       (.I0(R_s2[7]),
        .O(R_minus_q_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_2__1
       (.I0(R_s2[6]),
        .O(R_minus_q_carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_3__1
       (.I0(R_s2[5]),
        .O(R_minus_q_carry__0_i_3__1_n_0));
  CARRY4 R_minus_q_carry__1
       (.CI(R_minus_q_carry__0_n_0),
        .CO({NLW_R_minus_q_carry__1_CO_UNCONNECTED[3:2],R_minus_q_carry__1_n_2,R_minus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,R_s2[9]}),
        .O({NLW_R_minus_q_carry__1_O_UNCONNECTED[3],R_minus_q_carry__1_n_5,R_minus_q_carry__1_n_6,R_minus_q_carry__1_n_7}),
        .S({1'b0,R_s2[11:10],R_minus_q_carry__1_i_1__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__1_i_1__1
       (.I0(R_s2[9]),
        .O(R_minus_q_carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_1__1
       (.I0(R_s2[4]),
        .O(R_minus_q_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_2__1
       (.I0(R_s2[3]),
        .O(R_minus_q_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_3__1
       (.I0(R_s2[2]),
        .O(R_minus_q_carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_4__1
       (.I0(R_s2[1]),
        .O(R_minus_q_carry_i_4__1_n_0));
  CARRY4 R_plus_q_carry
       (.CI(1'b0),
        .CO({R_plus_q_carry_n_0,R_plus_q_carry_n_1,R_plus_q_carry_n_2,R_plus_q_carry_n_3}),
        .CYINIT(R_s2[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({R_plus_q_carry_n_4,R_plus_q_carry_n_5,R_plus_q_carry_n_6,R_plus_q_carry_n_7}),
        .S(R_s2[4:1]));
  CARRY4 R_plus_q_carry__0
       (.CI(R_plus_q_carry_n_0),
        .CO({R_plus_q_carry__0_n_0,R_plus_q_carry__0_n_1,R_plus_q_carry__0_n_2,R_plus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({R_s2[8],1'b0,1'b0,1'b0}),
        .O({R_plus_q_carry__0_n_4,R_plus_q_carry__0_n_5,R_plus_q_carry__0_n_6,R_plus_q_carry__0_n_7}),
        .S({R_plus_q_carry__0_i_1__1_n_0,R_s2[7:5]}));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__0_i_1__1
       (.I0(R_s2[8]),
        .O(R_plus_q_carry__0_i_1__1_n_0));
  CARRY4 R_plus_q_carry__1
       (.CI(R_plus_q_carry__0_n_0),
        .CO({NLW_R_plus_q_carry__1_CO_UNCONNECTED[3:2],R_plus_q_carry__1_n_2,R_plus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,R_s2[10],1'b0}),
        .O({NLW_R_plus_q_carry__1_O_UNCONNECTED[3],R_plus_q_carry__1_n_5,R_plus_q_carry__1_n_6,R_plus_q_carry__1_n_7}),
        .S({1'b0,R_plus_q_carry__1_i_1__1_n_0,R_plus_q_carry__1_i_2__1_n_0,R_s2[9]}));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_1__1
       (.I0(R_s2[11]),
        .O(R_plus_q_carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_2__1
       (.I0(R_s2[10]),
        .O(R_plus_q_carry__1_i_2__1_n_0));
  FDCE \R_s2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[0]),
        .Q(R_s2[0]));
  FDCE \R_s2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[10]),
        .Q(R_s2[10]));
  FDCE \R_s2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[11]),
        .Q(R_s2[11]));
  FDCE \R_s2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[12]),
        .Q(R_s2[12]));
  FDCE \R_s2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[13]),
        .Q(R_s2[13]));
  FDCE \R_s2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[1]),
        .Q(R_s2[1]));
  FDCE \R_s2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[2]),
        .Q(R_s2[2]));
  FDCE \R_s2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[3]),
        .Q(R_s2[3]));
  FDCE \R_s2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[4]),
        .Q(R_s2[4]));
  FDCE \R_s2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[5]),
        .Q(R_s2[5]));
  FDCE \R_s2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[6]),
        .Q(R_s2[6]));
  FDCE \R_s2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[7]),
        .Q(R_s2[7]));
  FDCE \R_s2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[8]),
        .Q(R_s2[8]));
  FDCE \R_s2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[9]),
        .Q(R_s2[9]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[0]_i_1__1 
       (.I0(P[0]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[1]_i_1__1 
       (.I0(P[1]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[2]_i_1__1 
       (.I0(P[2]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[3]_i_1__1 
       (.I0(P[3]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[4]_i_1__1 
       (.I0(P[4]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[5]_i_1__1 
       (.I0(P[5]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[6]_i_1__1 
       (.I0(P[6]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[7]_i_1__1 
       (.I0(P[7]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[7]_i_1__1_n_0 ));
  FDCE \c0_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[0]_i_1__1_n_0 ),
        .Q(c0_s1[0]));
  FDCE \c0_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[1]_i_1__1_n_0 ),
        .Q(c0_s1[1]));
  FDCE \c0_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[2]_i_1__1_n_0 ),
        .Q(c0_s1[2]));
  FDCE \c0_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[3]_i_1__1_n_0 ),
        .Q(c0_s1[3]));
  FDCE \c0_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[4]_i_1__1_n_0 ),
        .Q(c0_s1[4]));
  FDCE \c0_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[5]_i_1__1_n_0 ),
        .Q(c0_s1[5]));
  FDCE \c0_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[6]_i_1__1_n_0 ),
        .Q(c0_s1[6]));
  FDCE \c0_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[7]_i_1__1_n_0 ),
        .Q(c0_s1[7]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[0]_i_1__1 
       (.I0(P[8]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[1]_i_1__1 
       (.I0(P[9]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[2]_i_1__1 
       (.I0(P[10]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[3]_i_1__1 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[4]_i_1__1 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[5]_i_1__1 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(p_0_in));
  FDCE \c1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[0]_i_1__1_n_0 ),
        .Q(c1_s1[0]));
  FDCE \c1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[1]_i_1__1_n_0 ),
        .Q(c1_s1[1]));
  FDCE \c1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[2]_i_1__1_n_0 ),
        .Q(c1_s1[2]));
  FDCE \c1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[3]_i_1__1_n_0 ),
        .Q(c1_s1[3]));
  FDCE \c1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[4]_i_1__1_n_0 ),
        .Q(c1_s1[4]));
  FDCE \c1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(p_0_in),
        .Q(c1_s1[5]));
  LUT3 #(
    .INIT(8'h1E)) 
    \m0_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_s2[13]),
        .I1(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I2(R_s2[0]),
        .O(\R_s2_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__1_n_6),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry__1_n_6),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[10]),
        .O(\R_s2_reg[13]_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__1_n_5),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry__1_n_5),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[11]),
        .O(\R_s2_reg[13]_1 ));
  LUT5 #(
    .INIT(32'hEEEAAAAA)) 
    \m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2 
       (.I0(R_s2[12]),
        .I1(R_s2[11]),
        .I2(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3_n_0 ),
        .I3(R_s2[9]),
        .I4(R_s2[10]),
        .O(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3 
       (.I0(R_s2[8]),
        .I1(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4_n_0 ),
        .I2(R_s2[2]),
        .I3(R_s2[1]),
        .I4(R_s2[4]),
        .I5(R_s2[3]),
        .O(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4 
       (.I0(R_s2[6]),
        .I1(R_s2[5]),
        .I2(R_s2[0]),
        .I3(R_s2[7]),
        .O(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_7),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry_n_7),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[1]),
        .O(\R_s2_reg[13]_11 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_6),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry_n_6),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[2]),
        .O(\R_s2_reg[13]_10 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_5),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry_n_5),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[3]),
        .O(\R_s2_reg[13]_9 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_4),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry_n_4),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[4]),
        .O(\R_s2_reg[13]_8 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_7),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry__0_n_7),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[5]),
        .O(\R_s2_reg[13]_7 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_6),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry__0_n_6),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[6]),
        .O(\R_s2_reg[13]_6 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_5),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry__0_n_5),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[7]),
        .O(\R_s2_reg[13]_5 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_4),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry__0_n_4),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[8]),
        .O(\R_s2_reg[13]_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m0_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__1_n_7),
        .I1(R_s2[13]),
        .I2(R_minus_q_carry__1_n_7),
        .I3(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(R_s2[9]),
        .O(\R_s2_reg[13]_3 ));
  CARRY4 r1__0_carry
       (.CI(1'b0),
        .CO({r1__0_carry_n_0,r1__0_carry_n_1,r1__0_carry_n_2,r1__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({r1__0_carry_i_1__1_n_0,c1_s1[2:0]}),
        .O(r1[3:0]),
        .S({r1__0_carry_i_2__1_n_0,r1__0_carry_i_3__1_n_0,r1__0_carry_i_4__1_n_0,r1__0_carry_i_5__1_n_0}));
  CARRY4 r1__0_carry__0
       (.CI(r1__0_carry_n_0),
        .CO({NLW_r1__0_carry__0_CO_UNCONNECTED[3:1],r1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_i_1__1_n_0}),
        .O({NLW_r1__0_carry__0_O_UNCONNECTED[3:2],r1[5:4]}),
        .S({1'b0,1'b0,r1__0_carry__0_i_2__1_n_0,r1__0_carry__0_i_3__1_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'hD44D)) 
    r1__0_carry__0_i_1__1
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(c1_s1[3]),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry__0_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h088FF770)) 
    r1__0_carry__0_i_2__1
       (.I0(\Q1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .I2(r1__0_carry__0_i_4__1_n_0),
        .I3(c1_s1[4]),
        .I4(r1__0_carry__0_i_5__1_n_0),
        .O(r1__0_carry__0_i_2__1_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    r1__0_carry__0_i_3__1
       (.I0(r1__0_carry__0_i_1__1_n_0),
        .I1(r1__0_carry__0_i_4__1_n_0),
        .I2(c1_s1[4]),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[3] ),
        .O(r1__0_carry__0_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry__0_i_4__1
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry__0_i_4__1_n_0));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    r1__0_carry__0_i_5__1
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(c1_s1[5]),
        .I3(\Q1_s1_reg_n_0_[3] ),
        .I4(\Q1_s1_reg_n_0_[5] ),
        .I5(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r1__0_carry_i_1__1
       (.I0(\Q1_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .I3(c1_s1[3]),
        .O(r1__0_carry_i_1__1_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h69699669)) 
    r1__0_carry_i_2__1
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(c1_s1[3]),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry_i_3__1
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(c1_s1[2]),
        .O(r1__0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_4__1
       (.I0(c1_s1[1]),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_5__1
       (.I0(c1_s1[0]),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry_i_5__1_n_0));
endmodule

(* ORIG_REF_NAME = "barrett_reduction" *) 
module design_1_polymul_axi_top_0_0_barrett_reduction_14
   (D,
    DIBDI,
    \R_s2_reg[11]_0 ,
    \R_s2_reg[11]_1 ,
    S,
    product,
    product_0,
    d1,
    P,
    \c1_s1_reg[5]_0 ,
    bu_data_a_r,
    \b2_reg_r_reg[0] ,
    mem_reg,
    mem_reg_0,
    O,
    A_web,
    B_web,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    clk,
    \c1_s1_reg[0]_0 );
  output [11:0]D;
  output [11:0]DIBDI;
  output [11:0]\R_s2_reg[11]_0 ;
  output [11:0]\R_s2_reg[11]_1 ;
  output [3:0]S;
  output [3:0]product;
  output [2:0]product_0;
  input [12:0]d1;
  input [23:0]P;
  input \c1_s1_reg[5]_0 ;
  input [11:0]bu_data_a_r;
  input \b2_reg_r_reg[0] ;
  input mem_reg;
  input mem_reg_0;
  input [3:0]O;
  input A_web;
  input B_web;
  input mem_reg_1;
  input [3:0]mem_reg_2;
  input [3:0]mem_reg_3;
  input clk;
  input \c1_s1_reg[0]_0 ;

  wire A_web;
  wire B_web;
  wire [11:0]D;
  wire [11:0]DIBDI;
  wire [3:0]O;
  wire [23:0]P;
  wire [11:0]Q1_comb;
  wire \Q1_s1[10]_i_3__5_n_0 ;
  wire \Q1_s1[10]_i_4__5_n_0 ;
  wire \Q1_s1[10]_i_5__5_n_0 ;
  wire \Q1_s1[10]_i_6__5_n_0 ;
  wire \Q1_s1[11]_i_2__5_n_0 ;
  wire \Q1_s1[2]_i_3__5_n_0 ;
  wire \Q1_s1[2]_i_4__5_n_0 ;
  wire \Q1_s1[2]_i_5__5_n_0 ;
  wire \Q1_s1[2]_i_6__5_n_0 ;
  wire \Q1_s1[6]_i_3__5_n_0 ;
  wire \Q1_s1[6]_i_4__5_n_0 ;
  wire \Q1_s1[6]_i_5__5_n_0 ;
  wire \Q1_s1[6]_i_6__5_n_0 ;
  wire \Q1_s1_reg[10]_i_1__5_n_0 ;
  wire \Q1_s1_reg[10]_i_1__5_n_1 ;
  wire \Q1_s1_reg[10]_i_1__5_n_2 ;
  wire \Q1_s1_reg[10]_i_1__5_n_3 ;
  wire \Q1_s1_reg[2]_i_1__5_n_0 ;
  wire \Q1_s1_reg[2]_i_1__5_n_1 ;
  wire \Q1_s1_reg[2]_i_1__5_n_2 ;
  wire \Q1_s1_reg[2]_i_1__5_n_3 ;
  wire \Q1_s1_reg[6]_i_1__5_n_0 ;
  wire \Q1_s1_reg[6]_i_1__5_n_1 ;
  wire \Q1_s1_reg[6]_i_1__5_n_2 ;
  wire \Q1_s1_reg[6]_i_1__5_n_3 ;
  wire \Q1_s1_reg_n_0_[0] ;
  wire \Q1_s1_reg_n_0_[10] ;
  wire \Q1_s1_reg_n_0_[11] ;
  wire \Q1_s1_reg_n_0_[1] ;
  wire \Q1_s1_reg_n_0_[2] ;
  wire \Q1_s1_reg_n_0_[3] ;
  wire \Q1_s1_reg_n_0_[4] ;
  wire \Q1_s1_reg_n_0_[5] ;
  wire \Q1_s1_reg_n_0_[6] ;
  wire \Q1_s1_reg_n_0_[7] ;
  wire \Q1_s1_reg_n_0_[8] ;
  wire \Q1_s1_reg_n_0_[9] ;
  wire [13:0]R_comb;
  wire R_comb_carry__0_i_1__5_n_0;
  wire R_comb_carry__0_i_2__5_n_0;
  wire R_comb_carry__0_i_3__5_n_0;
  wire R_comb_carry__0_i_4__5_n_0;
  wire R_comb_carry__0_n_0;
  wire R_comb_carry__0_n_1;
  wire R_comb_carry__0_n_2;
  wire R_comb_carry__0_n_3;
  wire R_comb_carry__1_i_1__5_n_0;
  wire R_comb_carry__1_i_2__5_n_0;
  wire R_comb_carry__1_i_3__5_n_0;
  wire R_comb_carry__1_i_4__5_n_0;
  wire R_comb_carry__1_n_0;
  wire R_comb_carry__1_n_1;
  wire R_comb_carry__1_n_2;
  wire R_comb_carry__1_n_3;
  wire R_comb_carry__2_i_1__5_n_0;
  wire R_comb_carry__2_i_2__5_n_0;
  wire R_comb_carry__2_n_3;
  wire R_comb_carry_i_1__5_n_0;
  wire R_comb_carry_i_2__5_n_0;
  wire R_comb_carry_i_3__5_n_0;
  wire R_comb_carry_i_4__5_n_0;
  wire R_comb_carry_n_0;
  wire R_comb_carry_n_1;
  wire R_comb_carry_n_2;
  wire R_comb_carry_n_3;
  wire [11:1]R_minus_q;
  wire R_minus_q_carry__0_i_1__5_n_0;
  wire R_minus_q_carry__0_i_2__5_n_0;
  wire R_minus_q_carry__0_i_3__5_n_0;
  wire R_minus_q_carry__0_n_0;
  wire R_minus_q_carry__0_n_1;
  wire R_minus_q_carry__0_n_2;
  wire R_minus_q_carry__0_n_3;
  wire R_minus_q_carry__1_i_1__5_n_0;
  wire R_minus_q_carry__1_n_2;
  wire R_minus_q_carry__1_n_3;
  wire R_minus_q_carry_i_1__5_n_0;
  wire R_minus_q_carry_i_2__5_n_0;
  wire R_minus_q_carry_i_3__5_n_0;
  wire R_minus_q_carry_i_4__5_n_0;
  wire R_minus_q_carry_n_0;
  wire R_minus_q_carry_n_1;
  wire R_minus_q_carry_n_2;
  wire R_minus_q_carry_n_3;
  wire R_plus_q_carry__0_i_1__5_n_0;
  wire R_plus_q_carry__0_n_0;
  wire R_plus_q_carry__0_n_1;
  wire R_plus_q_carry__0_n_2;
  wire R_plus_q_carry__0_n_3;
  wire R_plus_q_carry__1_i_1__5_n_0;
  wire R_plus_q_carry__1_i_2__5_n_0;
  wire R_plus_q_carry__1_n_2;
  wire R_plus_q_carry__1_n_3;
  wire R_plus_q_carry_n_0;
  wire R_plus_q_carry_n_1;
  wire R_plus_q_carry_n_2;
  wire R_plus_q_carry_n_3;
  wire [13:0]R_s2;
  wire [11:0]\R_s2_reg[11]_0 ;
  wire [11:0]\R_s2_reg[11]_1 ;
  wire [3:0]S;
  wire \b2_reg_r[10]_i_2__0_n_0 ;
  wire \b2_reg_r[11]_i_2__0_n_0 ;
  wire \b2_reg_r[11]_i_3__0_n_0 ;
  wire \b2_reg_r[11]_i_4__0_n_0 ;
  wire \b2_reg_r[1]_i_2__0_n_0 ;
  wire \b2_reg_r[2]_i_2__0_n_0 ;
  wire \b2_reg_r[3]_i_2__0_n_0 ;
  wire \b2_reg_r[4]_i_2__0_n_0 ;
  wire \b2_reg_r[5]_i_2__0_n_0 ;
  wire \b2_reg_r[6]_i_2__0_n_0 ;
  wire \b2_reg_r[7]_i_2__0_n_0 ;
  wire \b2_reg_r[8]_i_2__0_n_0 ;
  wire \b2_reg_r[9]_i_2__0_n_0 ;
  wire \b2_reg_r_reg[0] ;
  wire [11:0]bu_data_a_r;
  wire [7:0]c0_s1;
  wire \c0_s1[0]_i_1__5_n_0 ;
  wire \c0_s1[1]_i_1__5_n_0 ;
  wire \c0_s1[2]_i_1__5_n_0 ;
  wire \c0_s1[3]_i_1__5_n_0 ;
  wire \c0_s1[4]_i_1__5_n_0 ;
  wire \c0_s1[5]_i_1__5_n_0 ;
  wire \c0_s1[6]_i_1__5_n_0 ;
  wire \c0_s1[7]_i_1__5_n_0 ;
  wire [5:0]c1_s1;
  wire \c1_s1[0]_i_1__5_n_0 ;
  wire \c1_s1[1]_i_1__5_n_0 ;
  wire \c1_s1[2]_i_1__5_n_0 ;
  wire \c1_s1_reg[0]_0 ;
  wire \c1_s1_reg[5]_0 ;
  wire clk;
  wire [12:0]d1;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [3:0]mem_reg_2;
  wire [3:0]mem_reg_3;
  wire mem_reg_i_101_n_0;
  wire mem_reg_i_102_n_0;
  wire mem_reg_i_103_n_0;
  wire mem_reg_i_104_n_0;
  wire mem_reg_i_105_n_0;
  wire mem_reg_i_106_n_0;
  wire mem_reg_i_107_n_0;
  wire mem_reg_i_108_n_0;
  wire mem_reg_i_109_n_0;
  wire mem_reg_i_110_n_0;
  wire mem_reg_i_111_n_0;
  wire mem_reg_i_112_n_0;
  wire mem_reg_i_113_n_0;
  wire mem_reg_i_132_n_0;
  wire mem_reg_i_134_n_0;
  wire [2:0]p_1_in;
  wire [11:1]p_3_in;
  wire [3:0]product;
  wire [2:0]product_0;
  wire [5:0]r1;
  wire r1__0_carry__0_i_1__5_n_0;
  wire r1__0_carry__0_i_2__5_n_0;
  wire r1__0_carry__0_i_3__5_n_0;
  wire r1__0_carry__0_i_4__5_n_0;
  wire r1__0_carry__0_i_5__5_n_0;
  wire r1__0_carry__0_n_3;
  wire r1__0_carry_i_1__5_n_0;
  wire r1__0_carry_i_2__5_n_0;
  wire r1__0_carry_i_3__5_n_0;
  wire r1__0_carry_i_4__5_n_0;
  wire r1__0_carry_i_5__5_n_0;
  wire r1__0_carry_n_0;
  wire r1__0_carry_n_1;
  wire r1__0_carry_n_2;
  wire r1__0_carry_n_3;
  wire r_chosen2;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_1__5_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_1__5_O_UNCONNECTED ;
  wire [0:0]\NLW_Q1_s1_reg[2]_i_1__5_O_UNCONNECTED ;
  wire [3:1]NLW_R_comb_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_R_comb_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_R_minus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_minus_q_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_R_plus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_plus_q_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_r1__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_r1__0_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_11 
       (.I0(P[21]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[23]),
        .O(product_0[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_12 
       (.I0(P[20]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[22]),
        .O(product_0[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_13 
       (.I0(P[19]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[21]),
        .O(product_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_3__5 
       (.I0(d1[11]),
        .O(\Q1_s1[10]_i_3__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_4__5 
       (.I0(d1[10]),
        .O(\Q1_s1[10]_i_4__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_5__5 
       (.I0(d1[9]),
        .O(\Q1_s1[10]_i_5__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_6__5 
       (.I0(d1[8]),
        .O(\Q1_s1[10]_i_6__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[11]_i_2__5 
       (.I0(d1[12]),
        .O(\Q1_s1[11]_i_2__5_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_11 
       (.I0(P[14]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[16]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_12 
       (.I0(P[13]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[15]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_13 
       (.I0(P[12]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[14]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_14 
       (.I0(P[11]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[13]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_3__5 
       (.I0(d1[3]),
        .I1(d1[9]),
        .O(\Q1_s1[2]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_4__5 
       (.I0(d1[2]),
        .I1(d1[8]),
        .O(\Q1_s1[2]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_5__5 
       (.I0(d1[1]),
        .I1(d1[7]),
        .O(\Q1_s1[2]_i_5__5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_6__5 
       (.I0(d1[0]),
        .I1(d1[6]),
        .O(\Q1_s1[2]_i_6__5_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_11 
       (.I0(P[18]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[20]),
        .O(product[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_12 
       (.I0(P[17]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[19]),
        .O(product[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_13 
       (.I0(P[16]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[18]),
        .O(product[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_14 
       (.I0(P[15]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[17]),
        .O(product[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[6]_i_3__5 
       (.I0(d1[7]),
        .O(\Q1_s1[6]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_4__5 
       (.I0(d1[6]),
        .I1(d1[12]),
        .O(\Q1_s1[6]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_5__5 
       (.I0(d1[5]),
        .I1(d1[11]),
        .O(\Q1_s1[6]_i_5__5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_6__5 
       (.I0(d1[4]),
        .I1(d1[10]),
        .O(\Q1_s1[6]_i_6__5_n_0 ));
  FDCE \Q1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[0]),
        .Q(\Q1_s1_reg_n_0_[0] ));
  FDCE \Q1_s1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[10]),
        .Q(\Q1_s1_reg_n_0_[10] ));
  CARRY4 \Q1_s1_reg[10]_i_1__5 
       (.CI(\Q1_s1_reg[6]_i_1__5_n_0 ),
        .CO({\Q1_s1_reg[10]_i_1__5_n_0 ,\Q1_s1_reg[10]_i_1__5_n_1 ,\Q1_s1_reg[10]_i_1__5_n_2 ,\Q1_s1_reg[10]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI(d1[11:8]),
        .O(Q1_comb[10:7]),
        .S({\Q1_s1[10]_i_3__5_n_0 ,\Q1_s1[10]_i_4__5_n_0 ,\Q1_s1[10]_i_5__5_n_0 ,\Q1_s1[10]_i_6__5_n_0 }));
  FDCE \Q1_s1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[11]),
        .Q(\Q1_s1_reg_n_0_[11] ));
  CARRY4 \Q1_s1_reg[11]_i_1__5 
       (.CI(\Q1_s1_reg[10]_i_1__5_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_1__5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_1__5_O_UNCONNECTED [3:1],Q1_comb[11]}),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_2__5_n_0 }));
  FDCE \Q1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[1]),
        .Q(\Q1_s1_reg_n_0_[1] ));
  FDCE \Q1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[2]),
        .Q(\Q1_s1_reg_n_0_[2] ));
  CARRY4 \Q1_s1_reg[2]_i_1__5 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_1__5_n_0 ,\Q1_s1_reg[2]_i_1__5_n_1 ,\Q1_s1_reg[2]_i_1__5_n_2 ,\Q1_s1_reg[2]_i_1__5_n_3 }),
        .CYINIT(1'b1),
        .DI(d1[3:0]),
        .O({Q1_comb[2:0],\NLW_Q1_s1_reg[2]_i_1__5_O_UNCONNECTED [0]}),
        .S({\Q1_s1[2]_i_3__5_n_0 ,\Q1_s1[2]_i_4__5_n_0 ,\Q1_s1[2]_i_5__5_n_0 ,\Q1_s1[2]_i_6__5_n_0 }));
  FDCE \Q1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[3]),
        .Q(\Q1_s1_reg_n_0_[3] ));
  FDCE \Q1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[4]),
        .Q(\Q1_s1_reg_n_0_[4] ));
  FDCE \Q1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[5]),
        .Q(\Q1_s1_reg_n_0_[5] ));
  FDCE \Q1_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[6]),
        .Q(\Q1_s1_reg_n_0_[6] ));
  CARRY4 \Q1_s1_reg[6]_i_1__5 
       (.CI(\Q1_s1_reg[2]_i_1__5_n_0 ),
        .CO({\Q1_s1_reg[6]_i_1__5_n_0 ,\Q1_s1_reg[6]_i_1__5_n_1 ,\Q1_s1_reg[6]_i_1__5_n_2 ,\Q1_s1_reg[6]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI(d1[7:4]),
        .O(Q1_comb[6:3]),
        .S({\Q1_s1[6]_i_3__5_n_0 ,\Q1_s1[6]_i_4__5_n_0 ,\Q1_s1[6]_i_5__5_n_0 ,\Q1_s1[6]_i_6__5_n_0 }));
  FDCE \Q1_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[7]),
        .Q(\Q1_s1_reg_n_0_[7] ));
  FDCE \Q1_s1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[8]),
        .Q(\Q1_s1_reg_n_0_[8] ));
  FDCE \Q1_s1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(Q1_comb[9]),
        .Q(\Q1_s1_reg_n_0_[9] ));
  CARRY4 R_comb_carry
       (.CI(1'b0),
        .CO({R_comb_carry_n_0,R_comb_carry_n_1,R_comb_carry_n_2,R_comb_carry_n_3}),
        .CYINIT(1'b1),
        .DI(c0_s1[3:0]),
        .O(R_comb[3:0]),
        .S({R_comb_carry_i_1__5_n_0,R_comb_carry_i_2__5_n_0,R_comb_carry_i_3__5_n_0,R_comb_carry_i_4__5_n_0}));
  CARRY4 R_comb_carry__0
       (.CI(R_comb_carry_n_0),
        .CO({R_comb_carry__0_n_0,R_comb_carry__0_n_1,R_comb_carry__0_n_2,R_comb_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(c0_s1[7:4]),
        .O(R_comb[7:4]),
        .S({R_comb_carry__0_i_1__5_n_0,R_comb_carry__0_i_2__5_n_0,R_comb_carry__0_i_3__5_n_0,R_comb_carry__0_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_1__5
       (.I0(c0_s1[7]),
        .I1(\Q1_s1_reg_n_0_[7] ),
        .O(R_comb_carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_2__5
       (.I0(c0_s1[6]),
        .I1(\Q1_s1_reg_n_0_[6] ),
        .O(R_comb_carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_3__5
       (.I0(c0_s1[5]),
        .I1(\Q1_s1_reg_n_0_[5] ),
        .O(R_comb_carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_4__5
       (.I0(c0_s1[4]),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .O(R_comb_carry__0_i_4__5_n_0));
  CARRY4 R_comb_carry__1
       (.CI(R_comb_carry__0_n_0),
        .CO({R_comb_carry__1_n_0,R_comb_carry__1_n_1,R_comb_carry__1_n_2,R_comb_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(r1[3:0]),
        .O(R_comb[11:8]),
        .S({R_comb_carry__1_i_1__5_n_0,R_comb_carry__1_i_2__5_n_0,R_comb_carry__1_i_3__5_n_0,R_comb_carry__1_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_1__5
       (.I0(r1[3]),
        .I1(\Q1_s1_reg_n_0_[11] ),
        .O(R_comb_carry__1_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_2__5
       (.I0(r1[2]),
        .I1(\Q1_s1_reg_n_0_[10] ),
        .O(R_comb_carry__1_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_3__5
       (.I0(r1[1]),
        .I1(\Q1_s1_reg_n_0_[9] ),
        .O(R_comb_carry__1_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_4__5
       (.I0(r1[0]),
        .I1(\Q1_s1_reg_n_0_[8] ),
        .O(R_comb_carry__1_i_4__5_n_0));
  CARRY4 R_comb_carry__2
       (.CI(R_comb_carry__1_n_0),
        .CO({NLW_R_comb_carry__2_CO_UNCONNECTED[3:1],R_comb_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1[4]}),
        .O({NLW_R_comb_carry__2_O_UNCONNECTED[3:2],R_comb[13:12]}),
        .S({1'b0,1'b0,R_comb_carry__2_i_1__5_n_0,R_comb_carry__2_i_2__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_1__5
       (.I0(r1[5]),
        .O(R_comb_carry__2_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_2__5
       (.I0(r1[4]),
        .O(R_comb_carry__2_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_1__5
       (.I0(c0_s1[3]),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .O(R_comb_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_2__5
       (.I0(c0_s1[2]),
        .I1(\Q1_s1_reg_n_0_[2] ),
        .O(R_comb_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_3__5
       (.I0(c0_s1[1]),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(R_comb_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_4__5
       (.I0(c0_s1[0]),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(R_comb_carry_i_4__5_n_0));
  CARRY4 R_minus_q_carry
       (.CI(1'b0),
        .CO({R_minus_q_carry_n_0,R_minus_q_carry_n_1,R_minus_q_carry_n_2,R_minus_q_carry_n_3}),
        .CYINIT(R_s2[0]),
        .DI(R_s2[4:1]),
        .O(R_minus_q[4:1]),
        .S({R_minus_q_carry_i_1__5_n_0,R_minus_q_carry_i_2__5_n_0,R_minus_q_carry_i_3__5_n_0,R_minus_q_carry_i_4__5_n_0}));
  CARRY4 R_minus_q_carry__0
       (.CI(R_minus_q_carry_n_0),
        .CO({R_minus_q_carry__0_n_0,R_minus_q_carry__0_n_1,R_minus_q_carry__0_n_2,R_minus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,R_s2[7:5]}),
        .O(R_minus_q[8:5]),
        .S({R_s2[8],R_minus_q_carry__0_i_1__5_n_0,R_minus_q_carry__0_i_2__5_n_0,R_minus_q_carry__0_i_3__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_1__5
       (.I0(R_s2[7]),
        .O(R_minus_q_carry__0_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_2__5
       (.I0(R_s2[6]),
        .O(R_minus_q_carry__0_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_3__5
       (.I0(R_s2[5]),
        .O(R_minus_q_carry__0_i_3__5_n_0));
  CARRY4 R_minus_q_carry__1
       (.CI(R_minus_q_carry__0_n_0),
        .CO({NLW_R_minus_q_carry__1_CO_UNCONNECTED[3:2],R_minus_q_carry__1_n_2,R_minus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,R_s2[9]}),
        .O({NLW_R_minus_q_carry__1_O_UNCONNECTED[3],R_minus_q[11:9]}),
        .S({1'b0,R_s2[11:10],R_minus_q_carry__1_i_1__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__1_i_1__5
       (.I0(R_s2[9]),
        .O(R_minus_q_carry__1_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_1__5
       (.I0(R_s2[4]),
        .O(R_minus_q_carry_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_2__5
       (.I0(R_s2[3]),
        .O(R_minus_q_carry_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_3__5
       (.I0(R_s2[2]),
        .O(R_minus_q_carry_i_3__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_4__5
       (.I0(R_s2[1]),
        .O(R_minus_q_carry_i_4__5_n_0));
  CARRY4 R_plus_q_carry
       (.CI(1'b0),
        .CO({R_plus_q_carry_n_0,R_plus_q_carry_n_1,R_plus_q_carry_n_2,R_plus_q_carry_n_3}),
        .CYINIT(R_s2[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_3_in[4:1]),
        .S(R_s2[4:1]));
  CARRY4 R_plus_q_carry__0
       (.CI(R_plus_q_carry_n_0),
        .CO({R_plus_q_carry__0_n_0,R_plus_q_carry__0_n_1,R_plus_q_carry__0_n_2,R_plus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({R_s2[8],1'b0,1'b0,1'b0}),
        .O(p_3_in[8:5]),
        .S({R_plus_q_carry__0_i_1__5_n_0,R_s2[7:5]}));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__0_i_1__5
       (.I0(R_s2[8]),
        .O(R_plus_q_carry__0_i_1__5_n_0));
  CARRY4 R_plus_q_carry__1
       (.CI(R_plus_q_carry__0_n_0),
        .CO({NLW_R_plus_q_carry__1_CO_UNCONNECTED[3:2],R_plus_q_carry__1_n_2,R_plus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,R_s2[10],1'b0}),
        .O({NLW_R_plus_q_carry__1_O_UNCONNECTED[3],p_3_in[11:9]}),
        .S({1'b0,R_plus_q_carry__1_i_1__5_n_0,R_plus_q_carry__1_i_2__5_n_0,R_s2[9]}));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_1__5
       (.I0(R_s2[11]),
        .O(R_plus_q_carry__1_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_2__5
       (.I0(R_s2[10]),
        .O(R_plus_q_carry__1_i_2__5_n_0));
  FDCE \R_s2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[0]),
        .Q(R_s2[0]));
  FDCE \R_s2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[10]),
        .Q(R_s2[10]));
  FDCE \R_s2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[11]),
        .Q(R_s2[11]));
  FDCE \R_s2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[12]),
        .Q(R_s2[12]));
  FDCE \R_s2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[13]),
        .Q(R_s2[13]));
  FDCE \R_s2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[1]),
        .Q(R_s2[1]));
  FDCE \R_s2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[2]),
        .Q(R_s2[2]));
  FDCE \R_s2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[3]),
        .Q(R_s2[3]));
  FDCE \R_s2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[4]),
        .Q(R_s2[4]));
  FDCE \R_s2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[5]),
        .Q(R_s2[5]));
  FDCE \R_s2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[6]),
        .Q(R_s2[6]));
  FDCE \R_s2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[7]),
        .Q(R_s2[7]));
  FDCE \R_s2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[8]),
        .Q(R_s2[8]));
  FDCE \R_s2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb[9]),
        .Q(R_s2[9]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hF0F011EE)) 
    \b2_reg_r[0]_i_1__0 
       (.I0(R_s2[13]),
        .I1(r_chosen2),
        .I2(bu_data_a_r[0]),
        .I3(R_s2[0]),
        .I4(\b2_reg_r_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[10]_i_1__0 
       (.I0(\b2_reg_r[10]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[10]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[10]_i_2__0 
       (.I0(bu_data_a_r[10]),
        .I1(p_3_in[10]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[10]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[11]_i_1__0 
       (.I0(\b2_reg_r[11]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[11]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[11]_i_2__0 
       (.I0(bu_data_a_r[11]),
        .I1(p_3_in[11]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \b2_reg_r[11]_i_3__0 
       (.I0(r_chosen2),
        .I1(R_s2[13]),
        .I2(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[11]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \b2_reg_r[11]_i_4__0 
       (.I0(R_s2[13]),
        .I1(r_chosen2),
        .I2(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[11]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[1]_i_1__0 
       (.I0(\b2_reg_r[1]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[1]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[1]_i_2__0 
       (.I0(bu_data_a_r[1]),
        .I1(p_3_in[1]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[2]_i_1__0 
       (.I0(\b2_reg_r[2]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[2]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[2]_i_2__0 
       (.I0(bu_data_a_r[2]),
        .I1(p_3_in[2]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[3]_i_1__0 
       (.I0(\b2_reg_r[3]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[3]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[3]_i_2__0 
       (.I0(bu_data_a_r[3]),
        .I1(p_3_in[3]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[4]_i_1__0 
       (.I0(\b2_reg_r[4]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[4]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[4]_i_2__0 
       (.I0(bu_data_a_r[4]),
        .I1(p_3_in[4]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[5]_i_1__0 
       (.I0(\b2_reg_r[5]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[5]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[5]_i_2__0 
       (.I0(bu_data_a_r[5]),
        .I1(p_3_in[5]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[6]_i_1__0 
       (.I0(\b2_reg_r[6]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[6]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[6]_i_2__0 
       (.I0(bu_data_a_r[6]),
        .I1(p_3_in[6]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[7]_i_1__0 
       (.I0(\b2_reg_r[7]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[7]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[7]_i_2__0 
       (.I0(bu_data_a_r[7]),
        .I1(p_3_in[7]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[7]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[8]_i_1__0 
       (.I0(\b2_reg_r[8]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[8]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[8]_i_2__0 
       (.I0(bu_data_a_r[8]),
        .I1(p_3_in[8]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[8]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[9]_i_1__0 
       (.I0(\b2_reg_r[9]_i_2__0_n_0 ),
        .I1(\b2_reg_r[11]_i_3__0_n_0 ),
        .I2(R_s2[9]),
        .I3(\b2_reg_r[11]_i_4__0_n_0 ),
        .I4(R_minus_q[9]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[9]_i_2__0 
       (.I0(bu_data_a_r[9]),
        .I1(p_3_in[9]),
        .I2(R_s2[13]),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[0]_i_1__5 
       (.I0(P[0]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[1]_i_1__5 
       (.I0(P[1]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[2]_i_1__5 
       (.I0(P[2]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[3]_i_1__5 
       (.I0(P[3]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[3]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[4]_i_1__5 
       (.I0(P[4]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[4]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[5]_i_1__5 
       (.I0(P[5]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[5]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[6]_i_1__5 
       (.I0(P[6]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[6]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[7]_i_1__5 
       (.I0(P[7]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[7]_i_1__5_n_0 ));
  FDCE \c0_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[0]_i_1__5_n_0 ),
        .Q(c0_s1[0]));
  FDCE \c0_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[1]_i_1__5_n_0 ),
        .Q(c0_s1[1]));
  FDCE \c0_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[2]_i_1__5_n_0 ),
        .Q(c0_s1[2]));
  FDCE \c0_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[3]_i_1__5_n_0 ),
        .Q(c0_s1[3]));
  FDCE \c0_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[4]_i_1__5_n_0 ),
        .Q(c0_s1[4]));
  FDCE \c0_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[5]_i_1__5_n_0 ),
        .Q(c0_s1[5]));
  FDCE \c0_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[6]_i_1__5_n_0 ),
        .Q(c0_s1[6]));
  FDCE \c0_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[7]_i_1__5_n_0 ),
        .Q(c0_s1[7]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[0]_i_1__5 
       (.I0(P[8]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c1_s1[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[1]_i_1__5 
       (.I0(P[9]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c1_s1[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[2]_i_1__5 
       (.I0(P[10]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c1_s1[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[3]_i_1__5 
       (.I0(P[11]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[4]_i_1__5 
       (.I0(P[12]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[5]_i_1__5 
       (.I0(P[13]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(p_1_in[2]));
  FDCE \c1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[0]_i_1__5_n_0 ),
        .Q(c1_s1[0]));
  FDCE \c1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[1]_i_1__5_n_0 ),
        .Q(c1_s1[1]));
  FDCE \c1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[2]_i_1__5_n_0 ),
        .Q(c1_s1[2]));
  FDCE \c1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(p_1_in[0]),
        .Q(c1_s1[3]));
  FDCE \c1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(p_1_in[1]),
        .Q(c1_s1[4]));
  FDCE \c1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(p_1_in[2]),
        .Q(c1_s1[5]));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_101
       (.I0(p_3_in[11]),
        .I1(R_s2[13]),
        .I2(mem_reg_1),
        .I3(mem_reg_2[3]),
        .O(mem_reg_i_101_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    mem_reg_i_102
       (.I0(R_s2[13]),
        .I1(r_chosen2),
        .I2(mem_reg_1),
        .O(mem_reg_i_102_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    mem_reg_i_103
       (.I0(mem_reg_1),
        .I1(r_chosen2),
        .I2(R_s2[13]),
        .O(mem_reg_i_103_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_104
       (.I0(p_3_in[10]),
        .I1(R_s2[13]),
        .I2(mem_reg_1),
        .I3(mem_reg_2[2]),
        .O(mem_reg_i_104_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_105
       (.I0(p_3_in[9]),
        .I1(R_s2[13]),
        .I2(mem_reg_1),
        .I3(mem_reg_2[1]),
        .O(mem_reg_i_105_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_106
       (.I0(p_3_in[8]),
        .I1(R_s2[13]),
        .I2(mem_reg_1),
        .I3(mem_reg_2[0]),
        .O(mem_reg_i_106_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_107
       (.I0(p_3_in[7]),
        .I1(R_s2[13]),
        .I2(mem_reg_1),
        .I3(mem_reg_3[3]),
        .O(mem_reg_i_107_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_108
       (.I0(p_3_in[6]),
        .I1(R_s2[13]),
        .I2(mem_reg_0),
        .I3(mem_reg_3[2]),
        .O(mem_reg_i_108_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_109
       (.I0(p_3_in[5]),
        .I1(R_s2[13]),
        .I2(mem_reg_0),
        .I3(mem_reg_3[1]),
        .O(mem_reg_i_109_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_110
       (.I0(p_3_in[4]),
        .I1(R_s2[13]),
        .I2(mem_reg_0),
        .I3(mem_reg_3[0]),
        .O(mem_reg_i_110_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_111
       (.I0(p_3_in[3]),
        .I1(R_s2[13]),
        .I2(mem_reg_0),
        .I3(O[3]),
        .O(mem_reg_i_111_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_112
       (.I0(p_3_in[2]),
        .I1(R_s2[13]),
        .I2(mem_reg_0),
        .I3(O[2]),
        .O(mem_reg_i_112_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_113
       (.I0(p_3_in[1]),
        .I1(R_s2[13]),
        .I2(mem_reg_0),
        .I3(O[1]),
        .O(mem_reg_i_113_n_0));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    mem_reg_i_114
       (.I0(mem_reg_i_132_n_0),
        .I1(R_s2[9]),
        .I2(R_s2[10]),
        .I3(R_s2[11]),
        .I4(R_s2[12]),
        .O(r_chosen2));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    mem_reg_i_132
       (.I0(mem_reg_i_134_n_0),
        .I1(R_s2[0]),
        .I2(R_s2[7]),
        .I3(R_s2[6]),
        .I4(R_s2[5]),
        .I5(R_s2[8]),
        .O(mem_reg_i_132_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_reg_i_134
       (.I0(R_s2[4]),
        .I1(R_s2[3]),
        .I2(R_s2[2]),
        .I3(R_s2[1]),
        .O(mem_reg_i_134_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_41
       (.I0(B_web),
        .I1(mem_reg_i_101_n_0),
        .I2(R_minus_q[11]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[11]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [11]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_41__0
       (.I0(A_web),
        .I1(mem_reg_i_101_n_0),
        .I2(R_minus_q[11]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[11]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [11]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_41__1
       (.I0(mem_reg),
        .I1(mem_reg_i_101_n_0),
        .I2(R_minus_q[11]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[11]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[11]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_42
       (.I0(B_web),
        .I1(mem_reg_i_104_n_0),
        .I2(R_minus_q[10]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[10]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [10]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_42__0
       (.I0(A_web),
        .I1(mem_reg_i_104_n_0),
        .I2(R_minus_q[10]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[10]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [10]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_42__1
       (.I0(mem_reg),
        .I1(mem_reg_i_104_n_0),
        .I2(R_minus_q[10]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[10]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[10]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_43
       (.I0(B_web),
        .I1(mem_reg_i_105_n_0),
        .I2(R_minus_q[9]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[9]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [9]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_43__0
       (.I0(A_web),
        .I1(mem_reg_i_105_n_0),
        .I2(R_minus_q[9]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[9]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [9]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_43__1
       (.I0(mem_reg),
        .I1(mem_reg_i_105_n_0),
        .I2(R_minus_q[9]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[9]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[9]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_44
       (.I0(B_web),
        .I1(mem_reg_i_106_n_0),
        .I2(R_minus_q[8]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[8]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [8]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_44__0
       (.I0(A_web),
        .I1(mem_reg_i_106_n_0),
        .I2(R_minus_q[8]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[8]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [8]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_44__1
       (.I0(mem_reg),
        .I1(mem_reg_i_106_n_0),
        .I2(R_minus_q[8]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[8]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[8]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_45
       (.I0(B_web),
        .I1(mem_reg_i_107_n_0),
        .I2(R_minus_q[7]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[7]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [7]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_45__0
       (.I0(A_web),
        .I1(mem_reg_i_107_n_0),
        .I2(R_minus_q[7]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[7]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [7]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_45__1
       (.I0(mem_reg),
        .I1(mem_reg_i_107_n_0),
        .I2(R_minus_q[7]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[7]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[7]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_46
       (.I0(B_web),
        .I1(mem_reg_i_108_n_0),
        .I2(R_minus_q[6]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[6]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [6]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_46__0
       (.I0(A_web),
        .I1(mem_reg_i_108_n_0),
        .I2(R_minus_q[6]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[6]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [6]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_46__1
       (.I0(mem_reg),
        .I1(mem_reg_i_108_n_0),
        .I2(R_minus_q[6]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[6]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[6]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_47
       (.I0(B_web),
        .I1(mem_reg_i_109_n_0),
        .I2(R_minus_q[5]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[5]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [5]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_47__0
       (.I0(A_web),
        .I1(mem_reg_i_109_n_0),
        .I2(R_minus_q[5]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[5]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [5]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_47__1
       (.I0(mem_reg),
        .I1(mem_reg_i_109_n_0),
        .I2(R_minus_q[5]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[5]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[5]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_48
       (.I0(B_web),
        .I1(mem_reg_i_110_n_0),
        .I2(R_minus_q[4]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[4]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [4]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_48__0
       (.I0(A_web),
        .I1(mem_reg_i_110_n_0),
        .I2(R_minus_q[4]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[4]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [4]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_48__1
       (.I0(mem_reg),
        .I1(mem_reg_i_110_n_0),
        .I2(R_minus_q[4]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[4]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[4]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_49
       (.I0(B_web),
        .I1(mem_reg_i_111_n_0),
        .I2(R_minus_q[3]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[3]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [3]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_49__0
       (.I0(A_web),
        .I1(mem_reg_i_111_n_0),
        .I2(R_minus_q[3]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[3]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_49__1
       (.I0(mem_reg),
        .I1(mem_reg_i_111_n_0),
        .I2(R_minus_q[3]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[3]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[3]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_50
       (.I0(B_web),
        .I1(mem_reg_i_112_n_0),
        .I2(R_minus_q[2]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[2]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [2]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_50__0
       (.I0(A_web),
        .I1(mem_reg_i_112_n_0),
        .I2(R_minus_q[2]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[2]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [2]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_50__1
       (.I0(mem_reg),
        .I1(mem_reg_i_112_n_0),
        .I2(R_minus_q[2]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[2]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[2]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_51
       (.I0(B_web),
        .I1(mem_reg_i_113_n_0),
        .I2(R_minus_q[1]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[1]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_1 [1]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_51__0
       (.I0(A_web),
        .I1(mem_reg_i_113_n_0),
        .I2(R_minus_q[1]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[1]),
        .I5(mem_reg_i_103_n_0),
        .O(\R_s2_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_51__1
       (.I0(mem_reg),
        .I1(mem_reg_i_113_n_0),
        .I2(R_minus_q[1]),
        .I3(mem_reg_i_102_n_0),
        .I4(R_s2[1]),
        .I5(mem_reg_i_103_n_0),
        .O(DIBDI[1]));
  LUT6 #(
    .INIT(64'h10F0E0F01000E000)) 
    mem_reg_i_52
       (.I0(R_s2[13]),
        .I1(r_chosen2),
        .I2(mem_reg),
        .I3(mem_reg_0),
        .I4(R_s2[0]),
        .I5(O[0]),
        .O(DIBDI[0]));
  LUT6 #(
    .INIT(64'h10F0E0F01000E000)) 
    mem_reg_i_52__0
       (.I0(R_s2[13]),
        .I1(r_chosen2),
        .I2(A_web),
        .I3(mem_reg_0),
        .I4(R_s2[0]),
        .I5(O[0]),
        .O(\R_s2_reg[11]_0 [0]));
  LUT6 #(
    .INIT(64'h10F0E0F01000E000)) 
    mem_reg_i_52__1
       (.I0(R_s2[13]),
        .I1(r_chosen2),
        .I2(B_web),
        .I3(mem_reg_0),
        .I4(R_s2[0]),
        .I5(O[0]),
        .O(\R_s2_reg[11]_1 [0]));
  CARRY4 r1__0_carry
       (.CI(1'b0),
        .CO({r1__0_carry_n_0,r1__0_carry_n_1,r1__0_carry_n_2,r1__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({r1__0_carry_i_1__5_n_0,c1_s1[2:0]}),
        .O(r1[3:0]),
        .S({r1__0_carry_i_2__5_n_0,r1__0_carry_i_3__5_n_0,r1__0_carry_i_4__5_n_0,r1__0_carry_i_5__5_n_0}));
  CARRY4 r1__0_carry__0
       (.CI(r1__0_carry_n_0),
        .CO({NLW_r1__0_carry__0_CO_UNCONNECTED[3:1],r1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_i_1__5_n_0}),
        .O({NLW_r1__0_carry__0_O_UNCONNECTED[3:2],r1[5:4]}),
        .S({1'b0,1'b0,r1__0_carry__0_i_2__5_n_0,r1__0_carry__0_i_3__5_n_0}));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'hD44D)) 
    r1__0_carry__0_i_1__5
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(c1_s1[3]),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry__0_i_1__5_n_0));
  LUT5 #(
    .INIT(32'h088FF770)) 
    r1__0_carry__0_i_2__5
       (.I0(\Q1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .I2(r1__0_carry__0_i_4__5_n_0),
        .I3(c1_s1[4]),
        .I4(r1__0_carry__0_i_5__5_n_0),
        .O(r1__0_carry__0_i_2__5_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    r1__0_carry__0_i_3__5
       (.I0(r1__0_carry__0_i_1__5_n_0),
        .I1(r1__0_carry__0_i_4__5_n_0),
        .I2(c1_s1[4]),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[3] ),
        .O(r1__0_carry__0_i_3__5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry__0_i_4__5
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry__0_i_4__5_n_0));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    r1__0_carry__0_i_5__5
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(c1_s1[5]),
        .I3(\Q1_s1_reg_n_0_[3] ),
        .I4(\Q1_s1_reg_n_0_[5] ),
        .I5(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry__0_i_5__5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r1__0_carry_i_1__5
       (.I0(\Q1_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .I3(c1_s1[3]),
        .O(r1__0_carry_i_1__5_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h69699669)) 
    r1__0_carry_i_2__5
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(c1_s1[3]),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_2__5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry_i_3__5
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(c1_s1[2]),
        .O(r1__0_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_4__5
       (.I0(c1_s1[1]),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_5__5
       (.I0(c1_s1[0]),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry_i_5__5_n_0));
endmodule

(* ORIG_REF_NAME = "barrett_reduction" *) 
module design_1_polymul_axi_top_0_0_barrett_reduction_18
   (D,
    DIBDI,
    \R_s2_reg[11]_0 ,
    \R_s2_reg[11]_1 ,
    S,
    product,
    product_0,
    O,
    \Q1_s1_reg[6]_0 ,
    \Q1_s1_reg[10]_0 ,
    \Q1_s1_reg[11]_0 ,
    P,
    \c1_s1_reg[5]_0 ,
    bu_data_a_r,
    \b2_reg_r_reg[0] ,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    A_web,
    B_web,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    clk,
    \c1_s1_reg[0]_0 );
  output [11:0]D;
  output [11:0]DIBDI;
  output [11:0]\R_s2_reg[11]_0 ;
  output [11:0]\R_s2_reg[11]_1 ;
  output [3:0]S;
  output [3:0]product;
  output [2:0]product_0;
  input [3:0]O;
  input [3:0]\Q1_s1_reg[6]_0 ;
  input [3:0]\Q1_s1_reg[10]_0 ;
  input [0:0]\Q1_s1_reg[11]_0 ;
  input [23:0]P;
  input \c1_s1_reg[5]_0 ;
  input [11:0]bu_data_a_r;
  input \b2_reg_r_reg[0] ;
  input mem_reg;
  input mem_reg_0;
  input [3:0]mem_reg_1;
  input A_web;
  input B_web;
  input mem_reg_2;
  input [3:0]mem_reg_3;
  input [3:0]mem_reg_4;
  input clk;
  input \c1_s1_reg[0]_0 ;

  wire A_web;
  wire B_web;
  wire [11:0]D;
  wire [11:0]DIBDI;
  wire [3:0]O;
  wire [23:0]P;
  wire \Q1_s1[10]_i_3__4_n_0 ;
  wire \Q1_s1[10]_i_4__4_n_0 ;
  wire \Q1_s1[10]_i_5__4_n_0 ;
  wire \Q1_s1[10]_i_6__4_n_0 ;
  wire \Q1_s1[11]_i_2__4_n_0 ;
  wire \Q1_s1[2]_i_3__4_n_0 ;
  wire \Q1_s1[2]_i_4__4_n_0 ;
  wire \Q1_s1[2]_i_5__4_n_0 ;
  wire \Q1_s1[2]_i_6__4_n_0 ;
  wire \Q1_s1[6]_i_3__4_n_0 ;
  wire \Q1_s1[6]_i_4__4_n_0 ;
  wire \Q1_s1[6]_i_5__4_n_0 ;
  wire \Q1_s1[6]_i_6__4_n_0 ;
  wire [3:0]\Q1_s1_reg[10]_0 ;
  wire \Q1_s1_reg[10]_i_1__4_n_0 ;
  wire \Q1_s1_reg[10]_i_1__4_n_1 ;
  wire \Q1_s1_reg[10]_i_1__4_n_2 ;
  wire \Q1_s1_reg[10]_i_1__4_n_3 ;
  wire \Q1_s1_reg[10]_i_1__4_n_4 ;
  wire \Q1_s1_reg[10]_i_1__4_n_5 ;
  wire \Q1_s1_reg[10]_i_1__4_n_6 ;
  wire \Q1_s1_reg[10]_i_1__4_n_7 ;
  wire [0:0]\Q1_s1_reg[11]_0 ;
  wire \Q1_s1_reg[11]_i_1__4_n_7 ;
  wire \Q1_s1_reg[2]_i_1__4_n_0 ;
  wire \Q1_s1_reg[2]_i_1__4_n_1 ;
  wire \Q1_s1_reg[2]_i_1__4_n_2 ;
  wire \Q1_s1_reg[2]_i_1__4_n_3 ;
  wire \Q1_s1_reg[2]_i_1__4_n_4 ;
  wire \Q1_s1_reg[2]_i_1__4_n_5 ;
  wire \Q1_s1_reg[2]_i_1__4_n_6 ;
  wire [3:0]\Q1_s1_reg[6]_0 ;
  wire \Q1_s1_reg[6]_i_1__4_n_0 ;
  wire \Q1_s1_reg[6]_i_1__4_n_1 ;
  wire \Q1_s1_reg[6]_i_1__4_n_2 ;
  wire \Q1_s1_reg[6]_i_1__4_n_3 ;
  wire \Q1_s1_reg[6]_i_1__4_n_4 ;
  wire \Q1_s1_reg[6]_i_1__4_n_5 ;
  wire \Q1_s1_reg[6]_i_1__4_n_6 ;
  wire \Q1_s1_reg[6]_i_1__4_n_7 ;
  wire \Q1_s1_reg_n_0_[0] ;
  wire \Q1_s1_reg_n_0_[10] ;
  wire \Q1_s1_reg_n_0_[11] ;
  wire \Q1_s1_reg_n_0_[1] ;
  wire \Q1_s1_reg_n_0_[2] ;
  wire \Q1_s1_reg_n_0_[3] ;
  wire \Q1_s1_reg_n_0_[4] ;
  wire \Q1_s1_reg_n_0_[5] ;
  wire \Q1_s1_reg_n_0_[6] ;
  wire \Q1_s1_reg_n_0_[7] ;
  wire \Q1_s1_reg_n_0_[8] ;
  wire \Q1_s1_reg_n_0_[9] ;
  wire R_comb_carry__0_i_1__4_n_0;
  wire R_comb_carry__0_i_2__4_n_0;
  wire R_comb_carry__0_i_3__4_n_0;
  wire R_comb_carry__0_i_4__4_n_0;
  wire R_comb_carry__0_n_0;
  wire R_comb_carry__0_n_1;
  wire R_comb_carry__0_n_2;
  wire R_comb_carry__0_n_3;
  wire R_comb_carry__0_n_4;
  wire R_comb_carry__0_n_5;
  wire R_comb_carry__0_n_6;
  wire R_comb_carry__0_n_7;
  wire R_comb_carry__1_i_1__4_n_0;
  wire R_comb_carry__1_i_2__4_n_0;
  wire R_comb_carry__1_i_3__4_n_0;
  wire R_comb_carry__1_i_4__4_n_0;
  wire R_comb_carry__1_n_0;
  wire R_comb_carry__1_n_1;
  wire R_comb_carry__1_n_2;
  wire R_comb_carry__1_n_3;
  wire R_comb_carry__1_n_4;
  wire R_comb_carry__1_n_5;
  wire R_comb_carry__1_n_6;
  wire R_comb_carry__1_n_7;
  wire R_comb_carry__2_i_1__4_n_0;
  wire R_comb_carry__2_i_2__4_n_0;
  wire R_comb_carry__2_n_3;
  wire R_comb_carry__2_n_6;
  wire R_comb_carry__2_n_7;
  wire R_comb_carry_i_1__4_n_0;
  wire R_comb_carry_i_2__4_n_0;
  wire R_comb_carry_i_3__4_n_0;
  wire R_comb_carry_i_4__4_n_0;
  wire R_comb_carry_n_0;
  wire R_comb_carry_n_1;
  wire R_comb_carry_n_2;
  wire R_comb_carry_n_3;
  wire R_comb_carry_n_4;
  wire R_comb_carry_n_5;
  wire R_comb_carry_n_6;
  wire R_comb_carry_n_7;
  wire R_minus_q_carry__0_i_1__4_n_0;
  wire R_minus_q_carry__0_i_2__4_n_0;
  wire R_minus_q_carry__0_i_3__4_n_0;
  wire R_minus_q_carry__0_n_0;
  wire R_minus_q_carry__0_n_1;
  wire R_minus_q_carry__0_n_2;
  wire R_minus_q_carry__0_n_3;
  wire R_minus_q_carry__0_n_4;
  wire R_minus_q_carry__0_n_5;
  wire R_minus_q_carry__0_n_6;
  wire R_minus_q_carry__0_n_7;
  wire R_minus_q_carry__1_i_1__4_n_0;
  wire R_minus_q_carry__1_n_2;
  wire R_minus_q_carry__1_n_3;
  wire R_minus_q_carry__1_n_5;
  wire R_minus_q_carry__1_n_6;
  wire R_minus_q_carry__1_n_7;
  wire R_minus_q_carry_i_1__4_n_0;
  wire R_minus_q_carry_i_2__4_n_0;
  wire R_minus_q_carry_i_3__4_n_0;
  wire R_minus_q_carry_i_4__4_n_0;
  wire R_minus_q_carry_n_0;
  wire R_minus_q_carry_n_1;
  wire R_minus_q_carry_n_2;
  wire R_minus_q_carry_n_3;
  wire R_minus_q_carry_n_4;
  wire R_minus_q_carry_n_5;
  wire R_minus_q_carry_n_6;
  wire R_minus_q_carry_n_7;
  wire R_plus_q_carry__0_i_1__4_n_0;
  wire R_plus_q_carry__0_n_0;
  wire R_plus_q_carry__0_n_1;
  wire R_plus_q_carry__0_n_2;
  wire R_plus_q_carry__0_n_3;
  wire R_plus_q_carry__0_n_4;
  wire R_plus_q_carry__0_n_5;
  wire R_plus_q_carry__0_n_6;
  wire R_plus_q_carry__0_n_7;
  wire R_plus_q_carry__1_i_1__4_n_0;
  wire R_plus_q_carry__1_i_2__4_n_0;
  wire R_plus_q_carry__1_n_2;
  wire R_plus_q_carry__1_n_3;
  wire R_plus_q_carry__1_n_5;
  wire R_plus_q_carry__1_n_6;
  wire R_plus_q_carry__1_n_7;
  wire R_plus_q_carry_n_0;
  wire R_plus_q_carry_n_1;
  wire R_plus_q_carry_n_2;
  wire R_plus_q_carry_n_3;
  wire R_plus_q_carry_n_4;
  wire R_plus_q_carry_n_5;
  wire R_plus_q_carry_n_6;
  wire R_plus_q_carry_n_7;
  wire [11:0]\R_s2_reg[11]_0 ;
  wire [11:0]\R_s2_reg[11]_1 ;
  wire \R_s2_reg_n_0_[0] ;
  wire \R_s2_reg_n_0_[10] ;
  wire \R_s2_reg_n_0_[11] ;
  wire \R_s2_reg_n_0_[12] ;
  wire \R_s2_reg_n_0_[13] ;
  wire \R_s2_reg_n_0_[1] ;
  wire \R_s2_reg_n_0_[2] ;
  wire \R_s2_reg_n_0_[3] ;
  wire \R_s2_reg_n_0_[4] ;
  wire \R_s2_reg_n_0_[5] ;
  wire \R_s2_reg_n_0_[6] ;
  wire \R_s2_reg_n_0_[7] ;
  wire \R_s2_reg_n_0_[8] ;
  wire \R_s2_reg_n_0_[9] ;
  wire [3:0]S;
  wire \b2_reg_r[10]_i_2_n_0 ;
  wire \b2_reg_r[11]_i_2_n_0 ;
  wire \b2_reg_r[11]_i_3_n_0 ;
  wire \b2_reg_r[11]_i_4_n_0 ;
  wire \b2_reg_r[1]_i_2_n_0 ;
  wire \b2_reg_r[2]_i_2_n_0 ;
  wire \b2_reg_r[3]_i_2_n_0 ;
  wire \b2_reg_r[4]_i_2_n_0 ;
  wire \b2_reg_r[5]_i_2_n_0 ;
  wire \b2_reg_r[6]_i_2_n_0 ;
  wire \b2_reg_r[7]_i_2_n_0 ;
  wire \b2_reg_r[8]_i_2_n_0 ;
  wire \b2_reg_r[9]_i_2_n_0 ;
  wire \b2_reg_r_reg[0] ;
  wire [11:0]bu_data_a_r;
  wire \c0_s1[0]_i_1__4_n_0 ;
  wire \c0_s1[1]_i_1__4_n_0 ;
  wire \c0_s1[2]_i_1__4_n_0 ;
  wire \c0_s1[3]_i_1__4_n_0 ;
  wire \c0_s1[4]_i_1__4_n_0 ;
  wire \c0_s1[5]_i_1__4_n_0 ;
  wire \c0_s1[6]_i_1__4_n_0 ;
  wire \c0_s1[7]_i_1__4_n_0 ;
  wire \c0_s1_reg_n_0_[0] ;
  wire \c0_s1_reg_n_0_[1] ;
  wire \c0_s1_reg_n_0_[2] ;
  wire \c0_s1_reg_n_0_[3] ;
  wire \c0_s1_reg_n_0_[4] ;
  wire \c0_s1_reg_n_0_[5] ;
  wire \c0_s1_reg_n_0_[6] ;
  wire \c0_s1_reg_n_0_[7] ;
  wire \c1_s1[0]_i_1__4_n_0 ;
  wire \c1_s1[1]_i_1__4_n_0 ;
  wire \c1_s1[2]_i_1__4_n_0 ;
  wire \c1_s1[3]_i_1__4_n_0 ;
  wire \c1_s1[4]_i_1__4_n_0 ;
  wire \c1_s1[5]_i_1__4_n_0 ;
  wire \c1_s1_reg[0]_0 ;
  wire \c1_s1_reg[5]_0 ;
  wire \c1_s1_reg_n_0_[0] ;
  wire \c1_s1_reg_n_0_[1] ;
  wire \c1_s1_reg_n_0_[2] ;
  wire \c1_s1_reg_n_0_[3] ;
  wire \c1_s1_reg_n_0_[4] ;
  wire \c1_s1_reg_n_0_[5] ;
  wire clk;
  wire mem_reg;
  wire mem_reg_0;
  wire [3:0]mem_reg_1;
  wire mem_reg_2;
  wire [3:0]mem_reg_3;
  wire [3:0]mem_reg_4;
  wire mem_reg_i_115_n_0;
  wire mem_reg_i_116_n_0;
  wire mem_reg_i_117_n_0;
  wire mem_reg_i_118_n_0;
  wire mem_reg_i_119_n_0;
  wire mem_reg_i_120_n_0;
  wire mem_reg_i_121_n_0;
  wire mem_reg_i_122_n_0;
  wire mem_reg_i_123_n_0;
  wire mem_reg_i_124_n_0;
  wire mem_reg_i_125_n_0;
  wire mem_reg_i_126_n_0;
  wire mem_reg_i_127_n_0;
  wire mem_reg_i_128_n_0;
  wire mem_reg_i_133_n_0;
  wire mem_reg_i_135_n_0;
  wire [3:0]product;
  wire [2:0]product_0;
  wire r1__0_carry__0_i_1__4_n_0;
  wire r1__0_carry__0_i_2__4_n_0;
  wire r1__0_carry__0_i_3__4_n_0;
  wire r1__0_carry__0_i_4__4_n_0;
  wire r1__0_carry__0_i_5__4_n_0;
  wire r1__0_carry__0_n_3;
  wire r1__0_carry__0_n_6;
  wire r1__0_carry__0_n_7;
  wire r1__0_carry_i_1__4_n_0;
  wire r1__0_carry_i_2__4_n_0;
  wire r1__0_carry_i_3__4_n_0;
  wire r1__0_carry_i_4__4_n_0;
  wire r1__0_carry_i_5__4_n_0;
  wire r1__0_carry_n_0;
  wire r1__0_carry_n_1;
  wire r1__0_carry_n_2;
  wire r1__0_carry_n_3;
  wire r1__0_carry_n_4;
  wire r1__0_carry_n_5;
  wire r1__0_carry_n_6;
  wire r1__0_carry_n_7;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_1__4_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_1__4_O_UNCONNECTED ;
  wire [0:0]\NLW_Q1_s1_reg[2]_i_1__4_O_UNCONNECTED ;
  wire [3:1]NLW_R_comb_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_R_comb_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_R_minus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_minus_q_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_R_plus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_plus_q_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_r1__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_r1__0_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_11 
       (.I0(P[21]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[23]),
        .O(product_0[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_12 
       (.I0(P[20]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[22]),
        .O(product_0[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_13 
       (.I0(P[19]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[21]),
        .O(product_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_3__4 
       (.I0(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[10]_i_3__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_4__4 
       (.I0(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[10]_i_4__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_5__4 
       (.I0(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[10]_i_5__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_6__4 
       (.I0(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[10]_i_6__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[11]_i_2__4 
       (.I0(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[11]_i_2__4_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_11 
       (.I0(P[14]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[16]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_12 
       (.I0(P[13]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[15]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_13 
       (.I0(P[12]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[14]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_14 
       (.I0(P[11]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[13]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_3__4 
       (.I0(O[3]),
        .I1(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[2]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_4__4 
       (.I0(O[2]),
        .I1(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[2]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_5__4 
       (.I0(O[1]),
        .I1(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[2]_i_5__4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_6__4 
       (.I0(O[0]),
        .I1(\Q1_s1_reg[6]_0 [2]),
        .O(\Q1_s1[2]_i_6__4_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_11 
       (.I0(P[18]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[20]),
        .O(product[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_12 
       (.I0(P[17]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[19]),
        .O(product[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_13 
       (.I0(P[16]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[18]),
        .O(product[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_14 
       (.I0(P[15]),
        .I1(\c1_s1_reg[5]_0 ),
        .I2(P[17]),
        .O(product[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[6]_i_3__4 
       (.I0(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[6]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_4__4 
       (.I0(\Q1_s1_reg[6]_0 [2]),
        .I1(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[6]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_5__4 
       (.I0(\Q1_s1_reg[6]_0 [1]),
        .I1(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[6]_i_5__4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_6__4 
       (.I0(\Q1_s1_reg[6]_0 [0]),
        .I1(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[6]_i_6__4_n_0 ));
  FDCE \Q1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1__4_n_6 ),
        .Q(\Q1_s1_reg_n_0_[0] ));
  FDCE \Q1_s1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__4_n_4 ),
        .Q(\Q1_s1_reg_n_0_[10] ));
  CARRY4 \Q1_s1_reg[10]_i_1__4 
       (.CI(\Q1_s1_reg[6]_i_1__4_n_0 ),
        .CO({\Q1_s1_reg[10]_i_1__4_n_0 ,\Q1_s1_reg[10]_i_1__4_n_1 ,\Q1_s1_reg[10]_i_1__4_n_2 ,\Q1_s1_reg[10]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[10]_0 ),
        .O({\Q1_s1_reg[10]_i_1__4_n_4 ,\Q1_s1_reg[10]_i_1__4_n_5 ,\Q1_s1_reg[10]_i_1__4_n_6 ,\Q1_s1_reg[10]_i_1__4_n_7 }),
        .S({\Q1_s1[10]_i_3__4_n_0 ,\Q1_s1[10]_i_4__4_n_0 ,\Q1_s1[10]_i_5__4_n_0 ,\Q1_s1[10]_i_6__4_n_0 }));
  FDCE \Q1_s1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[11]_i_1__4_n_7 ),
        .Q(\Q1_s1_reg_n_0_[11] ));
  CARRY4 \Q1_s1_reg[11]_i_1__4 
       (.CI(\Q1_s1_reg[10]_i_1__4_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_1__4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_1__4_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_1__4_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_2__4_n_0 }));
  FDCE \Q1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1__4_n_5 ),
        .Q(\Q1_s1_reg_n_0_[1] ));
  FDCE \Q1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1__4_n_4 ),
        .Q(\Q1_s1_reg_n_0_[2] ));
  CARRY4 \Q1_s1_reg[2]_i_1__4 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_1__4_n_0 ,\Q1_s1_reg[2]_i_1__4_n_1 ,\Q1_s1_reg[2]_i_1__4_n_2 ,\Q1_s1_reg[2]_i_1__4_n_3 }),
        .CYINIT(1'b1),
        .DI(O),
        .O({\Q1_s1_reg[2]_i_1__4_n_4 ,\Q1_s1_reg[2]_i_1__4_n_5 ,\Q1_s1_reg[2]_i_1__4_n_6 ,\NLW_Q1_s1_reg[2]_i_1__4_O_UNCONNECTED [0]}),
        .S({\Q1_s1[2]_i_3__4_n_0 ,\Q1_s1[2]_i_4__4_n_0 ,\Q1_s1[2]_i_5__4_n_0 ,\Q1_s1[2]_i_6__4_n_0 }));
  FDCE \Q1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__4_n_7 ),
        .Q(\Q1_s1_reg_n_0_[3] ));
  FDCE \Q1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__4_n_6 ),
        .Q(\Q1_s1_reg_n_0_[4] ));
  FDCE \Q1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__4_n_5 ),
        .Q(\Q1_s1_reg_n_0_[5] ));
  FDCE \Q1_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__4_n_4 ),
        .Q(\Q1_s1_reg_n_0_[6] ));
  CARRY4 \Q1_s1_reg[6]_i_1__4 
       (.CI(\Q1_s1_reg[2]_i_1__4_n_0 ),
        .CO({\Q1_s1_reg[6]_i_1__4_n_0 ,\Q1_s1_reg[6]_i_1__4_n_1 ,\Q1_s1_reg[6]_i_1__4_n_2 ,\Q1_s1_reg[6]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[6]_0 ),
        .O({\Q1_s1_reg[6]_i_1__4_n_4 ,\Q1_s1_reg[6]_i_1__4_n_5 ,\Q1_s1_reg[6]_i_1__4_n_6 ,\Q1_s1_reg[6]_i_1__4_n_7 }),
        .S({\Q1_s1[6]_i_3__4_n_0 ,\Q1_s1[6]_i_4__4_n_0 ,\Q1_s1[6]_i_5__4_n_0 ,\Q1_s1[6]_i_6__4_n_0 }));
  FDCE \Q1_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__4_n_7 ),
        .Q(\Q1_s1_reg_n_0_[7] ));
  FDCE \Q1_s1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__4_n_6 ),
        .Q(\Q1_s1_reg_n_0_[8] ));
  FDCE \Q1_s1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__4_n_5 ),
        .Q(\Q1_s1_reg_n_0_[9] ));
  CARRY4 R_comb_carry
       (.CI(1'b0),
        .CO({R_comb_carry_n_0,R_comb_carry_n_1,R_comb_carry_n_2,R_comb_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\c0_s1_reg_n_0_[3] ,\c0_s1_reg_n_0_[2] ,\c0_s1_reg_n_0_[1] ,\c0_s1_reg_n_0_[0] }),
        .O({R_comb_carry_n_4,R_comb_carry_n_5,R_comb_carry_n_6,R_comb_carry_n_7}),
        .S({R_comb_carry_i_1__4_n_0,R_comb_carry_i_2__4_n_0,R_comb_carry_i_3__4_n_0,R_comb_carry_i_4__4_n_0}));
  CARRY4 R_comb_carry__0
       (.CI(R_comb_carry_n_0),
        .CO({R_comb_carry__0_n_0,R_comb_carry__0_n_1,R_comb_carry__0_n_2,R_comb_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\c0_s1_reg_n_0_[7] ,\c0_s1_reg_n_0_[6] ,\c0_s1_reg_n_0_[5] ,\c0_s1_reg_n_0_[4] }),
        .O({R_comb_carry__0_n_4,R_comb_carry__0_n_5,R_comb_carry__0_n_6,R_comb_carry__0_n_7}),
        .S({R_comb_carry__0_i_1__4_n_0,R_comb_carry__0_i_2__4_n_0,R_comb_carry__0_i_3__4_n_0,R_comb_carry__0_i_4__4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_1__4
       (.I0(\c0_s1_reg_n_0_[7] ),
        .I1(\Q1_s1_reg_n_0_[7] ),
        .O(R_comb_carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_2__4
       (.I0(\c0_s1_reg_n_0_[6] ),
        .I1(\Q1_s1_reg_n_0_[6] ),
        .O(R_comb_carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_3__4
       (.I0(\c0_s1_reg_n_0_[5] ),
        .I1(\Q1_s1_reg_n_0_[5] ),
        .O(R_comb_carry__0_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_4__4
       (.I0(\c0_s1_reg_n_0_[4] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .O(R_comb_carry__0_i_4__4_n_0));
  CARRY4 R_comb_carry__1
       (.CI(R_comb_carry__0_n_0),
        .CO({R_comb_carry__1_n_0,R_comb_carry__1_n_1,R_comb_carry__1_n_2,R_comb_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .O({R_comb_carry__1_n_4,R_comb_carry__1_n_5,R_comb_carry__1_n_6,R_comb_carry__1_n_7}),
        .S({R_comb_carry__1_i_1__4_n_0,R_comb_carry__1_i_2__4_n_0,R_comb_carry__1_i_3__4_n_0,R_comb_carry__1_i_4__4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_1__4
       (.I0(r1__0_carry_n_4),
        .I1(\Q1_s1_reg_n_0_[11] ),
        .O(R_comb_carry__1_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_2__4
       (.I0(r1__0_carry_n_5),
        .I1(\Q1_s1_reg_n_0_[10] ),
        .O(R_comb_carry__1_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_3__4
       (.I0(r1__0_carry_n_6),
        .I1(\Q1_s1_reg_n_0_[9] ),
        .O(R_comb_carry__1_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_4__4
       (.I0(r1__0_carry_n_7),
        .I1(\Q1_s1_reg_n_0_[8] ),
        .O(R_comb_carry__1_i_4__4_n_0));
  CARRY4 R_comb_carry__2
       (.CI(R_comb_carry__1_n_0),
        .CO({NLW_R_comb_carry__2_CO_UNCONNECTED[3:1],R_comb_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_n_7}),
        .O({NLW_R_comb_carry__2_O_UNCONNECTED[3:2],R_comb_carry__2_n_6,R_comb_carry__2_n_7}),
        .S({1'b0,1'b0,R_comb_carry__2_i_1__4_n_0,R_comb_carry__2_i_2__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_1__4
       (.I0(r1__0_carry__0_n_6),
        .O(R_comb_carry__2_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_2__4
       (.I0(r1__0_carry__0_n_7),
        .O(R_comb_carry__2_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_1__4
       (.I0(\c0_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .O(R_comb_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_2__4
       (.I0(\c0_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[2] ),
        .O(R_comb_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_3__4
       (.I0(\c0_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(R_comb_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_4__4
       (.I0(\c0_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(R_comb_carry_i_4__4_n_0));
  CARRY4 R_minus_q_carry
       (.CI(1'b0),
        .CO({R_minus_q_carry_n_0,R_minus_q_carry_n_1,R_minus_q_carry_n_2,R_minus_q_carry_n_3}),
        .CYINIT(\R_s2_reg_n_0_[0] ),
        .DI({\R_s2_reg_n_0_[4] ,\R_s2_reg_n_0_[3] ,\R_s2_reg_n_0_[2] ,\R_s2_reg_n_0_[1] }),
        .O({R_minus_q_carry_n_4,R_minus_q_carry_n_5,R_minus_q_carry_n_6,R_minus_q_carry_n_7}),
        .S({R_minus_q_carry_i_1__4_n_0,R_minus_q_carry_i_2__4_n_0,R_minus_q_carry_i_3__4_n_0,R_minus_q_carry_i_4__4_n_0}));
  CARRY4 R_minus_q_carry__0
       (.CI(R_minus_q_carry_n_0),
        .CO({R_minus_q_carry__0_n_0,R_minus_q_carry__0_n_1,R_minus_q_carry__0_n_2,R_minus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\R_s2_reg_n_0_[7] ,\R_s2_reg_n_0_[6] ,\R_s2_reg_n_0_[5] }),
        .O({R_minus_q_carry__0_n_4,R_minus_q_carry__0_n_5,R_minus_q_carry__0_n_6,R_minus_q_carry__0_n_7}),
        .S({\R_s2_reg_n_0_[8] ,R_minus_q_carry__0_i_1__4_n_0,R_minus_q_carry__0_i_2__4_n_0,R_minus_q_carry__0_i_3__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_1__4
       (.I0(\R_s2_reg_n_0_[7] ),
        .O(R_minus_q_carry__0_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_2__4
       (.I0(\R_s2_reg_n_0_[6] ),
        .O(R_minus_q_carry__0_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_3__4
       (.I0(\R_s2_reg_n_0_[5] ),
        .O(R_minus_q_carry__0_i_3__4_n_0));
  CARRY4 R_minus_q_carry__1
       (.CI(R_minus_q_carry__0_n_0),
        .CO({NLW_R_minus_q_carry__1_CO_UNCONNECTED[3:2],R_minus_q_carry__1_n_2,R_minus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\R_s2_reg_n_0_[9] }),
        .O({NLW_R_minus_q_carry__1_O_UNCONNECTED[3],R_minus_q_carry__1_n_5,R_minus_q_carry__1_n_6,R_minus_q_carry__1_n_7}),
        .S({1'b0,\R_s2_reg_n_0_[11] ,\R_s2_reg_n_0_[10] ,R_minus_q_carry__1_i_1__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__1_i_1__4
       (.I0(\R_s2_reg_n_0_[9] ),
        .O(R_minus_q_carry__1_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_1__4
       (.I0(\R_s2_reg_n_0_[4] ),
        .O(R_minus_q_carry_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_2__4
       (.I0(\R_s2_reg_n_0_[3] ),
        .O(R_minus_q_carry_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_3__4
       (.I0(\R_s2_reg_n_0_[2] ),
        .O(R_minus_q_carry_i_3__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_4__4
       (.I0(\R_s2_reg_n_0_[1] ),
        .O(R_minus_q_carry_i_4__4_n_0));
  CARRY4 R_plus_q_carry
       (.CI(1'b0),
        .CO({R_plus_q_carry_n_0,R_plus_q_carry_n_1,R_plus_q_carry_n_2,R_plus_q_carry_n_3}),
        .CYINIT(\R_s2_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({R_plus_q_carry_n_4,R_plus_q_carry_n_5,R_plus_q_carry_n_6,R_plus_q_carry_n_7}),
        .S({\R_s2_reg_n_0_[4] ,\R_s2_reg_n_0_[3] ,\R_s2_reg_n_0_[2] ,\R_s2_reg_n_0_[1] }));
  CARRY4 R_plus_q_carry__0
       (.CI(R_plus_q_carry_n_0),
        .CO({R_plus_q_carry__0_n_0,R_plus_q_carry__0_n_1,R_plus_q_carry__0_n_2,R_plus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\R_s2_reg_n_0_[8] ,1'b0,1'b0,1'b0}),
        .O({R_plus_q_carry__0_n_4,R_plus_q_carry__0_n_5,R_plus_q_carry__0_n_6,R_plus_q_carry__0_n_7}),
        .S({R_plus_q_carry__0_i_1__4_n_0,\R_s2_reg_n_0_[7] ,\R_s2_reg_n_0_[6] ,\R_s2_reg_n_0_[5] }));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__0_i_1__4
       (.I0(\R_s2_reg_n_0_[8] ),
        .O(R_plus_q_carry__0_i_1__4_n_0));
  CARRY4 R_plus_q_carry__1
       (.CI(R_plus_q_carry__0_n_0),
        .CO({NLW_R_plus_q_carry__1_CO_UNCONNECTED[3:2],R_plus_q_carry__1_n_2,R_plus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\R_s2_reg_n_0_[10] ,1'b0}),
        .O({NLW_R_plus_q_carry__1_O_UNCONNECTED[3],R_plus_q_carry__1_n_5,R_plus_q_carry__1_n_6,R_plus_q_carry__1_n_7}),
        .S({1'b0,R_plus_q_carry__1_i_1__4_n_0,R_plus_q_carry__1_i_2__4_n_0,\R_s2_reg_n_0_[9] }));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_1__4
       (.I0(\R_s2_reg_n_0_[11] ),
        .O(R_plus_q_carry__1_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_2__4
       (.I0(\R_s2_reg_n_0_[10] ),
        .O(R_plus_q_carry__1_i_2__4_n_0));
  FDCE \R_s2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry_n_7),
        .Q(\R_s2_reg_n_0_[0] ));
  FDCE \R_s2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__1_n_5),
        .Q(\R_s2_reg_n_0_[10] ));
  FDCE \R_s2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__1_n_4),
        .Q(\R_s2_reg_n_0_[11] ));
  FDCE \R_s2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__2_n_7),
        .Q(\R_s2_reg_n_0_[12] ));
  FDCE \R_s2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__2_n_6),
        .Q(\R_s2_reg_n_0_[13] ));
  FDCE \R_s2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry_n_6),
        .Q(\R_s2_reg_n_0_[1] ));
  FDCE \R_s2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry_n_5),
        .Q(\R_s2_reg_n_0_[2] ));
  FDCE \R_s2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry_n_4),
        .Q(\R_s2_reg_n_0_[3] ));
  FDCE \R_s2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__0_n_7),
        .Q(\R_s2_reg_n_0_[4] ));
  FDCE \R_s2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__0_n_6),
        .Q(\R_s2_reg_n_0_[5] ));
  FDCE \R_s2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__0_n_5),
        .Q(\R_s2_reg_n_0_[6] ));
  FDCE \R_s2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__0_n_4),
        .Q(\R_s2_reg_n_0_[7] ));
  FDCE \R_s2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__1_n_7),
        .Q(\R_s2_reg_n_0_[8] ));
  FDCE \R_s2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__1_n_6),
        .Q(\R_s2_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hF0F011EE)) 
    \b2_reg_r[0]_i_1 
       (.I0(\R_s2_reg_n_0_[13] ),
        .I1(mem_reg_i_128_n_0),
        .I2(bu_data_a_r[0]),
        .I3(\R_s2_reg_n_0_[0] ),
        .I4(\b2_reg_r_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[10]_i_1 
       (.I0(\b2_reg_r[10]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[10] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry__1_n_6),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[10]_i_2 
       (.I0(bu_data_a_r[10]),
        .I1(R_plus_q_carry__1_n_6),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[11]_i_1 
       (.I0(\b2_reg_r[11]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[11] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry__1_n_5),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[11]_i_2 
       (.I0(bu_data_a_r[11]),
        .I1(R_plus_q_carry__1_n_5),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \b2_reg_r[11]_i_3 
       (.I0(mem_reg_i_128_n_0),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \b2_reg_r[11]_i_4 
       (.I0(\R_s2_reg_n_0_[13] ),
        .I1(mem_reg_i_128_n_0),
        .I2(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[1]_i_1 
       (.I0(\b2_reg_r[1]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[1] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry_n_7),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[1]_i_2 
       (.I0(bu_data_a_r[1]),
        .I1(R_plus_q_carry_n_7),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[2]_i_1 
       (.I0(\b2_reg_r[2]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[2] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry_n_6),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[2]_i_2 
       (.I0(bu_data_a_r[2]),
        .I1(R_plus_q_carry_n_6),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[3]_i_1 
       (.I0(\b2_reg_r[3]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[3] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry_n_5),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[3]_i_2 
       (.I0(bu_data_a_r[3]),
        .I1(R_plus_q_carry_n_5),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[4]_i_1 
       (.I0(\b2_reg_r[4]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[4] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry_n_4),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[4]_i_2 
       (.I0(bu_data_a_r[4]),
        .I1(R_plus_q_carry_n_4),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[5]_i_1 
       (.I0(\b2_reg_r[5]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[5] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry__0_n_7),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[5]_i_2 
       (.I0(bu_data_a_r[5]),
        .I1(R_plus_q_carry__0_n_7),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[6]_i_1 
       (.I0(\b2_reg_r[6]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[6] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry__0_n_6),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[6]_i_2 
       (.I0(bu_data_a_r[6]),
        .I1(R_plus_q_carry__0_n_6),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[7]_i_1 
       (.I0(\b2_reg_r[7]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[7] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry__0_n_5),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[7]_i_2 
       (.I0(bu_data_a_r[7]),
        .I1(R_plus_q_carry__0_n_5),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[8]_i_1 
       (.I0(\b2_reg_r[8]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[8] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry__0_n_4),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[8]_i_2 
       (.I0(bu_data_a_r[8]),
        .I1(R_plus_q_carry__0_n_4),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \b2_reg_r[9]_i_1 
       (.I0(\b2_reg_r[9]_i_2_n_0 ),
        .I1(\b2_reg_r[11]_i_3_n_0 ),
        .I2(\R_s2_reg_n_0_[9] ),
        .I3(\b2_reg_r[11]_i_4_n_0 ),
        .I4(R_minus_q_carry__1_n_7),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \b2_reg_r[9]_i_2 
       (.I0(bu_data_a_r[9]),
        .I1(R_plus_q_carry__1_n_7),
        .I2(\R_s2_reg_n_0_[13] ),
        .I3(\b2_reg_r_reg[0] ),
        .O(\b2_reg_r[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[0]_i_1__4 
       (.I0(P[0]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[1]_i_1__4 
       (.I0(P[1]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[2]_i_1__4 
       (.I0(P[2]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[3]_i_1__4 
       (.I0(P[3]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[4]_i_1__4 
       (.I0(P[4]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[5]_i_1__4 
       (.I0(P[5]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[5]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[6]_i_1__4 
       (.I0(P[6]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[6]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[7]_i_1__4 
       (.I0(P[7]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c0_s1[7]_i_1__4_n_0 ));
  FDCE \c0_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[0]_i_1__4_n_0 ),
        .Q(\c0_s1_reg_n_0_[0] ));
  FDCE \c0_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[1]_i_1__4_n_0 ),
        .Q(\c0_s1_reg_n_0_[1] ));
  FDCE \c0_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[2]_i_1__4_n_0 ),
        .Q(\c0_s1_reg_n_0_[2] ));
  FDCE \c0_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[3]_i_1__4_n_0 ),
        .Q(\c0_s1_reg_n_0_[3] ));
  FDCE \c0_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[4]_i_1__4_n_0 ),
        .Q(\c0_s1_reg_n_0_[4] ));
  FDCE \c0_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[5]_i_1__4_n_0 ),
        .Q(\c0_s1_reg_n_0_[5] ));
  FDCE \c0_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[6]_i_1__4_n_0 ),
        .Q(\c0_s1_reg_n_0_[6] ));
  FDCE \c0_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[7]_i_1__4_n_0 ),
        .Q(\c0_s1_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[0]_i_1__4 
       (.I0(P[8]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c1_s1[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[1]_i_1__4 
       (.I0(P[9]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c1_s1[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[2]_i_1__4 
       (.I0(P[10]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c1_s1[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[3]_i_1__4 
       (.I0(P[11]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c1_s1[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[4]_i_1__4 
       (.I0(P[12]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c1_s1[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[5]_i_1__4 
       (.I0(P[13]),
        .I1(\c1_s1_reg[5]_0 ),
        .O(\c1_s1[5]_i_1__4_n_0 ));
  FDCE \c1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[0]_i_1__4_n_0 ),
        .Q(\c1_s1_reg_n_0_[0] ));
  FDCE \c1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[1]_i_1__4_n_0 ),
        .Q(\c1_s1_reg_n_0_[1] ));
  FDCE \c1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[2]_i_1__4_n_0 ),
        .Q(\c1_s1_reg_n_0_[2] ));
  FDCE \c1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[3]_i_1__4_n_0 ),
        .Q(\c1_s1_reg_n_0_[3] ));
  FDCE \c1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[4]_i_1__4_n_0 ),
        .Q(\c1_s1_reg_n_0_[4] ));
  FDCE \c1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[5]_i_1__4_n_0 ),
        .Q(\c1_s1_reg_n_0_[5] ));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_115
       (.I0(R_plus_q_carry__1_n_5),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_3[3]),
        .O(mem_reg_i_115_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    mem_reg_i_116
       (.I0(\R_s2_reg_n_0_[13] ),
        .I1(mem_reg_i_128_n_0),
        .I2(mem_reg_2),
        .O(mem_reg_i_116_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    mem_reg_i_117
       (.I0(mem_reg_2),
        .I1(mem_reg_i_128_n_0),
        .I2(\R_s2_reg_n_0_[13] ),
        .O(mem_reg_i_117_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_118
       (.I0(R_plus_q_carry__1_n_6),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_3[2]),
        .O(mem_reg_i_118_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_119
       (.I0(R_plus_q_carry__1_n_7),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_3[1]),
        .O(mem_reg_i_119_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_120
       (.I0(R_plus_q_carry__0_n_4),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_3[0]),
        .O(mem_reg_i_120_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_121
       (.I0(R_plus_q_carry__0_n_5),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_4[3]),
        .O(mem_reg_i_121_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_122
       (.I0(R_plus_q_carry__0_n_6),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_4[2]),
        .O(mem_reg_i_122_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_123
       (.I0(R_plus_q_carry__0_n_7),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_4[1]),
        .O(mem_reg_i_123_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_124
       (.I0(R_plus_q_carry_n_4),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_4[0]),
        .O(mem_reg_i_124_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_125
       (.I0(R_plus_q_carry_n_5),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_1[3]),
        .O(mem_reg_i_125_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_126
       (.I0(R_plus_q_carry_n_6),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_1[2]),
        .O(mem_reg_i_126_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    mem_reg_i_127
       (.I0(R_plus_q_carry_n_7),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(mem_reg_2),
        .I3(mem_reg_1[1]),
        .O(mem_reg_i_127_n_0));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    mem_reg_i_128
       (.I0(mem_reg_i_133_n_0),
        .I1(\R_s2_reg_n_0_[9] ),
        .I2(\R_s2_reg_n_0_[10] ),
        .I3(\R_s2_reg_n_0_[11] ),
        .I4(\R_s2_reg_n_0_[12] ),
        .O(mem_reg_i_128_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    mem_reg_i_133
       (.I0(mem_reg_i_135_n_0),
        .I1(\R_s2_reg_n_0_[0] ),
        .I2(\R_s2_reg_n_0_[7] ),
        .I3(\R_s2_reg_n_0_[6] ),
        .I4(\R_s2_reg_n_0_[5] ),
        .I5(\R_s2_reg_n_0_[8] ),
        .O(mem_reg_i_133_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_reg_i_135
       (.I0(\R_s2_reg_n_0_[4] ),
        .I1(\R_s2_reg_n_0_[3] ),
        .I2(\R_s2_reg_n_0_[2] ),
        .I3(\R_s2_reg_n_0_[1] ),
        .O(mem_reg_i_135_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_53
       (.I0(B_web),
        .I1(mem_reg_i_115_n_0),
        .I2(R_minus_q_carry__1_n_5),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[11] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [11]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_53__0
       (.I0(A_web),
        .I1(mem_reg_i_115_n_0),
        .I2(R_minus_q_carry__1_n_5),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[11] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [11]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_53__1
       (.I0(mem_reg),
        .I1(mem_reg_i_115_n_0),
        .I2(R_minus_q_carry__1_n_5),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[11] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[11]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_54
       (.I0(B_web),
        .I1(mem_reg_i_118_n_0),
        .I2(R_minus_q_carry__1_n_6),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[10] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [10]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_54__0
       (.I0(A_web),
        .I1(mem_reg_i_118_n_0),
        .I2(R_minus_q_carry__1_n_6),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[10] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [10]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_54__1
       (.I0(mem_reg),
        .I1(mem_reg_i_118_n_0),
        .I2(R_minus_q_carry__1_n_6),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[10] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[10]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_55
       (.I0(B_web),
        .I1(mem_reg_i_119_n_0),
        .I2(R_minus_q_carry__1_n_7),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[9] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [9]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_55__0
       (.I0(A_web),
        .I1(mem_reg_i_119_n_0),
        .I2(R_minus_q_carry__1_n_7),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[9] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [9]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_55__1
       (.I0(mem_reg),
        .I1(mem_reg_i_119_n_0),
        .I2(R_minus_q_carry__1_n_7),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[9] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[9]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_56
       (.I0(B_web),
        .I1(mem_reg_i_120_n_0),
        .I2(R_minus_q_carry__0_n_4),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[8] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [8]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_56__0
       (.I0(A_web),
        .I1(mem_reg_i_120_n_0),
        .I2(R_minus_q_carry__0_n_4),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[8] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [8]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_56__1
       (.I0(mem_reg),
        .I1(mem_reg_i_120_n_0),
        .I2(R_minus_q_carry__0_n_4),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[8] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[8]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_57
       (.I0(B_web),
        .I1(mem_reg_i_121_n_0),
        .I2(R_minus_q_carry__0_n_5),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[7] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [7]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_57__0
       (.I0(A_web),
        .I1(mem_reg_i_121_n_0),
        .I2(R_minus_q_carry__0_n_5),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[7] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [7]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_57__1
       (.I0(mem_reg),
        .I1(mem_reg_i_121_n_0),
        .I2(R_minus_q_carry__0_n_5),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[7] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[7]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_58
       (.I0(B_web),
        .I1(mem_reg_i_122_n_0),
        .I2(R_minus_q_carry__0_n_6),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[6] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [6]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_58__0
       (.I0(A_web),
        .I1(mem_reg_i_122_n_0),
        .I2(R_minus_q_carry__0_n_6),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[6] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [6]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_58__1
       (.I0(mem_reg),
        .I1(mem_reg_i_122_n_0),
        .I2(R_minus_q_carry__0_n_6),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[6] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[6]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_59
       (.I0(B_web),
        .I1(mem_reg_i_123_n_0),
        .I2(R_minus_q_carry__0_n_7),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[5] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [5]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_59__0
       (.I0(A_web),
        .I1(mem_reg_i_123_n_0),
        .I2(R_minus_q_carry__0_n_7),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[5] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [5]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_59__1
       (.I0(mem_reg),
        .I1(mem_reg_i_123_n_0),
        .I2(R_minus_q_carry__0_n_7),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[5] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[5]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_60
       (.I0(B_web),
        .I1(mem_reg_i_124_n_0),
        .I2(R_minus_q_carry_n_4),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[4] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [4]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_60__0
       (.I0(A_web),
        .I1(mem_reg_i_124_n_0),
        .I2(R_minus_q_carry_n_4),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[4] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [4]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_60__1
       (.I0(mem_reg),
        .I1(mem_reg_i_124_n_0),
        .I2(R_minus_q_carry_n_4),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[4] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[4]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_61
       (.I0(B_web),
        .I1(mem_reg_i_125_n_0),
        .I2(R_minus_q_carry_n_5),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[3] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [3]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_61__0
       (.I0(A_web),
        .I1(mem_reg_i_125_n_0),
        .I2(R_minus_q_carry_n_5),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[3] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_61__1
       (.I0(mem_reg),
        .I1(mem_reg_i_125_n_0),
        .I2(R_minus_q_carry_n_5),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[3] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[3]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_62
       (.I0(B_web),
        .I1(mem_reg_i_126_n_0),
        .I2(R_minus_q_carry_n_6),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[2] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [2]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_62__0
       (.I0(A_web),
        .I1(mem_reg_i_126_n_0),
        .I2(R_minus_q_carry_n_6),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[2] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [2]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_62__1
       (.I0(mem_reg),
        .I1(mem_reg_i_126_n_0),
        .I2(R_minus_q_carry_n_6),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[2] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[2]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_63
       (.I0(B_web),
        .I1(mem_reg_i_127_n_0),
        .I2(R_minus_q_carry_n_7),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[1] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_1 [1]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_63__0
       (.I0(A_web),
        .I1(mem_reg_i_127_n_0),
        .I2(R_minus_q_carry_n_7),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[1] ),
        .I5(mem_reg_i_117_n_0),
        .O(\R_s2_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    mem_reg_i_63__1
       (.I0(mem_reg),
        .I1(mem_reg_i_127_n_0),
        .I2(R_minus_q_carry_n_7),
        .I3(mem_reg_i_116_n_0),
        .I4(\R_s2_reg_n_0_[1] ),
        .I5(mem_reg_i_117_n_0),
        .O(DIBDI[1]));
  LUT6 #(
    .INIT(64'h10F0E0F01000E000)) 
    mem_reg_i_64
       (.I0(\R_s2_reg_n_0_[13] ),
        .I1(mem_reg_i_128_n_0),
        .I2(mem_reg),
        .I3(mem_reg_0),
        .I4(\R_s2_reg_n_0_[0] ),
        .I5(mem_reg_1[0]),
        .O(DIBDI[0]));
  LUT6 #(
    .INIT(64'h10F0E0F01000E000)) 
    mem_reg_i_64__0
       (.I0(\R_s2_reg_n_0_[13] ),
        .I1(mem_reg_i_128_n_0),
        .I2(A_web),
        .I3(mem_reg_0),
        .I4(\R_s2_reg_n_0_[0] ),
        .I5(mem_reg_1[0]),
        .O(\R_s2_reg[11]_0 [0]));
  LUT6 #(
    .INIT(64'h10F0E0F01000E000)) 
    mem_reg_i_64__1
       (.I0(\R_s2_reg_n_0_[13] ),
        .I1(mem_reg_i_128_n_0),
        .I2(B_web),
        .I3(mem_reg_0),
        .I4(\R_s2_reg_n_0_[0] ),
        .I5(mem_reg_1[0]),
        .O(\R_s2_reg[11]_1 [0]));
  CARRY4 r1__0_carry
       (.CI(1'b0),
        .CO({r1__0_carry_n_0,r1__0_carry_n_1,r1__0_carry_n_2,r1__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({r1__0_carry_i_1__4_n_0,\c1_s1_reg_n_0_[2] ,\c1_s1_reg_n_0_[1] ,\c1_s1_reg_n_0_[0] }),
        .O({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .S({r1__0_carry_i_2__4_n_0,r1__0_carry_i_3__4_n_0,r1__0_carry_i_4__4_n_0,r1__0_carry_i_5__4_n_0}));
  CARRY4 r1__0_carry__0
       (.CI(r1__0_carry_n_0),
        .CO({NLW_r1__0_carry__0_CO_UNCONNECTED[3:1],r1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_i_1__4_n_0}),
        .O({NLW_r1__0_carry__0_O_UNCONNECTED[3:2],r1__0_carry__0_n_6,r1__0_carry__0_n_7}),
        .S({1'b0,1'b0,r1__0_carry__0_i_2__4_n_0,r1__0_carry__0_i_3__4_n_0}));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'hD44D)) 
    r1__0_carry__0_i_1__4
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry__0_i_1__4_n_0));
  LUT5 #(
    .INIT(32'h088FF770)) 
    r1__0_carry__0_i_2__4
       (.I0(\Q1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .I2(r1__0_carry__0_i_4__4_n_0),
        .I3(\c1_s1_reg_n_0_[4] ),
        .I4(r1__0_carry__0_i_5__4_n_0),
        .O(r1__0_carry__0_i_2__4_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    r1__0_carry__0_i_3__4
       (.I0(r1__0_carry__0_i_1__4_n_0),
        .I1(r1__0_carry__0_i_4__4_n_0),
        .I2(\c1_s1_reg_n_0_[4] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[3] ),
        .O(r1__0_carry__0_i_3__4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry__0_i_4__4
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry__0_i_4__4_n_0));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    r1__0_carry__0_i_5__4
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\c1_s1_reg_n_0_[5] ),
        .I3(\Q1_s1_reg_n_0_[3] ),
        .I4(\Q1_s1_reg_n_0_[5] ),
        .I5(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry__0_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r1__0_carry_i_1__4
       (.I0(\Q1_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .I3(\c1_s1_reg_n_0_[3] ),
        .O(r1__0_carry_i_1__4_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h69699669)) 
    r1__0_carry_i_2__4
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_2__4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry_i_3__4
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\c1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_4__4
       (.I0(\c1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_5__4
       (.I0(\c1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry_i_5__4_n_0));
endmodule

(* ORIG_REF_NAME = "barrett_reduction" *) 
module design_1_polymul_axi_top_0_0_barrett_reduction_7
   (S,
    product,
    product_0,
    \R_s2_reg[13]_0 ,
    \R_s2_reg[13]_1 ,
    \R_s2_reg[13]_2 ,
    \R_s2_reg[13]_3 ,
    \R_s2_reg[13]_4 ,
    \R_s2_reg[13]_5 ,
    \R_s2_reg[13]_6 ,
    \R_s2_reg[13]_7 ,
    \R_s2_reg[13]_8 ,
    \R_s2_reg[13]_9 ,
    \R_s2_reg[13]_10 ,
    \R_s2_reg[13]_11 ,
    O,
    \Q1_s1_reg[6]_0 ,
    \Q1_s1_reg[10]_0 ,
    \Q1_s1_reg[11]_0 ,
    P,
    \c0_s1_reg[0]_0 ,
    clk,
    \R_s2_reg[0]_0 );
  output [3:0]S;
  output [3:0]product;
  output [2:0]product_0;
  output \R_s2_reg[13]_0 ;
  output \R_s2_reg[13]_1 ;
  output \R_s2_reg[13]_2 ;
  output \R_s2_reg[13]_3 ;
  output \R_s2_reg[13]_4 ;
  output \R_s2_reg[13]_5 ;
  output \R_s2_reg[13]_6 ;
  output \R_s2_reg[13]_7 ;
  output \R_s2_reg[13]_8 ;
  output \R_s2_reg[13]_9 ;
  output \R_s2_reg[13]_10 ;
  output \R_s2_reg[13]_11 ;
  input [3:0]O;
  input [3:0]\Q1_s1_reg[6]_0 ;
  input [3:0]\Q1_s1_reg[10]_0 ;
  input [0:0]\Q1_s1_reg[11]_0 ;
  input [23:0]P;
  input \c0_s1_reg[0]_0 ;
  input clk;
  input \R_s2_reg[0]_0 ;

  wire [3:0]O;
  wire [23:0]P;
  wire \Q1_s1[10]_i_3__2_n_0 ;
  wire \Q1_s1[10]_i_4__2_n_0 ;
  wire \Q1_s1[10]_i_5__2_n_0 ;
  wire \Q1_s1[10]_i_6__2_n_0 ;
  wire \Q1_s1[11]_i_2__2_n_0 ;
  wire \Q1_s1[2]_i_3__2_n_0 ;
  wire \Q1_s1[2]_i_4__2_n_0 ;
  wire \Q1_s1[2]_i_5__2_n_0 ;
  wire \Q1_s1[2]_i_6__2_n_0 ;
  wire \Q1_s1[6]_i_3__2_n_0 ;
  wire \Q1_s1[6]_i_4__2_n_0 ;
  wire \Q1_s1[6]_i_5__2_n_0 ;
  wire \Q1_s1[6]_i_6__2_n_0 ;
  wire [3:0]\Q1_s1_reg[10]_0 ;
  wire \Q1_s1_reg[10]_i_1__2_n_0 ;
  wire \Q1_s1_reg[10]_i_1__2_n_1 ;
  wire \Q1_s1_reg[10]_i_1__2_n_2 ;
  wire \Q1_s1_reg[10]_i_1__2_n_3 ;
  wire \Q1_s1_reg[10]_i_1__2_n_4 ;
  wire \Q1_s1_reg[10]_i_1__2_n_5 ;
  wire \Q1_s1_reg[10]_i_1__2_n_6 ;
  wire \Q1_s1_reg[10]_i_1__2_n_7 ;
  wire [0:0]\Q1_s1_reg[11]_0 ;
  wire \Q1_s1_reg[11]_i_1__2_n_7 ;
  wire \Q1_s1_reg[2]_i_1__2_n_0 ;
  wire \Q1_s1_reg[2]_i_1__2_n_1 ;
  wire \Q1_s1_reg[2]_i_1__2_n_2 ;
  wire \Q1_s1_reg[2]_i_1__2_n_3 ;
  wire \Q1_s1_reg[2]_i_1__2_n_4 ;
  wire \Q1_s1_reg[2]_i_1__2_n_5 ;
  wire \Q1_s1_reg[2]_i_1__2_n_6 ;
  wire [3:0]\Q1_s1_reg[6]_0 ;
  wire \Q1_s1_reg[6]_i_1__2_n_0 ;
  wire \Q1_s1_reg[6]_i_1__2_n_1 ;
  wire \Q1_s1_reg[6]_i_1__2_n_2 ;
  wire \Q1_s1_reg[6]_i_1__2_n_3 ;
  wire \Q1_s1_reg[6]_i_1__2_n_4 ;
  wire \Q1_s1_reg[6]_i_1__2_n_5 ;
  wire \Q1_s1_reg[6]_i_1__2_n_6 ;
  wire \Q1_s1_reg[6]_i_1__2_n_7 ;
  wire \Q1_s1_reg_n_0_[0] ;
  wire \Q1_s1_reg_n_0_[10] ;
  wire \Q1_s1_reg_n_0_[11] ;
  wire \Q1_s1_reg_n_0_[1] ;
  wire \Q1_s1_reg_n_0_[2] ;
  wire \Q1_s1_reg_n_0_[3] ;
  wire \Q1_s1_reg_n_0_[4] ;
  wire \Q1_s1_reg_n_0_[5] ;
  wire \Q1_s1_reg_n_0_[6] ;
  wire \Q1_s1_reg_n_0_[7] ;
  wire \Q1_s1_reg_n_0_[8] ;
  wire \Q1_s1_reg_n_0_[9] ;
  wire R_comb_carry__0_i_1__2_n_0;
  wire R_comb_carry__0_i_2__2_n_0;
  wire R_comb_carry__0_i_3__2_n_0;
  wire R_comb_carry__0_i_4__2_n_0;
  wire R_comb_carry__0_n_0;
  wire R_comb_carry__0_n_1;
  wire R_comb_carry__0_n_2;
  wire R_comb_carry__0_n_3;
  wire R_comb_carry__0_n_4;
  wire R_comb_carry__0_n_5;
  wire R_comb_carry__0_n_6;
  wire R_comb_carry__0_n_7;
  wire R_comb_carry__1_i_1__2_n_0;
  wire R_comb_carry__1_i_2__2_n_0;
  wire R_comb_carry__1_i_3__2_n_0;
  wire R_comb_carry__1_i_4__2_n_0;
  wire R_comb_carry__1_n_0;
  wire R_comb_carry__1_n_1;
  wire R_comb_carry__1_n_2;
  wire R_comb_carry__1_n_3;
  wire R_comb_carry__1_n_4;
  wire R_comb_carry__1_n_5;
  wire R_comb_carry__1_n_6;
  wire R_comb_carry__1_n_7;
  wire R_comb_carry__2_i_1__2_n_0;
  wire R_comb_carry__2_i_2__2_n_0;
  wire R_comb_carry__2_n_3;
  wire R_comb_carry__2_n_6;
  wire R_comb_carry__2_n_7;
  wire R_comb_carry_i_1__2_n_0;
  wire R_comb_carry_i_2__2_n_0;
  wire R_comb_carry_i_3__2_n_0;
  wire R_comb_carry_i_4__2_n_0;
  wire R_comb_carry_n_0;
  wire R_comb_carry_n_1;
  wire R_comb_carry_n_2;
  wire R_comb_carry_n_3;
  wire R_comb_carry_n_4;
  wire R_comb_carry_n_5;
  wire R_comb_carry_n_6;
  wire R_comb_carry_n_7;
  wire R_minus_q_carry__0_i_1__2_n_0;
  wire R_minus_q_carry__0_i_2__2_n_0;
  wire R_minus_q_carry__0_i_3__2_n_0;
  wire R_minus_q_carry__0_n_0;
  wire R_minus_q_carry__0_n_1;
  wire R_minus_q_carry__0_n_2;
  wire R_minus_q_carry__0_n_3;
  wire R_minus_q_carry__0_n_4;
  wire R_minus_q_carry__0_n_5;
  wire R_minus_q_carry__0_n_6;
  wire R_minus_q_carry__0_n_7;
  wire R_minus_q_carry__1_i_1__2_n_0;
  wire R_minus_q_carry__1_n_2;
  wire R_minus_q_carry__1_n_3;
  wire R_minus_q_carry__1_n_5;
  wire R_minus_q_carry__1_n_6;
  wire R_minus_q_carry__1_n_7;
  wire R_minus_q_carry_i_1__2_n_0;
  wire R_minus_q_carry_i_2__2_n_0;
  wire R_minus_q_carry_i_3__2_n_0;
  wire R_minus_q_carry_i_4__2_n_0;
  wire R_minus_q_carry_n_0;
  wire R_minus_q_carry_n_1;
  wire R_minus_q_carry_n_2;
  wire R_minus_q_carry_n_3;
  wire R_minus_q_carry_n_4;
  wire R_minus_q_carry_n_5;
  wire R_minus_q_carry_n_6;
  wire R_minus_q_carry_n_7;
  wire R_plus_q_carry__0_i_1__2_n_0;
  wire R_plus_q_carry__0_n_0;
  wire R_plus_q_carry__0_n_1;
  wire R_plus_q_carry__0_n_2;
  wire R_plus_q_carry__0_n_3;
  wire R_plus_q_carry__0_n_4;
  wire R_plus_q_carry__0_n_5;
  wire R_plus_q_carry__0_n_6;
  wire R_plus_q_carry__0_n_7;
  wire R_plus_q_carry__1_i_1__2_n_0;
  wire R_plus_q_carry__1_i_2__2_n_0;
  wire R_plus_q_carry__1_n_2;
  wire R_plus_q_carry__1_n_3;
  wire R_plus_q_carry__1_n_5;
  wire R_plus_q_carry__1_n_6;
  wire R_plus_q_carry__1_n_7;
  wire R_plus_q_carry_n_0;
  wire R_plus_q_carry_n_1;
  wire R_plus_q_carry_n_2;
  wire R_plus_q_carry_n_3;
  wire R_plus_q_carry_n_4;
  wire R_plus_q_carry_n_5;
  wire R_plus_q_carry_n_6;
  wire R_plus_q_carry_n_7;
  wire \R_s2_reg[0]_0 ;
  wire \R_s2_reg[13]_0 ;
  wire \R_s2_reg[13]_1 ;
  wire \R_s2_reg[13]_10 ;
  wire \R_s2_reg[13]_11 ;
  wire \R_s2_reg[13]_2 ;
  wire \R_s2_reg[13]_3 ;
  wire \R_s2_reg[13]_4 ;
  wire \R_s2_reg[13]_5 ;
  wire \R_s2_reg[13]_6 ;
  wire \R_s2_reg[13]_7 ;
  wire \R_s2_reg[13]_8 ;
  wire \R_s2_reg[13]_9 ;
  wire \R_s2_reg_n_0_[0] ;
  wire \R_s2_reg_n_0_[10] ;
  wire \R_s2_reg_n_0_[11] ;
  wire \R_s2_reg_n_0_[12] ;
  wire \R_s2_reg_n_0_[13] ;
  wire \R_s2_reg_n_0_[1] ;
  wire \R_s2_reg_n_0_[2] ;
  wire \R_s2_reg_n_0_[3] ;
  wire \R_s2_reg_n_0_[4] ;
  wire \R_s2_reg_n_0_[5] ;
  wire \R_s2_reg_n_0_[6] ;
  wire \R_s2_reg_n_0_[7] ;
  wire \R_s2_reg_n_0_[8] ;
  wire \R_s2_reg_n_0_[9] ;
  wire [3:0]S;
  wire \c0_s1[0]_i_1__2_n_0 ;
  wire \c0_s1[1]_i_1__2_n_0 ;
  wire \c0_s1[2]_i_1__2_n_0 ;
  wire \c0_s1[3]_i_1__2_n_0 ;
  wire \c0_s1[4]_i_1__2_n_0 ;
  wire \c0_s1[5]_i_1__2_n_0 ;
  wire \c0_s1[6]_i_1__2_n_0 ;
  wire \c0_s1[7]_i_1__2_n_0 ;
  wire \c0_s1_reg[0]_0 ;
  wire \c0_s1_reg_n_0_[0] ;
  wire \c0_s1_reg_n_0_[1] ;
  wire \c0_s1_reg_n_0_[2] ;
  wire \c0_s1_reg_n_0_[3] ;
  wire \c0_s1_reg_n_0_[4] ;
  wire \c0_s1_reg_n_0_[5] ;
  wire \c0_s1_reg_n_0_[6] ;
  wire \c0_s1_reg_n_0_[7] ;
  wire \c1_s1[0]_i_1__2_n_0 ;
  wire \c1_s1[1]_i_1__2_n_0 ;
  wire \c1_s1[2]_i_1__2_n_0 ;
  wire \c1_s1[3]_i_1__2_n_0 ;
  wire \c1_s1[4]_i_1__2_n_0 ;
  wire \c1_s1[5]_i_1__2_n_0 ;
  wire \c1_s1_reg_n_0_[0] ;
  wire \c1_s1_reg_n_0_[1] ;
  wire \c1_s1_reg_n_0_[2] ;
  wire \c1_s1_reg_n_0_[3] ;
  wire \c1_s1_reg_n_0_[4] ;
  wire \c1_s1_reg_n_0_[5] ;
  wire clk;
  wire \m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ;
  wire \m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3_n_0 ;
  wire \m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4_n_0 ;
  wire [3:0]product;
  wire [2:0]product_0;
  wire r1__0_carry__0_i_1__2_n_0;
  wire r1__0_carry__0_i_2__2_n_0;
  wire r1__0_carry__0_i_3__2_n_0;
  wire r1__0_carry__0_i_4__2_n_0;
  wire r1__0_carry__0_i_5__2_n_0;
  wire r1__0_carry__0_n_3;
  wire r1__0_carry__0_n_6;
  wire r1__0_carry__0_n_7;
  wire r1__0_carry_i_1__2_n_0;
  wire r1__0_carry_i_2__2_n_0;
  wire r1__0_carry_i_3__2_n_0;
  wire r1__0_carry_i_4__2_n_0;
  wire r1__0_carry_i_5__2_n_0;
  wire r1__0_carry_n_0;
  wire r1__0_carry_n_1;
  wire r1__0_carry_n_2;
  wire r1__0_carry_n_3;
  wire r1__0_carry_n_4;
  wire r1__0_carry_n_5;
  wire r1__0_carry_n_6;
  wire r1__0_carry_n_7;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_1__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_1__2_O_UNCONNECTED ;
  wire [0:0]\NLW_Q1_s1_reg[2]_i_1__2_O_UNCONNECTED ;
  wire [3:1]NLW_R_comb_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_R_comb_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_R_minus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_minus_q_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_R_plus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_plus_q_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_r1__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_r1__0_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_11 
       (.I0(P[21]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[23]),
        .O(product_0[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_12 
       (.I0(P[20]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[22]),
        .O(product_0[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_13 
       (.I0(P[19]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[21]),
        .O(product_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_3__2 
       (.I0(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[10]_i_3__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_4__2 
       (.I0(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[10]_i_4__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_5__2 
       (.I0(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[10]_i_5__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_6__2 
       (.I0(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[10]_i_6__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[11]_i_2__2 
       (.I0(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[11]_i_2__2_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_11 
       (.I0(P[14]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[16]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_12 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[15]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_13 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[14]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_14 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[13]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_3__2 
       (.I0(O[3]),
        .I1(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[2]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_4__2 
       (.I0(O[2]),
        .I1(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[2]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_5__2 
       (.I0(O[1]),
        .I1(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[2]_i_5__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_6__2 
       (.I0(O[0]),
        .I1(\Q1_s1_reg[6]_0 [2]),
        .O(\Q1_s1[2]_i_6__2_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_11 
       (.I0(P[18]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[20]),
        .O(product[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_12 
       (.I0(P[17]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[19]),
        .O(product[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_13 
       (.I0(P[16]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[18]),
        .O(product[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_14 
       (.I0(P[15]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[17]),
        .O(product[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[6]_i_3__2 
       (.I0(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[6]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_4__2 
       (.I0(\Q1_s1_reg[6]_0 [2]),
        .I1(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[6]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_5__2 
       (.I0(\Q1_s1_reg[6]_0 [1]),
        .I1(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[6]_i_5__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_6__2 
       (.I0(\Q1_s1_reg[6]_0 [0]),
        .I1(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[6]_i_6__2_n_0 ));
  FDCE \Q1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1__2_n_6 ),
        .Q(\Q1_s1_reg_n_0_[0] ));
  FDCE \Q1_s1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__2_n_4 ),
        .Q(\Q1_s1_reg_n_0_[10] ));
  CARRY4 \Q1_s1_reg[10]_i_1__2 
       (.CI(\Q1_s1_reg[6]_i_1__2_n_0 ),
        .CO({\Q1_s1_reg[10]_i_1__2_n_0 ,\Q1_s1_reg[10]_i_1__2_n_1 ,\Q1_s1_reg[10]_i_1__2_n_2 ,\Q1_s1_reg[10]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[10]_0 ),
        .O({\Q1_s1_reg[10]_i_1__2_n_4 ,\Q1_s1_reg[10]_i_1__2_n_5 ,\Q1_s1_reg[10]_i_1__2_n_6 ,\Q1_s1_reg[10]_i_1__2_n_7 }),
        .S({\Q1_s1[10]_i_3__2_n_0 ,\Q1_s1[10]_i_4__2_n_0 ,\Q1_s1[10]_i_5__2_n_0 ,\Q1_s1[10]_i_6__2_n_0 }));
  FDCE \Q1_s1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[11]_i_1__2_n_7 ),
        .Q(\Q1_s1_reg_n_0_[11] ));
  CARRY4 \Q1_s1_reg[11]_i_1__2 
       (.CI(\Q1_s1_reg[10]_i_1__2_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_1__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_1__2_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_1__2_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_2__2_n_0 }));
  FDCE \Q1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1__2_n_5 ),
        .Q(\Q1_s1_reg_n_0_[1] ));
  FDCE \Q1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1__2_n_4 ),
        .Q(\Q1_s1_reg_n_0_[2] ));
  CARRY4 \Q1_s1_reg[2]_i_1__2 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_1__2_n_0 ,\Q1_s1_reg[2]_i_1__2_n_1 ,\Q1_s1_reg[2]_i_1__2_n_2 ,\Q1_s1_reg[2]_i_1__2_n_3 }),
        .CYINIT(1'b1),
        .DI(O),
        .O({\Q1_s1_reg[2]_i_1__2_n_4 ,\Q1_s1_reg[2]_i_1__2_n_5 ,\Q1_s1_reg[2]_i_1__2_n_6 ,\NLW_Q1_s1_reg[2]_i_1__2_O_UNCONNECTED [0]}),
        .S({\Q1_s1[2]_i_3__2_n_0 ,\Q1_s1[2]_i_4__2_n_0 ,\Q1_s1[2]_i_5__2_n_0 ,\Q1_s1[2]_i_6__2_n_0 }));
  FDCE \Q1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__2_n_7 ),
        .Q(\Q1_s1_reg_n_0_[3] ));
  FDCE \Q1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__2_n_6 ),
        .Q(\Q1_s1_reg_n_0_[4] ));
  FDCE \Q1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__2_n_5 ),
        .Q(\Q1_s1_reg_n_0_[5] ));
  FDCE \Q1_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__2_n_4 ),
        .Q(\Q1_s1_reg_n_0_[6] ));
  CARRY4 \Q1_s1_reg[6]_i_1__2 
       (.CI(\Q1_s1_reg[2]_i_1__2_n_0 ),
        .CO({\Q1_s1_reg[6]_i_1__2_n_0 ,\Q1_s1_reg[6]_i_1__2_n_1 ,\Q1_s1_reg[6]_i_1__2_n_2 ,\Q1_s1_reg[6]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[6]_0 ),
        .O({\Q1_s1_reg[6]_i_1__2_n_4 ,\Q1_s1_reg[6]_i_1__2_n_5 ,\Q1_s1_reg[6]_i_1__2_n_6 ,\Q1_s1_reg[6]_i_1__2_n_7 }),
        .S({\Q1_s1[6]_i_3__2_n_0 ,\Q1_s1[6]_i_4__2_n_0 ,\Q1_s1[6]_i_5__2_n_0 ,\Q1_s1[6]_i_6__2_n_0 }));
  FDCE \Q1_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__2_n_7 ),
        .Q(\Q1_s1_reg_n_0_[7] ));
  FDCE \Q1_s1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__2_n_6 ),
        .Q(\Q1_s1_reg_n_0_[8] ));
  FDCE \Q1_s1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__2_n_5 ),
        .Q(\Q1_s1_reg_n_0_[9] ));
  CARRY4 R_comb_carry
       (.CI(1'b0),
        .CO({R_comb_carry_n_0,R_comb_carry_n_1,R_comb_carry_n_2,R_comb_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\c0_s1_reg_n_0_[3] ,\c0_s1_reg_n_0_[2] ,\c0_s1_reg_n_0_[1] ,\c0_s1_reg_n_0_[0] }),
        .O({R_comb_carry_n_4,R_comb_carry_n_5,R_comb_carry_n_6,R_comb_carry_n_7}),
        .S({R_comb_carry_i_1__2_n_0,R_comb_carry_i_2__2_n_0,R_comb_carry_i_3__2_n_0,R_comb_carry_i_4__2_n_0}));
  CARRY4 R_comb_carry__0
       (.CI(R_comb_carry_n_0),
        .CO({R_comb_carry__0_n_0,R_comb_carry__0_n_1,R_comb_carry__0_n_2,R_comb_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\c0_s1_reg_n_0_[7] ,\c0_s1_reg_n_0_[6] ,\c0_s1_reg_n_0_[5] ,\c0_s1_reg_n_0_[4] }),
        .O({R_comb_carry__0_n_4,R_comb_carry__0_n_5,R_comb_carry__0_n_6,R_comb_carry__0_n_7}),
        .S({R_comb_carry__0_i_1__2_n_0,R_comb_carry__0_i_2__2_n_0,R_comb_carry__0_i_3__2_n_0,R_comb_carry__0_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_1__2
       (.I0(\c0_s1_reg_n_0_[7] ),
        .I1(\Q1_s1_reg_n_0_[7] ),
        .O(R_comb_carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_2__2
       (.I0(\c0_s1_reg_n_0_[6] ),
        .I1(\Q1_s1_reg_n_0_[6] ),
        .O(R_comb_carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_3__2
       (.I0(\c0_s1_reg_n_0_[5] ),
        .I1(\Q1_s1_reg_n_0_[5] ),
        .O(R_comb_carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_4__2
       (.I0(\c0_s1_reg_n_0_[4] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .O(R_comb_carry__0_i_4__2_n_0));
  CARRY4 R_comb_carry__1
       (.CI(R_comb_carry__0_n_0),
        .CO({R_comb_carry__1_n_0,R_comb_carry__1_n_1,R_comb_carry__1_n_2,R_comb_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .O({R_comb_carry__1_n_4,R_comb_carry__1_n_5,R_comb_carry__1_n_6,R_comb_carry__1_n_7}),
        .S({R_comb_carry__1_i_1__2_n_0,R_comb_carry__1_i_2__2_n_0,R_comb_carry__1_i_3__2_n_0,R_comb_carry__1_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_1__2
       (.I0(r1__0_carry_n_4),
        .I1(\Q1_s1_reg_n_0_[11] ),
        .O(R_comb_carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_2__2
       (.I0(r1__0_carry_n_5),
        .I1(\Q1_s1_reg_n_0_[10] ),
        .O(R_comb_carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_3__2
       (.I0(r1__0_carry_n_6),
        .I1(\Q1_s1_reg_n_0_[9] ),
        .O(R_comb_carry__1_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_4__2
       (.I0(r1__0_carry_n_7),
        .I1(\Q1_s1_reg_n_0_[8] ),
        .O(R_comb_carry__1_i_4__2_n_0));
  CARRY4 R_comb_carry__2
       (.CI(R_comb_carry__1_n_0),
        .CO({NLW_R_comb_carry__2_CO_UNCONNECTED[3:1],R_comb_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_n_7}),
        .O({NLW_R_comb_carry__2_O_UNCONNECTED[3:2],R_comb_carry__2_n_6,R_comb_carry__2_n_7}),
        .S({1'b0,1'b0,R_comb_carry__2_i_1__2_n_0,R_comb_carry__2_i_2__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_1__2
       (.I0(r1__0_carry__0_n_6),
        .O(R_comb_carry__2_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_2__2
       (.I0(r1__0_carry__0_n_7),
        .O(R_comb_carry__2_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_1__2
       (.I0(\c0_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .O(R_comb_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_2__2
       (.I0(\c0_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[2] ),
        .O(R_comb_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_3__2
       (.I0(\c0_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(R_comb_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_4__2
       (.I0(\c0_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(R_comb_carry_i_4__2_n_0));
  CARRY4 R_minus_q_carry
       (.CI(1'b0),
        .CO({R_minus_q_carry_n_0,R_minus_q_carry_n_1,R_minus_q_carry_n_2,R_minus_q_carry_n_3}),
        .CYINIT(\R_s2_reg_n_0_[0] ),
        .DI({\R_s2_reg_n_0_[4] ,\R_s2_reg_n_0_[3] ,\R_s2_reg_n_0_[2] ,\R_s2_reg_n_0_[1] }),
        .O({R_minus_q_carry_n_4,R_minus_q_carry_n_5,R_minus_q_carry_n_6,R_minus_q_carry_n_7}),
        .S({R_minus_q_carry_i_1__2_n_0,R_minus_q_carry_i_2__2_n_0,R_minus_q_carry_i_3__2_n_0,R_minus_q_carry_i_4__2_n_0}));
  CARRY4 R_minus_q_carry__0
       (.CI(R_minus_q_carry_n_0),
        .CO({R_minus_q_carry__0_n_0,R_minus_q_carry__0_n_1,R_minus_q_carry__0_n_2,R_minus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\R_s2_reg_n_0_[7] ,\R_s2_reg_n_0_[6] ,\R_s2_reg_n_0_[5] }),
        .O({R_minus_q_carry__0_n_4,R_minus_q_carry__0_n_5,R_minus_q_carry__0_n_6,R_minus_q_carry__0_n_7}),
        .S({\R_s2_reg_n_0_[8] ,R_minus_q_carry__0_i_1__2_n_0,R_minus_q_carry__0_i_2__2_n_0,R_minus_q_carry__0_i_3__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_1__2
       (.I0(\R_s2_reg_n_0_[7] ),
        .O(R_minus_q_carry__0_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_2__2
       (.I0(\R_s2_reg_n_0_[6] ),
        .O(R_minus_q_carry__0_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_3__2
       (.I0(\R_s2_reg_n_0_[5] ),
        .O(R_minus_q_carry__0_i_3__2_n_0));
  CARRY4 R_minus_q_carry__1
       (.CI(R_minus_q_carry__0_n_0),
        .CO({NLW_R_minus_q_carry__1_CO_UNCONNECTED[3:2],R_minus_q_carry__1_n_2,R_minus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\R_s2_reg_n_0_[9] }),
        .O({NLW_R_minus_q_carry__1_O_UNCONNECTED[3],R_minus_q_carry__1_n_5,R_minus_q_carry__1_n_6,R_minus_q_carry__1_n_7}),
        .S({1'b0,\R_s2_reg_n_0_[11] ,\R_s2_reg_n_0_[10] ,R_minus_q_carry__1_i_1__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__1_i_1__2
       (.I0(\R_s2_reg_n_0_[9] ),
        .O(R_minus_q_carry__1_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_1__2
       (.I0(\R_s2_reg_n_0_[4] ),
        .O(R_minus_q_carry_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_2__2
       (.I0(\R_s2_reg_n_0_[3] ),
        .O(R_minus_q_carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_3__2
       (.I0(\R_s2_reg_n_0_[2] ),
        .O(R_minus_q_carry_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_4__2
       (.I0(\R_s2_reg_n_0_[1] ),
        .O(R_minus_q_carry_i_4__2_n_0));
  CARRY4 R_plus_q_carry
       (.CI(1'b0),
        .CO({R_plus_q_carry_n_0,R_plus_q_carry_n_1,R_plus_q_carry_n_2,R_plus_q_carry_n_3}),
        .CYINIT(\R_s2_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({R_plus_q_carry_n_4,R_plus_q_carry_n_5,R_plus_q_carry_n_6,R_plus_q_carry_n_7}),
        .S({\R_s2_reg_n_0_[4] ,\R_s2_reg_n_0_[3] ,\R_s2_reg_n_0_[2] ,\R_s2_reg_n_0_[1] }));
  CARRY4 R_plus_q_carry__0
       (.CI(R_plus_q_carry_n_0),
        .CO({R_plus_q_carry__0_n_0,R_plus_q_carry__0_n_1,R_plus_q_carry__0_n_2,R_plus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\R_s2_reg_n_0_[8] ,1'b0,1'b0,1'b0}),
        .O({R_plus_q_carry__0_n_4,R_plus_q_carry__0_n_5,R_plus_q_carry__0_n_6,R_plus_q_carry__0_n_7}),
        .S({R_plus_q_carry__0_i_1__2_n_0,\R_s2_reg_n_0_[7] ,\R_s2_reg_n_0_[6] ,\R_s2_reg_n_0_[5] }));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__0_i_1__2
       (.I0(\R_s2_reg_n_0_[8] ),
        .O(R_plus_q_carry__0_i_1__2_n_0));
  CARRY4 R_plus_q_carry__1
       (.CI(R_plus_q_carry__0_n_0),
        .CO({NLW_R_plus_q_carry__1_CO_UNCONNECTED[3:2],R_plus_q_carry__1_n_2,R_plus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\R_s2_reg_n_0_[10] ,1'b0}),
        .O({NLW_R_plus_q_carry__1_O_UNCONNECTED[3],R_plus_q_carry__1_n_5,R_plus_q_carry__1_n_6,R_plus_q_carry__1_n_7}),
        .S({1'b0,R_plus_q_carry__1_i_1__2_n_0,R_plus_q_carry__1_i_2__2_n_0,\R_s2_reg_n_0_[9] }));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_1__2
       (.I0(\R_s2_reg_n_0_[11] ),
        .O(R_plus_q_carry__1_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_2__2
       (.I0(\R_s2_reg_n_0_[10] ),
        .O(R_plus_q_carry__1_i_2__2_n_0));
  FDCE \R_s2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry_n_7),
        .Q(\R_s2_reg_n_0_[0] ));
  FDCE \R_s2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__1_n_5),
        .Q(\R_s2_reg_n_0_[10] ));
  FDCE \R_s2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__1_n_4),
        .Q(\R_s2_reg_n_0_[11] ));
  FDCE \R_s2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__2_n_7),
        .Q(\R_s2_reg_n_0_[12] ));
  FDCE \R_s2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__2_n_6),
        .Q(\R_s2_reg_n_0_[13] ));
  FDCE \R_s2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry_n_6),
        .Q(\R_s2_reg_n_0_[1] ));
  FDCE \R_s2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry_n_5),
        .Q(\R_s2_reg_n_0_[2] ));
  FDCE \R_s2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry_n_4),
        .Q(\R_s2_reg_n_0_[3] ));
  FDCE \R_s2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__0_n_7),
        .Q(\R_s2_reg_n_0_[4] ));
  FDCE \R_s2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__0_n_6),
        .Q(\R_s2_reg_n_0_[5] ));
  FDCE \R_s2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__0_n_5),
        .Q(\R_s2_reg_n_0_[6] ));
  FDCE \R_s2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__0_n_4),
        .Q(\R_s2_reg_n_0_[7] ));
  FDCE \R_s2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__1_n_7),
        .Q(\R_s2_reg_n_0_[8] ));
  FDCE \R_s2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__1_n_6),
        .Q(\R_s2_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[0]_i_1__2 
       (.I0(P[0]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[1]_i_1__2 
       (.I0(P[1]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[2]_i_1__2 
       (.I0(P[2]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[3]_i_1__2 
       (.I0(P[3]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[4]_i_1__2 
       (.I0(P[4]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[5]_i_1__2 
       (.I0(P[5]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[6]_i_1__2 
       (.I0(P[6]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[7]_i_1__2 
       (.I0(P[7]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[7]_i_1__2_n_0 ));
  FDCE \c0_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[0]_i_1__2_n_0 ),
        .Q(\c0_s1_reg_n_0_[0] ));
  FDCE \c0_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[1]_i_1__2_n_0 ),
        .Q(\c0_s1_reg_n_0_[1] ));
  FDCE \c0_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[2]_i_1__2_n_0 ),
        .Q(\c0_s1_reg_n_0_[2] ));
  FDCE \c0_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[3]_i_1__2_n_0 ),
        .Q(\c0_s1_reg_n_0_[3] ));
  FDCE \c0_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[4]_i_1__2_n_0 ),
        .Q(\c0_s1_reg_n_0_[4] ));
  FDCE \c0_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[5]_i_1__2_n_0 ),
        .Q(\c0_s1_reg_n_0_[5] ));
  FDCE \c0_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[6]_i_1__2_n_0 ),
        .Q(\c0_s1_reg_n_0_[6] ));
  FDCE \c0_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[7]_i_1__2_n_0 ),
        .Q(\c0_s1_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[0]_i_1__2 
       (.I0(P[8]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[1]_i_1__2 
       (.I0(P[9]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[2]_i_1__2 
       (.I0(P[10]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[3]_i_1__2 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[4]_i_1__2 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[5]_i_1__2 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[5]_i_1__2_n_0 ));
  FDCE \c1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[0]_i_1__2_n_0 ),
        .Q(\c1_s1_reg_n_0_[0] ));
  FDCE \c1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[1]_i_1__2_n_0 ),
        .Q(\c1_s1_reg_n_0_[1] ));
  FDCE \c1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[2]_i_1__2_n_0 ),
        .Q(\c1_s1_reg_n_0_[2] ));
  FDCE \c1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[3]_i_1__2_n_0 ),
        .Q(\c1_s1_reg_n_0_[3] ));
  FDCE \c1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[4]_i_1__2_n_0 ),
        .Q(\c1_s1_reg_n_0_[4] ));
  FDCE \c1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[5]_i_1__2_n_0 ),
        .Q(\c1_s1_reg_n_0_[5] ));
  LUT3 #(
    .INIT(8'h1E)) 
    \m3_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(\R_s2_reg_n_0_[13] ),
        .I1(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I2(\R_s2_reg_n_0_[0] ),
        .O(\R_s2_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__1_n_6),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__1_n_6),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[10] ),
        .O(\R_s2_reg[13]_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__1_n_5),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__1_n_5),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[11] ),
        .O(\R_s2_reg[13]_1 ));
  LUT5 #(
    .INIT(32'hEEEAAAAA)) 
    \m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2 
       (.I0(\R_s2_reg_n_0_[12] ),
        .I1(\R_s2_reg_n_0_[11] ),
        .I2(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3_n_0 ),
        .I3(\R_s2_reg_n_0_[9] ),
        .I4(\R_s2_reg_n_0_[10] ),
        .O(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3 
       (.I0(\R_s2_reg_n_0_[8] ),
        .I1(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4_n_0 ),
        .I2(\R_s2_reg_n_0_[2] ),
        .I3(\R_s2_reg_n_0_[1] ),
        .I4(\R_s2_reg_n_0_[4] ),
        .I5(\R_s2_reg_n_0_[3] ),
        .O(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4 
       (.I0(\R_s2_reg_n_0_[6] ),
        .I1(\R_s2_reg_n_0_[5] ),
        .I2(\R_s2_reg_n_0_[0] ),
        .I3(\R_s2_reg_n_0_[7] ),
        .O(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_7),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry_n_7),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[1] ),
        .O(\R_s2_reg[13]_11 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_6),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry_n_6),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[2] ),
        .O(\R_s2_reg[13]_10 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_5),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry_n_5),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[3] ),
        .O(\R_s2_reg[13]_9 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_4),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry_n_4),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[4] ),
        .O(\R_s2_reg[13]_8 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_7),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__0_n_7),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[5] ),
        .O(\R_s2_reg[13]_7 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_6),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__0_n_6),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[6] ),
        .O(\R_s2_reg[13]_6 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_5),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__0_n_5),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[7] ),
        .O(\R_s2_reg[13]_5 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_4),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__0_n_4),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[8] ),
        .O(\R_s2_reg[13]_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m3_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__1_n_7),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__1_n_7),
        .I3(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[9] ),
        .O(\R_s2_reg[13]_3 ));
  CARRY4 r1__0_carry
       (.CI(1'b0),
        .CO({r1__0_carry_n_0,r1__0_carry_n_1,r1__0_carry_n_2,r1__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({r1__0_carry_i_1__2_n_0,\c1_s1_reg_n_0_[2] ,\c1_s1_reg_n_0_[1] ,\c1_s1_reg_n_0_[0] }),
        .O({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .S({r1__0_carry_i_2__2_n_0,r1__0_carry_i_3__2_n_0,r1__0_carry_i_4__2_n_0,r1__0_carry_i_5__2_n_0}));
  CARRY4 r1__0_carry__0
       (.CI(r1__0_carry_n_0),
        .CO({NLW_r1__0_carry__0_CO_UNCONNECTED[3:1],r1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_i_1__2_n_0}),
        .O({NLW_r1__0_carry__0_O_UNCONNECTED[3:2],r1__0_carry__0_n_6,r1__0_carry__0_n_7}),
        .S({1'b0,1'b0,r1__0_carry__0_i_2__2_n_0,r1__0_carry__0_i_3__2_n_0}));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'hD44D)) 
    r1__0_carry__0_i_1__2
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry__0_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h088FF770)) 
    r1__0_carry__0_i_2__2
       (.I0(\Q1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .I2(r1__0_carry__0_i_4__2_n_0),
        .I3(\c1_s1_reg_n_0_[4] ),
        .I4(r1__0_carry__0_i_5__2_n_0),
        .O(r1__0_carry__0_i_2__2_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    r1__0_carry__0_i_3__2
       (.I0(r1__0_carry__0_i_1__2_n_0),
        .I1(r1__0_carry__0_i_4__2_n_0),
        .I2(\c1_s1_reg_n_0_[4] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[3] ),
        .O(r1__0_carry__0_i_3__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry__0_i_4__2
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry__0_i_4__2_n_0));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    r1__0_carry__0_i_5__2
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\c1_s1_reg_n_0_[5] ),
        .I3(\Q1_s1_reg_n_0_[3] ),
        .I4(\Q1_s1_reg_n_0_[5] ),
        .I5(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry__0_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r1__0_carry_i_1__2
       (.I0(\Q1_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .I3(\c1_s1_reg_n_0_[3] ),
        .O(r1__0_carry_i_1__2_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h69699669)) 
    r1__0_carry_i_2__2
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_2__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry_i_3__2
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\c1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_4__2
       (.I0(\c1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_5__2
       (.I0(\c1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry_i_5__2_n_0));
endmodule

(* ORIG_REF_NAME = "barrett_reduction" *) 
module design_1_polymul_axi_top_0_0_barrett_reduction_8
   (S,
    product,
    product_0,
    \R_s2_reg[13]_0 ,
    \R_s2_reg[13]_1 ,
    \R_s2_reg[13]_2 ,
    \R_s2_reg[13]_3 ,
    \R_s2_reg[13]_4 ,
    \R_s2_reg[13]_5 ,
    \R_s2_reg[13]_6 ,
    \R_s2_reg[13]_7 ,
    \R_s2_reg[13]_8 ,
    \R_s2_reg[13]_9 ,
    \R_s2_reg[13]_10 ,
    \R_s2_reg[13]_11 ,
    O,
    \Q1_s1_reg[6]_0 ,
    \Q1_s1_reg[10]_0 ,
    \Q1_s1_reg[11]_0 ,
    P,
    \c0_s1_reg[0]_0 ,
    clk,
    \c1_s1_reg[0]_0 );
  output [3:0]S;
  output [3:0]product;
  output [2:0]product_0;
  output \R_s2_reg[13]_0 ;
  output \R_s2_reg[13]_1 ;
  output \R_s2_reg[13]_2 ;
  output \R_s2_reg[13]_3 ;
  output \R_s2_reg[13]_4 ;
  output \R_s2_reg[13]_5 ;
  output \R_s2_reg[13]_6 ;
  output \R_s2_reg[13]_7 ;
  output \R_s2_reg[13]_8 ;
  output \R_s2_reg[13]_9 ;
  output \R_s2_reg[13]_10 ;
  output \R_s2_reg[13]_11 ;
  input [3:0]O;
  input [3:0]\Q1_s1_reg[6]_0 ;
  input [3:0]\Q1_s1_reg[10]_0 ;
  input [0:0]\Q1_s1_reg[11]_0 ;
  input [23:0]P;
  input \c0_s1_reg[0]_0 ;
  input clk;
  input \c1_s1_reg[0]_0 ;

  wire [3:0]O;
  wire [23:0]P;
  wire \Q1_s1[10]_i_3__3_n_0 ;
  wire \Q1_s1[10]_i_4__3_n_0 ;
  wire \Q1_s1[10]_i_5__3_n_0 ;
  wire \Q1_s1[10]_i_6__3_n_0 ;
  wire \Q1_s1[11]_i_2__3_n_0 ;
  wire \Q1_s1[2]_i_3__3_n_0 ;
  wire \Q1_s1[2]_i_4__3_n_0 ;
  wire \Q1_s1[2]_i_5__3_n_0 ;
  wire \Q1_s1[2]_i_6__3_n_0 ;
  wire \Q1_s1[6]_i_3__3_n_0 ;
  wire \Q1_s1[6]_i_4__3_n_0 ;
  wire \Q1_s1[6]_i_5__3_n_0 ;
  wire \Q1_s1[6]_i_6__3_n_0 ;
  wire [3:0]\Q1_s1_reg[10]_0 ;
  wire \Q1_s1_reg[10]_i_1__3_n_0 ;
  wire \Q1_s1_reg[10]_i_1__3_n_1 ;
  wire \Q1_s1_reg[10]_i_1__3_n_2 ;
  wire \Q1_s1_reg[10]_i_1__3_n_3 ;
  wire \Q1_s1_reg[10]_i_1__3_n_4 ;
  wire \Q1_s1_reg[10]_i_1__3_n_5 ;
  wire \Q1_s1_reg[10]_i_1__3_n_6 ;
  wire \Q1_s1_reg[10]_i_1__3_n_7 ;
  wire [0:0]\Q1_s1_reg[11]_0 ;
  wire \Q1_s1_reg[11]_i_1__3_n_7 ;
  wire \Q1_s1_reg[2]_i_1__3_n_0 ;
  wire \Q1_s1_reg[2]_i_1__3_n_1 ;
  wire \Q1_s1_reg[2]_i_1__3_n_2 ;
  wire \Q1_s1_reg[2]_i_1__3_n_3 ;
  wire \Q1_s1_reg[2]_i_1__3_n_4 ;
  wire \Q1_s1_reg[2]_i_1__3_n_5 ;
  wire \Q1_s1_reg[2]_i_1__3_n_6 ;
  wire [3:0]\Q1_s1_reg[6]_0 ;
  wire \Q1_s1_reg[6]_i_1__3_n_0 ;
  wire \Q1_s1_reg[6]_i_1__3_n_1 ;
  wire \Q1_s1_reg[6]_i_1__3_n_2 ;
  wire \Q1_s1_reg[6]_i_1__3_n_3 ;
  wire \Q1_s1_reg[6]_i_1__3_n_4 ;
  wire \Q1_s1_reg[6]_i_1__3_n_5 ;
  wire \Q1_s1_reg[6]_i_1__3_n_6 ;
  wire \Q1_s1_reg[6]_i_1__3_n_7 ;
  wire \Q1_s1_reg_n_0_[0] ;
  wire \Q1_s1_reg_n_0_[10] ;
  wire \Q1_s1_reg_n_0_[11] ;
  wire \Q1_s1_reg_n_0_[1] ;
  wire \Q1_s1_reg_n_0_[2] ;
  wire \Q1_s1_reg_n_0_[3] ;
  wire \Q1_s1_reg_n_0_[4] ;
  wire \Q1_s1_reg_n_0_[5] ;
  wire \Q1_s1_reg_n_0_[6] ;
  wire \Q1_s1_reg_n_0_[7] ;
  wire \Q1_s1_reg_n_0_[8] ;
  wire \Q1_s1_reg_n_0_[9] ;
  wire R_comb_carry__0_i_1__3_n_0;
  wire R_comb_carry__0_i_2__3_n_0;
  wire R_comb_carry__0_i_3__3_n_0;
  wire R_comb_carry__0_i_4__3_n_0;
  wire R_comb_carry__0_n_0;
  wire R_comb_carry__0_n_1;
  wire R_comb_carry__0_n_2;
  wire R_comb_carry__0_n_3;
  wire R_comb_carry__0_n_4;
  wire R_comb_carry__0_n_5;
  wire R_comb_carry__0_n_6;
  wire R_comb_carry__0_n_7;
  wire R_comb_carry__1_i_1__3_n_0;
  wire R_comb_carry__1_i_2__3_n_0;
  wire R_comb_carry__1_i_3__3_n_0;
  wire R_comb_carry__1_i_4__3_n_0;
  wire R_comb_carry__1_n_0;
  wire R_comb_carry__1_n_1;
  wire R_comb_carry__1_n_2;
  wire R_comb_carry__1_n_3;
  wire R_comb_carry__1_n_4;
  wire R_comb_carry__1_n_5;
  wire R_comb_carry__1_n_6;
  wire R_comb_carry__1_n_7;
  wire R_comb_carry__2_i_1__3_n_0;
  wire R_comb_carry__2_i_2__3_n_0;
  wire R_comb_carry__2_n_3;
  wire R_comb_carry__2_n_6;
  wire R_comb_carry__2_n_7;
  wire R_comb_carry_i_1__3_n_0;
  wire R_comb_carry_i_2__3_n_0;
  wire R_comb_carry_i_3__3_n_0;
  wire R_comb_carry_i_4__3_n_0;
  wire R_comb_carry_n_0;
  wire R_comb_carry_n_1;
  wire R_comb_carry_n_2;
  wire R_comb_carry_n_3;
  wire R_comb_carry_n_4;
  wire R_comb_carry_n_5;
  wire R_comb_carry_n_6;
  wire R_comb_carry_n_7;
  wire R_minus_q_carry__0_i_1__3_n_0;
  wire R_minus_q_carry__0_i_2__3_n_0;
  wire R_minus_q_carry__0_i_3__3_n_0;
  wire R_minus_q_carry__0_n_0;
  wire R_minus_q_carry__0_n_1;
  wire R_minus_q_carry__0_n_2;
  wire R_minus_q_carry__0_n_3;
  wire R_minus_q_carry__0_n_4;
  wire R_minus_q_carry__0_n_5;
  wire R_minus_q_carry__0_n_6;
  wire R_minus_q_carry__0_n_7;
  wire R_minus_q_carry__1_i_1__3_n_0;
  wire R_minus_q_carry__1_n_2;
  wire R_minus_q_carry__1_n_3;
  wire R_minus_q_carry__1_n_5;
  wire R_minus_q_carry__1_n_6;
  wire R_minus_q_carry__1_n_7;
  wire R_minus_q_carry_i_1__3_n_0;
  wire R_minus_q_carry_i_2__3_n_0;
  wire R_minus_q_carry_i_3__3_n_0;
  wire R_minus_q_carry_i_4__3_n_0;
  wire R_minus_q_carry_n_0;
  wire R_minus_q_carry_n_1;
  wire R_minus_q_carry_n_2;
  wire R_minus_q_carry_n_3;
  wire R_minus_q_carry_n_4;
  wire R_minus_q_carry_n_5;
  wire R_minus_q_carry_n_6;
  wire R_minus_q_carry_n_7;
  wire R_plus_q_carry__0_i_1__3_n_0;
  wire R_plus_q_carry__0_n_0;
  wire R_plus_q_carry__0_n_1;
  wire R_plus_q_carry__0_n_2;
  wire R_plus_q_carry__0_n_3;
  wire R_plus_q_carry__0_n_4;
  wire R_plus_q_carry__0_n_5;
  wire R_plus_q_carry__0_n_6;
  wire R_plus_q_carry__0_n_7;
  wire R_plus_q_carry__1_i_1__3_n_0;
  wire R_plus_q_carry__1_i_2__3_n_0;
  wire R_plus_q_carry__1_n_2;
  wire R_plus_q_carry__1_n_3;
  wire R_plus_q_carry__1_n_5;
  wire R_plus_q_carry__1_n_6;
  wire R_plus_q_carry__1_n_7;
  wire R_plus_q_carry_n_0;
  wire R_plus_q_carry_n_1;
  wire R_plus_q_carry_n_2;
  wire R_plus_q_carry_n_3;
  wire R_plus_q_carry_n_4;
  wire R_plus_q_carry_n_5;
  wire R_plus_q_carry_n_6;
  wire R_plus_q_carry_n_7;
  wire \R_s2_reg[13]_0 ;
  wire \R_s2_reg[13]_1 ;
  wire \R_s2_reg[13]_10 ;
  wire \R_s2_reg[13]_11 ;
  wire \R_s2_reg[13]_2 ;
  wire \R_s2_reg[13]_3 ;
  wire \R_s2_reg[13]_4 ;
  wire \R_s2_reg[13]_5 ;
  wire \R_s2_reg[13]_6 ;
  wire \R_s2_reg[13]_7 ;
  wire \R_s2_reg[13]_8 ;
  wire \R_s2_reg[13]_9 ;
  wire \R_s2_reg_n_0_[0] ;
  wire \R_s2_reg_n_0_[10] ;
  wire \R_s2_reg_n_0_[11] ;
  wire \R_s2_reg_n_0_[12] ;
  wire \R_s2_reg_n_0_[13] ;
  wire \R_s2_reg_n_0_[1] ;
  wire \R_s2_reg_n_0_[2] ;
  wire \R_s2_reg_n_0_[3] ;
  wire \R_s2_reg_n_0_[4] ;
  wire \R_s2_reg_n_0_[5] ;
  wire \R_s2_reg_n_0_[6] ;
  wire \R_s2_reg_n_0_[7] ;
  wire \R_s2_reg_n_0_[8] ;
  wire \R_s2_reg_n_0_[9] ;
  wire [3:0]S;
  wire \c0_s1[0]_i_1__3_n_0 ;
  wire \c0_s1[1]_i_1__3_n_0 ;
  wire \c0_s1[2]_i_1__3_n_0 ;
  wire \c0_s1[3]_i_1__3_n_0 ;
  wire \c0_s1[4]_i_1__3_n_0 ;
  wire \c0_s1[5]_i_1__3_n_0 ;
  wire \c0_s1[6]_i_1__3_n_0 ;
  wire \c0_s1[7]_i_1__3_n_0 ;
  wire \c0_s1_reg[0]_0 ;
  wire \c0_s1_reg_n_0_[0] ;
  wire \c0_s1_reg_n_0_[1] ;
  wire \c0_s1_reg_n_0_[2] ;
  wire \c0_s1_reg_n_0_[3] ;
  wire \c0_s1_reg_n_0_[4] ;
  wire \c0_s1_reg_n_0_[5] ;
  wire \c0_s1_reg_n_0_[6] ;
  wire \c0_s1_reg_n_0_[7] ;
  wire \c1_s1[0]_i_1__3_n_0 ;
  wire \c1_s1[1]_i_1__3_n_0 ;
  wire \c1_s1[2]_i_1__3_n_0 ;
  wire \c1_s1[3]_i_1__3_n_0 ;
  wire \c1_s1[4]_i_1__3_n_0 ;
  wire \c1_s1[5]_i_1__3_n_0 ;
  wire \c1_s1_reg[0]_0 ;
  wire \c1_s1_reg_n_0_[0] ;
  wire \c1_s1_reg_n_0_[1] ;
  wire \c1_s1_reg_n_0_[2] ;
  wire \c1_s1_reg_n_0_[3] ;
  wire \c1_s1_reg_n_0_[4] ;
  wire \c1_s1_reg_n_0_[5] ;
  wire clk;
  wire \m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ;
  wire \m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3_n_0 ;
  wire \m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4_n_0 ;
  wire [3:0]product;
  wire [2:0]product_0;
  wire r1__0_carry__0_i_1__3_n_0;
  wire r1__0_carry__0_i_2__3_n_0;
  wire r1__0_carry__0_i_3__3_n_0;
  wire r1__0_carry__0_i_4__3_n_0;
  wire r1__0_carry__0_i_5__3_n_0;
  wire r1__0_carry__0_n_3;
  wire r1__0_carry__0_n_6;
  wire r1__0_carry__0_n_7;
  wire r1__0_carry_i_1__3_n_0;
  wire r1__0_carry_i_2__3_n_0;
  wire r1__0_carry_i_3__3_n_0;
  wire r1__0_carry_i_4__3_n_0;
  wire r1__0_carry_i_5__3_n_0;
  wire r1__0_carry_n_0;
  wire r1__0_carry_n_1;
  wire r1__0_carry_n_2;
  wire r1__0_carry_n_3;
  wire r1__0_carry_n_4;
  wire r1__0_carry_n_5;
  wire r1__0_carry_n_6;
  wire r1__0_carry_n_7;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_1__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_1__3_O_UNCONNECTED ;
  wire [0:0]\NLW_Q1_s1_reg[2]_i_1__3_O_UNCONNECTED ;
  wire [3:1]NLW_R_comb_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_R_comb_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_R_minus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_minus_q_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_R_plus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_plus_q_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_r1__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_r1__0_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_11 
       (.I0(P[21]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[23]),
        .O(product_0[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_12 
       (.I0(P[20]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[22]),
        .O(product_0[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_13 
       (.I0(P[19]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[21]),
        .O(product_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_3__3 
       (.I0(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[10]_i_3__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_4__3 
       (.I0(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[10]_i_4__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_5__3 
       (.I0(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[10]_i_5__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_6__3 
       (.I0(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[10]_i_6__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[11]_i_2__3 
       (.I0(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[11]_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_11 
       (.I0(P[14]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[16]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_12 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[15]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_13 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[14]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_14 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[13]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_3__3 
       (.I0(O[3]),
        .I1(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[2]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_4__3 
       (.I0(O[2]),
        .I1(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[2]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_5__3 
       (.I0(O[1]),
        .I1(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[2]_i_5__3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_6__3 
       (.I0(O[0]),
        .I1(\Q1_s1_reg[6]_0 [2]),
        .O(\Q1_s1[2]_i_6__3_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_11 
       (.I0(P[18]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[20]),
        .O(product[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_12 
       (.I0(P[17]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[19]),
        .O(product[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_13 
       (.I0(P[16]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[18]),
        .O(product[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_14 
       (.I0(P[15]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[17]),
        .O(product[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[6]_i_3__3 
       (.I0(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[6]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_4__3 
       (.I0(\Q1_s1_reg[6]_0 [2]),
        .I1(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[6]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_5__3 
       (.I0(\Q1_s1_reg[6]_0 [1]),
        .I1(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[6]_i_5__3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_6__3 
       (.I0(\Q1_s1_reg[6]_0 [0]),
        .I1(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[6]_i_6__3_n_0 ));
  FDCE \Q1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1__3_n_6 ),
        .Q(\Q1_s1_reg_n_0_[0] ));
  FDCE \Q1_s1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__3_n_4 ),
        .Q(\Q1_s1_reg_n_0_[10] ));
  CARRY4 \Q1_s1_reg[10]_i_1__3 
       (.CI(\Q1_s1_reg[6]_i_1__3_n_0 ),
        .CO({\Q1_s1_reg[10]_i_1__3_n_0 ,\Q1_s1_reg[10]_i_1__3_n_1 ,\Q1_s1_reg[10]_i_1__3_n_2 ,\Q1_s1_reg[10]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[10]_0 ),
        .O({\Q1_s1_reg[10]_i_1__3_n_4 ,\Q1_s1_reg[10]_i_1__3_n_5 ,\Q1_s1_reg[10]_i_1__3_n_6 ,\Q1_s1_reg[10]_i_1__3_n_7 }),
        .S({\Q1_s1[10]_i_3__3_n_0 ,\Q1_s1[10]_i_4__3_n_0 ,\Q1_s1[10]_i_5__3_n_0 ,\Q1_s1[10]_i_6__3_n_0 }));
  FDCE \Q1_s1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[11]_i_1__3_n_7 ),
        .Q(\Q1_s1_reg_n_0_[11] ));
  CARRY4 \Q1_s1_reg[11]_i_1__3 
       (.CI(\Q1_s1_reg[10]_i_1__3_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_1__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_1__3_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_1__3_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_2__3_n_0 }));
  FDCE \Q1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1__3_n_5 ),
        .Q(\Q1_s1_reg_n_0_[1] ));
  FDCE \Q1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1__3_n_4 ),
        .Q(\Q1_s1_reg_n_0_[2] ));
  CARRY4 \Q1_s1_reg[2]_i_1__3 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_1__3_n_0 ,\Q1_s1_reg[2]_i_1__3_n_1 ,\Q1_s1_reg[2]_i_1__3_n_2 ,\Q1_s1_reg[2]_i_1__3_n_3 }),
        .CYINIT(1'b1),
        .DI(O),
        .O({\Q1_s1_reg[2]_i_1__3_n_4 ,\Q1_s1_reg[2]_i_1__3_n_5 ,\Q1_s1_reg[2]_i_1__3_n_6 ,\NLW_Q1_s1_reg[2]_i_1__3_O_UNCONNECTED [0]}),
        .S({\Q1_s1[2]_i_3__3_n_0 ,\Q1_s1[2]_i_4__3_n_0 ,\Q1_s1[2]_i_5__3_n_0 ,\Q1_s1[2]_i_6__3_n_0 }));
  FDCE \Q1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__3_n_7 ),
        .Q(\Q1_s1_reg_n_0_[3] ));
  FDCE \Q1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__3_n_6 ),
        .Q(\Q1_s1_reg_n_0_[4] ));
  FDCE \Q1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__3_n_5 ),
        .Q(\Q1_s1_reg_n_0_[5] ));
  FDCE \Q1_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1__3_n_4 ),
        .Q(\Q1_s1_reg_n_0_[6] ));
  CARRY4 \Q1_s1_reg[6]_i_1__3 
       (.CI(\Q1_s1_reg[2]_i_1__3_n_0 ),
        .CO({\Q1_s1_reg[6]_i_1__3_n_0 ,\Q1_s1_reg[6]_i_1__3_n_1 ,\Q1_s1_reg[6]_i_1__3_n_2 ,\Q1_s1_reg[6]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[6]_0 ),
        .O({\Q1_s1_reg[6]_i_1__3_n_4 ,\Q1_s1_reg[6]_i_1__3_n_5 ,\Q1_s1_reg[6]_i_1__3_n_6 ,\Q1_s1_reg[6]_i_1__3_n_7 }),
        .S({\Q1_s1[6]_i_3__3_n_0 ,\Q1_s1[6]_i_4__3_n_0 ,\Q1_s1[6]_i_5__3_n_0 ,\Q1_s1[6]_i_6__3_n_0 }));
  FDCE \Q1_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__3_n_7 ),
        .Q(\Q1_s1_reg_n_0_[7] ));
  FDCE \Q1_s1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__3_n_6 ),
        .Q(\Q1_s1_reg_n_0_[8] ));
  FDCE \Q1_s1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1__3_n_5 ),
        .Q(\Q1_s1_reg_n_0_[9] ));
  CARRY4 R_comb_carry
       (.CI(1'b0),
        .CO({R_comb_carry_n_0,R_comb_carry_n_1,R_comb_carry_n_2,R_comb_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\c0_s1_reg_n_0_[3] ,\c0_s1_reg_n_0_[2] ,\c0_s1_reg_n_0_[1] ,\c0_s1_reg_n_0_[0] }),
        .O({R_comb_carry_n_4,R_comb_carry_n_5,R_comb_carry_n_6,R_comb_carry_n_7}),
        .S({R_comb_carry_i_1__3_n_0,R_comb_carry_i_2__3_n_0,R_comb_carry_i_3__3_n_0,R_comb_carry_i_4__3_n_0}));
  CARRY4 R_comb_carry__0
       (.CI(R_comb_carry_n_0),
        .CO({R_comb_carry__0_n_0,R_comb_carry__0_n_1,R_comb_carry__0_n_2,R_comb_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\c0_s1_reg_n_0_[7] ,\c0_s1_reg_n_0_[6] ,\c0_s1_reg_n_0_[5] ,\c0_s1_reg_n_0_[4] }),
        .O({R_comb_carry__0_n_4,R_comb_carry__0_n_5,R_comb_carry__0_n_6,R_comb_carry__0_n_7}),
        .S({R_comb_carry__0_i_1__3_n_0,R_comb_carry__0_i_2__3_n_0,R_comb_carry__0_i_3__3_n_0,R_comb_carry__0_i_4__3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_1__3
       (.I0(\c0_s1_reg_n_0_[7] ),
        .I1(\Q1_s1_reg_n_0_[7] ),
        .O(R_comb_carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_2__3
       (.I0(\c0_s1_reg_n_0_[6] ),
        .I1(\Q1_s1_reg_n_0_[6] ),
        .O(R_comb_carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_3__3
       (.I0(\c0_s1_reg_n_0_[5] ),
        .I1(\Q1_s1_reg_n_0_[5] ),
        .O(R_comb_carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_4__3
       (.I0(\c0_s1_reg_n_0_[4] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .O(R_comb_carry__0_i_4__3_n_0));
  CARRY4 R_comb_carry__1
       (.CI(R_comb_carry__0_n_0),
        .CO({R_comb_carry__1_n_0,R_comb_carry__1_n_1,R_comb_carry__1_n_2,R_comb_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .O({R_comb_carry__1_n_4,R_comb_carry__1_n_5,R_comb_carry__1_n_6,R_comb_carry__1_n_7}),
        .S({R_comb_carry__1_i_1__3_n_0,R_comb_carry__1_i_2__3_n_0,R_comb_carry__1_i_3__3_n_0,R_comb_carry__1_i_4__3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_1__3
       (.I0(r1__0_carry_n_4),
        .I1(\Q1_s1_reg_n_0_[11] ),
        .O(R_comb_carry__1_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_2__3
       (.I0(r1__0_carry_n_5),
        .I1(\Q1_s1_reg_n_0_[10] ),
        .O(R_comb_carry__1_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_3__3
       (.I0(r1__0_carry_n_6),
        .I1(\Q1_s1_reg_n_0_[9] ),
        .O(R_comb_carry__1_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_4__3
       (.I0(r1__0_carry_n_7),
        .I1(\Q1_s1_reg_n_0_[8] ),
        .O(R_comb_carry__1_i_4__3_n_0));
  CARRY4 R_comb_carry__2
       (.CI(R_comb_carry__1_n_0),
        .CO({NLW_R_comb_carry__2_CO_UNCONNECTED[3:1],R_comb_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_n_7}),
        .O({NLW_R_comb_carry__2_O_UNCONNECTED[3:2],R_comb_carry__2_n_6,R_comb_carry__2_n_7}),
        .S({1'b0,1'b0,R_comb_carry__2_i_1__3_n_0,R_comb_carry__2_i_2__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_1__3
       (.I0(r1__0_carry__0_n_6),
        .O(R_comb_carry__2_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_2__3
       (.I0(r1__0_carry__0_n_7),
        .O(R_comb_carry__2_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_1__3
       (.I0(\c0_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .O(R_comb_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_2__3
       (.I0(\c0_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[2] ),
        .O(R_comb_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_3__3
       (.I0(\c0_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(R_comb_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_4__3
       (.I0(\c0_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(R_comb_carry_i_4__3_n_0));
  CARRY4 R_minus_q_carry
       (.CI(1'b0),
        .CO({R_minus_q_carry_n_0,R_minus_q_carry_n_1,R_minus_q_carry_n_2,R_minus_q_carry_n_3}),
        .CYINIT(\R_s2_reg_n_0_[0] ),
        .DI({\R_s2_reg_n_0_[4] ,\R_s2_reg_n_0_[3] ,\R_s2_reg_n_0_[2] ,\R_s2_reg_n_0_[1] }),
        .O({R_minus_q_carry_n_4,R_minus_q_carry_n_5,R_minus_q_carry_n_6,R_minus_q_carry_n_7}),
        .S({R_minus_q_carry_i_1__3_n_0,R_minus_q_carry_i_2__3_n_0,R_minus_q_carry_i_3__3_n_0,R_minus_q_carry_i_4__3_n_0}));
  CARRY4 R_minus_q_carry__0
       (.CI(R_minus_q_carry_n_0),
        .CO({R_minus_q_carry__0_n_0,R_minus_q_carry__0_n_1,R_minus_q_carry__0_n_2,R_minus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\R_s2_reg_n_0_[7] ,\R_s2_reg_n_0_[6] ,\R_s2_reg_n_0_[5] }),
        .O({R_minus_q_carry__0_n_4,R_minus_q_carry__0_n_5,R_minus_q_carry__0_n_6,R_minus_q_carry__0_n_7}),
        .S({\R_s2_reg_n_0_[8] ,R_minus_q_carry__0_i_1__3_n_0,R_minus_q_carry__0_i_2__3_n_0,R_minus_q_carry__0_i_3__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_1__3
       (.I0(\R_s2_reg_n_0_[7] ),
        .O(R_minus_q_carry__0_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_2__3
       (.I0(\R_s2_reg_n_0_[6] ),
        .O(R_minus_q_carry__0_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_3__3
       (.I0(\R_s2_reg_n_0_[5] ),
        .O(R_minus_q_carry__0_i_3__3_n_0));
  CARRY4 R_minus_q_carry__1
       (.CI(R_minus_q_carry__0_n_0),
        .CO({NLW_R_minus_q_carry__1_CO_UNCONNECTED[3:2],R_minus_q_carry__1_n_2,R_minus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\R_s2_reg_n_0_[9] }),
        .O({NLW_R_minus_q_carry__1_O_UNCONNECTED[3],R_minus_q_carry__1_n_5,R_minus_q_carry__1_n_6,R_minus_q_carry__1_n_7}),
        .S({1'b0,\R_s2_reg_n_0_[11] ,\R_s2_reg_n_0_[10] ,R_minus_q_carry__1_i_1__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__1_i_1__3
       (.I0(\R_s2_reg_n_0_[9] ),
        .O(R_minus_q_carry__1_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_1__3
       (.I0(\R_s2_reg_n_0_[4] ),
        .O(R_minus_q_carry_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_2__3
       (.I0(\R_s2_reg_n_0_[3] ),
        .O(R_minus_q_carry_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_3__3
       (.I0(\R_s2_reg_n_0_[2] ),
        .O(R_minus_q_carry_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_4__3
       (.I0(\R_s2_reg_n_0_[1] ),
        .O(R_minus_q_carry_i_4__3_n_0));
  CARRY4 R_plus_q_carry
       (.CI(1'b0),
        .CO({R_plus_q_carry_n_0,R_plus_q_carry_n_1,R_plus_q_carry_n_2,R_plus_q_carry_n_3}),
        .CYINIT(\R_s2_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({R_plus_q_carry_n_4,R_plus_q_carry_n_5,R_plus_q_carry_n_6,R_plus_q_carry_n_7}),
        .S({\R_s2_reg_n_0_[4] ,\R_s2_reg_n_0_[3] ,\R_s2_reg_n_0_[2] ,\R_s2_reg_n_0_[1] }));
  CARRY4 R_plus_q_carry__0
       (.CI(R_plus_q_carry_n_0),
        .CO({R_plus_q_carry__0_n_0,R_plus_q_carry__0_n_1,R_plus_q_carry__0_n_2,R_plus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\R_s2_reg_n_0_[8] ,1'b0,1'b0,1'b0}),
        .O({R_plus_q_carry__0_n_4,R_plus_q_carry__0_n_5,R_plus_q_carry__0_n_6,R_plus_q_carry__0_n_7}),
        .S({R_plus_q_carry__0_i_1__3_n_0,\R_s2_reg_n_0_[7] ,\R_s2_reg_n_0_[6] ,\R_s2_reg_n_0_[5] }));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__0_i_1__3
       (.I0(\R_s2_reg_n_0_[8] ),
        .O(R_plus_q_carry__0_i_1__3_n_0));
  CARRY4 R_plus_q_carry__1
       (.CI(R_plus_q_carry__0_n_0),
        .CO({NLW_R_plus_q_carry__1_CO_UNCONNECTED[3:2],R_plus_q_carry__1_n_2,R_plus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\R_s2_reg_n_0_[10] ,1'b0}),
        .O({NLW_R_plus_q_carry__1_O_UNCONNECTED[3],R_plus_q_carry__1_n_5,R_plus_q_carry__1_n_6,R_plus_q_carry__1_n_7}),
        .S({1'b0,R_plus_q_carry__1_i_1__3_n_0,R_plus_q_carry__1_i_2__3_n_0,\R_s2_reg_n_0_[9] }));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_1__3
       (.I0(\R_s2_reg_n_0_[11] ),
        .O(R_plus_q_carry__1_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_2__3
       (.I0(\R_s2_reg_n_0_[10] ),
        .O(R_plus_q_carry__1_i_2__3_n_0));
  FDCE \R_s2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry_n_7),
        .Q(\R_s2_reg_n_0_[0] ));
  FDCE \R_s2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__1_n_5),
        .Q(\R_s2_reg_n_0_[10] ));
  FDCE \R_s2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__1_n_4),
        .Q(\R_s2_reg_n_0_[11] ));
  FDCE \R_s2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__2_n_7),
        .Q(\R_s2_reg_n_0_[12] ));
  FDCE \R_s2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__2_n_6),
        .Q(\R_s2_reg_n_0_[13] ));
  FDCE \R_s2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry_n_6),
        .Q(\R_s2_reg_n_0_[1] ));
  FDCE \R_s2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry_n_5),
        .Q(\R_s2_reg_n_0_[2] ));
  FDCE \R_s2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry_n_4),
        .Q(\R_s2_reg_n_0_[3] ));
  FDCE \R_s2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__0_n_7),
        .Q(\R_s2_reg_n_0_[4] ));
  FDCE \R_s2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__0_n_6),
        .Q(\R_s2_reg_n_0_[5] ));
  FDCE \R_s2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__0_n_5),
        .Q(\R_s2_reg_n_0_[6] ));
  FDCE \R_s2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__0_n_4),
        .Q(\R_s2_reg_n_0_[7] ));
  FDCE \R_s2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__1_n_7),
        .Q(\R_s2_reg_n_0_[8] ));
  FDCE \R_s2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(R_comb_carry__1_n_6),
        .Q(\R_s2_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[0]_i_1__3 
       (.I0(P[0]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[1]_i_1__3 
       (.I0(P[1]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[2]_i_1__3 
       (.I0(P[2]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[3]_i_1__3 
       (.I0(P[3]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[4]_i_1__3 
       (.I0(P[4]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[5]_i_1__3 
       (.I0(P[5]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[5]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[6]_i_1__3 
       (.I0(P[6]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[7]_i_1__3 
       (.I0(P[7]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[7]_i_1__3_n_0 ));
  FDCE \c0_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[0]_i_1__3_n_0 ),
        .Q(\c0_s1_reg_n_0_[0] ));
  FDCE \c0_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[1]_i_1__3_n_0 ),
        .Q(\c0_s1_reg_n_0_[1] ));
  FDCE \c0_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[2]_i_1__3_n_0 ),
        .Q(\c0_s1_reg_n_0_[2] ));
  FDCE \c0_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[3]_i_1__3_n_0 ),
        .Q(\c0_s1_reg_n_0_[3] ));
  FDCE \c0_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[4]_i_1__3_n_0 ),
        .Q(\c0_s1_reg_n_0_[4] ));
  FDCE \c0_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[5]_i_1__3_n_0 ),
        .Q(\c0_s1_reg_n_0_[5] ));
  FDCE \c0_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[6]_i_1__3_n_0 ),
        .Q(\c0_s1_reg_n_0_[6] ));
  FDCE \c0_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c0_s1[7]_i_1__3_n_0 ),
        .Q(\c0_s1_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[0]_i_1__3 
       (.I0(P[8]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[1]_i_1__3 
       (.I0(P[9]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[2]_i_1__3 
       (.I0(P[10]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[3]_i_1__3 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[4]_i_1__3 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[5]_i_1__3 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[5]_i_1__3_n_0 ));
  FDCE \c1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[0]_i_1__3_n_0 ),
        .Q(\c1_s1_reg_n_0_[0] ));
  FDCE \c1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[1]_i_1__3_n_0 ),
        .Q(\c1_s1_reg_n_0_[1] ));
  FDCE \c1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[2]_i_1__3_n_0 ),
        .Q(\c1_s1_reg_n_0_[2] ));
  FDCE \c1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[3]_i_1__3_n_0 ),
        .Q(\c1_s1_reg_n_0_[3] ));
  FDCE \c1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[4]_i_1__3_n_0 ),
        .Q(\c1_s1_reg_n_0_[4] ));
  FDCE \c1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0]_0 ),
        .D(\c1_s1[5]_i_1__3_n_0 ),
        .Q(\c1_s1_reg_n_0_[5] ));
  LUT3 #(
    .INIT(8'h1E)) 
    \m2_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(\R_s2_reg_n_0_[13] ),
        .I1(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I2(\R_s2_reg_n_0_[0] ),
        .O(\R_s2_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__1_n_6),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__1_n_6),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[10] ),
        .O(\R_s2_reg[13]_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__1_n_5),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__1_n_5),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[11] ),
        .O(\R_s2_reg[13]_1 ));
  LUT5 #(
    .INIT(32'hEEEAAAAA)) 
    \m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2 
       (.I0(\R_s2_reg_n_0_[12] ),
        .I1(\R_s2_reg_n_0_[11] ),
        .I2(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3_n_0 ),
        .I3(\R_s2_reg_n_0_[9] ),
        .I4(\R_s2_reg_n_0_[10] ),
        .O(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3 
       (.I0(\R_s2_reg_n_0_[8] ),
        .I1(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4_n_0 ),
        .I2(\R_s2_reg_n_0_[2] ),
        .I3(\R_s2_reg_n_0_[1] ),
        .I4(\R_s2_reg_n_0_[4] ),
        .I5(\R_s2_reg_n_0_[3] ),
        .O(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4 
       (.I0(\R_s2_reg_n_0_[6] ),
        .I1(\R_s2_reg_n_0_[5] ),
        .I2(\R_s2_reg_n_0_[0] ),
        .I3(\R_s2_reg_n_0_[7] ),
        .O(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_7),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry_n_7),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[1] ),
        .O(\R_s2_reg[13]_11 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_6),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry_n_6),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[2] ),
        .O(\R_s2_reg[13]_10 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_5),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry_n_5),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[3] ),
        .O(\R_s2_reg[13]_9 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry_n_4),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry_n_4),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[4] ),
        .O(\R_s2_reg[13]_8 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_7),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__0_n_7),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[5] ),
        .O(\R_s2_reg[13]_7 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_6),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__0_n_6),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[6] ),
        .O(\R_s2_reg[13]_6 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_5),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__0_n_5),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[7] ),
        .O(\R_s2_reg[13]_5 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__0_n_4),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__0_n_4),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[8] ),
        .O(\R_s2_reg[13]_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m2_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_1 
       (.I0(R_plus_q_carry__1_n_7),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q_carry__1_n_7),
        .I3(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_i_2_n_0 ),
        .I4(\R_s2_reg_n_0_[9] ),
        .O(\R_s2_reg[13]_3 ));
  CARRY4 r1__0_carry
       (.CI(1'b0),
        .CO({r1__0_carry_n_0,r1__0_carry_n_1,r1__0_carry_n_2,r1__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({r1__0_carry_i_1__3_n_0,\c1_s1_reg_n_0_[2] ,\c1_s1_reg_n_0_[1] ,\c1_s1_reg_n_0_[0] }),
        .O({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .S({r1__0_carry_i_2__3_n_0,r1__0_carry_i_3__3_n_0,r1__0_carry_i_4__3_n_0,r1__0_carry_i_5__3_n_0}));
  CARRY4 r1__0_carry__0
       (.CI(r1__0_carry_n_0),
        .CO({NLW_r1__0_carry__0_CO_UNCONNECTED[3:1],r1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_i_1__3_n_0}),
        .O({NLW_r1__0_carry__0_O_UNCONNECTED[3:2],r1__0_carry__0_n_6,r1__0_carry__0_n_7}),
        .S({1'b0,1'b0,r1__0_carry__0_i_2__3_n_0,r1__0_carry__0_i_3__3_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'hD44D)) 
    r1__0_carry__0_i_1__3
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry__0_i_1__3_n_0));
  LUT5 #(
    .INIT(32'h088FF770)) 
    r1__0_carry__0_i_2__3
       (.I0(\Q1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .I2(r1__0_carry__0_i_4__3_n_0),
        .I3(\c1_s1_reg_n_0_[4] ),
        .I4(r1__0_carry__0_i_5__3_n_0),
        .O(r1__0_carry__0_i_2__3_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    r1__0_carry__0_i_3__3
       (.I0(r1__0_carry__0_i_1__3_n_0),
        .I1(r1__0_carry__0_i_4__3_n_0),
        .I2(\c1_s1_reg_n_0_[4] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[3] ),
        .O(r1__0_carry__0_i_3__3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry__0_i_4__3
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry__0_i_4__3_n_0));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    r1__0_carry__0_i_5__3
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\c1_s1_reg_n_0_[5] ),
        .I3(\Q1_s1_reg_n_0_[3] ),
        .I4(\Q1_s1_reg_n_0_[5] ),
        .I5(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry__0_i_5__3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r1__0_carry_i_1__3
       (.I0(\Q1_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .I3(\c1_s1_reg_n_0_[3] ),
        .O(r1__0_carry_i_1__3_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h69699669)) 
    r1__0_carry_i_2__3
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_2__3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry_i_3__3
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\c1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_4__3
       (.I0(\c1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_5__3
       (.I0(\c1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry_i_5__3_n_0));
endmodule

(* ORIG_REF_NAME = "barrett_reduction" *) 
module design_1_polymul_axi_top_0_0_barrett_reduction_9
   (S,
    product,
    product_0,
    D,
    O,
    \Q1_s1_reg[6]_0 ,
    \Q1_s1_reg[10]_0 ,
    \Q1_s1_reg[11]_0 ,
    P,
    \c0_s1_reg[0]_0 ,
    clk,
    \R_s2_reg[0]_0 );
  output [3:0]S;
  output [3:0]product;
  output [2:0]product_0;
  output [12:0]D;
  input [3:0]O;
  input [3:0]\Q1_s1_reg[6]_0 ;
  input [3:0]\Q1_s1_reg[10]_0 ;
  input [0:0]\Q1_s1_reg[11]_0 ;
  input [23:0]P;
  input \c0_s1_reg[0]_0 ;
  input clk;
  input \R_s2_reg[0]_0 ;

  wire [12:0]D;
  wire [3:0]O;
  wire [23:0]P;
  wire \Q1_s1[10]_i_3_n_0 ;
  wire \Q1_s1[10]_i_4_n_0 ;
  wire \Q1_s1[10]_i_5_n_0 ;
  wire \Q1_s1[10]_i_6_n_0 ;
  wire \Q1_s1[11]_i_2_n_0 ;
  wire \Q1_s1[2]_i_3_n_0 ;
  wire \Q1_s1[2]_i_4_n_0 ;
  wire \Q1_s1[2]_i_5_n_0 ;
  wire \Q1_s1[2]_i_6_n_0 ;
  wire \Q1_s1[6]_i_3_n_0 ;
  wire \Q1_s1[6]_i_4_n_0 ;
  wire \Q1_s1[6]_i_5_n_0 ;
  wire \Q1_s1[6]_i_6_n_0 ;
  wire [3:0]\Q1_s1_reg[10]_0 ;
  wire \Q1_s1_reg[10]_i_1_n_0 ;
  wire \Q1_s1_reg[10]_i_1_n_1 ;
  wire \Q1_s1_reg[10]_i_1_n_2 ;
  wire \Q1_s1_reg[10]_i_1_n_3 ;
  wire \Q1_s1_reg[10]_i_1_n_4 ;
  wire \Q1_s1_reg[10]_i_1_n_5 ;
  wire \Q1_s1_reg[10]_i_1_n_6 ;
  wire \Q1_s1_reg[10]_i_1_n_7 ;
  wire [0:0]\Q1_s1_reg[11]_0 ;
  wire \Q1_s1_reg[11]_i_1_n_7 ;
  wire \Q1_s1_reg[2]_i_1_n_0 ;
  wire \Q1_s1_reg[2]_i_1_n_1 ;
  wire \Q1_s1_reg[2]_i_1_n_2 ;
  wire \Q1_s1_reg[2]_i_1_n_3 ;
  wire \Q1_s1_reg[2]_i_1_n_4 ;
  wire \Q1_s1_reg[2]_i_1_n_5 ;
  wire \Q1_s1_reg[2]_i_1_n_6 ;
  wire [3:0]\Q1_s1_reg[6]_0 ;
  wire \Q1_s1_reg[6]_i_1_n_0 ;
  wire \Q1_s1_reg[6]_i_1_n_1 ;
  wire \Q1_s1_reg[6]_i_1_n_2 ;
  wire \Q1_s1_reg[6]_i_1_n_3 ;
  wire \Q1_s1_reg[6]_i_1_n_4 ;
  wire \Q1_s1_reg[6]_i_1_n_5 ;
  wire \Q1_s1_reg[6]_i_1_n_6 ;
  wire \Q1_s1_reg[6]_i_1_n_7 ;
  wire \Q1_s1_reg_n_0_[0] ;
  wire \Q1_s1_reg_n_0_[10] ;
  wire \Q1_s1_reg_n_0_[11] ;
  wire \Q1_s1_reg_n_0_[1] ;
  wire \Q1_s1_reg_n_0_[2] ;
  wire \Q1_s1_reg_n_0_[3] ;
  wire \Q1_s1_reg_n_0_[4] ;
  wire \Q1_s1_reg_n_0_[5] ;
  wire \Q1_s1_reg_n_0_[6] ;
  wire \Q1_s1_reg_n_0_[7] ;
  wire \Q1_s1_reg_n_0_[8] ;
  wire \Q1_s1_reg_n_0_[9] ;
  wire R_comb_carry__0_i_1_n_0;
  wire R_comb_carry__0_i_2_n_0;
  wire R_comb_carry__0_i_3_n_0;
  wire R_comb_carry__0_i_4_n_0;
  wire R_comb_carry__0_n_0;
  wire R_comb_carry__0_n_1;
  wire R_comb_carry__0_n_2;
  wire R_comb_carry__0_n_3;
  wire R_comb_carry__0_n_4;
  wire R_comb_carry__0_n_5;
  wire R_comb_carry__0_n_6;
  wire R_comb_carry__0_n_7;
  wire R_comb_carry__1_i_1_n_0;
  wire R_comb_carry__1_i_2_n_0;
  wire R_comb_carry__1_i_3_n_0;
  wire R_comb_carry__1_i_4_n_0;
  wire R_comb_carry__1_n_0;
  wire R_comb_carry__1_n_1;
  wire R_comb_carry__1_n_2;
  wire R_comb_carry__1_n_3;
  wire R_comb_carry__1_n_4;
  wire R_comb_carry__1_n_5;
  wire R_comb_carry__1_n_6;
  wire R_comb_carry__1_n_7;
  wire R_comb_carry__2_i_1_n_0;
  wire R_comb_carry__2_i_2_n_0;
  wire R_comb_carry__2_n_3;
  wire R_comb_carry__2_n_6;
  wire R_comb_carry__2_n_7;
  wire R_comb_carry_i_1_n_0;
  wire R_comb_carry_i_2_n_0;
  wire R_comb_carry_i_3_n_0;
  wire R_comb_carry_i_4_n_0;
  wire R_comb_carry_n_0;
  wire R_comb_carry_n_1;
  wire R_comb_carry_n_2;
  wire R_comb_carry_n_3;
  wire R_comb_carry_n_4;
  wire R_comb_carry_n_5;
  wire R_comb_carry_n_6;
  wire R_comb_carry_n_7;
  wire [12:1]R_minus_q;
  wire R_minus_q_carry__0_i_1_n_0;
  wire R_minus_q_carry__0_i_2_n_0;
  wire R_minus_q_carry__0_i_3_n_0;
  wire R_minus_q_carry__0_n_0;
  wire R_minus_q_carry__0_n_1;
  wire R_minus_q_carry__0_n_2;
  wire R_minus_q_carry__0_n_3;
  wire R_minus_q_carry__1_i_1_n_0;
  wire R_minus_q_carry__1_i_2_n_0;
  wire R_minus_q_carry__1_n_1;
  wire R_minus_q_carry__1_n_2;
  wire R_minus_q_carry__1_n_3;
  wire R_minus_q_carry_i_1_n_0;
  wire R_minus_q_carry_i_2_n_0;
  wire R_minus_q_carry_i_3_n_0;
  wire R_minus_q_carry_i_4_n_0;
  wire R_minus_q_carry_n_0;
  wire R_minus_q_carry_n_1;
  wire R_minus_q_carry_n_2;
  wire R_minus_q_carry_n_3;
  wire R_plus_q_carry__0_i_1_n_0;
  wire R_plus_q_carry__0_n_0;
  wire R_plus_q_carry__0_n_1;
  wire R_plus_q_carry__0_n_2;
  wire R_plus_q_carry__0_n_3;
  wire R_plus_q_carry__1_i_1_n_0;
  wire R_plus_q_carry__1_i_2_n_0;
  wire R_plus_q_carry__1_n_1;
  wire R_plus_q_carry__1_n_2;
  wire R_plus_q_carry__1_n_3;
  wire R_plus_q_carry_n_0;
  wire R_plus_q_carry_n_1;
  wire R_plus_q_carry_n_2;
  wire R_plus_q_carry_n_3;
  wire \R_s2_reg[0]_0 ;
  wire \R_s2_reg_n_0_[0] ;
  wire \R_s2_reg_n_0_[10] ;
  wire \R_s2_reg_n_0_[11] ;
  wire \R_s2_reg_n_0_[12] ;
  wire \R_s2_reg_n_0_[13] ;
  wire \R_s2_reg_n_0_[1] ;
  wire \R_s2_reg_n_0_[2] ;
  wire \R_s2_reg_n_0_[3] ;
  wire \R_s2_reg_n_0_[4] ;
  wire \R_s2_reg_n_0_[5] ;
  wire \R_s2_reg_n_0_[6] ;
  wire \R_s2_reg_n_0_[7] ;
  wire \R_s2_reg_n_0_[8] ;
  wire \R_s2_reg_n_0_[9] ;
  wire [3:0]S;
  wire \a_reg[12]_i_3_n_0 ;
  wire \a_reg[12]_i_4_n_0 ;
  wire \c0_s1[0]_i_1_n_0 ;
  wire \c0_s1[1]_i_1_n_0 ;
  wire \c0_s1[2]_i_1_n_0 ;
  wire \c0_s1[3]_i_1_n_0 ;
  wire \c0_s1[4]_i_1_n_0 ;
  wire \c0_s1[5]_i_1_n_0 ;
  wire \c0_s1[6]_i_1_n_0 ;
  wire \c0_s1[7]_i_1_n_0 ;
  wire \c0_s1_reg[0]_0 ;
  wire \c0_s1_reg_n_0_[0] ;
  wire \c0_s1_reg_n_0_[1] ;
  wire \c0_s1_reg_n_0_[2] ;
  wire \c0_s1_reg_n_0_[3] ;
  wire \c0_s1_reg_n_0_[4] ;
  wire \c0_s1_reg_n_0_[5] ;
  wire \c0_s1_reg_n_0_[6] ;
  wire \c0_s1_reg_n_0_[7] ;
  wire \c1_s1[0]_i_1_n_0 ;
  wire \c1_s1[1]_i_1_n_0 ;
  wire \c1_s1[2]_i_1_n_0 ;
  wire \c1_s1[3]_i_1_n_0 ;
  wire \c1_s1[4]_i_1_n_0 ;
  wire \c1_s1[5]_i_1_n_0 ;
  wire \c1_s1_reg_n_0_[0] ;
  wire \c1_s1_reg_n_0_[1] ;
  wire \c1_s1_reg_n_0_[2] ;
  wire \c1_s1_reg_n_0_[3] ;
  wire \c1_s1_reg_n_0_[4] ;
  wire \c1_s1_reg_n_0_[5] ;
  wire clk;
  wire [12:1]p_3_in;
  wire [3:0]product;
  wire [2:0]product_0;
  wire r1__0_carry__0_i_1_n_0;
  wire r1__0_carry__0_i_2_n_0;
  wire r1__0_carry__0_i_3_n_0;
  wire r1__0_carry__0_i_4_n_0;
  wire r1__0_carry__0_i_5_n_0;
  wire r1__0_carry__0_n_3;
  wire r1__0_carry__0_n_6;
  wire r1__0_carry__0_n_7;
  wire r1__0_carry_i_1_n_0;
  wire r1__0_carry_i_2_n_0;
  wire r1__0_carry_i_3_n_0;
  wire r1__0_carry_i_4_n_0;
  wire r1__0_carry_i_5_n_0;
  wire r1__0_carry_n_0;
  wire r1__0_carry_n_1;
  wire r1__0_carry_n_2;
  wire r1__0_carry_n_3;
  wire r1__0_carry_n_4;
  wire r1__0_carry_n_5;
  wire r1__0_carry_n_6;
  wire r1__0_carry_n_7;
  wire r_chosen2;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_Q1_s1_reg[2]_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_R_comb_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_R_comb_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_R_minus_q_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_R_plus_q_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_r1__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_r1__0_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_11 
       (.I0(P[21]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[23]),
        .O(product_0[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_12 
       (.I0(P[20]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[22]),
        .O(product_0[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[10]_i_13 
       (.I0(P[19]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[21]),
        .O(product_0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_3 
       (.I0(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[10]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_4 
       (.I0(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[10]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_5 
       (.I0(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[10]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[10]_i_6 
       (.I0(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[10]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[11]_i_2 
       (.I0(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_11 
       (.I0(P[14]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[16]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_12 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[15]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_13 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[14]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[2]_i_14 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[13]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_3 
       (.I0(O[3]),
        .I1(\Q1_s1_reg[10]_0 [1]),
        .O(\Q1_s1[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_4 
       (.I0(O[2]),
        .I1(\Q1_s1_reg[10]_0 [0]),
        .O(\Q1_s1[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_5 
       (.I0(O[1]),
        .I1(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[2]_i_6 
       (.I0(O[0]),
        .I1(\Q1_s1_reg[6]_0 [2]),
        .O(\Q1_s1[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_11 
       (.I0(P[18]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[20]),
        .O(product[3]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_12 
       (.I0(P[17]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[19]),
        .O(product[2]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_13 
       (.I0(P[16]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[18]),
        .O(product[1]));
  LUT3 #(
    .INIT(8'h48)) 
    \Q1_s1[6]_i_14 
       (.I0(P[15]),
        .I1(\c0_s1_reg[0]_0 ),
        .I2(P[17]),
        .O(product[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q1_s1[6]_i_3 
       (.I0(\Q1_s1_reg[6]_0 [3]),
        .O(\Q1_s1[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_4 
       (.I0(\Q1_s1_reg[6]_0 [2]),
        .I1(\Q1_s1_reg[11]_0 ),
        .O(\Q1_s1[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_5 
       (.I0(\Q1_s1_reg[6]_0 [1]),
        .I1(\Q1_s1_reg[10]_0 [3]),
        .O(\Q1_s1[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q1_s1[6]_i_6 
       (.I0(\Q1_s1_reg[6]_0 [0]),
        .I1(\Q1_s1_reg[10]_0 [2]),
        .O(\Q1_s1[6]_i_6_n_0 ));
  FDCE \Q1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1_n_6 ),
        .Q(\Q1_s1_reg_n_0_[0] ));
  FDCE \Q1_s1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1_n_4 ),
        .Q(\Q1_s1_reg_n_0_[10] ));
  CARRY4 \Q1_s1_reg[10]_i_1 
       (.CI(\Q1_s1_reg[6]_i_1_n_0 ),
        .CO({\Q1_s1_reg[10]_i_1_n_0 ,\Q1_s1_reg[10]_i_1_n_1 ,\Q1_s1_reg[10]_i_1_n_2 ,\Q1_s1_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[10]_0 ),
        .O({\Q1_s1_reg[10]_i_1_n_4 ,\Q1_s1_reg[10]_i_1_n_5 ,\Q1_s1_reg[10]_i_1_n_6 ,\Q1_s1_reg[10]_i_1_n_7 }),
        .S({\Q1_s1[10]_i_3_n_0 ,\Q1_s1[10]_i_4_n_0 ,\Q1_s1[10]_i_5_n_0 ,\Q1_s1[10]_i_6_n_0 }));
  FDCE \Q1_s1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[11]_i_1_n_7 ),
        .Q(\Q1_s1_reg_n_0_[11] ));
  CARRY4 \Q1_s1_reg[11]_i_1 
       (.CI(\Q1_s1_reg[10]_i_1_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_1_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_2_n_0 }));
  FDCE \Q1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1_n_5 ),
        .Q(\Q1_s1_reg_n_0_[1] ));
  FDCE \Q1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[2]_i_1_n_4 ),
        .Q(\Q1_s1_reg_n_0_[2] ));
  CARRY4 \Q1_s1_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_1_n_0 ,\Q1_s1_reg[2]_i_1_n_1 ,\Q1_s1_reg[2]_i_1_n_2 ,\Q1_s1_reg[2]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(O),
        .O({\Q1_s1_reg[2]_i_1_n_4 ,\Q1_s1_reg[2]_i_1_n_5 ,\Q1_s1_reg[2]_i_1_n_6 ,\NLW_Q1_s1_reg[2]_i_1_O_UNCONNECTED [0]}),
        .S({\Q1_s1[2]_i_3_n_0 ,\Q1_s1[2]_i_4_n_0 ,\Q1_s1[2]_i_5_n_0 ,\Q1_s1[2]_i_6_n_0 }));
  FDCE \Q1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1_n_7 ),
        .Q(\Q1_s1_reg_n_0_[3] ));
  FDCE \Q1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1_n_6 ),
        .Q(\Q1_s1_reg_n_0_[4] ));
  FDCE \Q1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1_n_5 ),
        .Q(\Q1_s1_reg_n_0_[5] ));
  FDCE \Q1_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[6]_i_1_n_4 ),
        .Q(\Q1_s1_reg_n_0_[6] ));
  CARRY4 \Q1_s1_reg[6]_i_1 
       (.CI(\Q1_s1_reg[2]_i_1_n_0 ),
        .CO({\Q1_s1_reg[6]_i_1_n_0 ,\Q1_s1_reg[6]_i_1_n_1 ,\Q1_s1_reg[6]_i_1_n_2 ,\Q1_s1_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Q1_s1_reg[6]_0 ),
        .O({\Q1_s1_reg[6]_i_1_n_4 ,\Q1_s1_reg[6]_i_1_n_5 ,\Q1_s1_reg[6]_i_1_n_6 ,\Q1_s1_reg[6]_i_1_n_7 }),
        .S({\Q1_s1[6]_i_3_n_0 ,\Q1_s1[6]_i_4_n_0 ,\Q1_s1[6]_i_5_n_0 ,\Q1_s1[6]_i_6_n_0 }));
  FDCE \Q1_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1_n_7 ),
        .Q(\Q1_s1_reg_n_0_[7] ));
  FDCE \Q1_s1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1_n_6 ),
        .Q(\Q1_s1_reg_n_0_[8] ));
  FDCE \Q1_s1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\Q1_s1_reg[10]_i_1_n_5 ),
        .Q(\Q1_s1_reg_n_0_[9] ));
  CARRY4 R_comb_carry
       (.CI(1'b0),
        .CO({R_comb_carry_n_0,R_comb_carry_n_1,R_comb_carry_n_2,R_comb_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\c0_s1_reg_n_0_[3] ,\c0_s1_reg_n_0_[2] ,\c0_s1_reg_n_0_[1] ,\c0_s1_reg_n_0_[0] }),
        .O({R_comb_carry_n_4,R_comb_carry_n_5,R_comb_carry_n_6,R_comb_carry_n_7}),
        .S({R_comb_carry_i_1_n_0,R_comb_carry_i_2_n_0,R_comb_carry_i_3_n_0,R_comb_carry_i_4_n_0}));
  CARRY4 R_comb_carry__0
       (.CI(R_comb_carry_n_0),
        .CO({R_comb_carry__0_n_0,R_comb_carry__0_n_1,R_comb_carry__0_n_2,R_comb_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\c0_s1_reg_n_0_[7] ,\c0_s1_reg_n_0_[6] ,\c0_s1_reg_n_0_[5] ,\c0_s1_reg_n_0_[4] }),
        .O({R_comb_carry__0_n_4,R_comb_carry__0_n_5,R_comb_carry__0_n_6,R_comb_carry__0_n_7}),
        .S({R_comb_carry__0_i_1_n_0,R_comb_carry__0_i_2_n_0,R_comb_carry__0_i_3_n_0,R_comb_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_1
       (.I0(\c0_s1_reg_n_0_[7] ),
        .I1(\Q1_s1_reg_n_0_[7] ),
        .O(R_comb_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_2
       (.I0(\c0_s1_reg_n_0_[6] ),
        .I1(\Q1_s1_reg_n_0_[6] ),
        .O(R_comb_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_3
       (.I0(\c0_s1_reg_n_0_[5] ),
        .I1(\Q1_s1_reg_n_0_[5] ),
        .O(R_comb_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__0_i_4
       (.I0(\c0_s1_reg_n_0_[4] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .O(R_comb_carry__0_i_4_n_0));
  CARRY4 R_comb_carry__1
       (.CI(R_comb_carry__0_n_0),
        .CO({R_comb_carry__1_n_0,R_comb_carry__1_n_1,R_comb_carry__1_n_2,R_comb_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .O({R_comb_carry__1_n_4,R_comb_carry__1_n_5,R_comb_carry__1_n_6,R_comb_carry__1_n_7}),
        .S({R_comb_carry__1_i_1_n_0,R_comb_carry__1_i_2_n_0,R_comb_carry__1_i_3_n_0,R_comb_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_1
       (.I0(r1__0_carry_n_4),
        .I1(\Q1_s1_reg_n_0_[11] ),
        .O(R_comb_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_2
       (.I0(r1__0_carry_n_5),
        .I1(\Q1_s1_reg_n_0_[10] ),
        .O(R_comb_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_3
       (.I0(r1__0_carry_n_6),
        .I1(\Q1_s1_reg_n_0_[9] ),
        .O(R_comb_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry__1_i_4
       (.I0(r1__0_carry_n_7),
        .I1(\Q1_s1_reg_n_0_[8] ),
        .O(R_comb_carry__1_i_4_n_0));
  CARRY4 R_comb_carry__2
       (.CI(R_comb_carry__1_n_0),
        .CO({NLW_R_comb_carry__2_CO_UNCONNECTED[3:1],R_comb_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_n_7}),
        .O({NLW_R_comb_carry__2_O_UNCONNECTED[3:2],R_comb_carry__2_n_6,R_comb_carry__2_n_7}),
        .S({1'b0,1'b0,R_comb_carry__2_i_1_n_0,R_comb_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_1
       (.I0(r1__0_carry__0_n_6),
        .O(R_comb_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_comb_carry__2_i_2
       (.I0(r1__0_carry__0_n_7),
        .O(R_comb_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_1
       (.I0(\c0_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .O(R_comb_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_2
       (.I0(\c0_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[2] ),
        .O(R_comb_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_3
       (.I0(\c0_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(R_comb_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    R_comb_carry_i_4
       (.I0(\c0_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(R_comb_carry_i_4_n_0));
  CARRY4 R_minus_q_carry
       (.CI(1'b0),
        .CO({R_minus_q_carry_n_0,R_minus_q_carry_n_1,R_minus_q_carry_n_2,R_minus_q_carry_n_3}),
        .CYINIT(\R_s2_reg_n_0_[0] ),
        .DI({\R_s2_reg_n_0_[4] ,\R_s2_reg_n_0_[3] ,\R_s2_reg_n_0_[2] ,\R_s2_reg_n_0_[1] }),
        .O(R_minus_q[4:1]),
        .S({R_minus_q_carry_i_1_n_0,R_minus_q_carry_i_2_n_0,R_minus_q_carry_i_3_n_0,R_minus_q_carry_i_4_n_0}));
  CARRY4 R_minus_q_carry__0
       (.CI(R_minus_q_carry_n_0),
        .CO({R_minus_q_carry__0_n_0,R_minus_q_carry__0_n_1,R_minus_q_carry__0_n_2,R_minus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\R_s2_reg_n_0_[7] ,\R_s2_reg_n_0_[6] ,\R_s2_reg_n_0_[5] }),
        .O(R_minus_q[8:5]),
        .S({\R_s2_reg_n_0_[8] ,R_minus_q_carry__0_i_1_n_0,R_minus_q_carry__0_i_2_n_0,R_minus_q_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_1
       (.I0(\R_s2_reg_n_0_[7] ),
        .O(R_minus_q_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_2
       (.I0(\R_s2_reg_n_0_[6] ),
        .O(R_minus_q_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__0_i_3
       (.I0(\R_s2_reg_n_0_[5] ),
        .O(R_minus_q_carry__0_i_3_n_0));
  CARRY4 R_minus_q_carry__1
       (.CI(R_minus_q_carry__0_n_0),
        .CO({NLW_R_minus_q_carry__1_CO_UNCONNECTED[3],R_minus_q_carry__1_n_1,R_minus_q_carry__1_n_2,R_minus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\R_s2_reg_n_0_[9] }),
        .O(R_minus_q[12:9]),
        .S({R_minus_q_carry__1_i_1_n_0,\R_s2_reg_n_0_[11] ,\R_s2_reg_n_0_[10] ,R_minus_q_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__1_i_1
       (.I0(\R_s2_reg_n_0_[12] ),
        .O(R_minus_q_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry__1_i_2
       (.I0(\R_s2_reg_n_0_[9] ),
        .O(R_minus_q_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_1
       (.I0(\R_s2_reg_n_0_[4] ),
        .O(R_minus_q_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_2
       (.I0(\R_s2_reg_n_0_[3] ),
        .O(R_minus_q_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_3
       (.I0(\R_s2_reg_n_0_[2] ),
        .O(R_minus_q_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_minus_q_carry_i_4
       (.I0(\R_s2_reg_n_0_[1] ),
        .O(R_minus_q_carry_i_4_n_0));
  CARRY4 R_plus_q_carry
       (.CI(1'b0),
        .CO({R_plus_q_carry_n_0,R_plus_q_carry_n_1,R_plus_q_carry_n_2,R_plus_q_carry_n_3}),
        .CYINIT(\R_s2_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_3_in[4:1]),
        .S({\R_s2_reg_n_0_[4] ,\R_s2_reg_n_0_[3] ,\R_s2_reg_n_0_[2] ,\R_s2_reg_n_0_[1] }));
  CARRY4 R_plus_q_carry__0
       (.CI(R_plus_q_carry_n_0),
        .CO({R_plus_q_carry__0_n_0,R_plus_q_carry__0_n_1,R_plus_q_carry__0_n_2,R_plus_q_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\R_s2_reg_n_0_[8] ,1'b0,1'b0,1'b0}),
        .O(p_3_in[8:5]),
        .S({R_plus_q_carry__0_i_1_n_0,\R_s2_reg_n_0_[7] ,\R_s2_reg_n_0_[6] ,\R_s2_reg_n_0_[5] }));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__0_i_1
       (.I0(\R_s2_reg_n_0_[8] ),
        .O(R_plus_q_carry__0_i_1_n_0));
  CARRY4 R_plus_q_carry__1
       (.CI(R_plus_q_carry__0_n_0),
        .CO({NLW_R_plus_q_carry__1_CO_UNCONNECTED[3],R_plus_q_carry__1_n_1,R_plus_q_carry__1_n_2,R_plus_q_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\R_s2_reg_n_0_[11] ,\R_s2_reg_n_0_[10] ,1'b0}),
        .O(p_3_in[12:9]),
        .S({\R_s2_reg_n_0_[12] ,R_plus_q_carry__1_i_1_n_0,R_plus_q_carry__1_i_2_n_0,\R_s2_reg_n_0_[9] }));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_1
       (.I0(\R_s2_reg_n_0_[11] ),
        .O(R_plus_q_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    R_plus_q_carry__1_i_2
       (.I0(\R_s2_reg_n_0_[10] ),
        .O(R_plus_q_carry__1_i_2_n_0));
  FDCE \R_s2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry_n_7),
        .Q(\R_s2_reg_n_0_[0] ));
  FDCE \R_s2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__1_n_5),
        .Q(\R_s2_reg_n_0_[10] ));
  FDCE \R_s2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__1_n_4),
        .Q(\R_s2_reg_n_0_[11] ));
  FDCE \R_s2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__2_n_7),
        .Q(\R_s2_reg_n_0_[12] ));
  FDCE \R_s2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__2_n_6),
        .Q(\R_s2_reg_n_0_[13] ));
  FDCE \R_s2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry_n_6),
        .Q(\R_s2_reg_n_0_[1] ));
  FDCE \R_s2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry_n_5),
        .Q(\R_s2_reg_n_0_[2] ));
  FDCE \R_s2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry_n_4),
        .Q(\R_s2_reg_n_0_[3] ));
  FDCE \R_s2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__0_n_7),
        .Q(\R_s2_reg_n_0_[4] ));
  FDCE \R_s2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__0_n_6),
        .Q(\R_s2_reg_n_0_[5] ));
  FDCE \R_s2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__0_n_5),
        .Q(\R_s2_reg_n_0_[6] ));
  FDCE \R_s2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__0_n_4),
        .Q(\R_s2_reg_n_0_[7] ));
  FDCE \R_s2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__1_n_7),
        .Q(\R_s2_reg_n_0_[8] ));
  FDCE \R_s2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(R_comb_carry__1_n_6),
        .Q(\R_s2_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h1E)) 
    \a_reg[0]_i_1 
       (.I0(\R_s2_reg_n_0_[13] ),
        .I1(r_chosen2),
        .I2(\R_s2_reg_n_0_[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[10]_i_1 
       (.I0(p_3_in[10]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[10]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[10] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[11]_i_1 
       (.I0(p_3_in[11]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[11]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[11] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[12]_i_1 
       (.I0(p_3_in[12]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[12]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hEEEAAAAA)) 
    \a_reg[12]_i_2 
       (.I0(\R_s2_reg_n_0_[12] ),
        .I1(\R_s2_reg_n_0_[11] ),
        .I2(\a_reg[12]_i_3_n_0 ),
        .I3(\R_s2_reg_n_0_[9] ),
        .I4(\R_s2_reg_n_0_[10] ),
        .O(r_chosen2));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \a_reg[12]_i_3 
       (.I0(\R_s2_reg_n_0_[8] ),
        .I1(\a_reg[12]_i_4_n_0 ),
        .I2(\R_s2_reg_n_0_[2] ),
        .I3(\R_s2_reg_n_0_[1] ),
        .I4(\R_s2_reg_n_0_[4] ),
        .I5(\R_s2_reg_n_0_[3] ),
        .O(\a_reg[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \a_reg[12]_i_4 
       (.I0(\R_s2_reg_n_0_[6] ),
        .I1(\R_s2_reg_n_0_[5] ),
        .I2(\R_s2_reg_n_0_[0] ),
        .I3(\R_s2_reg_n_0_[7] ),
        .O(\a_reg[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[1]_i_1 
       (.I0(p_3_in[1]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[1]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[2]_i_1 
       (.I0(p_3_in[2]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[2]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[3]_i_1 
       (.I0(p_3_in[3]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[3]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[4]_i_1 
       (.I0(p_3_in[4]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[4]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[5]_i_1 
       (.I0(p_3_in[5]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[5]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[5] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[6]_i_1 
       (.I0(p_3_in[6]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[6]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[7]_i_1 
       (.I0(p_3_in[7]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[7]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[7] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[8]_i_1 
       (.I0(p_3_in[8]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[8]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_reg[9]_i_1 
       (.I0(p_3_in[9]),
        .I1(\R_s2_reg_n_0_[13] ),
        .I2(R_minus_q[9]),
        .I3(r_chosen2),
        .I4(\R_s2_reg_n_0_[9] ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[0]_i_1 
       (.I0(P[0]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[1]_i_1 
       (.I0(P[1]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[2]_i_1 
       (.I0(P[2]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[3]_i_1 
       (.I0(P[3]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[4]_i_1 
       (.I0(P[4]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[5]_i_1 
       (.I0(P[5]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[6]_i_1 
       (.I0(P[6]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c0_s1[7]_i_1 
       (.I0(P[7]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c0_s1[7]_i_1_n_0 ));
  FDCE \c0_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[0]_i_1_n_0 ),
        .Q(\c0_s1_reg_n_0_[0] ));
  FDCE \c0_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[1]_i_1_n_0 ),
        .Q(\c0_s1_reg_n_0_[1] ));
  FDCE \c0_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[2]_i_1_n_0 ),
        .Q(\c0_s1_reg_n_0_[2] ));
  FDCE \c0_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[3]_i_1_n_0 ),
        .Q(\c0_s1_reg_n_0_[3] ));
  FDCE \c0_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[4]_i_1_n_0 ),
        .Q(\c0_s1_reg_n_0_[4] ));
  FDCE \c0_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[5]_i_1_n_0 ),
        .Q(\c0_s1_reg_n_0_[5] ));
  FDCE \c0_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[6]_i_1_n_0 ),
        .Q(\c0_s1_reg_n_0_[6] ));
  FDCE \c0_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c0_s1[7]_i_1_n_0 ),
        .Q(\c0_s1_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[0]_i_1 
       (.I0(P[8]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[1]_i_1 
       (.I0(P[9]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[2]_i_1 
       (.I0(P[10]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[3]_i_1 
       (.I0(P[11]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[4]_i_1 
       (.I0(P[12]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c1_s1[5]_i_1 
       (.I0(P[13]),
        .I1(\c0_s1_reg[0]_0 ),
        .O(\c1_s1[5]_i_1_n_0 ));
  FDCE \c1_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[0]_i_1_n_0 ),
        .Q(\c1_s1_reg_n_0_[0] ));
  FDCE \c1_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[1]_i_1_n_0 ),
        .Q(\c1_s1_reg_n_0_[1] ));
  FDCE \c1_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[2]_i_1_n_0 ),
        .Q(\c1_s1_reg_n_0_[2] ));
  FDCE \c1_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[3]_i_1_n_0 ),
        .Q(\c1_s1_reg_n_0_[3] ));
  FDCE \c1_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[4]_i_1_n_0 ),
        .Q(\c1_s1_reg_n_0_[4] ));
  FDCE \c1_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0]_0 ),
        .D(\c1_s1[5]_i_1_n_0 ),
        .Q(\c1_s1_reg_n_0_[5] ));
  CARRY4 r1__0_carry
       (.CI(1'b0),
        .CO({r1__0_carry_n_0,r1__0_carry_n_1,r1__0_carry_n_2,r1__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({r1__0_carry_i_1_n_0,\c1_s1_reg_n_0_[2] ,\c1_s1_reg_n_0_[1] ,\c1_s1_reg_n_0_[0] }),
        .O({r1__0_carry_n_4,r1__0_carry_n_5,r1__0_carry_n_6,r1__0_carry_n_7}),
        .S({r1__0_carry_i_2_n_0,r1__0_carry_i_3_n_0,r1__0_carry_i_4_n_0,r1__0_carry_i_5_n_0}));
  CARRY4 r1__0_carry__0
       (.CI(r1__0_carry_n_0),
        .CO({NLW_r1__0_carry__0_CO_UNCONNECTED[3:1],r1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r1__0_carry__0_i_1_n_0}),
        .O({NLW_r1__0_carry__0_O_UNCONNECTED[3:2],r1__0_carry__0_n_6,r1__0_carry__0_n_7}),
        .S({1'b0,1'b0,r1__0_carry__0_i_2_n_0,r1__0_carry__0_i_3_n_0}));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hD44D)) 
    r1__0_carry__0_i_1
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h088FF770)) 
    r1__0_carry__0_i_2
       (.I0(\Q1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[3] ),
        .I2(r1__0_carry__0_i_4_n_0),
        .I3(\c1_s1_reg_n_0_[4] ),
        .I4(r1__0_carry__0_i_5_n_0),
        .O(r1__0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    r1__0_carry__0_i_3
       (.I0(r1__0_carry__0_i_1_n_0),
        .I1(r1__0_carry__0_i_4_n_0),
        .I2(\c1_s1_reg_n_0_[4] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[3] ),
        .O(r1__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry__0_i_4
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    r1__0_carry__0_i_5
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[4] ),
        .I2(\c1_s1_reg_n_0_[5] ),
        .I3(\Q1_s1_reg_n_0_[3] ),
        .I4(\Q1_s1_reg_n_0_[5] ),
        .I5(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    r1__0_carry_i_1
       (.I0(\Q1_s1_reg_n_0_[3] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\Q1_s1_reg_n_0_[1] ),
        .I3(\c1_s1_reg_n_0_[3] ),
        .O(r1__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69699669)) 
    r1__0_carry_i_2
       (.I0(\Q1_s1_reg_n_0_[1] ),
        .I1(\c1_s1_reg_n_0_[3] ),
        .I2(\Q1_s1_reg_n_0_[3] ),
        .I3(\Q1_s1_reg_n_0_[0] ),
        .I4(\Q1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    r1__0_carry_i_3
       (.I0(\Q1_s1_reg_n_0_[2] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .I2(\c1_s1_reg_n_0_[2] ),
        .O(r1__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_4
       (.I0(\c1_s1_reg_n_0_[1] ),
        .I1(\Q1_s1_reg_n_0_[1] ),
        .O(r1__0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r1__0_carry_i_5
       (.I0(\c1_s1_reg_n_0_[0] ),
        .I1(\Q1_s1_reg_n_0_[0] ),
        .O(r1__0_carry_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "bram_128x24" *) 
module design_1_polymul_axi_top_0_0_bram_128x24
   (in,
    O,
    CO,
    \ag_bu_mode_d1_reg[0]_rep ,
    bu_data_a_r,
    \ag_bu_mode_d1_reg[0]_rep__1 ,
    \ag_bu_mode_d1_reg[0]_rep__1_0 ,
    \ag_bu_mode_d1_reg[0]_rep__1_1 ,
    D,
    bu_data_b_r,
    \ag_bu_mode_d1_reg[0]_rep_0 ,
    \cnt_reg[0] ,
    \cnt_reg[1] ,
    \cnt_reg[2] ,
    \cnt_reg[3] ,
    \cnt_reg[4] ,
    \cnt_reg[5] ,
    \cnt_reg[6] ,
    \FSM_sequential_state_reg[1] ,
    mem_reg_0,
    mem_reg_1,
    clk,
    mem_reg_2,
    A_enb0_out,
    mem_reg_3,
    mem_reg_4,
    DIADI,
    DIBDI,
    mem_reg_5,
    A_web,
    pm_dbg_bram_sel,
    DOADO,
    p_12_out,
    DI,
    S,
    \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 ,
    \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ,
    \b1_reg_r_reg[11] ,
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 ,
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 ,
    \upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 ,
    \upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ,
    \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_1 ,
    \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_2 ,
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ,
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ,
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_1 ,
    \b1_reg_r_reg[11]_0 ,
    \b1_reg_r_reg[10] ,
    \b1_reg_r_reg[9] ,
    \b1_reg_r_reg[8] ,
    \b1_reg_r_reg[7] ,
    \b1_reg_r_reg[6] ,
    \b1_reg_r_reg[5] ,
    \b1_reg_r_reg[4] ,
    \b1_reg_r_reg[3] ,
    \b1_reg_r_reg[2] ,
    \b1_reg_r_reg[1] ,
    \b1_reg_r_reg[0] ,
    \upper_d_reg[3]_4 ,
    mem_reg_6,
    mem_reg_7,
    Q,
    mem_reg_8,
    state,
    mem_reg_9,
    mem_reg_10,
    DOBDO,
    \b1_reg_r_reg[11]_1 ,
    \b1_reg_r_reg[0]_0 ,
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 );
  output [23:0]in;
  output [3:0]O;
  output [0:0]CO;
  output [3:0]\ag_bu_mode_d1_reg[0]_rep ;
  output [23:0]bu_data_a_r;
  output [3:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep__1_0 ;
  output [3:0]\ag_bu_mode_d1_reg[0]_rep__1_1 ;
  output [11:0]D;
  output [23:0]bu_data_b_r;
  output [11:0]\ag_bu_mode_d1_reg[0]_rep_0 ;
  output \cnt_reg[0] ;
  output \cnt_reg[1] ;
  output \cnt_reg[2] ;
  output \cnt_reg[3] ;
  output \cnt_reg[4] ;
  output \cnt_reg[5] ;
  output \cnt_reg[6] ;
  output \FSM_sequential_state_reg[1] ;
  output [11:0]mem_reg_0;
  output [11:0]mem_reg_1;
  input clk;
  input mem_reg_2;
  input A_enb0_out;
  input [6:0]mem_reg_3;
  input [6:0]mem_reg_4;
  input [23:0]DIADI;
  input [23:0]DIBDI;
  input [0:0]mem_reg_5;
  input A_web;
  input pm_dbg_bram_sel;
  input [23:0]DOADO;
  input p_12_out;
  input [0:0]DI;
  input [0:0]S;
  input [0:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  input [0:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  input \b1_reg_r_reg[11] ;
  input [1:0]\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 ;
  input [3:0]\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 ;
  input [0:0]\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  input [0:0]\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  input [0:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_1 ;
  input [0:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_2 ;
  input \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ;
  input [1:0]\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ;
  input [3:0]\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_1 ;
  input \b1_reg_r_reg[11]_0 ;
  input \b1_reg_r_reg[10] ;
  input \b1_reg_r_reg[9] ;
  input \b1_reg_r_reg[8] ;
  input \b1_reg_r_reg[7] ;
  input \b1_reg_r_reg[6] ;
  input \b1_reg_r_reg[5] ;
  input \b1_reg_r_reg[4] ;
  input \b1_reg_r_reg[3] ;
  input \b1_reg_r_reg[2] ;
  input \b1_reg_r_reg[1] ;
  input \b1_reg_r_reg[0] ;
  input [11:0]\upper_d_reg[3]_4 ;
  input [6:0]mem_reg_6;
  input mem_reg_7;
  input [6:0]Q;
  input mem_reg_8;
  input [1:0]state;
  input mem_reg_9;
  input [2:0]mem_reg_10;
  input [23:0]DOBDO;
  input [23:0]\b1_reg_r_reg[11]_1 ;
  input [1:0]\b1_reg_r_reg[0]_0 ;
  input [23:0]\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 ;

  wire [23:0]A_douta;
  wire [23:0]A_doutb;
  wire A_enb0_out;
  wire A_web;
  wire [0:0]CO;
  wire [11:0]D;
  wire [0:0]DI;
  wire [23:0]DIADI;
  wire [23:0]DIBDI;
  wire [23:0]DOADO;
  wire [23:0]DOBDO;
  wire \FSM_sequential_state_reg[1] ;
  wire [3:0]O;
  wire [6:0]Q;
  wire [0:0]S;
  wire [3:0]\ag_bu_mode_d1_reg[0]_rep ;
  wire [11:0]\ag_bu_mode_d1_reg[0]_rep_0 ;
  wire [3:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep__1_0 ;
  wire [3:0]\ag_bu_mode_d1_reg[0]_rep__1_1 ;
  wire \b0_s0[11]_i_4_n_0 ;
  wire \b0_s0[11]_i_5_n_0 ;
  wire \b0_s0[11]_i_6_n_0 ;
  wire \b0_s0[4]_i_3_n_0 ;
  wire \b0_s0[4]_i_4_n_0 ;
  wire \b0_s0[4]_i_5_n_0 ;
  wire \b0_s0[4]_i_6_n_0 ;
  wire \b0_s0[8]_i_3_n_0 ;
  wire \b0_s0[8]_i_4_n_0 ;
  wire \b0_s0[8]_i_5_n_0 ;
  wire \b0_s0_reg[11]_i_2_n_2 ;
  wire \b0_s0_reg[11]_i_2_n_3 ;
  wire \b0_s0_reg[4]_i_2_n_0 ;
  wire \b0_s0_reg[4]_i_2_n_1 ;
  wire \b0_s0_reg[4]_i_2_n_2 ;
  wire \b0_s0_reg[4]_i_2_n_3 ;
  wire \b0_s0_reg[8]_i_2_n_0 ;
  wire \b0_s0_reg[8]_i_2_n_1 ;
  wire \b0_s0_reg[8]_i_2_n_2 ;
  wire \b0_s0_reg[8]_i_2_n_3 ;
  wire \b1_reg_r_reg[0] ;
  wire [1:0]\b1_reg_r_reg[0]_0 ;
  wire \b1_reg_r_reg[10] ;
  wire \b1_reg_r_reg[11] ;
  wire \b1_reg_r_reg[11]_0 ;
  wire [23:0]\b1_reg_r_reg[11]_1 ;
  wire \b1_reg_r_reg[1] ;
  wire \b1_reg_r_reg[2] ;
  wire \b1_reg_r_reg[3] ;
  wire \b1_reg_r_reg[4] ;
  wire \b1_reg_r_reg[5] ;
  wire \b1_reg_r_reg[6] ;
  wire \b1_reg_r_reg[7] ;
  wire \b1_reg_r_reg[8] ;
  wire \b1_reg_r_reg[9] ;
  wire \b1_s0[11]_i_4_n_0 ;
  wire \b1_s0[11]_i_5_n_0 ;
  wire \b1_s0[11]_i_6_n_0 ;
  wire \b1_s0[4]_i_3_n_0 ;
  wire \b1_s0[4]_i_4_n_0 ;
  wire \b1_s0[4]_i_5_n_0 ;
  wire \b1_s0[4]_i_6_n_0 ;
  wire \b1_s0[8]_i_3_n_0 ;
  wire \b1_s0[8]_i_4_n_0 ;
  wire \b1_s0[8]_i_5_n_0 ;
  wire \b1_s0_reg[11]_i_2_n_2 ;
  wire \b1_s0_reg[11]_i_2_n_3 ;
  wire \b1_s0_reg[4]_i_2_n_0 ;
  wire \b1_s0_reg[4]_i_2_n_1 ;
  wire \b1_s0_reg[4]_i_2_n_2 ;
  wire \b1_s0_reg[4]_i_2_n_3 ;
  wire \b1_s0_reg[8]_i_2_n_0 ;
  wire \b1_s0_reg[8]_i_2_n_1 ;
  wire \b1_s0_reg[8]_i_2_n_2 ;
  wire \b1_s0_reg[8]_i_2_n_3 ;
  wire [23:0]bu_data_a_r;
  wire [23:0]bu_data_b_r;
  wire clk;
  wire \cnt_reg[0] ;
  wire \cnt_reg[1] ;
  wire \cnt_reg[2] ;
  wire \cnt_reg[3] ;
  wire \cnt_reg[4] ;
  wire \cnt_reg[5] ;
  wire \cnt_reg[6] ;
  wire [23:0]in;
  wire [11:0]mem_reg_0;
  wire [11:0]mem_reg_1;
  wire [2:0]mem_reg_10;
  wire mem_reg_2;
  wire [6:0]mem_reg_3;
  wire [6:0]mem_reg_4;
  wire [0:0]mem_reg_5;
  wire [6:0]mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire mem_reg_9;
  wire mem_reg_i_131_n_0;
  wire p_12_out;
  wire pm_dbg_bram_sel;
  wire [1:0]state;
  wire [11:1]\u_pwm/b0_red0 ;
  wire \u_pwm/b0_red1 ;
  wire [11:1]\u_pwm/b1_red0 ;
  wire \u_pwm/b1_red1 ;
  wire [23:0]\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 ;
  wire [1:0]\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 ;
  wire [1:0]\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_1 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_2 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_3 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_1 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_2 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_3 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3__0_n_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3_n_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0_n_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4_n_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0_n_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5_n_0 ;
  wire [3:0]\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ;
  wire [3:0]\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_1 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_1 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_2 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_3 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_1 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_2 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_3 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0_n_0 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4_n_0 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0_n_0 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5_n_0 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6__0_n_0 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6_n_0 ;
  wire [0:0]\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  wire [0:0]\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  wire [0:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  wire [0:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  wire [0:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_1 ;
  wire [0:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_2 ;
  wire [11:0]\upper_d_reg[3]_4 ;
  wire [3:2]\NLW_b0_s0_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_b0_s0_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_b1_s0_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_b1_s0_reg[11]_i_2_O_UNCONNECTED ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:24]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:24]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b0_s0[0]_i_1 
       (.I0(A_douta[0]),
        .I1(\u_pwm/b0_red1 ),
        .O(mem_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[10]_i_1 
       (.I0(\u_pwm/b0_red0 [10]),
        .I1(A_douta[10]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[11]_i_1 
       (.I0(\u_pwm/b0_red0 [11]),
        .I1(A_douta[11]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[11]));
  LUT6 #(
    .INIT(64'hAAA8888800000000)) 
    \b0_s0[11]_i_3 
       (.I0(A_douta[10]),
        .I1(A_douta[9]),
        .I2(\b0_s0[11]_i_5_n_0 ),
        .I3(\b0_s0[11]_i_6_n_0 ),
        .I4(A_douta[8]),
        .I5(A_douta[11]),
        .O(\u_pwm/b0_red1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b0_s0[11]_i_4 
       (.I0(A_douta[9]),
        .O(\b0_s0[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \b0_s0[11]_i_5 
       (.I0(A_douta[2]),
        .I1(A_douta[1]),
        .I2(A_douta[4]),
        .I3(A_douta[3]),
        .O(\b0_s0[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \b0_s0[11]_i_6 
       (.I0(A_douta[6]),
        .I1(A_douta[5]),
        .I2(A_douta[0]),
        .I3(A_douta[7]),
        .O(\b0_s0[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[1]_i_1 
       (.I0(\u_pwm/b0_red0 [1]),
        .I1(A_douta[1]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[2]_i_1 
       (.I0(\u_pwm/b0_red0 [2]),
        .I1(A_douta[2]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[3]_i_1 
       (.I0(\u_pwm/b0_red0 [3]),
        .I1(A_douta[3]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[4]_i_1 
       (.I0(\u_pwm/b0_red0 [4]),
        .I1(A_douta[4]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \b0_s0[4]_i_3 
       (.I0(A_douta[4]),
        .O(\b0_s0[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b0_s0[4]_i_4 
       (.I0(A_douta[3]),
        .O(\b0_s0[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b0_s0[4]_i_5 
       (.I0(A_douta[2]),
        .O(\b0_s0[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b0_s0[4]_i_6 
       (.I0(A_douta[1]),
        .O(\b0_s0[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[5]_i_1 
       (.I0(\u_pwm/b0_red0 [5]),
        .I1(A_douta[5]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[6]_i_1 
       (.I0(\u_pwm/b0_red0 [6]),
        .I1(A_douta[6]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[7]_i_1 
       (.I0(\u_pwm/b0_red0 [7]),
        .I1(A_douta[7]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[8]_i_1 
       (.I0(\u_pwm/b0_red0 [8]),
        .I1(A_douta[8]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \b0_s0[8]_i_3 
       (.I0(A_douta[7]),
        .O(\b0_s0[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b0_s0[8]_i_4 
       (.I0(A_douta[6]),
        .O(\b0_s0[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b0_s0[8]_i_5 
       (.I0(A_douta[5]),
        .O(\b0_s0[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b0_s0[9]_i_1 
       (.I0(\u_pwm/b0_red0 [9]),
        .I1(A_douta[9]),
        .I2(\u_pwm/b0_red1 ),
        .O(mem_reg_1[9]));
  CARRY4 \b0_s0_reg[11]_i_2 
       (.CI(\b0_s0_reg[8]_i_2_n_0 ),
        .CO({\NLW_b0_s0_reg[11]_i_2_CO_UNCONNECTED [3:2],\b0_s0_reg[11]_i_2_n_2 ,\b0_s0_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,A_douta[9]}),
        .O({\NLW_b0_s0_reg[11]_i_2_O_UNCONNECTED [3],\u_pwm/b0_red0 [11:9]}),
        .S({1'b0,A_douta[11:10],\b0_s0[11]_i_4_n_0 }));
  CARRY4 \b0_s0_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\b0_s0_reg[4]_i_2_n_0 ,\b0_s0_reg[4]_i_2_n_1 ,\b0_s0_reg[4]_i_2_n_2 ,\b0_s0_reg[4]_i_2_n_3 }),
        .CYINIT(A_douta[0]),
        .DI(A_douta[4:1]),
        .O(\u_pwm/b0_red0 [4:1]),
        .S({\b0_s0[4]_i_3_n_0 ,\b0_s0[4]_i_4_n_0 ,\b0_s0[4]_i_5_n_0 ,\b0_s0[4]_i_6_n_0 }));
  CARRY4 \b0_s0_reg[8]_i_2 
       (.CI(\b0_s0_reg[4]_i_2_n_0 ),
        .CO({\b0_s0_reg[8]_i_2_n_0 ,\b0_s0_reg[8]_i_2_n_1 ,\b0_s0_reg[8]_i_2_n_2 ,\b0_s0_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A_douta[7:5]}),
        .O(\u_pwm/b0_red0 [8:5]),
        .S({A_douta[8],\b0_s0[8]_i_3_n_0 ,\b0_s0[8]_i_4_n_0 ,\b0_s0[8]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[0]_i_1 
       (.I0(bu_data_b_r[0]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[0]_i_1__0 
       (.I0(bu_data_b_r[12]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [0]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[0]_i_2 
       (.I0(A_doutb[0]),
        .I1(DOBDO[0]),
        .I2(\b1_reg_r_reg[11]_1 [0]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[0]_i_2__0 
       (.I0(A_doutb[12]),
        .I1(DOBDO[12]),
        .I2(\b1_reg_r_reg[11]_1 [12]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[10]_i_1 
       (.I0(bu_data_b_r[10]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[10] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[10]_i_1__0 
       (.I0(bu_data_b_r[22]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [10]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [10]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[10]_i_2 
       (.I0(A_doutb[10]),
        .I1(DOBDO[10]),
        .I2(\b1_reg_r_reg[11]_1 [10]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[10]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[10]_i_2__0 
       (.I0(A_doutb[22]),
        .I1(DOBDO[22]),
        .I2(\b1_reg_r_reg[11]_1 [22]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[11]_i_1 
       (.I0(bu_data_b_r[11]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[11]_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[11]_i_1__0 
       (.I0(bu_data_b_r[23]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [11]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [11]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[11]_i_2 
       (.I0(A_doutb[11]),
        .I1(DOBDO[11]),
        .I2(\b1_reg_r_reg[11]_1 [11]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[11]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[11]_i_2__0 
       (.I0(A_doutb[23]),
        .I1(DOBDO[23]),
        .I2(\b1_reg_r_reg[11]_1 [23]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[23]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[1]_i_1 
       (.I0(bu_data_b_r[1]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[1]_i_1__0 
       (.I0(bu_data_b_r[13]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [1]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[1]_i_2 
       (.I0(A_doutb[1]),
        .I1(DOBDO[1]),
        .I2(\b1_reg_r_reg[11]_1 [1]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[1]_i_2__0 
       (.I0(A_doutb[13]),
        .I1(DOBDO[13]),
        .I2(\b1_reg_r_reg[11]_1 [13]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[13]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[2]_i_1 
       (.I0(bu_data_b_r[2]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[2]_i_1__0 
       (.I0(bu_data_b_r[14]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [2]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[2]_i_2 
       (.I0(A_doutb[2]),
        .I1(DOBDO[2]),
        .I2(\b1_reg_r_reg[11]_1 [2]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[2]_i_2__0 
       (.I0(A_doutb[14]),
        .I1(DOBDO[14]),
        .I2(\b1_reg_r_reg[11]_1 [14]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[14]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[3]_i_1 
       (.I0(bu_data_b_r[3]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[3]_i_1__0 
       (.I0(bu_data_b_r[15]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [3]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[3]_i_2 
       (.I0(A_doutb[3]),
        .I1(DOBDO[3]),
        .I2(\b1_reg_r_reg[11]_1 [3]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[3]_i_2__0 
       (.I0(A_doutb[15]),
        .I1(DOBDO[15]),
        .I2(\b1_reg_r_reg[11]_1 [15]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[15]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[4]_i_1 
       (.I0(bu_data_b_r[4]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[4]_i_1__0 
       (.I0(bu_data_b_r[16]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [4]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[4]_i_2 
       (.I0(A_doutb[4]),
        .I1(DOBDO[4]),
        .I2(\b1_reg_r_reg[11]_1 [4]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[4]_i_2__0 
       (.I0(A_doutb[16]),
        .I1(DOBDO[16]),
        .I2(\b1_reg_r_reg[11]_1 [16]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[5]_i_1 
       (.I0(bu_data_b_r[5]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[5]_i_1__0 
       (.I0(bu_data_b_r[17]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [5]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[5]_i_2 
       (.I0(A_doutb[5]),
        .I1(DOBDO[5]),
        .I2(\b1_reg_r_reg[11]_1 [5]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[5]_i_2__0 
       (.I0(A_doutb[17]),
        .I1(DOBDO[17]),
        .I2(\b1_reg_r_reg[11]_1 [17]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[17]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[6]_i_1 
       (.I0(bu_data_b_r[6]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[6]_i_1__0 
       (.I0(bu_data_b_r[18]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [6]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[6]_i_2 
       (.I0(A_doutb[6]),
        .I1(DOBDO[6]),
        .I2(\b1_reg_r_reg[11]_1 [6]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[6]_i_2__0 
       (.I0(A_doutb[18]),
        .I1(DOBDO[18]),
        .I2(\b1_reg_r_reg[11]_1 [18]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[18]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[7]_i_1 
       (.I0(bu_data_b_r[7]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[7] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[7]_i_1__0 
       (.I0(bu_data_b_r[19]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [7]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[7]_i_2 
       (.I0(A_doutb[7]),
        .I1(DOBDO[7]),
        .I2(\b1_reg_r_reg[11]_1 [7]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[7]_i_2__0 
       (.I0(A_doutb[19]),
        .I1(DOBDO[19]),
        .I2(\b1_reg_r_reg[11]_1 [19]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[19]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[8]_i_1 
       (.I0(bu_data_b_r[8]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[8] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[8]_i_1__0 
       (.I0(bu_data_b_r[20]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [8]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [8]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[8]_i_2 
       (.I0(A_doutb[8]),
        .I1(DOBDO[8]),
        .I2(\b1_reg_r_reg[11]_1 [8]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[8]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[8]_i_2__0 
       (.I0(A_doutb[20]),
        .I1(DOBDO[20]),
        .I2(\b1_reg_r_reg[11]_1 [20]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[20]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[9]_i_1 
       (.I0(bu_data_b_r[9]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\b1_reg_r_reg[9] ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b1_reg_r[9]_i_1__0 
       (.I0(bu_data_b_r[21]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[3]_4 [9]),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 [9]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[9]_i_2 
       (.I0(A_doutb[9]),
        .I1(DOBDO[9]),
        .I2(\b1_reg_r_reg[11]_1 [9]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[9]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b1_reg_r[9]_i_2__0 
       (.I0(A_doutb[21]),
        .I1(DOBDO[21]),
        .I2(\b1_reg_r_reg[11]_1 [21]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_b_r[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b1_s0[0]_i_1 
       (.I0(A_douta[12]),
        .I1(\u_pwm/b1_red1 ),
        .O(mem_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[10]_i_1 
       (.I0(\u_pwm/b1_red0 [10]),
        .I1(A_douta[22]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[11]_i_1 
       (.I0(\u_pwm/b1_red0 [11]),
        .I1(A_douta[23]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[11]));
  LUT6 #(
    .INIT(64'hAAA8888800000000)) 
    \b1_s0[11]_i_3 
       (.I0(A_douta[22]),
        .I1(A_douta[21]),
        .I2(\b1_s0[11]_i_5_n_0 ),
        .I3(\b1_s0[11]_i_6_n_0 ),
        .I4(A_douta[20]),
        .I5(A_douta[23]),
        .O(\u_pwm/b1_red1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b1_s0[11]_i_4 
       (.I0(A_douta[21]),
        .O(\b1_s0[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \b1_s0[11]_i_5 
       (.I0(A_douta[14]),
        .I1(A_douta[13]),
        .I2(A_douta[16]),
        .I3(A_douta[15]),
        .O(\b1_s0[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \b1_s0[11]_i_6 
       (.I0(A_douta[18]),
        .I1(A_douta[17]),
        .I2(A_douta[12]),
        .I3(A_douta[19]),
        .O(\b1_s0[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[1]_i_1 
       (.I0(\u_pwm/b1_red0 [1]),
        .I1(A_douta[13]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[2]_i_1 
       (.I0(\u_pwm/b1_red0 [2]),
        .I1(A_douta[14]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[3]_i_1 
       (.I0(\u_pwm/b1_red0 [3]),
        .I1(A_douta[15]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[4]_i_1 
       (.I0(\u_pwm/b1_red0 [4]),
        .I1(A_douta[16]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \b1_s0[4]_i_3 
       (.I0(A_douta[16]),
        .O(\b1_s0[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b1_s0[4]_i_4 
       (.I0(A_douta[15]),
        .O(\b1_s0[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b1_s0[4]_i_5 
       (.I0(A_douta[14]),
        .O(\b1_s0[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b1_s0[4]_i_6 
       (.I0(A_douta[13]),
        .O(\b1_s0[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[5]_i_1 
       (.I0(\u_pwm/b1_red0 [5]),
        .I1(A_douta[17]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[6]_i_1 
       (.I0(\u_pwm/b1_red0 [6]),
        .I1(A_douta[18]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[7]_i_1 
       (.I0(\u_pwm/b1_red0 [7]),
        .I1(A_douta[19]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[8]_i_1 
       (.I0(\u_pwm/b1_red0 [8]),
        .I1(A_douta[20]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \b1_s0[8]_i_3 
       (.I0(A_douta[19]),
        .O(\b1_s0[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b1_s0[8]_i_4 
       (.I0(A_douta[18]),
        .O(\b1_s0[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b1_s0[8]_i_5 
       (.I0(A_douta[17]),
        .O(\b1_s0[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b1_s0[9]_i_1 
       (.I0(\u_pwm/b1_red0 [9]),
        .I1(A_douta[21]),
        .I2(\u_pwm/b1_red1 ),
        .O(mem_reg_0[9]));
  CARRY4 \b1_s0_reg[11]_i_2 
       (.CI(\b1_s0_reg[8]_i_2_n_0 ),
        .CO({\NLW_b1_s0_reg[11]_i_2_CO_UNCONNECTED [3:2],\b1_s0_reg[11]_i_2_n_2 ,\b1_s0_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,A_douta[21]}),
        .O({\NLW_b1_s0_reg[11]_i_2_O_UNCONNECTED [3],\u_pwm/b1_red0 [11:9]}),
        .S({1'b0,A_douta[23:22],\b1_s0[11]_i_4_n_0 }));
  CARRY4 \b1_s0_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\b1_s0_reg[4]_i_2_n_0 ,\b1_s0_reg[4]_i_2_n_1 ,\b1_s0_reg[4]_i_2_n_2 ,\b1_s0_reg[4]_i_2_n_3 }),
        .CYINIT(A_douta[12]),
        .DI(A_douta[16:13]),
        .O(\u_pwm/b1_red0 [4:1]),
        .S({\b1_s0[4]_i_3_n_0 ,\b1_s0[4]_i_4_n_0 ,\b1_s0[4]_i_5_n_0 ,\b1_s0[4]_i_6_n_0 }));
  CARRY4 \b1_s0_reg[8]_i_2 
       (.CI(\b1_s0_reg[4]_i_2_n_0 ),
        .CO({\b1_s0_reg[8]_i_2_n_0 ,\b1_s0_reg[8]_i_2_n_1 ,\b1_s0_reg[8]_i_2_n_2 ,\b1_s0_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A_douta[19:17]}),
        .O(\u_pwm/b1_red0 [8:5]),
        .S({A_douta[20],\b1_s0[8]_i_3_n_0 ,\b1_s0[8]_i_4_n_0 ,\b1_s0[8]_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[0]_i_2 
       (.I0(A_douta[0]),
        .I1(DOADO[0]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [0]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[0]_i_2__0 
       (.I0(A_douta[12]),
        .I1(DOADO[12]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [12]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[12]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[10]_i_3 
       (.I0(A_douta[10]),
        .I1(DOADO[10]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [10]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[10]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[10]_i_3__0 
       (.I0(A_douta[22]),
        .I1(DOADO[22]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [22]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[22]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[11]_i_5 
       (.I0(A_douta[11]),
        .I1(DOADO[11]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [11]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[11]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[11]_i_5__0 
       (.I0(A_douta[23]),
        .I1(DOADO[23]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [23]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[23]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[1]_i_3 
       (.I0(A_douta[1]),
        .I1(DOADO[1]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [1]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[1]_i_3__0 
       (.I0(A_douta[13]),
        .I1(DOADO[13]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [13]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[13]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[2]_i_3 
       (.I0(A_douta[2]),
        .I1(DOADO[2]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [2]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[2]_i_3__0 
       (.I0(A_douta[14]),
        .I1(DOADO[14]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [14]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[14]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[3]_i_3 
       (.I0(A_douta[3]),
        .I1(DOADO[3]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [3]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[3]_i_3__0 
       (.I0(A_douta[15]),
        .I1(DOADO[15]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [15]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[15]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[4]_i_3 
       (.I0(A_douta[4]),
        .I1(DOADO[4]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [4]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[4]_i_3__0 
       (.I0(A_douta[16]),
        .I1(DOADO[16]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [16]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[16]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[5]_i_3 
       (.I0(A_douta[5]),
        .I1(DOADO[5]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [5]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[5]_i_3__0 
       (.I0(A_douta[17]),
        .I1(DOADO[17]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [17]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[17]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[6]_i_3 
       (.I0(A_douta[6]),
        .I1(DOADO[6]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [6]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[6]_i_3__0 
       (.I0(A_douta[18]),
        .I1(DOADO[18]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [18]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[18]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[7]_i_3 
       (.I0(A_douta[7]),
        .I1(DOADO[7]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [7]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[7]_i_3__0 
       (.I0(A_douta[19]),
        .I1(DOADO[19]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [19]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[19]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[8]_i_3 
       (.I0(A_douta[8]),
        .I1(DOADO[8]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [8]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[8]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[8]_i_3__0 
       (.I0(A_douta[20]),
        .I1(DOADO[20]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [20]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[20]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[9]_i_3 
       (.I0(A_douta[9]),
        .I1(DOADO[9]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [9]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[9]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \b2_reg_r[9]_i_3__0 
       (.I0(A_douta[21]),
        .I1(DOADO[21]),
        .I2(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 [21]),
        .I3(\b1_reg_r_reg[0]_0 [1]),
        .I4(\b1_reg_r_reg[0]_0 [0]),
        .O(bu_data_a_r[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][0]_srl16_i_2 
       (.I0(A_douta[0]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[0]),
        .I3(p_12_out),
        .O(in[0]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][10]_srl16_i_1 
       (.I0(A_douta[10]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[10]),
        .I3(p_12_out),
        .O(in[10]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][11]_srl16_i_1 
       (.I0(A_douta[11]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[11]),
        .I3(p_12_out),
        .O(in[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][12]_srl16_i_1 
       (.I0(A_douta[12]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[12]),
        .I3(p_12_out),
        .O(in[12]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][13]_srl16_i_1 
       (.I0(A_douta[13]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[13]),
        .I3(p_12_out),
        .O(in[13]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][14]_srl16_i_1 
       (.I0(A_douta[14]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[14]),
        .I3(p_12_out),
        .O(in[14]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][15]_srl16_i_1 
       (.I0(A_douta[15]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[15]),
        .I3(p_12_out),
        .O(in[15]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][16]_srl16_i_1 
       (.I0(A_douta[16]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[16]),
        .I3(p_12_out),
        .O(in[16]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][17]_srl16_i_1 
       (.I0(A_douta[17]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[17]),
        .I3(p_12_out),
        .O(in[17]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][18]_srl16_i_1 
       (.I0(A_douta[18]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[18]),
        .I3(p_12_out),
        .O(in[18]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][19]_srl16_i_1 
       (.I0(A_douta[19]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[19]),
        .I3(p_12_out),
        .O(in[19]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][1]_srl16_i_1 
       (.I0(A_douta[1]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[1]),
        .I3(p_12_out),
        .O(in[1]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][20]_srl16_i_1 
       (.I0(A_douta[20]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[20]),
        .I3(p_12_out),
        .O(in[20]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][21]_srl16_i_1 
       (.I0(A_douta[21]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[21]),
        .I3(p_12_out),
        .O(in[21]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][22]_srl16_i_1 
       (.I0(A_douta[22]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[22]),
        .I3(p_12_out),
        .O(in[22]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][23]_srl16_i_1 
       (.I0(A_douta[23]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[23]),
        .I3(p_12_out),
        .O(in[23]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][2]_srl16_i_1 
       (.I0(A_douta[2]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[2]),
        .I3(p_12_out),
        .O(in[2]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][3]_srl16_i_1 
       (.I0(A_douta[3]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[3]),
        .I3(p_12_out),
        .O(in[3]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][4]_srl16_i_1 
       (.I0(A_douta[4]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[4]),
        .I3(p_12_out),
        .O(in[4]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][5]_srl16_i_1 
       (.I0(A_douta[5]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[5]),
        .I3(p_12_out),
        .O(in[5]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][6]_srl16_i_1 
       (.I0(A_douta[6]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[6]),
        .I3(p_12_out),
        .O(in[6]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][7]_srl16_i_1 
       (.I0(A_douta[7]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[7]),
        .I3(p_12_out),
        .O(in[7]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][8]_srl16_i_1 
       (.I0(A_douta[8]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[8]),
        .I3(p_12_out),
        .O(in[8]));
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_sr[15].mem_reg[15][9]_srl16_i_1 
       (.I0(A_douta[9]),
        .I1(pm_dbg_bram_sel),
        .I2(DOADO[9]),
        .I3(p_12_out),
        .O(in[9]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "23" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_3,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_4,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIBDI}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_DOADO_UNCONNECTED[31:24],A_douta}),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:24],A_doutb}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2),
        .ENBWREN(A_enb0_out),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({mem_reg_5,mem_reg_5,mem_reg_5,mem_reg_5}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,A_web,A_web,A_web,A_web}));
  LUT6 #(
    .INIT(64'h9999999999909999)) 
    mem_reg_i_131
       (.I0(state[1]),
        .I1(state[0]),
        .I2(mem_reg_9),
        .I3(mem_reg_10[0]),
        .I4(mem_reg_10[1]),
        .I5(mem_reg_10[2]),
        .O(mem_reg_i_131_n_0));
  LUT5 #(
    .INIT(32'hFF202020)) 
    mem_reg_i_68
       (.I0(mem_reg_6[6]),
        .I1(mem_reg_7),
        .I2(mem_reg_i_131_n_0),
        .I3(Q[6]),
        .I4(mem_reg_8),
        .O(\cnt_reg[6] ));
  LUT5 #(
    .INIT(32'hFF202020)) 
    mem_reg_i_69__0
       (.I0(mem_reg_6[5]),
        .I1(mem_reg_7),
        .I2(mem_reg_i_131_n_0),
        .I3(Q[5]),
        .I4(mem_reg_8),
        .O(\cnt_reg[5] ));
  LUT5 #(
    .INIT(32'hFF202020)) 
    mem_reg_i_70__0
       (.I0(mem_reg_6[4]),
        .I1(mem_reg_7),
        .I2(mem_reg_i_131_n_0),
        .I3(Q[4]),
        .I4(mem_reg_8),
        .O(\cnt_reg[4] ));
  LUT5 #(
    .INIT(32'hFF202020)) 
    mem_reg_i_71
       (.I0(mem_reg_6[3]),
        .I1(mem_reg_7),
        .I2(mem_reg_i_131_n_0),
        .I3(Q[3]),
        .I4(mem_reg_8),
        .O(\cnt_reg[3] ));
  LUT5 #(
    .INIT(32'hFF202020)) 
    mem_reg_i_72
       (.I0(mem_reg_6[2]),
        .I1(mem_reg_7),
        .I2(mem_reg_i_131_n_0),
        .I3(Q[2]),
        .I4(mem_reg_8),
        .O(\cnt_reg[2] ));
  LUT5 #(
    .INIT(32'hFF202020)) 
    mem_reg_i_73
       (.I0(mem_reg_6[1]),
        .I1(mem_reg_7),
        .I2(mem_reg_i_131_n_0),
        .I3(Q[1]),
        .I4(mem_reg_8),
        .O(\cnt_reg[1] ));
  LUT5 #(
    .INIT(32'hFF202020)) 
    mem_reg_i_74
       (.I0(mem_reg_6[0]),
        .I1(mem_reg_7),
        .I2(mem_reg_i_131_n_0),
        .I3(Q[0]),
        .I4(mem_reg_8),
        .O(\cnt_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000900)) 
    mem_reg_i_77
       (.I0(state[0]),
        .I1(state[1]),
        .I2(mem_reg_9),
        .I3(mem_reg_10[0]),
        .I4(mem_reg_10[1]),
        .I5(mem_reg_10[2]),
        .O(\FSM_sequential_state_reg[1] ));
  CARRY4 \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1 
       (.CI(1'b0),
        .CO({\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_0 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_1 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_2 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O(O),
        .S({\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3_n_0 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4_n_0 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5_n_0 ,S}));
  CARRY4 \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0 
       (.CI(1'b0),
        .CO({\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_0 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_1 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_2 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 }),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 ),
        .S({\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3__0_n_0 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0_n_0 ,\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0_n_0 ,\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 }));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3 
       (.I0(bu_data_a_r[3]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 [0]),
        .O(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3__0 
       (.I0(bu_data_a_r[15]),
        .I1(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ),
        .I2(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_1 [0]),
        .O(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4 
       (.I0(bu_data_a_r[2]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 [1]),
        .O(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0 
       (.I0(bu_data_a_r[14]),
        .I1(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ),
        .I2(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 [1]),
        .O(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5 
       (.I0(bu_data_a_r[1]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 [0]),
        .O(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 
       (.I0(bu_data_a_r[13]),
        .I1(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ),
        .I2(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 [0]),
        .O(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0_n_0 ));
  CARRY4 \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1 
       (.CI(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_0 ),
        .CO({CO,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_1 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_2 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 ,1'b0,1'b0,1'b0}),
        .O(\ag_bu_mode_d1_reg[0]_rep ),
        .S({\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4_n_0 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5_n_0 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6_n_0 }));
  CARRY4 \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0 
       (.CI(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_0 ),
        .CO({\ag_bu_mode_d1_reg[0]_rep__1_0 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_1 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_2 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_1 ,1'b0,1'b0,1'b0}),
        .O(\ag_bu_mode_d1_reg[0]_rep__1_1 ),
        .S({\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_2 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0_n_0 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0_n_0 ,\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6__0_n_0 }));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4 
       (.I0(bu_data_a_r[6]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 [3]),
        .O(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0 
       (.I0(bu_data_a_r[18]),
        .I1(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ),
        .I2(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_1 [3]),
        .O(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5 
       (.I0(bu_data_a_r[5]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 [2]),
        .O(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 
       (.I0(bu_data_a_r[17]),
        .I1(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ),
        .I2(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_1 [2]),
        .O(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6 
       (.I0(bu_data_a_r[4]),
        .I1(\b1_reg_r_reg[11] ),
        .I2(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 [1]),
        .O(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6__0 
       (.I0(bu_data_a_r[16]),
        .I1(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ),
        .I2(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_1 [1]),
        .O(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "bram_128x24" *) 
module design_1_polymul_axi_top_0_0_bram_128x24_0
   (DOADO,
    DOBDO,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    clk,
    mem_reg_0,
    B_enb4_out,
    ADDRARDADDR,
    ADDRBWRADDR,
    DIADI,
    DIBDI,
    WEA,
    B_web,
    state,
    pwm_write_active,
    mem_reg_1,
    Q);
  output [23:0]DOADO;
  output [23:0]DOBDO;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[2]_0 ;
  output \FSM_sequential_state_reg[1]_1 ;
  input clk;
  input mem_reg_0;
  input B_enb4_out;
  input [6:0]ADDRARDADDR;
  input [6:0]ADDRBWRADDR;
  input [23:0]DIADI;
  input [23:0]DIBDI;
  input [0:0]WEA;
  input B_web;
  input [2:0]state;
  input pwm_write_active;
  input mem_reg_1;
  input [2:0]Q;

  wire [6:0]ADDRARDADDR;
  wire [6:0]ADDRBWRADDR;
  wire B_enb4_out;
  wire B_web;
  wire [23:0]DIADI;
  wire [23:0]DIBDI;
  wire [23:0]DOADO;
  wire [23:0]DOBDO;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [2:0]Q;
  wire [0:0]WEA;
  wire clk;
  wire mem_reg_0;
  wire mem_reg_1;
  wire pwm_write_active;
  wire [2:0]state;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:24]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:24]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "23" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIBDI}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_DOADO_UNCONNECTED[31:24],DOADO}),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:24],DOBDO}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0),
        .ENBWREN(B_enb4_out),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,B_web,B_web,B_web,B_web}));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h06)) 
    mem_reg_i_103__0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\FSM_sequential_state_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000090000)) 
    mem_reg_i_104__0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(mem_reg_1),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_sequential_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    mem_reg_i_68__0
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(pwm_write_active),
        .O(\FSM_sequential_state_reg[1] ));
  LUT2 #(
    .INIT(4'h9)) 
    mem_reg_i_69__1
       (.I0(state[1]),
        .I1(state[2]),
        .O(\FSM_sequential_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000000000090000)) 
    mem_reg_i_78__0
       (.I0(state[1]),
        .I1(state[2]),
        .I2(mem_reg_1),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_sequential_state_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "bram_128x24" *) 
module design_1_polymul_axi_top_0_0_bram_128x24_1
   (mem_reg_0,
    mem_reg_1,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[2] ,
    D,
    mem_reg_2,
    clk,
    mem_reg_3,
    C_enb8_out,
    mem_reg_4,
    mem_reg_5,
    DIADI,
    DIBDI,
    mem_reg_6,
    state,
    mem_reg_7);
  output [23:0]mem_reg_0;
  output [23:0]mem_reg_1;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[2] ;
  output [11:0]D;
  output [11:0]mem_reg_2;
  input clk;
  input mem_reg_3;
  input C_enb8_out;
  input [6:0]mem_reg_4;
  input [6:0]mem_reg_5;
  input [23:0]DIADI;
  input [23:0]DIBDI;
  input mem_reg_6;
  input [2:0]state;
  input mem_reg_7;

  wire C_enb8_out;
  wire [11:0]D;
  wire [23:0]DIADI;
  wire [23:0]DIBDI;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \a0_s0[11]_i_4_n_0 ;
  wire \a0_s0[11]_i_5_n_0 ;
  wire \a0_s0[11]_i_6_n_0 ;
  wire \a0_s0[4]_i_3_n_0 ;
  wire \a0_s0[4]_i_4_n_0 ;
  wire \a0_s0[4]_i_5_n_0 ;
  wire \a0_s0[4]_i_6_n_0 ;
  wire \a0_s0[8]_i_3_n_0 ;
  wire \a0_s0[8]_i_4_n_0 ;
  wire \a0_s0[8]_i_5_n_0 ;
  wire \a0_s0_reg[11]_i_2_n_2 ;
  wire \a0_s0_reg[11]_i_2_n_3 ;
  wire \a0_s0_reg[4]_i_2_n_0 ;
  wire \a0_s0_reg[4]_i_2_n_1 ;
  wire \a0_s0_reg[4]_i_2_n_2 ;
  wire \a0_s0_reg[4]_i_2_n_3 ;
  wire \a0_s0_reg[8]_i_2_n_0 ;
  wire \a0_s0_reg[8]_i_2_n_1 ;
  wire \a0_s0_reg[8]_i_2_n_2 ;
  wire \a0_s0_reg[8]_i_2_n_3 ;
  wire \a1_s0[11]_i_4_n_0 ;
  wire \a1_s0[11]_i_5_n_0 ;
  wire \a1_s0[11]_i_6_n_0 ;
  wire \a1_s0[4]_i_3_n_0 ;
  wire \a1_s0[4]_i_4_n_0 ;
  wire \a1_s0[4]_i_5_n_0 ;
  wire \a1_s0[4]_i_6_n_0 ;
  wire \a1_s0[8]_i_3_n_0 ;
  wire \a1_s0[8]_i_4_n_0 ;
  wire \a1_s0[8]_i_5_n_0 ;
  wire \a1_s0_reg[11]_i_2_n_2 ;
  wire \a1_s0_reg[11]_i_2_n_3 ;
  wire \a1_s0_reg[4]_i_2_n_0 ;
  wire \a1_s0_reg[4]_i_2_n_1 ;
  wire \a1_s0_reg[4]_i_2_n_2 ;
  wire \a1_s0_reg[4]_i_2_n_3 ;
  wire \a1_s0_reg[8]_i_2_n_0 ;
  wire \a1_s0_reg[8]_i_2_n_1 ;
  wire \a1_s0_reg[8]_i_2_n_2 ;
  wire \a1_s0_reg[8]_i_2_n_3 ;
  wire clk;
  wire [23:0]mem_reg_0;
  wire [23:0]mem_reg_1;
  wire [11:0]mem_reg_2;
  wire mem_reg_3;
  wire [6:0]mem_reg_4;
  wire [6:0]mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire [2:0]state;
  wire [11:1]\u_pwm/a0_red0 ;
  wire \u_pwm/a0_red1 ;
  wire [11:1]\u_pwm/a1_red0 ;
  wire \u_pwm/a1_red1 ;
  wire [3:2]\NLW_a0_s0_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_a0_s0_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_a1_s0_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_a1_s0_reg[11]_i_2_O_UNCONNECTED ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:24]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:24]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a0_s0[0]_i_1 
       (.I0(mem_reg_0[0]),
        .I1(\u_pwm/a0_red1 ),
        .O(mem_reg_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[10]_i_1 
       (.I0(\u_pwm/a0_red0 [10]),
        .I1(mem_reg_0[10]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[11]_i_1 
       (.I0(\u_pwm/a0_red0 [11]),
        .I1(mem_reg_0[11]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[11]));
  LUT6 #(
    .INIT(64'hAAA8888800000000)) 
    \a0_s0[11]_i_3 
       (.I0(mem_reg_0[10]),
        .I1(mem_reg_0[9]),
        .I2(\a0_s0[11]_i_5_n_0 ),
        .I3(\a0_s0[11]_i_6_n_0 ),
        .I4(mem_reg_0[8]),
        .I5(mem_reg_0[11]),
        .O(\u_pwm/a0_red1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a0_s0[11]_i_4 
       (.I0(mem_reg_0[9]),
        .O(\a0_s0[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \a0_s0[11]_i_5 
       (.I0(mem_reg_0[2]),
        .I1(mem_reg_0[1]),
        .I2(mem_reg_0[4]),
        .I3(mem_reg_0[3]),
        .O(\a0_s0[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \a0_s0[11]_i_6 
       (.I0(mem_reg_0[6]),
        .I1(mem_reg_0[5]),
        .I2(mem_reg_0[0]),
        .I3(mem_reg_0[7]),
        .O(\a0_s0[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[1]_i_1 
       (.I0(\u_pwm/a0_red0 [1]),
        .I1(mem_reg_0[1]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[2]_i_1 
       (.I0(\u_pwm/a0_red0 [2]),
        .I1(mem_reg_0[2]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[3]_i_1 
       (.I0(\u_pwm/a0_red0 [3]),
        .I1(mem_reg_0[3]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[4]_i_1 
       (.I0(\u_pwm/a0_red0 [4]),
        .I1(mem_reg_0[4]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \a0_s0[4]_i_3 
       (.I0(mem_reg_0[4]),
        .O(\a0_s0[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a0_s0[4]_i_4 
       (.I0(mem_reg_0[3]),
        .O(\a0_s0[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a0_s0[4]_i_5 
       (.I0(mem_reg_0[2]),
        .O(\a0_s0[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a0_s0[4]_i_6 
       (.I0(mem_reg_0[1]),
        .O(\a0_s0[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[5]_i_1 
       (.I0(\u_pwm/a0_red0 [5]),
        .I1(mem_reg_0[5]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[6]_i_1 
       (.I0(\u_pwm/a0_red0 [6]),
        .I1(mem_reg_0[6]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[6]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[7]_i_1 
       (.I0(\u_pwm/a0_red0 [7]),
        .I1(mem_reg_0[7]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[7]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[8]_i_1 
       (.I0(\u_pwm/a0_red0 [8]),
        .I1(mem_reg_0[8]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \a0_s0[8]_i_3 
       (.I0(mem_reg_0[7]),
        .O(\a0_s0[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a0_s0[8]_i_4 
       (.I0(mem_reg_0[6]),
        .O(\a0_s0[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a0_s0[8]_i_5 
       (.I0(mem_reg_0[5]),
        .O(\a0_s0[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a0_s0[9]_i_1 
       (.I0(\u_pwm/a0_red0 [9]),
        .I1(mem_reg_0[9]),
        .I2(\u_pwm/a0_red1 ),
        .O(mem_reg_2[9]));
  CARRY4 \a0_s0_reg[11]_i_2 
       (.CI(\a0_s0_reg[8]_i_2_n_0 ),
        .CO({\NLW_a0_s0_reg[11]_i_2_CO_UNCONNECTED [3:2],\a0_s0_reg[11]_i_2_n_2 ,\a0_s0_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mem_reg_0[9]}),
        .O({\NLW_a0_s0_reg[11]_i_2_O_UNCONNECTED [3],\u_pwm/a0_red0 [11:9]}),
        .S({1'b0,mem_reg_0[11:10],\a0_s0[11]_i_4_n_0 }));
  CARRY4 \a0_s0_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\a0_s0_reg[4]_i_2_n_0 ,\a0_s0_reg[4]_i_2_n_1 ,\a0_s0_reg[4]_i_2_n_2 ,\a0_s0_reg[4]_i_2_n_3 }),
        .CYINIT(mem_reg_0[0]),
        .DI(mem_reg_0[4:1]),
        .O(\u_pwm/a0_red0 [4:1]),
        .S({\a0_s0[4]_i_3_n_0 ,\a0_s0[4]_i_4_n_0 ,\a0_s0[4]_i_5_n_0 ,\a0_s0[4]_i_6_n_0 }));
  CARRY4 \a0_s0_reg[8]_i_2 
       (.CI(\a0_s0_reg[4]_i_2_n_0 ),
        .CO({\a0_s0_reg[8]_i_2_n_0 ,\a0_s0_reg[8]_i_2_n_1 ,\a0_s0_reg[8]_i_2_n_2 ,\a0_s0_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mem_reg_0[7:5]}),
        .O(\u_pwm/a0_red0 [8:5]),
        .S({mem_reg_0[8],\a0_s0[8]_i_3_n_0 ,\a0_s0[8]_i_4_n_0 ,\a0_s0[8]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a1_s0[0]_i_1 
       (.I0(mem_reg_0[12]),
        .I1(\u_pwm/a1_red1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[10]_i_1 
       (.I0(\u_pwm/a1_red0 [10]),
        .I1(mem_reg_0[22]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[11]_i_1 
       (.I0(\u_pwm/a1_red0 [11]),
        .I1(mem_reg_0[23]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAAA8888800000000)) 
    \a1_s0[11]_i_3 
       (.I0(mem_reg_0[22]),
        .I1(mem_reg_0[21]),
        .I2(\a1_s0[11]_i_5_n_0 ),
        .I3(\a1_s0[11]_i_6_n_0 ),
        .I4(mem_reg_0[20]),
        .I5(mem_reg_0[23]),
        .O(\u_pwm/a1_red1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a1_s0[11]_i_4 
       (.I0(mem_reg_0[21]),
        .O(\a1_s0[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \a1_s0[11]_i_5 
       (.I0(mem_reg_0[14]),
        .I1(mem_reg_0[13]),
        .I2(mem_reg_0[16]),
        .I3(mem_reg_0[15]),
        .O(\a1_s0[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \a1_s0[11]_i_6 
       (.I0(mem_reg_0[18]),
        .I1(mem_reg_0[17]),
        .I2(mem_reg_0[12]),
        .I3(mem_reg_0[19]),
        .O(\a1_s0[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[1]_i_1 
       (.I0(\u_pwm/a1_red0 [1]),
        .I1(mem_reg_0[13]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[2]_i_1 
       (.I0(\u_pwm/a1_red0 [2]),
        .I1(mem_reg_0[14]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[3]_i_1 
       (.I0(\u_pwm/a1_red0 [3]),
        .I1(mem_reg_0[15]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[4]_i_1 
       (.I0(\u_pwm/a1_red0 [4]),
        .I1(mem_reg_0[16]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \a1_s0[4]_i_3 
       (.I0(mem_reg_0[16]),
        .O(\a1_s0[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a1_s0[4]_i_4 
       (.I0(mem_reg_0[15]),
        .O(\a1_s0[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a1_s0[4]_i_5 
       (.I0(mem_reg_0[14]),
        .O(\a1_s0[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a1_s0[4]_i_6 
       (.I0(mem_reg_0[13]),
        .O(\a1_s0[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[5]_i_1 
       (.I0(\u_pwm/a1_red0 [5]),
        .I1(mem_reg_0[17]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[6]_i_1 
       (.I0(\u_pwm/a1_red0 [6]),
        .I1(mem_reg_0[18]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[7]_i_1 
       (.I0(\u_pwm/a1_red0 [7]),
        .I1(mem_reg_0[19]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[8]_i_1 
       (.I0(\u_pwm/a1_red0 [8]),
        .I1(mem_reg_0[20]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \a1_s0[8]_i_3 
       (.I0(mem_reg_0[19]),
        .O(\a1_s0[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a1_s0[8]_i_4 
       (.I0(mem_reg_0[18]),
        .O(\a1_s0[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a1_s0[8]_i_5 
       (.I0(mem_reg_0[17]),
        .O(\a1_s0[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a1_s0[9]_i_1 
       (.I0(\u_pwm/a1_red0 [9]),
        .I1(mem_reg_0[21]),
        .I2(\u_pwm/a1_red1 ),
        .O(D[9]));
  CARRY4 \a1_s0_reg[11]_i_2 
       (.CI(\a1_s0_reg[8]_i_2_n_0 ),
        .CO({\NLW_a1_s0_reg[11]_i_2_CO_UNCONNECTED [3:2],\a1_s0_reg[11]_i_2_n_2 ,\a1_s0_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mem_reg_0[21]}),
        .O({\NLW_a1_s0_reg[11]_i_2_O_UNCONNECTED [3],\u_pwm/a1_red0 [11:9]}),
        .S({1'b0,mem_reg_0[23:22],\a1_s0[11]_i_4_n_0 }));
  CARRY4 \a1_s0_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\a1_s0_reg[4]_i_2_n_0 ,\a1_s0_reg[4]_i_2_n_1 ,\a1_s0_reg[4]_i_2_n_2 ,\a1_s0_reg[4]_i_2_n_3 }),
        .CYINIT(mem_reg_0[12]),
        .DI(mem_reg_0[16:13]),
        .O(\u_pwm/a1_red0 [4:1]),
        .S({\a1_s0[4]_i_3_n_0 ,\a1_s0[4]_i_4_n_0 ,\a1_s0[4]_i_5_n_0 ,\a1_s0[4]_i_6_n_0 }));
  CARRY4 \a1_s0_reg[8]_i_2 
       (.CI(\a1_s0_reg[4]_i_2_n_0 ),
        .CO({\a1_s0_reg[8]_i_2_n_0 ,\a1_s0_reg[8]_i_2_n_1 ,\a1_s0_reg[8]_i_2_n_2 ,\a1_s0_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mem_reg_0[19:17]}),
        .O(\u_pwm/a1_red0 [8:5]),
        .S({mem_reg_0[20],\a1_s0[8]_i_3_n_0 ,\a1_s0[8]_i_4_n_0 ,\a1_s0[8]_i_5_n_0 }));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d24" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "23" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_4,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,mem_reg_5,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIBDI}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_mem_reg_DOADO_UNCONNECTED[31:24],mem_reg_0}),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:24],mem_reg_1}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3),
        .ENBWREN(C_enb8_out),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({mem_reg_6,mem_reg_6,mem_reg_6,mem_reg_6}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,mem_reg_6,mem_reg_6,mem_reg_6,mem_reg_6}));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    mem_reg_i_66
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(mem_reg_7),
        .O(\FSM_sequential_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h40)) 
    mem_reg_i_67__1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_68__1
       (.I0(state[2]),
        .I1(state[1]),
        .O(\FSM_sequential_state_reg[2] ));
endmodule

(* ORIG_REF_NAME = "butterfly_unit" *) 
module design_1_polymul_axi_top_0_0_butterfly_unit
   (\upper_d_reg[3][11]_0 ,
    \upper_d_reg[3][10]_0 ,
    \upper_d_reg[3][9]_0 ,
    \upper_d_reg[3][8]_0 ,
    \upper_d_reg[3][7]_0 ,
    \upper_d_reg[3][6]_0 ,
    \upper_d_reg[3][5]_0 ,
    \upper_d_reg[3][4]_0 ,
    \upper_d_reg[3][3]_0 ,
    \upper_d_reg[3][2]_0 ,
    \upper_d_reg[3][1]_0 ,
    \upper_d_reg[3][0]_0 ,
    \ag_bu_mode_d1_reg[0]_rep ,
    DI,
    DIBDI,
    \R_s2_reg[11] ,
    \R_s2_reg[11]_0 ,
    S,
    \ag_bu_mode_d1_reg[0]_rep_0 ,
    \b1_reg_r_reg[7]_0 ,
    \b1_reg_r_reg[3]_0 ,
    bu_result_u,
    DIADI,
    \ag_bu_mode_d1_reg[0]_rep__1 ,
    clk,
    \upper_d_reg[3][0]_1 ,
    \c1_s1_reg[0] ,
    \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ,
    O,
    Q,
    \b2_reg_r_reg[0]_0 ,
    mem_reg,
    mem_reg_0,
    \c1_s1_reg[5] ,
    bu_data_a_r,
    mem_reg_1,
    A_web,
    B_web,
    CO,
    out,
    mem_reg_2,
    mem_reg_3,
    \b1_reg_r_reg[11]_0 ,
    bu_data_b_r,
    ag_bu_mode_d1);
  output \upper_d_reg[3][11]_0 ;
  output \upper_d_reg[3][10]_0 ;
  output \upper_d_reg[3][9]_0 ;
  output \upper_d_reg[3][8]_0 ;
  output \upper_d_reg[3][7]_0 ;
  output \upper_d_reg[3][6]_0 ;
  output \upper_d_reg[3][5]_0 ;
  output \upper_d_reg[3][4]_0 ;
  output \upper_d_reg[3][3]_0 ;
  output \upper_d_reg[3][2]_0 ;
  output \upper_d_reg[3][1]_0 ;
  output \upper_d_reg[3][0]_0 ;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep ;
  output [0:0]DI;
  output [11:0]DIBDI;
  output [11:0]\R_s2_reg[11] ;
  output [11:0]\R_s2_reg[11]_0 ;
  output [0:0]S;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep_0 ;
  output [3:0]\b1_reg_r_reg[7]_0 ;
  output [1:0]\b1_reg_r_reg[3]_0 ;
  output [11:0]bu_result_u;
  output [11:0]DIADI;
  output [11:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  input clk;
  input \upper_d_reg[3][0]_1 ;
  input \c1_s1_reg[0] ;
  input [3:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  input [3:0]O;
  input [12:0]Q;
  input \b2_reg_r_reg[0]_0 ;
  input mem_reg;
  input mem_reg_0;
  input \c1_s1_reg[5] ;
  input [11:0]bu_data_a_r;
  input mem_reg_1;
  input A_web;
  input B_web;
  input [0:0]CO;
  input [11:0]out;
  input mem_reg_2;
  input mem_reg_3;
  input [11:0]\b1_reg_r_reg[11]_0 ;
  input [11:0]bu_data_b_r;
  input [0:0]ag_bu_mode_d1;

  wire A_web;
  wire B_web;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [11:0]DIADI;
  wire [11:0]DIBDI;
  wire [3:0]O;
  wire [12:0]Q;
  wire [11:0]\R_s2_reg[11] ;
  wire [11:0]\R_s2_reg[11]_0 ;
  wire [0:0]S;
  wire \a2_reg[11]_i_5_n_0 ;
  wire \a2_reg[11]_i_6_n_0 ;
  wire \a2_reg[11]_i_7_n_0 ;
  wire \a2_reg[11]_i_8_n_0 ;
  wire \a2_reg[3]_i_3_n_0 ;
  wire \a2_reg[3]_i_4_n_0 ;
  wire \a2_reg[3]_i_5_n_0 ;
  wire \a2_reg[3]_i_6_n_0 ;
  wire \a2_reg[7]_i_3_n_0 ;
  wire \a2_reg[7]_i_4_n_0 ;
  wire \a2_reg[7]_i_5_n_0 ;
  wire \a2_reg[7]_i_6_n_0 ;
  wire \a2_reg_reg_n_0_[0] ;
  wire \a2_reg_reg_n_0_[10] ;
  wire \a2_reg_reg_n_0_[11] ;
  wire \a2_reg_reg_n_0_[1] ;
  wire \a2_reg_reg_n_0_[2] ;
  wire \a2_reg_reg_n_0_[3] ;
  wire \a2_reg_reg_n_0_[4] ;
  wire \a2_reg_reg_n_0_[5] ;
  wire \a2_reg_reg_n_0_[6] ;
  wire \a2_reg_reg_n_0_[7] ;
  wire \a2_reg_reg_n_0_[8] ;
  wire \a2_reg_reg_n_0_[9] ;
  wire [0:0]ag_bu_mode_d1;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep_0 ;
  wire [11:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  wire [11:0]\b1_reg_r_reg[11]_0 ;
  wire [1:0]\b1_reg_r_reg[3]_0 ;
  wire [3:0]\b1_reg_r_reg[7]_0 ;
  wire \b1_reg_r_reg_n_0_[0] ;
  wire \b1_reg_r_reg_n_0_[10] ;
  wire \b1_reg_r_reg_n_0_[11] ;
  wire \b1_reg_r_reg_n_0_[1] ;
  wire \b1_reg_r_reg_n_0_[2] ;
  wire \b1_reg_r_reg_n_0_[3] ;
  wire \b1_reg_r_reg_n_0_[4] ;
  wire \b1_reg_r_reg_n_0_[5] ;
  wire \b1_reg_r_reg_n_0_[6] ;
  wire \b1_reg_r_reg_n_0_[7] ;
  wire \b1_reg_r_reg_n_0_[8] ;
  wire \b1_reg_r_reg_n_0_[9] ;
  wire \b2_reg_r_reg[0]_0 ;
  wire \b2_reg_r_reg_n_0_[0] ;
  wire \b2_reg_r_reg_n_0_[10] ;
  wire \b2_reg_r_reg_n_0_[11] ;
  wire \b2_reg_r_reg_n_0_[1] ;
  wire \b2_reg_r_reg_n_0_[2] ;
  wire \b2_reg_r_reg_n_0_[3] ;
  wire \b2_reg_r_reg_n_0_[4] ;
  wire \b2_reg_r_reg_n_0_[5] ;
  wire \b2_reg_r_reg_n_0_[6] ;
  wire \b2_reg_r_reg_n_0_[7] ;
  wire \b2_reg_r_reg_n_0_[8] ;
  wire \b2_reg_r_reg_n_0_[9] ;
  wire [11:0]bu_data_a_r;
  wire [11:0]bu_data_b_r;
  wire [11:0]bu_result_u;
  wire \c1_s1_reg[0] ;
  wire \c1_s1_reg[5] ;
  wire clk;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire [11:0]out;
  wire sum_signed_carry__0_i_9_n_0;
  wire sum_signed_carry__0_i_9_n_1;
  wire sum_signed_carry__0_i_9_n_2;
  wire sum_signed_carry__0_i_9_n_3;
  wire sum_signed_carry__0_i_9_n_4;
  wire sum_signed_carry__0_i_9_n_5;
  wire sum_signed_carry__0_i_9_n_6;
  wire sum_signed_carry__0_i_9_n_7;
  wire sum_signed_carry_i_10__0_n_0;
  wire sum_signed_carry_i_10__0_n_1;
  wire sum_signed_carry_i_10__0_n_2;
  wire sum_signed_carry_i_10__0_n_3;
  wire sum_signed_carry_i_10__0_n_6;
  wire sum_signed_carry_i_10__0_n_7;
  wire sum_signed_carry_i_11__0_n_3;
  wire sum_signed_carry_i_9_n_0;
  wire sum_signed_carry_i_9_n_1;
  wire sum_signed_carry_i_9_n_2;
  wire sum_signed_carry_i_9_n_3;
  wire u_mul_n_0;
  wire u_mul_n_1;
  wire u_mul_n_10;
  wire u_mul_n_11;
  wire u_mul_n_2;
  wire u_mul_n_3;
  wire u_mul_n_4;
  wire u_mul_n_5;
  wire u_mul_n_6;
  wire u_mul_n_7;
  wire u_mul_n_8;
  wire u_mul_n_9;
  wire u_sliceB_add_n_36;
  wire u_sliceB_add_n_37;
  wire u_sliceB_add_n_38;
  wire u_sliceB_add_n_39;
  wire u_sliceB_add_n_40;
  wire u_sliceB_add_n_41;
  wire u_sliceB_add_n_42;
  wire u_sliceB_add_n_43;
  wire u_sliceB_add_n_44;
  wire u_sliceB_add_n_45;
  wire u_sliceB_add_n_46;
  wire u_sliceB_add_n_47;
  wire u_sliceB_sub_n_0;
  wire u_sliceB_sub_n_1;
  wire u_sliceB_sub_n_10;
  wire u_sliceB_sub_n_11;
  wire u_sliceB_sub_n_12;
  wire u_sliceB_sub_n_13;
  wire u_sliceB_sub_n_14;
  wire u_sliceB_sub_n_15;
  wire u_sliceB_sub_n_16;
  wire u_sliceB_sub_n_17;
  wire u_sliceB_sub_n_18;
  wire u_sliceB_sub_n_19;
  wire u_sliceB_sub_n_2;
  wire u_sliceB_sub_n_20;
  wire u_sliceB_sub_n_21;
  wire u_sliceB_sub_n_22;
  wire u_sliceB_sub_n_23;
  wire u_sliceB_sub_n_24;
  wire u_sliceB_sub_n_25;
  wire u_sliceB_sub_n_26;
  wire u_sliceB_sub_n_27;
  wire u_sliceB_sub_n_28;
  wire u_sliceB_sub_n_29;
  wire u_sliceB_sub_n_3;
  wire u_sliceB_sub_n_30;
  wire u_sliceB_sub_n_31;
  wire u_sliceB_sub_n_32;
  wire u_sliceB_sub_n_33;
  wire u_sliceB_sub_n_34;
  wire u_sliceB_sub_n_35;
  wire u_sliceB_sub_n_36;
  wire u_sliceB_sub_n_4;
  wire u_sliceB_sub_n_5;
  wire u_sliceB_sub_n_6;
  wire u_sliceB_sub_n_7;
  wire u_sliceB_sub_n_8;
  wire u_sliceB_sub_n_9;
  wire \upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_1 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_2 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_3 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_4 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_5 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_6 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_7 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_7_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_8_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire [3:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  wire \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[3][0]_0 ;
  wire \upper_d_reg[3][0]_1 ;
  wire \upper_d_reg[3][10]_0 ;
  wire \upper_d_reg[3][11]_0 ;
  wire \upper_d_reg[3][1]_0 ;
  wire \upper_d_reg[3][2]_0 ;
  wire \upper_d_reg[3][3]_0 ;
  wire \upper_d_reg[3][4]_0 ;
  wire \upper_d_reg[3][5]_0 ;
  wire \upper_d_reg[3][6]_0 ;
  wire \upper_d_reg[3][7]_0 ;
  wire \upper_d_reg[3][8]_0 ;
  wire \upper_d_reg[3][9]_0 ;
  wire upper_d_reg_gate__0_n_0;
  wire upper_d_reg_gate__10_n_0;
  wire upper_d_reg_gate__1_n_0;
  wire upper_d_reg_gate__2_n_0;
  wire upper_d_reg_gate__3_n_0;
  wire upper_d_reg_gate__4_n_0;
  wire upper_d_reg_gate__5_n_0;
  wire upper_d_reg_gate__6_n_0;
  wire upper_d_reg_gate__7_n_0;
  wire upper_d_reg_gate__8_n_0;
  wire upper_d_reg_gate__9_n_0;
  wire upper_d_reg_gate_n_0;
  wire [3:1]NLW_sum_signed_carry_i_11__0_CO_UNCONNECTED;
  wire [3:0]NLW_sum_signed_carry_i_11__0_O_UNCONNECTED;
  wire [3:3]\NLW_upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0CAC)) 
    \a2_reg[11]_i_5 
       (.I0(u_sliceB_sub_n_3),
        .I1(bu_data_b_r[11]),
        .I2(ag_bu_mode_d1),
        .I3(u_sliceB_sub_n_24),
        .O(\a2_reg[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44F0BBF0)) 
    \a2_reg[11]_i_6 
       (.I0(u_sliceB_sub_n_3),
        .I1(u_sliceB_sub_n_24),
        .I2(bu_data_b_r[10]),
        .I3(mem_reg_0),
        .I4(u_sliceB_sub_n_8),
        .O(\a2_reg[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \a2_reg[11]_i_7 
       (.I0(u_sliceB_sub_n_3),
        .I1(bu_data_b_r[9]),
        .I2(mem_reg_0),
        .I3(u_sliceB_sub_n_9),
        .O(\a2_reg[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEEF011F0)) 
    \a2_reg[11]_i_8 
       (.I0(u_sliceB_sub_n_24),
        .I1(u_sliceB_sub_n_3),
        .I2(bu_data_b_r[8]),
        .I3(mem_reg_0),
        .I4(u_sliceB_sub_n_10),
        .O(\a2_reg[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[3]_i_3 
       (.I0(u_sliceB_sub_n_7),
        .I1(mem_reg_0),
        .I2(bu_data_b_r[3]),
        .O(\a2_reg[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[3]_i_4 
       (.I0(u_sliceB_sub_n_0),
        .I1(mem_reg_0),
        .I2(bu_data_b_r[2]),
        .O(\a2_reg[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[3]_i_5 
       (.I0(u_sliceB_sub_n_1),
        .I1(mem_reg_0),
        .I2(bu_data_b_r[1]),
        .O(\a2_reg[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0CACFC5C)) 
    \a2_reg[3]_i_6 
       (.I0(u_sliceB_sub_n_24),
        .I1(bu_data_b_r[0]),
        .I2(mem_reg_0),
        .I3(u_sliceB_sub_n_3),
        .I4(u_sliceB_sub_n_2),
        .O(\a2_reg[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \a2_reg[7]_i_3 
       (.I0(u_sliceB_sub_n_3),
        .I1(bu_data_b_r[7]),
        .I2(mem_reg_0),
        .I3(u_sliceB_sub_n_11),
        .O(\a2_reg[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[7]_i_4 
       (.I0(u_sliceB_sub_n_4),
        .I1(mem_reg_0),
        .I2(bu_data_b_r[6]),
        .O(\a2_reg[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[7]_i_5 
       (.I0(u_sliceB_sub_n_5),
        .I1(mem_reg_0),
        .I2(bu_data_b_r[5]),
        .O(\a2_reg[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[7]_i_6 
       (.I0(u_sliceB_sub_n_6),
        .I1(mem_reg_0),
        .I2(bu_data_b_r[4]),
        .O(\a2_reg[7]_i_6_n_0 ));
  FDCE \a2_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_36),
        .Q(\a2_reg_reg_n_0_[0] ));
  FDCE \a2_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_26),
        .Q(\a2_reg_reg_n_0_[10] ));
  FDCE \a2_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_25),
        .Q(\a2_reg_reg_n_0_[11] ));
  FDCE \a2_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_35),
        .Q(\a2_reg_reg_n_0_[1] ));
  FDCE \a2_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_34),
        .Q(\a2_reg_reg_n_0_[2] ));
  FDCE \a2_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_33),
        .Q(\a2_reg_reg_n_0_[3] ));
  FDCE \a2_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_32),
        .Q(\a2_reg_reg_n_0_[4] ));
  FDCE \a2_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_31),
        .Q(\a2_reg_reg_n_0_[5] ));
  FDCE \a2_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_30),
        .Q(\a2_reg_reg_n_0_[6] ));
  FDCE \a2_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_29),
        .Q(\a2_reg_reg_n_0_[7] ));
  FDCE \a2_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_28),
        .Q(\a2_reg_reg_n_0_[8] ));
  FDCE \a2_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_27),
        .Q(\a2_reg_reg_n_0_[9] ));
  FDCE \b1_reg_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [0]),
        .Q(\b1_reg_r_reg_n_0_[0] ));
  FDCE \b1_reg_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [10]),
        .Q(\b1_reg_r_reg_n_0_[10] ));
  FDCE \b1_reg_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [11]),
        .Q(\b1_reg_r_reg_n_0_[11] ));
  FDCE \b1_reg_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [1]),
        .Q(\b1_reg_r_reg_n_0_[1] ));
  FDCE \b1_reg_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [2]),
        .Q(\b1_reg_r_reg_n_0_[2] ));
  FDCE \b1_reg_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [3]),
        .Q(\b1_reg_r_reg_n_0_[3] ));
  FDCE \b1_reg_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [4]),
        .Q(\b1_reg_r_reg_n_0_[4] ));
  FDCE \b1_reg_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [5]),
        .Q(\b1_reg_r_reg_n_0_[5] ));
  FDCE \b1_reg_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [6]),
        .Q(\b1_reg_r_reg_n_0_[6] ));
  FDCE \b1_reg_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [7]),
        .Q(\b1_reg_r_reg_n_0_[7] ));
  FDCE \b1_reg_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [8]),
        .Q(\b1_reg_r_reg_n_0_[8] ));
  FDCE \b1_reg_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [9]),
        .Q(\b1_reg_r_reg_n_0_[9] ));
  FDCE \b2_reg_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_11),
        .Q(\b2_reg_r_reg_n_0_[0] ));
  FDCE \b2_reg_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_1),
        .Q(\b2_reg_r_reg_n_0_[10] ));
  FDCE \b2_reg_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_0),
        .Q(\b2_reg_r_reg_n_0_[11] ));
  FDCE \b2_reg_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_10),
        .Q(\b2_reg_r_reg_n_0_[1] ));
  FDCE \b2_reg_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_9),
        .Q(\b2_reg_r_reg_n_0_[2] ));
  FDCE \b2_reg_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_8),
        .Q(\b2_reg_r_reg_n_0_[3] ));
  FDCE \b2_reg_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_7),
        .Q(\b2_reg_r_reg_n_0_[4] ));
  FDCE \b2_reg_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_6),
        .Q(\b2_reg_r_reg_n_0_[5] ));
  FDCE \b2_reg_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_5),
        .Q(\b2_reg_r_reg_n_0_[6] ));
  FDCE \b2_reg_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_4),
        .Q(\b2_reg_r_reg_n_0_[7] ));
  FDCE \b2_reg_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_3),
        .Q(\b2_reg_r_reg_n_0_[8] ));
  FDCE \b2_reg_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_mul_n_2),
        .Q(\b2_reg_r_reg_n_0_[9] ));
  CARRY4 sum_signed_carry__0_i_9
       (.CI(sum_signed_carry_i_9_n_0),
        .CO({sum_signed_carry__0_i_9_n_0,sum_signed_carry__0_i_9_n_1,sum_signed_carry__0_i_9_n_2,sum_signed_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\b1_reg_r_reg_n_0_[11] ,\b1_reg_r_reg_n_0_[10] ,\b1_reg_r_reg_n_0_[9] ,\b1_reg_r_reg_n_0_[8] }),
        .O({sum_signed_carry__0_i_9_n_4,sum_signed_carry__0_i_9_n_5,sum_signed_carry__0_i_9_n_6,sum_signed_carry__0_i_9_n_7}),
        .S({u_sliceB_add_n_44,u_sliceB_add_n_45,u_sliceB_add_n_46,u_sliceB_add_n_47}));
  CARRY4 sum_signed_carry_i_10__0
       (.CI(1'b0),
        .CO({sum_signed_carry_i_10__0_n_0,sum_signed_carry_i_10__0_n_1,sum_signed_carry_i_10__0_n_2,sum_signed_carry_i_10__0_n_3}),
        .CYINIT(1'b0),
        .DI({\b1_reg_r_reg_n_0_[3] ,\b1_reg_r_reg_n_0_[2] ,\b1_reg_r_reg_n_0_[1] ,\b1_reg_r_reg_n_0_[0] }),
        .O({\b1_reg_r_reg[3]_0 ,sum_signed_carry_i_10__0_n_6,sum_signed_carry_i_10__0_n_7}),
        .S({u_sliceB_add_n_36,u_sliceB_add_n_37,u_sliceB_add_n_38,u_sliceB_add_n_39}));
  CARRY4 sum_signed_carry_i_11__0
       (.CI(sum_signed_carry__0_i_9_n_0),
        .CO({NLW_sum_signed_carry_i_11__0_CO_UNCONNECTED[3:1],sum_signed_carry_i_11__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sum_signed_carry_i_11__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 sum_signed_carry_i_9
       (.CI(sum_signed_carry_i_10__0_n_0),
        .CO({sum_signed_carry_i_9_n_0,sum_signed_carry_i_9_n_1,sum_signed_carry_i_9_n_2,sum_signed_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\b1_reg_r_reg_n_0_[7] ,\b1_reg_r_reg_n_0_[6] ,\b1_reg_r_reg_n_0_[5] ,\b1_reg_r_reg_n_0_[4] }),
        .O(\b1_reg_r_reg[7]_0 ),
        .S({u_sliceB_add_n_40,u_sliceB_add_n_41,u_sliceB_add_n_42,u_sliceB_add_n_43}));
  design_1_polymul_axi_top_0_0_mod_multiplier_15 u_mul
       (.A_web(A_web),
        .B_web(B_web),
        .D({u_mul_n_0,u_mul_n_1,u_mul_n_2,u_mul_n_3,u_mul_n_4,u_mul_n_5,u_mul_n_6,u_mul_n_7,u_mul_n_8,u_mul_n_9,u_mul_n_10,u_mul_n_11}),
        .DIBDI(DIBDI),
        .O({u_sliceB_sub_n_12,u_sliceB_sub_n_13,u_sliceB_sub_n_14,u_sliceB_sub_n_15}),
        .Q(Q),
        .\R_s2_reg[11] (\R_s2_reg[11] ),
        .\R_s2_reg[11]_0 (\R_s2_reg[11]_0 ),
        .\b2_reg_r_reg[0] (\b2_reg_r_reg[0]_0 ),
        .\b_reg_reg[11]_0 ({\a2_reg_reg_n_0_[11] ,\a2_reg_reg_n_0_[10] ,\a2_reg_reg_n_0_[9] ,\a2_reg_reg_n_0_[8] ,\a2_reg_reg_n_0_[7] ,\a2_reg_reg_n_0_[6] ,\a2_reg_reg_n_0_[5] ,\a2_reg_reg_n_0_[4] ,\a2_reg_reg_n_0_[3] ,\a2_reg_reg_n_0_[2] ,\a2_reg_reg_n_0_[1] ,\a2_reg_reg_n_0_[0] }),
        .bu_data_a_r(bu_data_a_r),
        .\c1_s1_reg[0] (\c1_s1_reg[0] ),
        .\c1_s1_reg[5] (\c1_s1_reg[5] ),
        .clk(clk),
        .mem_reg(mem_reg_1),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(mem_reg),
        .mem_reg_2({u_sliceB_sub_n_20,u_sliceB_sub_n_21,u_sliceB_sub_n_22,u_sliceB_sub_n_23}),
        .mem_reg_3({u_sliceB_sub_n_16,u_sliceB_sub_n_17,u_sliceB_sub_n_18,u_sliceB_sub_n_19}));
  design_1_polymul_axi_top_0_0_mod_adder_16 u_sliceB_add
       (.A_web(A_web),
        .CO(sum_signed_carry_i_11__0_n_3),
        .DIADI(DIADI),
        .O({sum_signed_carry__0_i_9_n_4,sum_signed_carry__0_i_9_n_5,sum_signed_carry__0_i_9_n_6,sum_signed_carry__0_i_9_n_7}),
        .Q({\b1_reg_r_reg_n_0_[11] ,\b1_reg_r_reg_n_0_[10] ,\b1_reg_r_reg_n_0_[9] ,\b1_reg_r_reg_n_0_[8] ,\b1_reg_r_reg_n_0_[7] ,\b1_reg_r_reg_n_0_[6] ,\b1_reg_r_reg_n_0_[5] ,\b1_reg_r_reg_n_0_[4] ,\b1_reg_r_reg_n_0_[3] ,\b1_reg_r_reg_n_0_[2] ,\b1_reg_r_reg_n_0_[1] ,\b1_reg_r_reg_n_0_[0] }),
        .S({u_sliceB_add_n_36,u_sliceB_add_n_37,u_sliceB_add_n_38,u_sliceB_add_n_39}),
        .\ag_bu_mode_d1_reg[0]_rep__1 (\ag_bu_mode_d1_reg[0]_rep__1 ),
        .\b1_reg_r_reg[11] ({u_sliceB_add_n_44,u_sliceB_add_n_45,u_sliceB_add_n_46,u_sliceB_add_n_47}),
        .\b1_reg_r_reg[7] ({u_sliceB_add_n_40,u_sliceB_add_n_41,u_sliceB_add_n_42,u_sliceB_add_n_43}),
        .bu_result_u(bu_result_u),
        .mem_reg(\upper_d_reg[3][11]_0 ),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(\upper_d_reg[3][10]_0 ),
        .mem_reg_10(\upper_d_reg[3][1]_0 ),
        .mem_reg_11(\upper_d_reg[3][0]_0 ),
        .mem_reg_12(mem_reg_2),
        .mem_reg_13(mem_reg_3),
        .mem_reg_14(mem_reg_1),
        .mem_reg_2(\upper_d_reg[3][9]_0 ),
        .mem_reg_3(\upper_d_reg[3][8]_0 ),
        .mem_reg_4(\upper_d_reg[3][7]_0 ),
        .mem_reg_5(\upper_d_reg[3][6]_0 ),
        .mem_reg_6(\upper_d_reg[3][5]_0 ),
        .mem_reg_7(\upper_d_reg[3][4]_0 ),
        .mem_reg_8(\upper_d_reg[3][3]_0 ),
        .mem_reg_9(\upper_d_reg[3][2]_0 ),
        .out(out),
        .sum_signed_carry_0({\b1_reg_r_reg[3]_0 ,sum_signed_carry_i_10__0_n_6,sum_signed_carry_i_10__0_n_7}),
        .sum_signed_carry_1(\b2_reg_r_reg[0]_0 ),
        .sum_signed_carry__0_0(\b1_reg_r_reg[7]_0 ),
        .sum_signed_carry__0_i_9({\b2_reg_r_reg_n_0_[11] ,\b2_reg_r_reg_n_0_[10] ,\b2_reg_r_reg_n_0_[9] ,\b2_reg_r_reg_n_0_[8] ,\b2_reg_r_reg_n_0_[7] ,\b2_reg_r_reg_n_0_[6] ,\b2_reg_r_reg_n_0_[5] ,\b2_reg_r_reg_n_0_[4] ,\b2_reg_r_reg_n_0_[3] ,\b2_reg_r_reg_n_0_[2] ,\b2_reg_r_reg_n_0_[1] ,\b2_reg_r_reg_n_0_[0] }),
        .sum_signed_carry__1_0(mem_reg));
  design_1_polymul_axi_top_0_0_mod_subtractor_17 u_sliceB_sub
       (.CO(u_sliceB_sub_n_24),
        .D({u_sliceB_sub_n_25,u_sliceB_sub_n_26,u_sliceB_sub_n_27,u_sliceB_sub_n_28,u_sliceB_sub_n_29,u_sliceB_sub_n_30,u_sliceB_sub_n_31,u_sliceB_sub_n_32,u_sliceB_sub_n_33,u_sliceB_sub_n_34,u_sliceB_sub_n_35,u_sliceB_sub_n_36}),
        .O({u_sliceB_sub_n_0,u_sliceB_sub_n_1,u_sliceB_sub_n_2,u_sliceB_sub_n_3}),
        .Q({\b1_reg_r_reg_n_0_[11] ,\b1_reg_r_reg_n_0_[10] ,\b1_reg_r_reg_n_0_[9] ,\b1_reg_r_reg_n_0_[8] ,\b1_reg_r_reg_n_0_[7] ,\b1_reg_r_reg_n_0_[6] ,\b1_reg_r_reg_n_0_[5] ,\b1_reg_r_reg_n_0_[4] ,\b1_reg_r_reg_n_0_[3] ,\b1_reg_r_reg_n_0_[2] ,\b1_reg_r_reg_n_0_[1] ,\b1_reg_r_reg_n_0_[0] }),
        .S({\a2_reg[3]_i_3_n_0 ,\a2_reg[3]_i_4_n_0 ,\a2_reg[3]_i_5_n_0 ,\a2_reg[3]_i_6_n_0 }),
        .\a2_reg_reg[11] ({\a2_reg[11]_i_5_n_0 ,\a2_reg[11]_i_6_n_0 ,\a2_reg[11]_i_7_n_0 ,\a2_reg[11]_i_8_n_0 }),
        .\a2_reg_reg[3] (mem_reg_0),
        .\a2_reg_reg[7] ({\a2_reg[7]_i_3_n_0 ,\a2_reg[7]_i_4_n_0 ,\a2_reg[7]_i_5_n_0 ,\a2_reg[7]_i_6_n_0 }),
        .\ag_bu_mode_d1_reg[0]_rep__0 ({u_sliceB_sub_n_12,u_sliceB_sub_n_13,u_sliceB_sub_n_14,u_sliceB_sub_n_15}),
        .\ag_bu_mode_d1_reg[0]_rep__0_0 ({u_sliceB_sub_n_16,u_sliceB_sub_n_17,u_sliceB_sub_n_18,u_sliceB_sub_n_19}),
        .\ag_bu_mode_d1_reg[0]_rep__0_1 ({u_sliceB_sub_n_20,u_sliceB_sub_n_21,u_sliceB_sub_n_22,u_sliceB_sub_n_23}),
        .\b1_reg_r_reg[11] ({u_sliceB_sub_n_8,u_sliceB_sub_n_9,u_sliceB_sub_n_10,u_sliceB_sub_n_11}),
        .\b1_reg_r_reg[7] ({u_sliceB_sub_n_4,u_sliceB_sub_n_5,u_sliceB_sub_n_6,u_sliceB_sub_n_7}),
        .sum_signed_carry__1_0(mem_reg),
        .u_carry__1_0({\b2_reg_r_reg_n_0_[11] ,\b2_reg_r_reg_n_0_[10] ,\b2_reg_r_reg_n_0_[9] ,\b2_reg_r_reg_n_0_[8] ,\b2_reg_r_reg_n_0_[7] ,\b2_reg_r_reg_n_0_[6] ,\b2_reg_r_reg_n_0_[5] ,\b2_reg_r_reg_n_0_[4] ,\b2_reg_r_reg_n_0_[3] ,\b2_reg_r_reg_n_0_[2] ,\b2_reg_r_reg_n_0_[1] ,\b2_reg_r_reg_n_0_[0] }));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(O[0]),
        .Q(\upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_5 ),
        .Q(\upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_4 ),
        .Q(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  CARRY4 \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1 
       (.CI(CO),
        .CO({\NLW_upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_CO_UNCONNECTED [3],\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_1 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_2 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4_n_0 }),
        .O({\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_4 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_5 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_6 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_7 }),
        .S({\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_7_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_8_n_0 }));
  LUT3 #(
    .INIT(8'h40)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2 
       (.I0(sum_signed_carry_i_11__0_n_3),
        .I1(sum_signed_carry_i_10__0_n_7),
        .I2(\b2_reg_r_reg[0]_0 ),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3 
       (.I0(sum_signed_carry_i_10__0_n_7),
        .I1(sum_signed_carry_i_11__0_n_3),
        .I2(\b2_reg_r_reg[0]_0 ),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4 
       (.I0(sum_signed_carry_i_11__0_n_3),
        .I1(sum_signed_carry_i_10__0_n_7),
        .I2(\b2_reg_r_reg[0]_0 ),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5C0C)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5 
       (.I0(sum_signed_carry_i_10__0_n_7),
        .I1(bu_data_a_r[11]),
        .I2(\b2_reg_r_reg[0]_0 ),
        .I3(sum_signed_carry_i_11__0_n_3),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hDDF022F0)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6 
       (.I0(sum_signed_carry_i_10__0_n_7),
        .I1(sum_signed_carry_i_11__0_n_3),
        .I2(bu_data_a_r[10]),
        .I3(\b2_reg_r_reg[0]_0 ),
        .I4(sum_signed_carry__0_i_9_n_4),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBBF044F0)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_7 
       (.I0(sum_signed_carry_i_11__0_n_3),
        .I1(sum_signed_carry_i_10__0_n_7),
        .I2(bu_data_a_r[9]),
        .I3(\b2_reg_r_reg[0]_0 ),
        .I4(sum_signed_carry__0_i_9_n_5),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h77F088F0)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_8 
       (.I0(sum_signed_carry_i_10__0_n_7),
        .I1(sum_signed_carry_i_11__0_n_3),
        .I2(bu_data_a_r[8]),
        .I3(\b2_reg_r_reg[0]_0 ),
        .I4(sum_signed_carry__0_i_9_n_6),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_8_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(O[1]),
        .Q(\upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(O[2]),
        .Q(\upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(O[3]),
        .Q(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2 
       (.I0(sum_signed_carry_i_10__0_n_7),
        .I1(sum_signed_carry_i_11__0_n_3),
        .I2(\b2_reg_r_reg[0]_0 ),
        .O(DI));
  LUT5 #(
    .INIT(32'hACFC5C0C)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6 
       (.I0(sum_signed_carry_i_11__0_n_3),
        .I1(bu_data_a_r[0]),
        .I2(\b2_reg_r_reg[0]_0 ),
        .I3(sum_signed_carry_i_10__0_n_7),
        .I4(sum_signed_carry_i_10__0_n_6),
        .O(S));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [0]),
        .Q(\upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [1]),
        .Q(\upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [2]),
        .Q(\upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [3]),
        .Q(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2 
       (.I0(sum_signed_carry_i_10__0_n_7),
        .I1(\b2_reg_r_reg[0]_0 ),
        .O(\ag_bu_mode_d1_reg[0]_rep ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3 
       (.I0(sum_signed_carry_i_10__0_n_7),
        .I1(bu_data_a_r[7]),
        .I2(\b2_reg_r_reg[0]_0 ),
        .I3(sum_signed_carry__0_i_9_n_7),
        .O(\ag_bu_mode_d1_reg[0]_rep_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_7 ),
        .Q(\upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_even/upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_n_6 ),
        .Q(\upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  FDRE \upper_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE \upper_d_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__10_n_0),
        .Q(\upper_d_reg[3][0]_0 ));
  FDCE \upper_d_reg[3][10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__0_n_0),
        .Q(\upper_d_reg[3][10]_0 ));
  FDCE \upper_d_reg[3][11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate_n_0),
        .Q(\upper_d_reg[3][11]_0 ));
  FDCE \upper_d_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__9_n_0),
        .Q(\upper_d_reg[3][1]_0 ));
  FDCE \upper_d_reg[3][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__8_n_0),
        .Q(\upper_d_reg[3][2]_0 ));
  FDCE \upper_d_reg[3][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__7_n_0),
        .Q(\upper_d_reg[3][3]_0 ));
  FDCE \upper_d_reg[3][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__6_n_0),
        .Q(\upper_d_reg[3][4]_0 ));
  FDCE \upper_d_reg[3][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__5_n_0),
        .Q(\upper_d_reg[3][5]_0 ));
  FDCE \upper_d_reg[3][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__4_n_0),
        .Q(\upper_d_reg[3][6]_0 ));
  FDCE \upper_d_reg[3][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__3_n_0),
        .Q(\upper_d_reg[3][7]_0 ));
  FDCE \upper_d_reg[3][8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__2_n_0),
        .Q(\upper_d_reg[3][8]_0 ));
  FDCE \upper_d_reg[3][9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__1_n_0),
        .Q(\upper_d_reg[3][9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate
       (.I0(\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__0
       (.I0(\upper_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__1
       (.I0(\upper_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__10
       (.I0(\upper_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__2
       (.I0(\upper_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__3
       (.I0(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__4
       (.I0(\upper_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__5
       (.I0(\upper_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__6
       (.I0(\upper_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__7
       (.I0(\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__8
       (.I0(\upper_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__9
       (.I0(\upper_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_1 ),
        .O(upper_d_reg_gate__9_n_0));
endmodule

(* ORIG_REF_NAME = "butterfly_unit" *) 
module design_1_polymul_axi_top_0_0_butterfly_unit_11
   (\upper_d_reg[3]_4 ,
    Q,
    \ag_bu_mode_d1_reg[0]_rep__1 ,
    \ag_bu_mode_d1_reg[0]_rep__1_0 ,
    DIBDI,
    \R_s2_reg[11] ,
    \R_s2_reg[11]_0 ,
    \ag_bu_mode_d1_reg[0]_rep__1_1 ,
    \ag_bu_mode_d1_reg[0]_rep__1_2 ,
    O,
    \b1_reg_r_reg[3]_0 ,
    bu_result_u,
    DIADI,
    \ag_bu_mode_d1_reg[0]_rep__1_3 ,
    clk,
    \upper_d_reg[3][0]_0 ,
    \c1_s1_reg[0] ,
    \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ,
    \upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ,
    mem_reg,
    mem_reg_0,
    \b2_reg_r_reg[0]_0 ,
    \c1_s1_reg[5] ,
    bu_data_a_r,
    mem_reg_1,
    A_web,
    B_web,
    \upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ,
    ag_bu_mode_d1,
    D,
    out,
    mem_reg_2,
    mem_reg_3,
    \b1_reg_r_reg[11]_0 ,
    bu_data_b_r);
  output [11:0]\upper_d_reg[3]_4 ;
  output [12:0]Q;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep__1_0 ;
  output [11:0]DIBDI;
  output [11:0]\R_s2_reg[11] ;
  output [11:0]\R_s2_reg[11]_0 ;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep__1_1 ;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep__1_2 ;
  output [3:0]O;
  output [1:0]\b1_reg_r_reg[3]_0 ;
  output [11:0]bu_result_u;
  output [11:0]DIADI;
  output [11:0]\ag_bu_mode_d1_reg[0]_rep__1_3 ;
  input clk;
  input \upper_d_reg[3][0]_0 ;
  input \c1_s1_reg[0] ;
  input [3:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  input [3:0]\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  input mem_reg;
  input mem_reg_0;
  input \b2_reg_r_reg[0]_0 ;
  input \c1_s1_reg[5] ;
  input [11:0]bu_data_a_r;
  input mem_reg_1;
  input A_web;
  input B_web;
  input [0:0]\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  input [0:0]ag_bu_mode_d1;
  input [12:0]D;
  input [11:0]out;
  input mem_reg_2;
  input mem_reg_3;
  input [11:0]\b1_reg_r_reg[11]_0 ;
  input [11:0]bu_data_b_r;

  wire A_web;
  wire B_web;
  wire [12:0]D;
  wire [11:0]DIADI;
  wire [11:0]DIBDI;
  wire [3:0]O;
  wire [12:0]Q;
  wire [11:0]\R_s2_reg[11] ;
  wire [11:0]\R_s2_reg[11]_0 ;
  wire [11:0]a2_reg;
  wire \a2_reg[11]_i_5__0_n_0 ;
  wire \a2_reg[11]_i_6__0_n_0 ;
  wire \a2_reg[11]_i_7__0_n_0 ;
  wire \a2_reg[11]_i_8__0_n_0 ;
  wire \a2_reg[3]_i_3__0_n_0 ;
  wire \a2_reg[3]_i_4__0_n_0 ;
  wire \a2_reg[3]_i_5__0_n_0 ;
  wire \a2_reg[3]_i_6__0_n_0 ;
  wire \a2_reg[7]_i_3__0_n_0 ;
  wire \a2_reg[7]_i_4__0_n_0 ;
  wire \a2_reg[7]_i_5__0_n_0 ;
  wire \a2_reg[7]_i_6__0_n_0 ;
  wire [0:0]ag_bu_mode_d1;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep__1_0 ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep__1_1 ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep__1_2 ;
  wire [11:0]\ag_bu_mode_d1_reg[0]_rep__1_3 ;
  wire [11:0]b1_reg_r;
  wire [11:0]\b1_reg_r_reg[11]_0 ;
  wire [1:0]\b1_reg_r_reg[3]_0 ;
  wire [11:0]b2_reg_r;
  wire \b2_reg_r_reg[0]_0 ;
  wire [11:0]bu_data_a_r;
  wire [11:0]bu_data_b_r;
  wire [11:0]bu_result_u;
  wire \c1_s1_reg[0] ;
  wire \c1_s1_reg[5] ;
  wire clk;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire [11:0]mux4_out;
  wire [11:0]out;
  wire p_0_in1_in;
  wire sum_signed_carry__0_i_9__0_n_0;
  wire sum_signed_carry__0_i_9__0_n_1;
  wire sum_signed_carry__0_i_9__0_n_2;
  wire sum_signed_carry__0_i_9__0_n_3;
  wire sum_signed_carry__0_i_9__0_n_4;
  wire sum_signed_carry__0_i_9__0_n_5;
  wire sum_signed_carry__0_i_9__0_n_6;
  wire sum_signed_carry__0_i_9__0_n_7;
  wire sum_signed_carry_i_10__1_n_0;
  wire sum_signed_carry_i_10__1_n_1;
  wire sum_signed_carry_i_10__1_n_2;
  wire sum_signed_carry_i_10__1_n_3;
  wire sum_signed_carry_i_10__1_n_6;
  wire sum_signed_carry_i_10__1_n_7;
  wire sum_signed_carry_i_9__0_n_0;
  wire sum_signed_carry_i_9__0_n_1;
  wire sum_signed_carry_i_9__0_n_2;
  wire sum_signed_carry_i_9__0_n_3;
  wire [15:0]twiddle_d1;
  wire [15:0]twiddle_to_a;
  wire [11:0]u;
  wire u_sliceB_add_n_36;
  wire u_sliceB_add_n_37;
  wire u_sliceB_add_n_38;
  wire u_sliceB_add_n_39;
  wire u_sliceB_add_n_40;
  wire u_sliceB_add_n_41;
  wire u_sliceB_add_n_42;
  wire u_sliceB_add_n_43;
  wire u_sliceB_add_n_44;
  wire u_sliceB_add_n_45;
  wire u_sliceB_add_n_46;
  wire u_sliceB_add_n_47;
  wire u_sliceB_sub_n_12;
  wire u_sliceB_sub_n_13;
  wire u_sliceB_sub_n_14;
  wire u_sliceB_sub_n_15;
  wire u_sliceB_sub_n_16;
  wire u_sliceB_sub_n_17;
  wire u_sliceB_sub_n_18;
  wire u_sliceB_sub_n_19;
  wire u_sliceB_sub_n_20;
  wire u_sliceB_sub_n_21;
  wire u_sliceB_sub_n_22;
  wire u_sliceB_sub_n_23;
  wire u_sliceB_sub_n_24;
  wire u_sliceB_sub_n_25;
  wire u_sliceB_sub_n_26;
  wire u_sliceB_sub_n_27;
  wire u_sliceB_sub_n_28;
  wire u_sliceB_sub_n_29;
  wire u_sliceB_sub_n_30;
  wire u_sliceB_sub_n_31;
  wire u_sliceB_sub_n_32;
  wire u_sliceB_sub_n_33;
  wire u_sliceB_sub_n_34;
  wire u_sliceB_sub_n_35;
  wire u_sliceB_sub_n_36;
  wire \upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_1 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_2 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_3 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_4 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_5 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_6 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_7 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2__0_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3__0_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6__0_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_7__0_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_8__0_n_0 ;
  wire \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \upper_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire [0:0]\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  wire \upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire [3:0]\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  wire \upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire [3:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  wire \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \upper_d_reg[3][0]_0 ;
  wire [11:0]\upper_d_reg[3]_4 ;
  wire upper_d_reg_gate__0_n_0;
  wire upper_d_reg_gate__10_n_0;
  wire upper_d_reg_gate__1_n_0;
  wire upper_d_reg_gate__2_n_0;
  wire upper_d_reg_gate__3_n_0;
  wire upper_d_reg_gate__4_n_0;
  wire upper_d_reg_gate__5_n_0;
  wire upper_d_reg_gate__6_n_0;
  wire upper_d_reg_gate__7_n_0;
  wire upper_d_reg_gate__8_n_0;
  wire upper_d_reg_gate__9_n_0;
  wire upper_d_reg_gate_n_0;
  wire [15:0]w_reg;
  wire [3:1]NLW_sum_signed_carry_i_11__1_CO_UNCONNECTED;
  wire [3:0]NLW_sum_signed_carry_i_11__1_O_UNCONNECTED;
  wire [3:3]\NLW_upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0CAC)) 
    \a2_reg[11]_i_5__0 
       (.I0(u[0]),
        .I1(bu_data_b_r[11]),
        .I2(\b2_reg_r_reg[0]_0 ),
        .I3(u_sliceB_sub_n_24),
        .O(\a2_reg[11]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h44F0BBF0)) 
    \a2_reg[11]_i_6__0 
       (.I0(u[0]),
        .I1(u_sliceB_sub_n_24),
        .I2(bu_data_b_r[10]),
        .I3(\b2_reg_r_reg[0]_0 ),
        .I4(u[11]),
        .O(\a2_reg[11]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \a2_reg[11]_i_7__0 
       (.I0(u[0]),
        .I1(bu_data_b_r[9]),
        .I2(\b2_reg_r_reg[0]_0 ),
        .I3(u[10]),
        .O(\a2_reg[11]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'hEEF011F0)) 
    \a2_reg[11]_i_8__0 
       (.I0(u_sliceB_sub_n_24),
        .I1(u[0]),
        .I2(bu_data_b_r[8]),
        .I3(\b2_reg_r_reg[0]_0 ),
        .I4(u[9]),
        .O(\a2_reg[11]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[3]_i_3__0 
       (.I0(u[4]),
        .I1(\b2_reg_r_reg[0]_0 ),
        .I2(bu_data_b_r[3]),
        .O(\a2_reg[3]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[3]_i_4__0 
       (.I0(u[3]),
        .I1(\b2_reg_r_reg[0]_0 ),
        .I2(bu_data_b_r[2]),
        .O(\a2_reg[3]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[3]_i_5__0 
       (.I0(u[2]),
        .I1(\b2_reg_r_reg[0]_0 ),
        .I2(bu_data_b_r[1]),
        .O(\a2_reg[3]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h0CACFC5C)) 
    \a2_reg[3]_i_6__0 
       (.I0(u_sliceB_sub_n_24),
        .I1(bu_data_b_r[0]),
        .I2(\b2_reg_r_reg[0]_0 ),
        .I3(u[0]),
        .I4(u[1]),
        .O(\a2_reg[3]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \a2_reg[7]_i_3__0 
       (.I0(u[0]),
        .I1(bu_data_b_r[7]),
        .I2(\b2_reg_r_reg[0]_0 ),
        .I3(u[8]),
        .O(\a2_reg[7]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[7]_i_4__0 
       (.I0(u[7]),
        .I1(\b2_reg_r_reg[0]_0 ),
        .I2(bu_data_b_r[6]),
        .O(\a2_reg[7]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[7]_i_5__0 
       (.I0(u[6]),
        .I1(\b2_reg_r_reg[0]_0 ),
        .I2(bu_data_b_r[5]),
        .O(\a2_reg[7]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a2_reg[7]_i_6__0 
       (.I0(u[5]),
        .I1(\b2_reg_r_reg[0]_0 ),
        .I2(bu_data_b_r[4]),
        .O(\a2_reg[7]_i_6__0_n_0 ));
  FDCE \a2_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_36),
        .Q(a2_reg[0]));
  FDCE \a2_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_26),
        .Q(a2_reg[10]));
  FDCE \a2_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_25),
        .Q(a2_reg[11]));
  FDCE \a2_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_35),
        .Q(a2_reg[1]));
  FDCE \a2_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_34),
        .Q(a2_reg[2]));
  FDCE \a2_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_33),
        .Q(a2_reg[3]));
  FDCE \a2_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_32),
        .Q(a2_reg[4]));
  FDCE \a2_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_31),
        .Q(a2_reg[5]));
  FDCE \a2_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_30),
        .Q(a2_reg[6]));
  FDCE \a2_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_29),
        .Q(a2_reg[7]));
  FDCE \a2_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_28),
        .Q(a2_reg[8]));
  FDCE \a2_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(u_sliceB_sub_n_27),
        .Q(a2_reg[9]));
  FDCE \b1_reg_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [0]),
        .Q(b1_reg_r[0]));
  FDCE \b1_reg_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [10]),
        .Q(b1_reg_r[10]));
  FDCE \b1_reg_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [11]),
        .Q(b1_reg_r[11]));
  FDCE \b1_reg_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [1]),
        .Q(b1_reg_r[1]));
  FDCE \b1_reg_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [2]),
        .Q(b1_reg_r[2]));
  FDCE \b1_reg_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [3]),
        .Q(b1_reg_r[3]));
  FDCE \b1_reg_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [4]),
        .Q(b1_reg_r[4]));
  FDCE \b1_reg_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [5]),
        .Q(b1_reg_r[5]));
  FDCE \b1_reg_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [6]),
        .Q(b1_reg_r[6]));
  FDCE \b1_reg_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [7]),
        .Q(b1_reg_r[7]));
  FDCE \b1_reg_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [8]),
        .Q(b1_reg_r[8]));
  FDCE \b1_reg_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b1_reg_r_reg[11]_0 [9]),
        .Q(b1_reg_r[9]));
  FDCE \b2_reg_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[0]),
        .Q(b2_reg_r[0]));
  FDCE \b2_reg_r_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[10]),
        .Q(b2_reg_r[10]));
  FDCE \b2_reg_r_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[11]),
        .Q(b2_reg_r[11]));
  FDCE \b2_reg_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[1]),
        .Q(b2_reg_r[1]));
  FDCE \b2_reg_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[2]),
        .Q(b2_reg_r[2]));
  FDCE \b2_reg_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[3]),
        .Q(b2_reg_r[3]));
  FDCE \b2_reg_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[4]),
        .Q(b2_reg_r[4]));
  FDCE \b2_reg_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[5]),
        .Q(b2_reg_r[5]));
  FDCE \b2_reg_r_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[6]),
        .Q(b2_reg_r[6]));
  FDCE \b2_reg_r_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[7]),
        .Q(b2_reg_r[7]));
  FDCE \b2_reg_r_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[8]),
        .Q(b2_reg_r[8]));
  FDCE \b2_reg_r_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(mux4_out[9]),
        .Q(b2_reg_r[9]));
  CARRY4 sum_signed_carry__0_i_9__0
       (.CI(sum_signed_carry_i_9__0_n_0),
        .CO({sum_signed_carry__0_i_9__0_n_0,sum_signed_carry__0_i_9__0_n_1,sum_signed_carry__0_i_9__0_n_2,sum_signed_carry__0_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI(b1_reg_r[11:8]),
        .O({sum_signed_carry__0_i_9__0_n_4,sum_signed_carry__0_i_9__0_n_5,sum_signed_carry__0_i_9__0_n_6,sum_signed_carry__0_i_9__0_n_7}),
        .S({u_sliceB_add_n_44,u_sliceB_add_n_45,u_sliceB_add_n_46,u_sliceB_add_n_47}));
  CARRY4 sum_signed_carry_i_10__1
       (.CI(1'b0),
        .CO({sum_signed_carry_i_10__1_n_0,sum_signed_carry_i_10__1_n_1,sum_signed_carry_i_10__1_n_2,sum_signed_carry_i_10__1_n_3}),
        .CYINIT(1'b0),
        .DI(b1_reg_r[3:0]),
        .O({\b1_reg_r_reg[3]_0 ,sum_signed_carry_i_10__1_n_6,sum_signed_carry_i_10__1_n_7}),
        .S({u_sliceB_add_n_36,u_sliceB_add_n_37,u_sliceB_add_n_38,u_sliceB_add_n_39}));
  CARRY4 sum_signed_carry_i_11__1
       (.CI(sum_signed_carry__0_i_9__0_n_0),
        .CO({NLW_sum_signed_carry_i_11__1_CO_UNCONNECTED[3:1],p_0_in1_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sum_signed_carry_i_11__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 sum_signed_carry_i_9__0
       (.CI(sum_signed_carry_i_10__1_n_0),
        .CO({sum_signed_carry_i_9__0_n_0,sum_signed_carry_i_9__0_n_1,sum_signed_carry_i_9__0_n_2,sum_signed_carry_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI(b1_reg_r[7:4]),
        .O(O),
        .S({u_sliceB_add_n_40,u_sliceB_add_n_41,u_sliceB_add_n_42,u_sliceB_add_n_43}));
  FDCE \twiddle_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[0]),
        .Q(twiddle_d1[0]));
  FDCE \twiddle_d1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[10]),
        .Q(twiddle_d1[10]));
  FDCE \twiddle_d1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[11]),
        .Q(twiddle_d1[11]));
  FDCE \twiddle_d1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[12]),
        .Q(twiddle_d1[15]));
  FDCE \twiddle_d1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[1]),
        .Q(twiddle_d1[1]));
  FDCE \twiddle_d1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[2]),
        .Q(twiddle_d1[2]));
  FDCE \twiddle_d1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[3]),
        .Q(twiddle_d1[3]));
  FDCE \twiddle_d1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[4]),
        .Q(twiddle_d1[4]));
  FDCE \twiddle_d1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[5]),
        .Q(twiddle_d1[5]));
  FDCE \twiddle_d1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[6]),
        .Q(twiddle_d1[6]));
  FDCE \twiddle_d1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[7]),
        .Q(twiddle_d1[7]));
  FDCE \twiddle_d1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[8]),
        .Q(twiddle_d1[8]));
  FDCE \twiddle_d1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(D[9]),
        .Q(twiddle_d1[9]));
  design_1_polymul_axi_top_0_0_mod_multiplier_12 u_mul
       (.A_web(A_web),
        .B_web(B_web),
        .D(mux4_out),
        .DIBDI(DIBDI),
        .O({u_sliceB_sub_n_12,u_sliceB_sub_n_13,u_sliceB_sub_n_14,u_sliceB_sub_n_15}),
        .Q(Q),
        .\R_s2_reg[11] (\R_s2_reg[11] ),
        .\R_s2_reg[11]_0 (\R_s2_reg[11]_0 ),
        .\a_reg_reg[15]_0 ({w_reg[15],w_reg[11:0]}),
        .\b2_reg_r_reg[0] (\b2_reg_r_reg[0]_0 ),
        .\b_reg_reg[11]_0 (a2_reg),
        .bu_data_a_r(bu_data_a_r),
        .\c1_s1_reg[0] (\c1_s1_reg[0] ),
        .\c1_s1_reg[5] (\c1_s1_reg[5] ),
        .clk(clk),
        .mem_reg(mem_reg_1),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_0),
        .mem_reg_2({u_sliceB_sub_n_20,u_sliceB_sub_n_21,u_sliceB_sub_n_22,u_sliceB_sub_n_23}),
        .mem_reg_3({u_sliceB_sub_n_16,u_sliceB_sub_n_17,u_sliceB_sub_n_18,u_sliceB_sub_n_19}));
  design_1_polymul_axi_top_0_0_mod_adder_13 u_sliceB_add
       (.A_web(A_web),
        .CO(p_0_in1_in),
        .DIADI(DIADI),
        .O({sum_signed_carry__0_i_9__0_n_4,sum_signed_carry__0_i_9__0_n_5,sum_signed_carry__0_i_9__0_n_6,sum_signed_carry__0_i_9__0_n_7}),
        .Q(b1_reg_r),
        .S({u_sliceB_add_n_36,u_sliceB_add_n_37,u_sliceB_add_n_38,u_sliceB_add_n_39}),
        .\ag_bu_mode_d1_reg[0]_rep__1 (\ag_bu_mode_d1_reg[0]_rep__1_3 ),
        .\b1_reg_r_reg[11] ({u_sliceB_add_n_44,u_sliceB_add_n_45,u_sliceB_add_n_46,u_sliceB_add_n_47}),
        .\b1_reg_r_reg[7] ({u_sliceB_add_n_40,u_sliceB_add_n_41,u_sliceB_add_n_42,u_sliceB_add_n_43}),
        .bu_result_u(bu_result_u),
        .mem_reg(mem_reg),
        .mem_reg_0(mem_reg_2),
        .mem_reg_1(mem_reg_3),
        .mem_reg_2(mem_reg_1),
        .out(out),
        .sum_signed_carry_0({\b1_reg_r_reg[3]_0 ,sum_signed_carry_i_10__1_n_6,sum_signed_carry_i_10__1_n_7}),
        .sum_signed_carry__0_0(O),
        .sum_signed_carry__0_i_9__0(b2_reg_r),
        .sum_signed_carry__1_0(mem_reg_0),
        .\upper_d_reg[3]_4 (\upper_d_reg[3]_4 ));
  design_1_polymul_axi_top_0_0_mod_subtractor u_sliceB_sub
       (.CO(u_sliceB_sub_n_24),
        .D({u_sliceB_sub_n_25,u_sliceB_sub_n_26,u_sliceB_sub_n_27,u_sliceB_sub_n_28,u_sliceB_sub_n_29,u_sliceB_sub_n_30,u_sliceB_sub_n_31,u_sliceB_sub_n_32,u_sliceB_sub_n_33,u_sliceB_sub_n_34,u_sliceB_sub_n_35,u_sliceB_sub_n_36}),
        .O({u_sliceB_sub_n_12,u_sliceB_sub_n_13,u_sliceB_sub_n_14,u_sliceB_sub_n_15}),
        .Q(b1_reg_r),
        .S({\a2_reg[3]_i_3__0_n_0 ,\a2_reg[3]_i_4__0_n_0 ,\a2_reg[3]_i_5__0_n_0 ,\a2_reg[3]_i_6__0_n_0 }),
        .\a2_reg_reg[11] ({\a2_reg[11]_i_5__0_n_0 ,\a2_reg[11]_i_6__0_n_0 ,\a2_reg[11]_i_7__0_n_0 ,\a2_reg[11]_i_8__0_n_0 }),
        .\a2_reg_reg[3] (\b2_reg_r_reg[0]_0 ),
        .\a2_reg_reg[7] ({\a2_reg[7]_i_3__0_n_0 ,\a2_reg[7]_i_4__0_n_0 ,\a2_reg[7]_i_5__0_n_0 ,\a2_reg[7]_i_6__0_n_0 }),
        .\ag_bu_mode_d1_reg[0]_rep__0 ({u_sliceB_sub_n_16,u_sliceB_sub_n_17,u_sliceB_sub_n_18,u_sliceB_sub_n_19}),
        .\ag_bu_mode_d1_reg[0]_rep__0_0 ({u_sliceB_sub_n_20,u_sliceB_sub_n_21,u_sliceB_sub_n_22,u_sliceB_sub_n_23}),
        .sum_signed_carry__1_0(mem_reg_0),
        .u(u),
        .u_carry__1_0(b2_reg_r));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [0]),
        .Q(\upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_5 ),
        .Q(\upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_4 ),
        .Q(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  CARRY4 \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0 
       (.CI(\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ),
        .CO({\NLW_upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_CO_UNCONNECTED [3],\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_1 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_2 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2__0_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3__0_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0_n_0 }),
        .O({\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_4 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_5 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_6 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_7 }),
        .S({\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6__0_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_7__0_n_0 ,\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_8__0_n_0 }));
  LUT3 #(
    .INIT(8'h40)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2__0 
       (.I0(p_0_in1_in),
        .I1(sum_signed_carry_i_10__1_n_7),
        .I2(mem_reg),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3__0 
       (.I0(sum_signed_carry_i_10__1_n_7),
        .I1(p_0_in1_in),
        .I2(mem_reg),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0 
       (.I0(p_0_in1_in),
        .I1(sum_signed_carry_i_10__1_n_7),
        .I2(mem_reg),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h5C0C)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 
       (.I0(sum_signed_carry_i_10__1_n_7),
        .I1(bu_data_a_r[11]),
        .I2(mem_reg),
        .I3(p_0_in1_in),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hDDF022F0)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6__0 
       (.I0(sum_signed_carry_i_10__1_n_7),
        .I1(p_0_in1_in),
        .I2(bu_data_a_r[10]),
        .I3(mem_reg),
        .I4(sum_signed_carry__0_i_9__0_n_4),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hBBF044F0)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_7__0 
       (.I0(p_0_in1_in),
        .I1(sum_signed_carry_i_10__1_n_7),
        .I2(bu_data_a_r[9]),
        .I3(mem_reg),
        .I4(sum_signed_carry__0_i_9__0_n_5),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h77F088F0)) 
    \upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_8__0 
       (.I0(sum_signed_carry_i_10__1_n_7),
        .I1(p_0_in1_in),
        .I2(bu_data_a_r[8]),
        .I3(mem_reg),
        .I4(sum_signed_carry__0_i_9__0_n_6),
        .O(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_8__0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [1]),
        .Q(\upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [2]),
        .Q(\upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [3]),
        .Q(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2__0 
       (.I0(sum_signed_carry_i_10__1_n_7),
        .I1(p_0_in1_in),
        .I2(mem_reg),
        .O(\ag_bu_mode_d1_reg[0]_rep__1_0 ));
  LUT5 #(
    .INIT(32'hACFC5C0C)) 
    \upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_6__0 
       (.I0(p_0_in1_in),
        .I1(bu_data_a_r[0]),
        .I2(mem_reg),
        .I3(sum_signed_carry_i_10__1_n_7),
        .I4(sum_signed_carry_i_10__1_n_6),
        .O(\ag_bu_mode_d1_reg[0]_rep__1_1 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [0]),
        .Q(\upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [1]),
        .Q(\upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [2]),
        .Q(\upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 [3]),
        .Q(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_2__0 
       (.I0(sum_signed_carry_i_10__1_n_7),
        .I1(mem_reg),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_3__0 
       (.I0(sum_signed_carry_i_10__1_n_7),
        .I1(bu_data_a_r[7]),
        .I2(mem_reg),
        .I3(sum_signed_carry__0_i_9__0_n_7),
        .O(\ag_bu_mode_d1_reg[0]_rep__1_2 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_7 ),
        .Q(\upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_dbu/u_bu_odd/upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 " *) 
  SRL16E \upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_n_6 ),
        .Q(\upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ));
  FDRE \upper_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][0]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][10]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][1]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][2]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][4]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][5]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][6]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][8]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \upper_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.C(clk),
        .CE(1'b1),
        .D(\upper_d_reg[1][9]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .Q(\upper_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE \upper_d_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__10_n_0),
        .Q(\upper_d_reg[3]_4 [0]));
  FDCE \upper_d_reg[3][10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__0_n_0),
        .Q(\upper_d_reg[3]_4 [10]));
  FDCE \upper_d_reg[3][11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate_n_0),
        .Q(\upper_d_reg[3]_4 [11]));
  FDCE \upper_d_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__9_n_0),
        .Q(\upper_d_reg[3]_4 [1]));
  FDCE \upper_d_reg[3][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__8_n_0),
        .Q(\upper_d_reg[3]_4 [2]));
  FDCE \upper_d_reg[3][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__7_n_0),
        .Q(\upper_d_reg[3]_4 [3]));
  FDCE \upper_d_reg[3][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__6_n_0),
        .Q(\upper_d_reg[3]_4 [4]));
  FDCE \upper_d_reg[3][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__5_n_0),
        .Q(\upper_d_reg[3]_4 [5]));
  FDCE \upper_d_reg[3][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__4_n_0),
        .Q(\upper_d_reg[3]_4 [6]));
  FDCE \upper_d_reg[3][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__3_n_0),
        .Q(\upper_d_reg[3]_4 [7]));
  FDCE \upper_d_reg[3][8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__2_n_0),
        .Q(\upper_d_reg[3]_4 [8]));
  FDCE \upper_d_reg[3][9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(upper_d_reg_gate__1_n_0),
        .Q(\upper_d_reg[3]_4 [9]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate
       (.I0(\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__0
       (.I0(\upper_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__1
       (.I0(\upper_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__10
       (.I0(\upper_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__2
       (.I0(\upper_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__3
       (.I0(\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__4
       (.I0(\upper_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__5
       (.I0(\upper_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__6
       (.I0(\upper_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__7
       (.I0(\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__8
       (.I0(\upper_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    upper_d_reg_gate__9
       (.I0(\upper_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .I1(\upper_d_reg[3][0]_0 ),
        .O(upper_d_reg_gate__9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[0]_i_1 
       (.I0(twiddle_d1[0]),
        .I1(ag_bu_mode_d1),
        .I2(D[0]),
        .O(twiddle_to_a[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[10]_i_1 
       (.I0(twiddle_d1[10]),
        .I1(ag_bu_mode_d1),
        .I2(D[10]),
        .O(twiddle_to_a[10]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[11]_i_1 
       (.I0(twiddle_d1[11]),
        .I1(ag_bu_mode_d1),
        .I2(D[11]),
        .O(twiddle_to_a[11]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[15]_i_1 
       (.I0(twiddle_d1[15]),
        .I1(ag_bu_mode_d1),
        .I2(D[12]),
        .O(twiddle_to_a[15]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[1]_i_1 
       (.I0(twiddle_d1[1]),
        .I1(ag_bu_mode_d1),
        .I2(D[1]),
        .O(twiddle_to_a[1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[2]_i_1 
       (.I0(twiddle_d1[2]),
        .I1(ag_bu_mode_d1),
        .I2(D[2]),
        .O(twiddle_to_a[2]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[3]_i_1 
       (.I0(twiddle_d1[3]),
        .I1(ag_bu_mode_d1),
        .I2(D[3]),
        .O(twiddle_to_a[3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[4]_i_1 
       (.I0(twiddle_d1[4]),
        .I1(ag_bu_mode_d1),
        .I2(D[4]),
        .O(twiddle_to_a[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[5]_i_1 
       (.I0(twiddle_d1[5]),
        .I1(ag_bu_mode_d1),
        .I2(D[5]),
        .O(twiddle_to_a[5]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[6]_i_1 
       (.I0(twiddle_d1[6]),
        .I1(ag_bu_mode_d1),
        .I2(D[6]),
        .O(twiddle_to_a[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[7]_i_1 
       (.I0(twiddle_d1[7]),
        .I1(ag_bu_mode_d1),
        .I2(D[7]),
        .O(twiddle_to_a[7]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[8]_i_1 
       (.I0(twiddle_d1[8]),
        .I1(ag_bu_mode_d1),
        .I2(D[8]),
        .O(twiddle_to_a[8]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_reg[9]_i_1 
       (.I0(twiddle_d1[9]),
        .I1(ag_bu_mode_d1),
        .I2(D[9]),
        .O(twiddle_to_a[9]));
  FDCE \w_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[0]),
        .Q(w_reg[0]));
  FDCE \w_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[10]),
        .Q(w_reg[10]));
  FDCE \w_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[11]),
        .Q(w_reg[11]));
  FDCE \w_reg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[15]),
        .Q(w_reg[15]));
  FDCE \w_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[1]),
        .Q(w_reg[1]));
  FDCE \w_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[2]),
        .Q(w_reg[2]));
  FDCE \w_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[3]),
        .Q(w_reg[3]));
  FDCE \w_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[4]),
        .Q(w_reg[4]));
  FDCE \w_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[5]),
        .Q(w_reg[5]));
  FDCE \w_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[6]),
        .Q(w_reg[6]));
  FDCE \w_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[7]),
        .Q(w_reg[7]));
  FDCE \w_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[8]),
        .Q(w_reg[8]));
  FDCE \w_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(twiddle_to_a[9]),
        .Q(w_reg[9]));
endmodule

(* ORIG_REF_NAME = "dual_butterfly_unit" *) 
module design_1_polymul_axi_top_0_0_dual_butterfly_unit
   (\upper_d_reg[3][11] ,
    \upper_d_reg[3][10] ,
    \upper_d_reg[3][9] ,
    \upper_d_reg[3][8] ,
    \upper_d_reg[3][7] ,
    \upper_d_reg[3][6] ,
    \upper_d_reg[3][5] ,
    \upper_d_reg[3][4] ,
    \upper_d_reg[3][3] ,
    \upper_d_reg[3][2] ,
    \upper_d_reg[3][1] ,
    \upper_d_reg[3][0] ,
    \upper_d_reg[3]_4 ,
    \ag_bu_mode_d1_reg[0]_rep ,
    \ag_bu_mode_d1_reg[0]_rep__1 ,
    DI,
    \ag_bu_mode_d1_reg[0]_rep__1_0 ,
    DIBDI,
    \R_s2_reg[11] ,
    \R_s2_reg[11]_0 ,
    S,
    \ag_bu_mode_d1_reg[0]_rep_0 ,
    \ag_bu_mode_d1_reg[0]_rep__1_1 ,
    \ag_bu_mode_d1_reg[0]_rep__1_2 ,
    \b1_reg_r_reg[7] ,
    \b1_reg_r_reg[3] ,
    \b1_reg_r_reg[7]_0 ,
    \b1_reg_r_reg[3]_0 ,
    bu_result_u,
    DIADI,
    \ag_bu_mode_d1_reg[0]_rep__1_3 ,
    clk,
    \upper_d_reg[3][0]_0 ,
    \c1_s1_reg[0] ,
    \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 ,
    O,
    \upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ,
    \upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 ,
    \b2_reg_r_reg[0] ,
    mem_reg,
    mem_reg_0,
    \c1_s1_reg[5] ,
    \c1_s1_reg[5]_0 ,
    bu_data_a_r,
    mem_reg_1,
    A_web,
    B_web,
    CO,
    \upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1 ,
    ag_bu_mode_d1,
    D,
    out,
    mem_reg_2,
    mem_reg_3,
    \b1_reg_r_reg[11] ,
    \b1_reg_r_reg[11]_0 ,
    bu_data_b_r);
  output \upper_d_reg[3][11] ;
  output \upper_d_reg[3][10] ;
  output \upper_d_reg[3][9] ;
  output \upper_d_reg[3][8] ;
  output \upper_d_reg[3][7] ;
  output \upper_d_reg[3][6] ;
  output \upper_d_reg[3][5] ;
  output \upper_d_reg[3][4] ;
  output \upper_d_reg[3][3] ;
  output \upper_d_reg[3][2] ;
  output \upper_d_reg[3][1] ;
  output \upper_d_reg[3][0] ;
  output [11:0]\upper_d_reg[3]_4 ;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep ;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  output [0:0]DI;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep__1_0 ;
  output [23:0]DIBDI;
  output [23:0]\R_s2_reg[11] ;
  output [23:0]\R_s2_reg[11]_0 ;
  output [0:0]S;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep_0 ;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep__1_1 ;
  output [0:0]\ag_bu_mode_d1_reg[0]_rep__1_2 ;
  output [3:0]\b1_reg_r_reg[7] ;
  output [1:0]\b1_reg_r_reg[3] ;
  output [3:0]\b1_reg_r_reg[7]_0 ;
  output [1:0]\b1_reg_r_reg[3]_0 ;
  output [23:0]bu_result_u;
  output [23:0]DIADI;
  output [23:0]\ag_bu_mode_d1_reg[0]_rep__1_3 ;
  input clk;
  input \upper_d_reg[3][0]_0 ;
  input \c1_s1_reg[0] ;
  input [3:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  input [3:0]O;
  input [3:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  input [3:0]\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  input \b2_reg_r_reg[0] ;
  input mem_reg;
  input mem_reg_0;
  input \c1_s1_reg[5] ;
  input \c1_s1_reg[5]_0 ;
  input [23:0]bu_data_a_r;
  input mem_reg_1;
  input A_web;
  input B_web;
  input [0:0]CO;
  input [0:0]\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  input [0:0]ag_bu_mode_d1;
  input [12:0]D;
  input [23:0]out;
  input mem_reg_2;
  input mem_reg_3;
  input [11:0]\b1_reg_r_reg[11] ;
  input [11:0]\b1_reg_r_reg[11]_0 ;
  input [23:0]bu_data_b_r;

  wire A_web;
  wire B_web;
  wire [0:0]CO;
  wire [12:0]D;
  wire [0:0]DI;
  wire [23:0]DIADI;
  wire [23:0]DIBDI;
  wire [3:0]O;
  wire [23:0]\R_s2_reg[11] ;
  wire [23:0]\R_s2_reg[11]_0 ;
  wire [0:0]S;
  wire [15:0]a_reg;
  wire [0:0]ag_bu_mode_d1;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep_0 ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep__1_0 ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep__1_1 ;
  wire [0:0]\ag_bu_mode_d1_reg[0]_rep__1_2 ;
  wire [23:0]\ag_bu_mode_d1_reg[0]_rep__1_3 ;
  wire [11:0]\b1_reg_r_reg[11] ;
  wire [11:0]\b1_reg_r_reg[11]_0 ;
  wire [1:0]\b1_reg_r_reg[3] ;
  wire [1:0]\b1_reg_r_reg[3]_0 ;
  wire [3:0]\b1_reg_r_reg[7] ;
  wire [3:0]\b1_reg_r_reg[7]_0 ;
  wire \b2_reg_r_reg[0] ;
  wire [23:0]bu_data_a_r;
  wire [23:0]bu_data_b_r;
  wire [23:0]bu_result_u;
  wire \c1_s1_reg[0] ;
  wire \c1_s1_reg[5] ;
  wire \c1_s1_reg[5]_0 ;
  wire clk;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire [23:0]out;
  wire [0:0]\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  wire [3:0]\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  wire [3:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 ;
  wire [3:0]\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ;
  wire \upper_d_reg[3][0] ;
  wire \upper_d_reg[3][0]_0 ;
  wire \upper_d_reg[3][10] ;
  wire \upper_d_reg[3][11] ;
  wire \upper_d_reg[3][1] ;
  wire \upper_d_reg[3][2] ;
  wire \upper_d_reg[3][3] ;
  wire \upper_d_reg[3][4] ;
  wire \upper_d_reg[3][5] ;
  wire \upper_d_reg[3][6] ;
  wire \upper_d_reg[3][7] ;
  wire \upper_d_reg[3][8] ;
  wire \upper_d_reg[3][9] ;
  wire [11:0]\upper_d_reg[3]_4 ;

  design_1_polymul_axi_top_0_0_butterfly_unit u_bu_even
       (.A_web(A_web),
        .B_web(B_web),
        .CO(CO),
        .DI(DI),
        .DIADI(DIADI[11:0]),
        .DIBDI(DIBDI[11:0]),
        .O(O),
        .Q({a_reg[15],a_reg[11:0]}),
        .\R_s2_reg[11] (\R_s2_reg[11] [11:0]),
        .\R_s2_reg[11]_0 (\R_s2_reg[11]_0 [11:0]),
        .S(S),
        .ag_bu_mode_d1(ag_bu_mode_d1),
        .\ag_bu_mode_d1_reg[0]_rep (\ag_bu_mode_d1_reg[0]_rep ),
        .\ag_bu_mode_d1_reg[0]_rep_0 (\ag_bu_mode_d1_reg[0]_rep_0 ),
        .\ag_bu_mode_d1_reg[0]_rep__1 (\ag_bu_mode_d1_reg[0]_rep__1_3 [11:0]),
        .\b1_reg_r_reg[11]_0 (\b1_reg_r_reg[11] ),
        .\b1_reg_r_reg[3]_0 (\b1_reg_r_reg[3] ),
        .\b1_reg_r_reg[7]_0 (\b1_reg_r_reg[7] ),
        .\b2_reg_r_reg[0]_0 (\b2_reg_r_reg[0] ),
        .bu_data_a_r(bu_data_a_r[11:0]),
        .bu_data_b_r(bu_data_b_r[11:0]),
        .bu_result_u(bu_result_u[11:0]),
        .\c1_s1_reg[0] (\c1_s1_reg[0] ),
        .\c1_s1_reg[5] (\c1_s1_reg[5] ),
        .clk(clk),
        .mem_reg(mem_reg),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(mem_reg_1),
        .mem_reg_2(mem_reg_2),
        .mem_reg_3(mem_reg_3),
        .out(out[11:0]),
        .\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 (\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 ),
        .\upper_d_reg[3][0]_0 (\upper_d_reg[3][0] ),
        .\upper_d_reg[3][0]_1 (\upper_d_reg[3][0]_0 ),
        .\upper_d_reg[3][10]_0 (\upper_d_reg[3][10] ),
        .\upper_d_reg[3][11]_0 (\upper_d_reg[3][11] ),
        .\upper_d_reg[3][1]_0 (\upper_d_reg[3][1] ),
        .\upper_d_reg[3][2]_0 (\upper_d_reg[3][2] ),
        .\upper_d_reg[3][3]_0 (\upper_d_reg[3][3] ),
        .\upper_d_reg[3][4]_0 (\upper_d_reg[3][4] ),
        .\upper_d_reg[3][5]_0 (\upper_d_reg[3][5] ),
        .\upper_d_reg[3][6]_0 (\upper_d_reg[3][6] ),
        .\upper_d_reg[3][7]_0 (\upper_d_reg[3][7] ),
        .\upper_d_reg[3][8]_0 (\upper_d_reg[3][8] ),
        .\upper_d_reg[3][9]_0 (\upper_d_reg[3][9] ));
  design_1_polymul_axi_top_0_0_butterfly_unit_11 u_bu_odd
       (.A_web(A_web),
        .B_web(B_web),
        .D(D),
        .DIADI(DIADI[23:12]),
        .DIBDI(DIBDI[23:12]),
        .O(\b1_reg_r_reg[7]_0 ),
        .Q({a_reg[15],a_reg[11:0]}),
        .\R_s2_reg[11] (\R_s2_reg[11] [23:12]),
        .\R_s2_reg[11]_0 (\R_s2_reg[11]_0 [23:12]),
        .ag_bu_mode_d1(ag_bu_mode_d1),
        .\ag_bu_mode_d1_reg[0]_rep__1 (\ag_bu_mode_d1_reg[0]_rep__1 ),
        .\ag_bu_mode_d1_reg[0]_rep__1_0 (\ag_bu_mode_d1_reg[0]_rep__1_0 ),
        .\ag_bu_mode_d1_reg[0]_rep__1_1 (\ag_bu_mode_d1_reg[0]_rep__1_1 ),
        .\ag_bu_mode_d1_reg[0]_rep__1_2 (\ag_bu_mode_d1_reg[0]_rep__1_2 ),
        .\ag_bu_mode_d1_reg[0]_rep__1_3 (\ag_bu_mode_d1_reg[0]_rep__1_3 [23:12]),
        .\b1_reg_r_reg[11]_0 (\b1_reg_r_reg[11]_0 ),
        .\b1_reg_r_reg[3]_0 (\b1_reg_r_reg[3]_0 ),
        .\b2_reg_r_reg[0]_0 (\b2_reg_r_reg[0] ),
        .bu_data_a_r(bu_data_a_r[23:12]),
        .bu_data_b_r(bu_data_b_r[23:12]),
        .bu_result_u(bu_result_u[23:12]),
        .\c1_s1_reg[0] (\c1_s1_reg[0] ),
        .\c1_s1_reg[5] (\c1_s1_reg[5]_0 ),
        .clk(clk),
        .mem_reg(mem_reg_0),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_1),
        .mem_reg_2(mem_reg_2),
        .mem_reg_3(mem_reg_3),
        .out(out[23:12]),
        .\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1_0 (\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1 ),
        .\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 (\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 ),
        .\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 (\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ),
        .\upper_d_reg[3][0]_0 (\upper_d_reg[3][0]_0 ),
        .\upper_d_reg[3]_4 (\upper_d_reg[3]_4 ));
endmodule

(* ORIG_REF_NAME = "mod_adder" *) 
module design_1_polymul_axi_top_0_0_mod_adder
   (D,
    \m0_d_reg[3][3] ,
    \m0_d_reg[3][7] ,
    \m0_d_reg[3][11] ,
    O,
    S,
    \c_pkt_reg[7] ,
    \c_pkt_reg[7]_0 ,
    \c_pkt_reg[11] ,
    \c_pkt_reg[11]_0 ,
    I66,
    Q,
    sum_signed_carry__1_i_1,
    sum_signed_carry__0_i_1,
    sum_signed_carry__0_i_1_0,
    sum_signed_carry__1_i_1_0,
    sum_signed_carry__1_i_1_1,
    sum_signed_carry__1_i_1_2,
    sum_signed_carry__1_i_1_3);
  output [11:0]D;
  output [3:0]\m0_d_reg[3][3] ;
  output [3:0]\m0_d_reg[3][7] ;
  output [3:0]\m0_d_reg[3][11] ;
  input [3:0]O;
  input [3:0]S;
  input [3:0]\c_pkt_reg[7] ;
  input [3:0]\c_pkt_reg[7]_0 ;
  input [2:0]\c_pkt_reg[11] ;
  input [3:0]\c_pkt_reg[11]_0 ;
  input [11:0]I66;
  input [12:0]Q;
  input sum_signed_carry__1_i_1;
  input [3:0]sum_signed_carry__0_i_1;
  input [3:0]sum_signed_carry__0_i_1_0;
  input [3:0]sum_signed_carry__1_i_1_0;
  input [3:0]sum_signed_carry__1_i_1_1;
  input [2:0]sum_signed_carry__1_i_1_2;
  input [2:0]sum_signed_carry__1_i_1_3;

  wire [11:0]D;
  wire [11:0]I66;
  wire [3:0]O;
  wire [12:0]Q;
  wire [3:0]S;
  wire [2:0]\c_pkt_reg[11] ;
  wire [3:0]\c_pkt_reg[11]_0 ;
  wire [3:0]\c_pkt_reg[7] ;
  wire [3:0]\c_pkt_reg[7]_0 ;
  wire [3:0]\m0_d_reg[3][11] ;
  wire [3:0]\m0_d_reg[3][3] ;
  wire [3:0]\m0_d_reg[3][7] ;
  wire [3:0]sum_signed_carry__0_i_1;
  wire [3:0]sum_signed_carry__0_i_1_0;
  wire sum_signed_carry__0_n_0;
  wire sum_signed_carry__0_n_1;
  wire sum_signed_carry__0_n_2;
  wire sum_signed_carry__0_n_3;
  wire sum_signed_carry__1_i_1;
  wire [3:0]sum_signed_carry__1_i_1_0;
  wire [3:0]sum_signed_carry__1_i_1_1;
  wire [2:0]sum_signed_carry__1_i_1_2;
  wire [2:0]sum_signed_carry__1_i_1_3;
  wire sum_signed_carry__1_n_1;
  wire sum_signed_carry__1_n_2;
  wire sum_signed_carry__1_n_3;
  wire sum_signed_carry_n_0;
  wire sum_signed_carry_n_1;
  wire sum_signed_carry_n_2;
  wire sum_signed_carry_n_3;
  wire [3:3]NLW_sum_signed_carry__1_CO_UNCONNECTED;

  CARRY4 sum_signed_carry
       (.CI(1'b0),
        .CO({sum_signed_carry_n_0,sum_signed_carry_n_1,sum_signed_carry_n_2,sum_signed_carry_n_3}),
        .CYINIT(1'b1),
        .DI(O),
        .O(D[3:0]),
        .S(S));
  CARRY4 sum_signed_carry__0
       (.CI(sum_signed_carry_n_0),
        .CO({sum_signed_carry__0_n_0,sum_signed_carry__0_n_1,sum_signed_carry__0_n_2,sum_signed_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\c_pkt_reg[7] ),
        .O(D[7:4]),
        .S(\c_pkt_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry__0_i_6
       (.I0(I66[7]),
        .I1(Q[7]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__1_i_1_0[2]),
        .I4(Q[12]),
        .I5(sum_signed_carry__1_i_1_1[2]),
        .O(\m0_d_reg[3][7] [3]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry__0_i_7
       (.I0(I66[6]),
        .I1(Q[6]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__1_i_1_0[1]),
        .I4(Q[12]),
        .I5(sum_signed_carry__1_i_1_1[1]),
        .O(\m0_d_reg[3][7] [2]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry__0_i_8
       (.I0(I66[5]),
        .I1(Q[5]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__1_i_1_0[0]),
        .I4(Q[12]),
        .I5(sum_signed_carry__1_i_1_1[0]),
        .O(\m0_d_reg[3][7] [1]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry__0_i_9
       (.I0(I66[4]),
        .I1(Q[4]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__0_i_1[3]),
        .I4(Q[12]),
        .I5(sum_signed_carry__0_i_1_0[3]),
        .O(\m0_d_reg[3][7] [0]));
  CARRY4 sum_signed_carry__1
       (.CI(sum_signed_carry__0_n_0),
        .CO({NLW_sum_signed_carry__1_CO_UNCONNECTED[3],sum_signed_carry__1_n_1,sum_signed_carry__1_n_2,sum_signed_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\c_pkt_reg[11] }),
        .O(D[11:8]),
        .S(\c_pkt_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry__1_i_6
       (.I0(I66[11]),
        .I1(Q[11]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__1_i_1_2[2]),
        .I4(Q[12]),
        .I5(sum_signed_carry__1_i_1_3[2]),
        .O(\m0_d_reg[3][11] [3]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry__1_i_7
       (.I0(I66[10]),
        .I1(Q[10]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__1_i_1_2[1]),
        .I4(Q[12]),
        .I5(sum_signed_carry__1_i_1_3[1]),
        .O(\m0_d_reg[3][11] [2]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry__1_i_8
       (.I0(I66[9]),
        .I1(Q[9]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__1_i_1_2[0]),
        .I4(Q[12]),
        .I5(sum_signed_carry__1_i_1_3[0]),
        .O(\m0_d_reg[3][11] [1]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry__1_i_9
       (.I0(I66[8]),
        .I1(Q[8]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__1_i_1_0[3]),
        .I4(Q[12]),
        .I5(sum_signed_carry__1_i_1_1[3]),
        .O(\m0_d_reg[3][11] [0]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry_i_6
       (.I0(I66[3]),
        .I1(Q[3]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__0_i_1[2]),
        .I4(Q[12]),
        .I5(sum_signed_carry__0_i_1_0[2]),
        .O(\m0_d_reg[3][3] [3]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry_i_7
       (.I0(I66[2]),
        .I1(Q[2]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__0_i_1[1]),
        .I4(Q[12]),
        .I5(sum_signed_carry__0_i_1_0[1]),
        .O(\m0_d_reg[3][3] [2]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum_signed_carry_i_8
       (.I0(I66[1]),
        .I1(Q[1]),
        .I2(sum_signed_carry__1_i_1),
        .I3(sum_signed_carry__0_i_1[0]),
        .I4(Q[12]),
        .I5(sum_signed_carry__0_i_1_0[0]),
        .O(\m0_d_reg[3][3] [1]));
  LUT4 #(
    .INIT(16'h9996)) 
    sum_signed_carry_i_9
       (.I0(I66[0]),
        .I1(Q[0]),
        .I2(sum_signed_carry__1_i_1),
        .I3(Q[12]),
        .O(\m0_d_reg[3][3] [0]));
endmodule

(* ORIG_REF_NAME = "mod_adder" *) 
module design_1_polymul_axi_top_0_0_mod_adder_13
   (bu_result_u,
    DIADI,
    \ag_bu_mode_d1_reg[0]_rep__1 ,
    S,
    \b1_reg_r_reg[7] ,
    \b1_reg_r_reg[11] ,
    O,
    CO,
    sum_signed_carry_0,
    sum_signed_carry__1_0,
    sum_signed_carry__0_0,
    \upper_d_reg[3]_4 ,
    mem_reg,
    A_web,
    out,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    Q,
    sum_signed_carry__0_i_9__0);
  output [11:0]bu_result_u;
  output [11:0]DIADI;
  output [11:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  output [3:0]S;
  output [3:0]\b1_reg_r_reg[7] ;
  output [3:0]\b1_reg_r_reg[11] ;
  input [3:0]O;
  input [0:0]CO;
  input [3:0]sum_signed_carry_0;
  input sum_signed_carry__1_0;
  input [3:0]sum_signed_carry__0_0;
  input [11:0]\upper_d_reg[3]_4 ;
  input mem_reg;
  input A_web;
  input [11:0]out;
  input mem_reg_0;
  input mem_reg_1;
  input mem_reg_2;
  input [11:0]Q;
  input [11:0]sum_signed_carry__0_i_9__0;

  wire A_web;
  wire [0:0]CO;
  wire [11:0]DIADI;
  wire [3:0]O;
  wire [11:0]Q;
  wire [3:0]S;
  wire [11:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  wire [3:0]\b1_reg_r_reg[11] ;
  wire [3:0]\b1_reg_r_reg[7] ;
  wire [10:0]base;
  wire [11:0]bu_result_u;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire [11:0]out;
  wire [3:0]sum_signed_carry_0;
  wire [3:0]sum_signed_carry__0_0;
  wire sum_signed_carry__0_i_5__3_n_0;
  wire sum_signed_carry__0_i_6__0_n_0;
  wire sum_signed_carry__0_i_7__0_n_0;
  wire sum_signed_carry__0_i_8__0_n_0;
  wire [11:0]sum_signed_carry__0_i_9__0;
  wire sum_signed_carry__0_n_0;
  wire sum_signed_carry__0_n_1;
  wire sum_signed_carry__0_n_2;
  wire sum_signed_carry__0_n_3;
  wire sum_signed_carry__0_n_4;
  wire sum_signed_carry__0_n_5;
  wire sum_signed_carry__0_n_6;
  wire sum_signed_carry__0_n_7;
  wire sum_signed_carry__1_0;
  wire sum_signed_carry__1_i_4__1_n_0;
  wire sum_signed_carry__1_i_5__0_n_0;
  wire sum_signed_carry__1_i_6__0_n_0;
  wire sum_signed_carry__1_i_7__0_n_0;
  wire sum_signed_carry__1_n_1;
  wire sum_signed_carry__1_n_2;
  wire sum_signed_carry__1_n_3;
  wire sum_signed_carry__1_n_4;
  wire sum_signed_carry__1_n_5;
  wire sum_signed_carry__1_n_6;
  wire sum_signed_carry__1_n_7;
  wire sum_signed_carry_i_5__0_n_0;
  wire sum_signed_carry_i_6__2_n_0;
  wire sum_signed_carry_i_7__0_n_0;
  wire sum_signed_carry_i_8__0_n_0;
  wire sum_signed_carry_n_0;
  wire sum_signed_carry_n_1;
  wire sum_signed_carry_n_2;
  wire sum_signed_carry_n_3;
  wire sum_signed_carry_n_4;
  wire sum_signed_carry_n_5;
  wire sum_signed_carry_n_6;
  wire sum_signed_carry_n_7;
  wire [11:0]\upper_d_reg[3]_4 ;
  wire [3:3]NLW_sum_signed_carry__1_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_17__0
       (.I0(bu_result_u[11]),
        .I1(A_web),
        .I2(out[11]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[11]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_17__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry__1_n_4),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [11]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [11]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_18__0
       (.I0(bu_result_u[10]),
        .I1(A_web),
        .I2(out[10]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[10]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_18__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry__1_n_5),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [10]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [10]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_19__0
       (.I0(bu_result_u[9]),
        .I1(A_web),
        .I2(out[9]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[9]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_19__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry__1_n_6),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [9]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [9]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_20__0
       (.I0(bu_result_u[8]),
        .I1(A_web),
        .I2(out[8]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[8]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_20__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry__1_n_7),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [8]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [8]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_21__0
       (.I0(bu_result_u[7]),
        .I1(A_web),
        .I2(out[7]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[7]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_21__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry__0_n_4),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [7]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [7]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_22__0
       (.I0(bu_result_u[6]),
        .I1(A_web),
        .I2(out[6]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[6]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_22__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry__0_n_5),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [6]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [6]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_23__0
       (.I0(bu_result_u[5]),
        .I1(A_web),
        .I2(out[5]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[5]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_23__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry__0_n_6),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [5]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [5]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_24__0
       (.I0(bu_result_u[4]),
        .I1(A_web),
        .I2(out[4]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[4]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_24__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry__0_n_7),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [4]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [4]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_25__0
       (.I0(bu_result_u[3]),
        .I1(A_web),
        .I2(out[3]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[3]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_25__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry_n_4),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [3]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [3]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_26__0
       (.I0(bu_result_u[2]),
        .I1(A_web),
        .I2(out[2]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_26__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry_n_5),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [2]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [2]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_27__0
       (.I0(bu_result_u[1]),
        .I1(A_web),
        .I2(out[1]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_27__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry_n_6),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [1]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [1]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_28__0
       (.I0(bu_result_u[0]),
        .I1(A_web),
        .I2(out[0]),
        .I3(mem_reg_0),
        .I4(mem_reg_1),
        .O(DIADI[0]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_28__1
       (.I0(mem_reg_2),
        .I1(sum_signed_carry_n_7),
        .I2(mem_reg),
        .I3(\upper_d_reg[3]_4 [0]),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_75
       (.I0(\upper_d_reg[3]_4 [11]),
        .I1(mem_reg),
        .I2(sum_signed_carry__1_n_4),
        .O(bu_result_u[11]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_78
       (.I0(\upper_d_reg[3]_4 [10]),
        .I1(mem_reg),
        .I2(sum_signed_carry__1_n_5),
        .O(bu_result_u[10]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_79
       (.I0(\upper_d_reg[3]_4 [9]),
        .I1(mem_reg),
        .I2(sum_signed_carry__1_n_6),
        .O(bu_result_u[9]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_80
       (.I0(\upper_d_reg[3]_4 [8]),
        .I1(mem_reg),
        .I2(sum_signed_carry__1_n_7),
        .O(bu_result_u[8]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_81
       (.I0(\upper_d_reg[3]_4 [7]),
        .I1(mem_reg),
        .I2(sum_signed_carry__0_n_4),
        .O(bu_result_u[7]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_82
       (.I0(\upper_d_reg[3]_4 [6]),
        .I1(mem_reg),
        .I2(sum_signed_carry__0_n_5),
        .O(bu_result_u[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_83
       (.I0(\upper_d_reg[3]_4 [5]),
        .I1(mem_reg),
        .I2(sum_signed_carry__0_n_6),
        .O(bu_result_u[5]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_84
       (.I0(\upper_d_reg[3]_4 [4]),
        .I1(mem_reg),
        .I2(sum_signed_carry__0_n_7),
        .O(bu_result_u[4]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_85
       (.I0(\upper_d_reg[3]_4 [3]),
        .I1(mem_reg),
        .I2(sum_signed_carry_n_4),
        .O(bu_result_u[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_86
       (.I0(\upper_d_reg[3]_4 [2]),
        .I1(mem_reg),
        .I2(sum_signed_carry_n_5),
        .O(bu_result_u[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_87
       (.I0(\upper_d_reg[3]_4 [1]),
        .I1(mem_reg),
        .I2(sum_signed_carry_n_6),
        .O(bu_result_u[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_88
       (.I0(\upper_d_reg[3]_4 [0]),
        .I1(mem_reg),
        .I2(sum_signed_carry_n_7),
        .O(bu_result_u[0]));
  CARRY4 sum_signed_carry
       (.CI(1'b0),
        .CO({sum_signed_carry_n_0,sum_signed_carry_n_1,sum_signed_carry_n_2,sum_signed_carry_n_3}),
        .CYINIT(1'b0),
        .DI(base[3:0]),
        .O({sum_signed_carry_n_4,sum_signed_carry_n_5,sum_signed_carry_n_6,sum_signed_carry_n_7}),
        .S({sum_signed_carry_i_5__0_n_0,sum_signed_carry_i_6__2_n_0,sum_signed_carry_i_7__0_n_0,sum_signed_carry_i_8__0_n_0}));
  CARRY4 sum_signed_carry__0
       (.CI(sum_signed_carry_n_0),
        .CO({sum_signed_carry__0_n_0,sum_signed_carry__0_n_1,sum_signed_carry__0_n_2,sum_signed_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(base[7:4]),
        .O({sum_signed_carry__0_n_4,sum_signed_carry__0_n_5,sum_signed_carry__0_n_6,sum_signed_carry__0_n_7}),
        .S({sum_signed_carry__0_i_5__3_n_0,sum_signed_carry__0_i_6__0_n_0,sum_signed_carry__0_i_7__0_n_0,sum_signed_carry__0_i_8__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry__0_i_10
       (.I0(Q[11]),
        .I1(sum_signed_carry__0_i_9__0[11]),
        .O(\b1_reg_r_reg[11] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry__0_i_11
       (.I0(Q[10]),
        .I1(sum_signed_carry__0_i_9__0[10]),
        .O(\b1_reg_r_reg[11] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry__0_i_12
       (.I0(Q[9]),
        .I1(sum_signed_carry__0_i_9__0[9]),
        .O(\b1_reg_r_reg[11] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry__0_i_13
       (.I0(Q[8]),
        .I1(sum_signed_carry__0_i_9__0[8]),
        .O(\b1_reg_r_reg[11] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_1__1
       (.I0(O[0]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry__0_0[3]),
        .O(base[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_2__1
       (.I0(sum_signed_carry__0_0[3]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry__0_0[2]),
        .O(base[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_3__1
       (.I0(sum_signed_carry__0_0[2]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry__0_0[1]),
        .O(base[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_4__1
       (.I0(sum_signed_carry__0_0[1]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry__0_0[0]),
        .O(base[4]));
  LUT5 #(
    .INIT(32'h3C553CAA)) 
    sum_signed_carry__0_i_5__3
       (.I0(sum_signed_carry__0_0[3]),
        .I1(O[0]),
        .I2(sum_signed_carry_0[0]),
        .I3(sum_signed_carry__1_0),
        .I4(CO),
        .O(sum_signed_carry__0_i_5__3_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry__0_i_6__0
       (.I0(sum_signed_carry__0_0[2]),
        .I1(sum_signed_carry__0_0[3]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry__0_i_7__0
       (.I0(sum_signed_carry__0_0[1]),
        .I1(sum_signed_carry__0_0[2]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry__0_i_8__0
       (.I0(sum_signed_carry__0_0[0]),
        .I1(sum_signed_carry__0_0[1]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__0_i_8__0_n_0));
  CARRY4 sum_signed_carry__1
       (.CI(sum_signed_carry__0_n_0),
        .CO({NLW_sum_signed_carry__1_CO_UNCONNECTED[3],sum_signed_carry__1_n_1,sum_signed_carry__1_n_2,sum_signed_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,base[10:8]}),
        .O({sum_signed_carry__1_n_4,sum_signed_carry__1_n_5,sum_signed_carry__1_n_6,sum_signed_carry__1_n_7}),
        .S({sum_signed_carry__1_i_4__1_n_0,sum_signed_carry__1_i_5__0_n_0,sum_signed_carry__1_i_6__0_n_0,sum_signed_carry__1_i_7__0_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_1__1
       (.I0(O[3]),
        .I1(sum_signed_carry__1_0),
        .I2(O[2]),
        .O(base[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_2__0
       (.I0(O[2]),
        .I1(sum_signed_carry__1_0),
        .I2(O[1]),
        .O(base[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_3__0
       (.I0(O[1]),
        .I1(sum_signed_carry__1_0),
        .I2(O[0]),
        .O(base[8]));
  LUT4 #(
    .INIT(16'h5C0C)) 
    sum_signed_carry__1_i_4__1
       (.I0(sum_signed_carry_0[0]),
        .I1(O[3]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__1_i_4__1_n_0));
  LUT5 #(
    .INIT(32'hC3CCAAAA)) 
    sum_signed_carry__1_i_5__0
       (.I0(O[2]),
        .I1(O[3]),
        .I2(CO),
        .I3(sum_signed_carry_0[0]),
        .I4(sum_signed_carry__1_0),
        .O(sum_signed_carry__1_i_5__0_n_0));
  LUT5 #(
    .INIT(32'hCC553CAA)) 
    sum_signed_carry__1_i_6__0
       (.I0(O[1]),
        .I1(O[2]),
        .I2(sum_signed_carry_0[0]),
        .I3(sum_signed_carry__1_0),
        .I4(CO),
        .O(sum_signed_carry__1_i_6__0_n_0));
  LUT5 #(
    .INIT(32'h3CCCAAAA)) 
    sum_signed_carry__1_i_7__0
       (.I0(O[0]),
        .I1(O[1]),
        .I2(CO),
        .I3(sum_signed_carry_0[0]),
        .I4(sum_signed_carry__1_0),
        .O(sum_signed_carry__1_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_12
       (.I0(Q[7]),
        .I1(sum_signed_carry__0_i_9__0[7]),
        .O(\b1_reg_r_reg[7] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_13
       (.I0(Q[6]),
        .I1(sum_signed_carry__0_i_9__0[6]),
        .O(\b1_reg_r_reg[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_14
       (.I0(Q[5]),
        .I1(sum_signed_carry__0_i_9__0[5]),
        .O(\b1_reg_r_reg[7] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_15
       (.I0(Q[4]),
        .I1(sum_signed_carry__0_i_9__0[4]),
        .O(\b1_reg_r_reg[7] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_16
       (.I0(Q[3]),
        .I1(sum_signed_carry__0_i_9__0[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_17
       (.I0(Q[2]),
        .I1(sum_signed_carry__0_i_9__0[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_18
       (.I0(Q[1]),
        .I1(sum_signed_carry__0_i_9__0[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_19
       (.I0(Q[0]),
        .I1(sum_signed_carry__0_i_9__0[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_1__1
       (.I0(sum_signed_carry__0_0[0]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry_0[3]),
        .O(base[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_2__1
       (.I0(sum_signed_carry_0[3]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry_0[2]),
        .O(base[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_3__1
       (.I0(sum_signed_carry_0[2]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry_0[1]),
        .O(base[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_4__1
       (.I0(sum_signed_carry_0[1]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry_0[0]),
        .O(base[0]));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry_i_5__0
       (.I0(sum_signed_carry_0[3]),
        .I1(sum_signed_carry__0_0[0]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry_i_6__2
       (.I0(sum_signed_carry_0[2]),
        .I1(sum_signed_carry_0[3]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry_i_7__0
       (.I0(sum_signed_carry_0[1]),
        .I1(sum_signed_carry_0[2]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'hA36C)) 
    sum_signed_carry_i_8__0
       (.I0(sum_signed_carry_0[1]),
        .I1(sum_signed_carry_0[0]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry_i_8__0_n_0));
endmodule

(* ORIG_REF_NAME = "mod_adder" *) 
module design_1_polymul_axi_top_0_0_mod_adder_16
   (bu_result_u,
    DIADI,
    \ag_bu_mode_d1_reg[0]_rep__1 ,
    S,
    \b1_reg_r_reg[7] ,
    \b1_reg_r_reg[11] ,
    O,
    CO,
    sum_signed_carry_0,
    sum_signed_carry__1_0,
    sum_signed_carry__0_0,
    sum_signed_carry_1,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    mem_reg_7,
    mem_reg_8,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    A_web,
    out,
    mem_reg_12,
    mem_reg_13,
    mem_reg_14,
    Q,
    sum_signed_carry__0_i_9);
  output [11:0]bu_result_u;
  output [11:0]DIADI;
  output [11:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  output [3:0]S;
  output [3:0]\b1_reg_r_reg[7] ;
  output [3:0]\b1_reg_r_reg[11] ;
  input [3:0]O;
  input [0:0]CO;
  input [3:0]sum_signed_carry_0;
  input sum_signed_carry__1_0;
  input [3:0]sum_signed_carry__0_0;
  input sum_signed_carry_1;
  input mem_reg;
  input mem_reg_0;
  input mem_reg_1;
  input mem_reg_2;
  input mem_reg_3;
  input mem_reg_4;
  input mem_reg_5;
  input mem_reg_6;
  input mem_reg_7;
  input mem_reg_8;
  input mem_reg_9;
  input mem_reg_10;
  input mem_reg_11;
  input A_web;
  input [11:0]out;
  input mem_reg_12;
  input mem_reg_13;
  input mem_reg_14;
  input [11:0]Q;
  input [11:0]sum_signed_carry__0_i_9;

  wire A_web;
  wire [0:0]CO;
  wire [11:0]DIADI;
  wire [3:0]O;
  wire [11:0]Q;
  wire [3:0]S;
  wire [11:0]\ag_bu_mode_d1_reg[0]_rep__1 ;
  wire [3:0]\b1_reg_r_reg[11] ;
  wire [3:0]\b1_reg_r_reg[7] ;
  wire [11:0]bu_result_u;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_10;
  wire mem_reg_11;
  wire mem_reg_12;
  wire mem_reg_13;
  wire mem_reg_14;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire mem_reg_7;
  wire mem_reg_8;
  wire mem_reg_9;
  wire [11:0]out;
  wire [3:0]sum_signed_carry_0;
  wire sum_signed_carry_1;
  wire [3:0]sum_signed_carry__0_0;
  wire sum_signed_carry__0_i_1__0_n_0;
  wire sum_signed_carry__0_i_2__0_n_0;
  wire sum_signed_carry__0_i_3__0_n_0;
  wire sum_signed_carry__0_i_4__0_n_0;
  wire sum_signed_carry__0_i_5__2_n_0;
  wire sum_signed_carry__0_i_6_n_0;
  wire sum_signed_carry__0_i_7_n_0;
  wire sum_signed_carry__0_i_8_n_0;
  wire [11:0]sum_signed_carry__0_i_9;
  wire sum_signed_carry__0_n_0;
  wire sum_signed_carry__0_n_1;
  wire sum_signed_carry__0_n_2;
  wire sum_signed_carry__0_n_3;
  wire sum_signed_carry__0_n_4;
  wire sum_signed_carry__0_n_5;
  wire sum_signed_carry__0_n_6;
  wire sum_signed_carry__0_n_7;
  wire sum_signed_carry__1_0;
  wire sum_signed_carry__1_i_1__0_n_0;
  wire sum_signed_carry__1_i_2_n_0;
  wire sum_signed_carry__1_i_3_n_0;
  wire sum_signed_carry__1_i_4__0_n_0;
  wire sum_signed_carry__1_i_5_n_0;
  wire sum_signed_carry__1_i_6_n_0;
  wire sum_signed_carry__1_i_7_n_0;
  wire sum_signed_carry__1_n_1;
  wire sum_signed_carry__1_n_2;
  wire sum_signed_carry__1_n_3;
  wire sum_signed_carry__1_n_4;
  wire sum_signed_carry__1_n_5;
  wire sum_signed_carry__1_n_6;
  wire sum_signed_carry__1_n_7;
  wire sum_signed_carry_i_1__0_n_0;
  wire sum_signed_carry_i_2__0_n_0;
  wire sum_signed_carry_i_3__0_n_0;
  wire sum_signed_carry_i_4__0_n_0;
  wire sum_signed_carry_i_5_n_0;
  wire sum_signed_carry_i_6__1_n_0;
  wire sum_signed_carry_i_7_n_0;
  wire sum_signed_carry_i_8_n_0;
  wire sum_signed_carry_n_0;
  wire sum_signed_carry_n_1;
  wire sum_signed_carry_n_2;
  wire sum_signed_carry_n_3;
  wire sum_signed_carry_n_4;
  wire sum_signed_carry_n_5;
  wire sum_signed_carry_n_6;
  wire sum_signed_carry_n_7;
  wire [3:3]NLW_sum_signed_carry__1_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_100
       (.I0(mem_reg_11),
        .I1(mem_reg_0),
        .I2(sum_signed_carry_n_7),
        .O(bu_result_u[0]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_29__0
       (.I0(bu_result_u[11]),
        .I1(A_web),
        .I2(out[11]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[11]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_29__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry__1_n_4),
        .I2(mem_reg_0),
        .I3(mem_reg),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [11]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_30__0
       (.I0(bu_result_u[10]),
        .I1(A_web),
        .I2(out[10]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[10]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_30__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry__1_n_5),
        .I2(mem_reg_0),
        .I3(mem_reg_1),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [10]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_31__0
       (.I0(bu_result_u[9]),
        .I1(A_web),
        .I2(out[9]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[9]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_31__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry__1_n_6),
        .I2(mem_reg_0),
        .I3(mem_reg_2),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [9]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_32__0
       (.I0(bu_result_u[8]),
        .I1(A_web),
        .I2(out[8]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[8]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_32__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry__1_n_7),
        .I2(mem_reg_0),
        .I3(mem_reg_3),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [8]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_33__0
       (.I0(bu_result_u[7]),
        .I1(A_web),
        .I2(out[7]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[7]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_33__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry__0_n_4),
        .I2(mem_reg_0),
        .I3(mem_reg_4),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [7]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_34__0
       (.I0(bu_result_u[6]),
        .I1(A_web),
        .I2(out[6]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[6]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_34__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry__0_n_5),
        .I2(mem_reg_0),
        .I3(mem_reg_5),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [6]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_35__0
       (.I0(bu_result_u[5]),
        .I1(A_web),
        .I2(out[5]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[5]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_35__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry__0_n_6),
        .I2(mem_reg_0),
        .I3(mem_reg_6),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [5]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_36__0
       (.I0(bu_result_u[4]),
        .I1(A_web),
        .I2(out[4]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[4]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_36__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry__0_n_7),
        .I2(mem_reg_0),
        .I3(mem_reg_7),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [4]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_37__0
       (.I0(bu_result_u[3]),
        .I1(A_web),
        .I2(out[3]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[3]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_37__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry_n_4),
        .I2(mem_reg_0),
        .I3(mem_reg_8),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [3]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_38__0
       (.I0(bu_result_u[2]),
        .I1(A_web),
        .I2(out[2]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_38__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry_n_5),
        .I2(mem_reg_0),
        .I3(mem_reg_9),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [2]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_39__0
       (.I0(bu_result_u[1]),
        .I1(A_web),
        .I2(out[1]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_39__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry_n_6),
        .I2(mem_reg_0),
        .I3(mem_reg_10),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [1]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    mem_reg_i_40__0
       (.I0(bu_result_u[0]),
        .I1(A_web),
        .I2(out[0]),
        .I3(mem_reg_12),
        .I4(mem_reg_13),
        .O(DIADI[0]));
  LUT4 #(
    .INIT(16'hA808)) 
    mem_reg_i_40__1
       (.I0(mem_reg_14),
        .I1(sum_signed_carry_n_7),
        .I2(mem_reg_0),
        .I3(mem_reg_11),
        .O(\ag_bu_mode_d1_reg[0]_rep__1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_89
       (.I0(mem_reg),
        .I1(mem_reg_0),
        .I2(sum_signed_carry__1_n_4),
        .O(bu_result_u[11]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_90
       (.I0(mem_reg_1),
        .I1(mem_reg_0),
        .I2(sum_signed_carry__1_n_5),
        .O(bu_result_u[10]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_91
       (.I0(mem_reg_2),
        .I1(mem_reg_0),
        .I2(sum_signed_carry__1_n_6),
        .O(bu_result_u[9]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_92
       (.I0(mem_reg_3),
        .I1(mem_reg_0),
        .I2(sum_signed_carry__1_n_7),
        .O(bu_result_u[8]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_93
       (.I0(mem_reg_4),
        .I1(mem_reg_0),
        .I2(sum_signed_carry__0_n_4),
        .O(bu_result_u[7]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_94
       (.I0(mem_reg_5),
        .I1(mem_reg_0),
        .I2(sum_signed_carry__0_n_5),
        .O(bu_result_u[6]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_95
       (.I0(mem_reg_6),
        .I1(mem_reg_0),
        .I2(sum_signed_carry__0_n_6),
        .O(bu_result_u[5]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_96
       (.I0(mem_reg_7),
        .I1(mem_reg_0),
        .I2(sum_signed_carry__0_n_7),
        .O(bu_result_u[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_97
       (.I0(mem_reg_8),
        .I1(mem_reg_0),
        .I2(sum_signed_carry_n_4),
        .O(bu_result_u[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_98
       (.I0(mem_reg_9),
        .I1(mem_reg_0),
        .I2(sum_signed_carry_n_5),
        .O(bu_result_u[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_99
       (.I0(mem_reg_10),
        .I1(mem_reg_0),
        .I2(sum_signed_carry_n_6),
        .O(bu_result_u[1]));
  CARRY4 sum_signed_carry
       (.CI(1'b0),
        .CO({sum_signed_carry_n_0,sum_signed_carry_n_1,sum_signed_carry_n_2,sum_signed_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sum_signed_carry_i_1__0_n_0,sum_signed_carry_i_2__0_n_0,sum_signed_carry_i_3__0_n_0,sum_signed_carry_i_4__0_n_0}),
        .O({sum_signed_carry_n_4,sum_signed_carry_n_5,sum_signed_carry_n_6,sum_signed_carry_n_7}),
        .S({sum_signed_carry_i_5_n_0,sum_signed_carry_i_6__1_n_0,sum_signed_carry_i_7_n_0,sum_signed_carry_i_8_n_0}));
  CARRY4 sum_signed_carry__0
       (.CI(sum_signed_carry_n_0),
        .CO({sum_signed_carry__0_n_0,sum_signed_carry__0_n_1,sum_signed_carry__0_n_2,sum_signed_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_signed_carry__0_i_1__0_n_0,sum_signed_carry__0_i_2__0_n_0,sum_signed_carry__0_i_3__0_n_0,sum_signed_carry__0_i_4__0_n_0}),
        .O({sum_signed_carry__0_n_4,sum_signed_carry__0_n_5,sum_signed_carry__0_n_6,sum_signed_carry__0_n_7}),
        .S({sum_signed_carry__0_i_5__2_n_0,sum_signed_carry__0_i_6_n_0,sum_signed_carry__0_i_7_n_0,sum_signed_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry__0_i_10
       (.I0(Q[11]),
        .I1(sum_signed_carry__0_i_9[11]),
        .O(\b1_reg_r_reg[11] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry__0_i_11
       (.I0(Q[10]),
        .I1(sum_signed_carry__0_i_9[10]),
        .O(\b1_reg_r_reg[11] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry__0_i_12
       (.I0(Q[9]),
        .I1(sum_signed_carry__0_i_9[9]),
        .O(\b1_reg_r_reg[11] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry__0_i_13
       (.I0(Q[8]),
        .I1(sum_signed_carry__0_i_9[8]),
        .O(\b1_reg_r_reg[11] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_1__0
       (.I0(O[0]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry__0_0[3]),
        .O(sum_signed_carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_2__0
       (.I0(sum_signed_carry__0_0[3]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry__0_0[2]),
        .O(sum_signed_carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_3__0
       (.I0(sum_signed_carry__0_0[2]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry__0_0[1]),
        .O(sum_signed_carry__0_i_3__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_4__0
       (.I0(sum_signed_carry__0_0[1]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry__0_0[0]),
        .O(sum_signed_carry__0_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h3C553CAA)) 
    sum_signed_carry__0_i_5__2
       (.I0(sum_signed_carry__0_0[3]),
        .I1(O[0]),
        .I2(sum_signed_carry_0[0]),
        .I3(sum_signed_carry__1_0),
        .I4(CO),
        .O(sum_signed_carry__0_i_5__2_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry__0_i_6
       (.I0(sum_signed_carry__0_0[2]),
        .I1(sum_signed_carry__0_0[3]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry__0_i_7
       (.I0(sum_signed_carry__0_0[1]),
        .I1(sum_signed_carry__0_0[2]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry__0_i_8
       (.I0(sum_signed_carry__0_0[0]),
        .I1(sum_signed_carry__0_0[1]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__0_i_8_n_0));
  CARRY4 sum_signed_carry__1
       (.CI(sum_signed_carry__0_n_0),
        .CO({NLW_sum_signed_carry__1_CO_UNCONNECTED[3],sum_signed_carry__1_n_1,sum_signed_carry__1_n_2,sum_signed_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sum_signed_carry__1_i_1__0_n_0,sum_signed_carry__1_i_2_n_0,sum_signed_carry__1_i_3_n_0}),
        .O({sum_signed_carry__1_n_4,sum_signed_carry__1_n_5,sum_signed_carry__1_n_6,sum_signed_carry__1_n_7}),
        .S({sum_signed_carry__1_i_4__0_n_0,sum_signed_carry__1_i_5_n_0,sum_signed_carry__1_i_6_n_0,sum_signed_carry__1_i_7_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_1__0
       (.I0(O[3]),
        .I1(sum_signed_carry__1_0),
        .I2(O[2]),
        .O(sum_signed_carry__1_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_2
       (.I0(O[2]),
        .I1(sum_signed_carry__1_0),
        .I2(O[1]),
        .O(sum_signed_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_3
       (.I0(O[1]),
        .I1(sum_signed_carry__1_0),
        .I2(O[0]),
        .O(sum_signed_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h5C0C)) 
    sum_signed_carry__1_i_4__0
       (.I0(sum_signed_carry_0[0]),
        .I1(O[3]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__1_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hC3CCAAAA)) 
    sum_signed_carry__1_i_5
       (.I0(O[2]),
        .I1(O[3]),
        .I2(CO),
        .I3(sum_signed_carry_0[0]),
        .I4(sum_signed_carry__1_0),
        .O(sum_signed_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'hCC553CAA)) 
    sum_signed_carry__1_i_6
       (.I0(O[1]),
        .I1(O[2]),
        .I2(sum_signed_carry_0[0]),
        .I3(sum_signed_carry__1_0),
        .I4(CO),
        .O(sum_signed_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h3CCCAAAA)) 
    sum_signed_carry__1_i_7
       (.I0(O[0]),
        .I1(O[1]),
        .I2(CO),
        .I3(sum_signed_carry_0[0]),
        .I4(sum_signed_carry__1_0),
        .O(sum_signed_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_12
       (.I0(Q[7]),
        .I1(sum_signed_carry__0_i_9[7]),
        .O(\b1_reg_r_reg[7] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_13
       (.I0(Q[6]),
        .I1(sum_signed_carry__0_i_9[6]),
        .O(\b1_reg_r_reg[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_14
       (.I0(Q[5]),
        .I1(sum_signed_carry__0_i_9[5]),
        .O(\b1_reg_r_reg[7] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_15
       (.I0(Q[4]),
        .I1(sum_signed_carry__0_i_9[4]),
        .O(\b1_reg_r_reg[7] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_16
       (.I0(Q[3]),
        .I1(sum_signed_carry__0_i_9[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_17
       (.I0(Q[2]),
        .I1(sum_signed_carry__0_i_9[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_18
       (.I0(Q[1]),
        .I1(sum_signed_carry__0_i_9[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_signed_carry_i_19
       (.I0(Q[0]),
        .I1(sum_signed_carry__0_i_9[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_1__0
       (.I0(sum_signed_carry__0_0[0]),
        .I1(sum_signed_carry_1),
        .I2(sum_signed_carry_0[3]),
        .O(sum_signed_carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_2__0
       (.I0(sum_signed_carry_0[3]),
        .I1(sum_signed_carry_1),
        .I2(sum_signed_carry_0[2]),
        .O(sum_signed_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_3__0
       (.I0(sum_signed_carry_0[2]),
        .I1(sum_signed_carry_1),
        .I2(sum_signed_carry_0[1]),
        .O(sum_signed_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_4__0
       (.I0(sum_signed_carry_0[1]),
        .I1(sum_signed_carry__1_0),
        .I2(sum_signed_carry_0[0]),
        .O(sum_signed_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry_i_5
       (.I0(sum_signed_carry_0[3]),
        .I1(sum_signed_carry__0_0[0]),
        .I2(sum_signed_carry_1),
        .I3(CO),
        .O(sum_signed_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry_i_6__1
       (.I0(sum_signed_carry_0[2]),
        .I1(sum_signed_carry_0[3]),
        .I2(sum_signed_carry_1),
        .I3(CO),
        .O(sum_signed_carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'hC5CA)) 
    sum_signed_carry_i_7
       (.I0(sum_signed_carry_0[1]),
        .I1(sum_signed_carry_0[2]),
        .I2(sum_signed_carry_1),
        .I3(CO),
        .O(sum_signed_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hA36C)) 
    sum_signed_carry_i_8
       (.I0(sum_signed_carry_0[1]),
        .I1(sum_signed_carry_0[0]),
        .I2(sum_signed_carry_1),
        .I3(CO),
        .O(sum_signed_carry_i_8_n_0));
endmodule

(* ORIG_REF_NAME = "mod_adder" *) 
module design_1_polymul_axi_top_0_0_mod_adder_2
   (O,
    CO,
    \m2_d_reg[3][11] ,
    D,
    I73,
    S,
    \c_pkt_reg[23] ,
    \m3_d_reg[3]_2 );
  output [0:0]O;
  output [0:0]CO;
  output [2:0]\m2_d_reg[3][11] ;
  output [11:0]D;
  input [11:0]I73;
  input [0:0]S;
  input [2:0]\c_pkt_reg[23] ;
  input [11:0]\m3_d_reg[3]_2 ;

  wire [0:0]CO;
  wire [11:0]D;
  wire [11:0]I73;
  wire [0:0]O;
  wire [0:0]S;
  wire \c_pkt[15]_i_10_n_0 ;
  wire \c_pkt[15]_i_3_n_0 ;
  wire \c_pkt[15]_i_4_n_0 ;
  wire \c_pkt[15]_i_5_n_0 ;
  wire \c_pkt[15]_i_7_n_0 ;
  wire \c_pkt[15]_i_8_n_0 ;
  wire \c_pkt[15]_i_9_n_0 ;
  wire \c_pkt[19]_i_10_n_0 ;
  wire \c_pkt[19]_i_3_n_0 ;
  wire \c_pkt[19]_i_4_n_0 ;
  wire \c_pkt[19]_i_5_n_0 ;
  wire \c_pkt[19]_i_6_n_0 ;
  wire \c_pkt[19]_i_7_n_0 ;
  wire \c_pkt[19]_i_8_n_0 ;
  wire \c_pkt[19]_i_9_n_0 ;
  wire \c_pkt[23]_i_10_n_0 ;
  wire \c_pkt[23]_i_5_n_0 ;
  wire \c_pkt[23]_i_7_n_0 ;
  wire \c_pkt[23]_i_8_n_0 ;
  wire \c_pkt[23]_i_9_n_0 ;
  wire \c_pkt_reg[15]_i_1_n_0 ;
  wire \c_pkt_reg[15]_i_1_n_1 ;
  wire \c_pkt_reg[15]_i_1_n_2 ;
  wire \c_pkt_reg[15]_i_1_n_3 ;
  wire \c_pkt_reg[15]_i_2_n_0 ;
  wire \c_pkt_reg[15]_i_2_n_1 ;
  wire \c_pkt_reg[15]_i_2_n_2 ;
  wire \c_pkt_reg[15]_i_2_n_3 ;
  wire \c_pkt_reg[15]_i_2_n_4 ;
  wire \c_pkt_reg[15]_i_2_n_5 ;
  wire \c_pkt_reg[15]_i_2_n_6 ;
  wire \c_pkt_reg[19]_i_1_n_0 ;
  wire \c_pkt_reg[19]_i_1_n_1 ;
  wire \c_pkt_reg[19]_i_1_n_2 ;
  wire \c_pkt_reg[19]_i_1_n_3 ;
  wire \c_pkt_reg[19]_i_2_n_0 ;
  wire \c_pkt_reg[19]_i_2_n_1 ;
  wire \c_pkt_reg[19]_i_2_n_2 ;
  wire \c_pkt_reg[19]_i_2_n_3 ;
  wire \c_pkt_reg[19]_i_2_n_4 ;
  wire \c_pkt_reg[19]_i_2_n_5 ;
  wire \c_pkt_reg[19]_i_2_n_6 ;
  wire \c_pkt_reg[19]_i_2_n_7 ;
  wire [2:0]\c_pkt_reg[23] ;
  wire \c_pkt_reg[23]_i_1_n_1 ;
  wire \c_pkt_reg[23]_i_1_n_2 ;
  wire \c_pkt_reg[23]_i_1_n_3 ;
  wire \c_pkt_reg[23]_i_2_n_1 ;
  wire \c_pkt_reg[23]_i_2_n_2 ;
  wire \c_pkt_reg[23]_i_2_n_3 ;
  wire \c_pkt_reg[23]_i_2_n_6 ;
  wire [2:0]\m2_d_reg[3][11] ;
  wire [11:0]\m3_d_reg[3]_2 ;
  wire [3:3]\NLW_c_pkt_reg[23]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[15]_i_10 
       (.I0(I73[0]),
        .I1(\m3_d_reg[3]_2 [0]),
        .O(\c_pkt[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_pkt[15]_i_3 
       (.I0(\c_pkt_reg[15]_i_2_n_4 ),
        .O(\c_pkt[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_pkt[15]_i_4 
       (.I0(\c_pkt_reg[15]_i_2_n_5 ),
        .O(\c_pkt[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_pkt[15]_i_5 
       (.I0(\c_pkt_reg[15]_i_2_n_6 ),
        .O(\c_pkt[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[15]_i_7 
       (.I0(I73[3]),
        .I1(\m3_d_reg[3]_2 [3]),
        .O(\c_pkt[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[15]_i_8 
       (.I0(I73[2]),
        .I1(\m3_d_reg[3]_2 [2]),
        .O(\c_pkt[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[15]_i_9 
       (.I0(I73[1]),
        .I1(\m3_d_reg[3]_2 [1]),
        .O(\c_pkt[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[19]_i_10 
       (.I0(I73[4]),
        .I1(\m3_d_reg[3]_2 [4]),
        .O(\c_pkt[19]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_pkt[19]_i_3 
       (.I0(\c_pkt_reg[19]_i_2_n_4 ),
        .O(\c_pkt[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_pkt[19]_i_4 
       (.I0(\c_pkt_reg[19]_i_2_n_5 ),
        .O(\c_pkt[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_pkt[19]_i_5 
       (.I0(\c_pkt_reg[19]_i_2_n_6 ),
        .O(\c_pkt[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_pkt[19]_i_6 
       (.I0(\c_pkt_reg[19]_i_2_n_7 ),
        .O(\c_pkt[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[19]_i_7 
       (.I0(I73[7]),
        .I1(\m3_d_reg[3]_2 [7]),
        .O(\c_pkt[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[19]_i_8 
       (.I0(I73[6]),
        .I1(\m3_d_reg[3]_2 [6]),
        .O(\c_pkt[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[19]_i_9 
       (.I0(I73[5]),
        .I1(\m3_d_reg[3]_2 [5]),
        .O(\c_pkt[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[23]_i_10 
       (.I0(I73[8]),
        .I1(\m3_d_reg[3]_2 [8]),
        .O(\c_pkt[23]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \c_pkt[23]_i_5 
       (.I0(\c_pkt_reg[23]_i_2_n_6 ),
        .O(\c_pkt[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[23]_i_7 
       (.I0(I73[11]),
        .I1(\m3_d_reg[3]_2 [11]),
        .O(\c_pkt[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[23]_i_8 
       (.I0(I73[10]),
        .I1(\m3_d_reg[3]_2 [10]),
        .O(\c_pkt[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_pkt[23]_i_9 
       (.I0(I73[9]),
        .I1(\m3_d_reg[3]_2 [9]),
        .O(\c_pkt[23]_i_9_n_0 ));
  CARRY4 \c_pkt_reg[15]_i_1 
       (.CI(1'b0),
        .CO({\c_pkt_reg[15]_i_1_n_0 ,\c_pkt_reg[15]_i_1_n_1 ,\c_pkt_reg[15]_i_1_n_2 ,\c_pkt_reg[15]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\c_pkt_reg[15]_i_2_n_4 ,\c_pkt_reg[15]_i_2_n_5 ,\c_pkt_reg[15]_i_2_n_6 ,O}),
        .O(D[3:0]),
        .S({\c_pkt[15]_i_3_n_0 ,\c_pkt[15]_i_4_n_0 ,\c_pkt[15]_i_5_n_0 ,S}));
  CARRY4 \c_pkt_reg[15]_i_2 
       (.CI(1'b0),
        .CO({\c_pkt_reg[15]_i_2_n_0 ,\c_pkt_reg[15]_i_2_n_1 ,\c_pkt_reg[15]_i_2_n_2 ,\c_pkt_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(I73[3:0]),
        .O({\c_pkt_reg[15]_i_2_n_4 ,\c_pkt_reg[15]_i_2_n_5 ,\c_pkt_reg[15]_i_2_n_6 ,O}),
        .S({\c_pkt[15]_i_7_n_0 ,\c_pkt[15]_i_8_n_0 ,\c_pkt[15]_i_9_n_0 ,\c_pkt[15]_i_10_n_0 }));
  CARRY4 \c_pkt_reg[19]_i_1 
       (.CI(\c_pkt_reg[15]_i_1_n_0 ),
        .CO({\c_pkt_reg[19]_i_1_n_0 ,\c_pkt_reg[19]_i_1_n_1 ,\c_pkt_reg[19]_i_1_n_2 ,\c_pkt_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\c_pkt_reg[19]_i_2_n_4 ,\c_pkt_reg[19]_i_2_n_5 ,\c_pkt_reg[19]_i_2_n_6 ,\c_pkt_reg[19]_i_2_n_7 }),
        .O(D[7:4]),
        .S({\c_pkt[19]_i_3_n_0 ,\c_pkt[19]_i_4_n_0 ,\c_pkt[19]_i_5_n_0 ,\c_pkt[19]_i_6_n_0 }));
  CARRY4 \c_pkt_reg[19]_i_2 
       (.CI(\c_pkt_reg[15]_i_2_n_0 ),
        .CO({\c_pkt_reg[19]_i_2_n_0 ,\c_pkt_reg[19]_i_2_n_1 ,\c_pkt_reg[19]_i_2_n_2 ,\c_pkt_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(I73[7:4]),
        .O({\c_pkt_reg[19]_i_2_n_4 ,\c_pkt_reg[19]_i_2_n_5 ,\c_pkt_reg[19]_i_2_n_6 ,\c_pkt_reg[19]_i_2_n_7 }),
        .S({\c_pkt[19]_i_7_n_0 ,\c_pkt[19]_i_8_n_0 ,\c_pkt[19]_i_9_n_0 ,\c_pkt[19]_i_10_n_0 }));
  CARRY4 \c_pkt_reg[23]_i_1 
       (.CI(\c_pkt_reg[19]_i_1_n_0 ),
        .CO({\NLW_c_pkt_reg[23]_i_1_CO_UNCONNECTED [3],\c_pkt_reg[23]_i_1_n_1 ,\c_pkt_reg[23]_i_1_n_2 ,\c_pkt_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\m2_d_reg[3][11] [1],\c_pkt_reg[23]_i_2_n_6 ,\m2_d_reg[3][11] [0]}),
        .O(D[11:8]),
        .S({\c_pkt_reg[23] [2:1],\c_pkt[23]_i_5_n_0 ,\c_pkt_reg[23] [0]}));
  CARRY4 \c_pkt_reg[23]_i_2 
       (.CI(\c_pkt_reg[19]_i_2_n_0 ),
        .CO({CO,\c_pkt_reg[23]_i_2_n_1 ,\c_pkt_reg[23]_i_2_n_2 ,\c_pkt_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(I73[11:8]),
        .O({\m2_d_reg[3][11] [2:1],\c_pkt_reg[23]_i_2_n_6 ,\m2_d_reg[3][11] [0]}),
        .S({\c_pkt[23]_i_7_n_0 ,\c_pkt[23]_i_8_n_0 ,\c_pkt[23]_i_9_n_0 ,\c_pkt[23]_i_10_n_0 }));
endmodule

(* ORIG_REF_NAME = "mod_multiplier" *) 
module design_1_polymul_axi_top_0_0_mod_multiplier
   (Q,
    \a_reg_reg[11]_0 ,
    \R_s2_reg[13] ,
    \R_s2_reg[13]_0 ,
    \R_s2_reg[13]_1 ,
    \R_s2_reg[13]_2 ,
    \R_s2_reg[13]_3 ,
    \R_s2_reg[13]_4 ,
    \R_s2_reg[13]_5 ,
    \R_s2_reg[13]_6 ,
    \R_s2_reg[13]_7 ,
    \R_s2_reg[13]_8 ,
    \R_s2_reg[13]_9 ,
    \R_s2_reg[13]_10 ,
    clk,
    \c0_s1_reg[0] ,
    \a_reg_reg[11]_1 ,
    \c1_s1_reg[0] ,
    \b_reg_reg[11]_0 );
  output [11:0]Q;
  output [11:0]\a_reg_reg[11]_0 ;
  output \R_s2_reg[13] ;
  output \R_s2_reg[13]_0 ;
  output \R_s2_reg[13]_1 ;
  output \R_s2_reg[13]_2 ;
  output \R_s2_reg[13]_3 ;
  output \R_s2_reg[13]_4 ;
  output \R_s2_reg[13]_5 ;
  output \R_s2_reg[13]_6 ;
  output \R_s2_reg[13]_7 ;
  output \R_s2_reg[13]_8 ;
  output \R_s2_reg[13]_9 ;
  output \R_s2_reg[13]_10 ;
  input clk;
  input \c0_s1_reg[0] ;
  input [11:0]\a_reg_reg[11]_1 ;
  input \c1_s1_reg[0] ;
  input [11:0]\b_reg_reg[11]_0 ;

  wire [11:0]Q;
  wire \Q1_s1[2]_i_10__1_n_0 ;
  wire \Q1_s1[2]_i_8__1_n_0 ;
  wire \Q1_s1[2]_i_9__1_n_0 ;
  wire \Q1_s1_reg[10]_i_2__1_n_0 ;
  wire \Q1_s1_reg[10]_i_2__1_n_1 ;
  wire \Q1_s1_reg[10]_i_2__1_n_2 ;
  wire \Q1_s1_reg[10]_i_2__1_n_3 ;
  wire \Q1_s1_reg[2]_i_2__1_n_0 ;
  wire \Q1_s1_reg[2]_i_2__1_n_1 ;
  wire \Q1_s1_reg[2]_i_2__1_n_2 ;
  wire \Q1_s1_reg[2]_i_2__1_n_3 ;
  wire \Q1_s1_reg[6]_i_2__1_n_0 ;
  wire \Q1_s1_reg[6]_i_2__1_n_1 ;
  wire \Q1_s1_reg[6]_i_2__1_n_2 ;
  wire \Q1_s1_reg[6]_i_2__1_n_3 ;
  wire \R_s2_reg[13] ;
  wire \R_s2_reg[13]_0 ;
  wire \R_s2_reg[13]_1 ;
  wire \R_s2_reg[13]_10 ;
  wire \R_s2_reg[13]_2 ;
  wire \R_s2_reg[13]_3 ;
  wire \R_s2_reg[13]_4 ;
  wire \R_s2_reg[13]_5 ;
  wire \R_s2_reg[13]_6 ;
  wire \R_s2_reg[13]_7 ;
  wire \R_s2_reg[13]_8 ;
  wire \R_s2_reg[13]_9 ;
  wire [11:0]\a_reg_reg[11]_0 ;
  wire [11:0]\a_reg_reg[11]_1 ;
  wire [11:0]\b_reg_reg[11]_0 ;
  wire br_inst_n_0;
  wire br_inst_n_1;
  wire br_inst_n_10;
  wire br_inst_n_2;
  wire br_inst_n_3;
  wire br_inst_n_4;
  wire br_inst_n_5;
  wire br_inst_n_6;
  wire br_inst_n_7;
  wire br_inst_n_8;
  wire br_inst_n_9;
  wire \c0_s1_reg[0] ;
  wire \c1_s1_reg[0] ;
  wire clk;
  wire [12:0]d1;
  wire [10:1]p_0_in;
  wire [23:0]product__0;
  wire product_n_74;
  wire product_n_75;
  wire product_n_76;
  wire product_n_77;
  wire product_n_78;
  wire product_n_79;
  wire product_n_80;
  wire product_n_81;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_3__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_3__1_O_UNCONNECTED ;
  wire NLW_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_product_OVERFLOW_UNCONNECTED;
  wire NLW_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_product_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_product_P_UNCONNECTED;
  wire [47:0]NLW_product_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_10__1 
       (.I0(product__0[22]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_7__1 
       (.I0(product__0[21]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_8__1 
       (.I0(product__0[20]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_9__1 
       (.I0(product__0[19]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[11]_i_4__1 
       (.I0(product__0[23]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_10__1 
       (.I0(product__0[11]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_10__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_7__1 
       (.I0(product__0[14]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_8__1 
       (.I0(product__0[13]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_8__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_9__1 
       (.I0(product__0[12]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_10__1 
       (.I0(product__0[15]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_7__1 
       (.I0(product__0[18]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_8__1 
       (.I0(product__0[17]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_9__1 
       (.I0(product__0[16]),
        .I1(\c0_s1_reg[0] ),
        .O(p_0_in[3]));
  CARRY4 \Q1_s1_reg[10]_i_2__1 
       (.CI(\Q1_s1_reg[6]_i_2__1_n_0 ),
        .CO({\Q1_s1_reg[10]_i_2__1_n_0 ,\Q1_s1_reg[10]_i_2__1_n_1 ,\Q1_s1_reg[10]_i_2__1_n_2 ,\Q1_s1_reg[10]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[8:6]}),
        .O(d1[11:8]),
        .S({p_0_in[9],br_inst_n_8,br_inst_n_9,br_inst_n_10}));
  CARRY4 \Q1_s1_reg[11]_i_3__1 
       (.CI(\Q1_s1_reg[10]_i_2__1_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_3__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_3__1_O_UNCONNECTED [3:1],d1[12]}),
        .S({1'b0,1'b0,1'b0,p_0_in[10]}));
  CARRY4 \Q1_s1_reg[2]_i_2__1 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_2__1_n_0 ,\Q1_s1_reg[2]_i_2__1_n_1 ,\Q1_s1_reg[2]_i_2__1_n_2 ,\Q1_s1_reg[2]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({p_0_in[1],\Q1_s1[2]_i_8__1_n_0 ,\Q1_s1[2]_i_9__1_n_0 ,\Q1_s1[2]_i_10__1_n_0 }),
        .O(d1[3:0]),
        .S({br_inst_n_0,br_inst_n_1,br_inst_n_2,br_inst_n_3}));
  CARRY4 \Q1_s1_reg[6]_i_2__1 
       (.CI(\Q1_s1_reg[2]_i_2__1_n_0 ),
        .CO({\Q1_s1_reg[6]_i_2__1_n_0 ,\Q1_s1_reg[6]_i_2__1_n_1 ,\Q1_s1_reg[6]_i_2__1_n_2 ,\Q1_s1_reg[6]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_in[5:2]),
        .O(d1[7:4]),
        .S({br_inst_n_4,br_inst_n_5,br_inst_n_6,br_inst_n_7}));
  FDCE \a_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [0]),
        .Q(\a_reg_reg[11]_0 [0]));
  FDCE \a_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [10]),
        .Q(\a_reg_reg[11]_0 [10]));
  FDCE \a_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [11]),
        .Q(\a_reg_reg[11]_0 [11]));
  FDCE \a_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [1]),
        .Q(\a_reg_reg[11]_0 [1]));
  FDCE \a_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [2]),
        .Q(\a_reg_reg[11]_0 [2]));
  FDCE \a_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [3]),
        .Q(\a_reg_reg[11]_0 [3]));
  FDCE \a_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [4]),
        .Q(\a_reg_reg[11]_0 [4]));
  FDCE \a_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [5]),
        .Q(\a_reg_reg[11]_0 [5]));
  FDCE \a_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [6]),
        .Q(\a_reg_reg[11]_0 [6]));
  FDCE \a_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [7]),
        .Q(\a_reg_reg[11]_0 [7]));
  FDCE \a_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [8]),
        .Q(\a_reg_reg[11]_0 [8]));
  FDCE \a_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[11]_1 [9]),
        .Q(\a_reg_reg[11]_0 [9]));
  FDCE \b_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [0]),
        .Q(Q[0]));
  FDCE \b_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [10]),
        .Q(Q[10]));
  FDCE \b_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [11]),
        .Q(Q[11]));
  FDCE \b_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [1]),
        .Q(Q[1]));
  FDCE \b_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [2]),
        .Q(Q[2]));
  FDCE \b_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [3]),
        .Q(Q[3]));
  FDCE \b_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [4]),
        .Q(Q[4]));
  FDCE \b_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [5]),
        .Q(Q[5]));
  FDCE \b_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [6]),
        .Q(Q[6]));
  FDCE \b_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [7]),
        .Q(Q[7]));
  FDCE \b_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [8]),
        .Q(Q[8]));
  FDCE \b_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [9]),
        .Q(Q[9]));
  design_1_polymul_axi_top_0_0_barrett_reduction_10 br_inst
       (.P(product__0),
        .\R_s2_reg[13]_0 (\R_s2_reg[13] ),
        .\R_s2_reg[13]_1 (\R_s2_reg[13]_0 ),
        .\R_s2_reg[13]_10 (\R_s2_reg[13]_9 ),
        .\R_s2_reg[13]_11 (\R_s2_reg[13]_10 ),
        .\R_s2_reg[13]_2 (\R_s2_reg[13]_1 ),
        .\R_s2_reg[13]_3 (\R_s2_reg[13]_2 ),
        .\R_s2_reg[13]_4 (\R_s2_reg[13]_3 ),
        .\R_s2_reg[13]_5 (\R_s2_reg[13]_4 ),
        .\R_s2_reg[13]_6 (\R_s2_reg[13]_5 ),
        .\R_s2_reg[13]_7 (\R_s2_reg[13]_6 ),
        .\R_s2_reg[13]_8 (\R_s2_reg[13]_7 ),
        .\R_s2_reg[13]_9 (\R_s2_reg[13]_8 ),
        .S({br_inst_n_0,br_inst_n_1,br_inst_n_2,br_inst_n_3}),
        .\c0_s1_reg[0]_0 (\c0_s1_reg[0] ),
        .\c1_s1_reg[0]_0 (\c1_s1_reg[0] ),
        .clk(clk),
        .d1(d1),
        .product({br_inst_n_4,br_inst_n_5,br_inst_n_6,br_inst_n_7}),
        .product_0({br_inst_n_8,br_inst_n_9,br_inst_n_10}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\a_reg_reg[11]_0 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_product_OVERFLOW_UNCONNECTED),
        .P({NLW_product_P_UNCONNECTED[47:32],product_n_74,product_n_75,product_n_76,product_n_77,product_n_78,product_n_79,product_n_80,product_n_81,product__0}),
        .PATTERNBDETECT(NLW_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "mod_multiplier" *) 
module design_1_polymul_axi_top_0_0_mod_multiplier_12
   (Q,
    D,
    DIBDI,
    \R_s2_reg[11] ,
    \R_s2_reg[11]_0 ,
    clk,
    \c1_s1_reg[5] ,
    bu_data_a_r,
    \b2_reg_r_reg[0] ,
    mem_reg,
    mem_reg_0,
    O,
    A_web,
    B_web,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    \a_reg_reg[15]_0 ,
    \c1_s1_reg[0] ,
    \b_reg_reg[11]_0 );
  output [12:0]Q;
  output [11:0]D;
  output [11:0]DIBDI;
  output [11:0]\R_s2_reg[11] ;
  output [11:0]\R_s2_reg[11]_0 ;
  input clk;
  input \c1_s1_reg[5] ;
  input [11:0]bu_data_a_r;
  input \b2_reg_r_reg[0] ;
  input mem_reg;
  input mem_reg_0;
  input [3:0]O;
  input A_web;
  input B_web;
  input mem_reg_1;
  input [3:0]mem_reg_2;
  input [3:0]mem_reg_3;
  input [12:0]\a_reg_reg[15]_0 ;
  input \c1_s1_reg[0] ;
  input [11:0]\b_reg_reg[11]_0 ;

  wire A_web;
  wire B_web;
  wire [11:0]D;
  wire [11:0]DIBDI;
  wire [3:0]O;
  wire [12:0]Q;
  wire \Q1_s1[2]_i_10__5_n_0 ;
  wire \Q1_s1[2]_i_8__5_n_0 ;
  wire \Q1_s1[2]_i_9__5_n_0 ;
  wire \Q1_s1_reg[10]_i_2__5_n_0 ;
  wire \Q1_s1_reg[10]_i_2__5_n_1 ;
  wire \Q1_s1_reg[10]_i_2__5_n_2 ;
  wire \Q1_s1_reg[10]_i_2__5_n_3 ;
  wire \Q1_s1_reg[2]_i_2__5_n_0 ;
  wire \Q1_s1_reg[2]_i_2__5_n_1 ;
  wire \Q1_s1_reg[2]_i_2__5_n_2 ;
  wire \Q1_s1_reg[2]_i_2__5_n_3 ;
  wire \Q1_s1_reg[6]_i_2__5_n_0 ;
  wire \Q1_s1_reg[6]_i_2__5_n_1 ;
  wire \Q1_s1_reg[6]_i_2__5_n_2 ;
  wire \Q1_s1_reg[6]_i_2__5_n_3 ;
  wire [11:0]\R_s2_reg[11] ;
  wire [11:0]\R_s2_reg[11]_0 ;
  wire [12:0]\a_reg_reg[15]_0 ;
  wire \b2_reg_r_reg[0] ;
  wire [11:0]b_reg;
  wire [11:0]\b_reg_reg[11]_0 ;
  wire br_inst_n_48;
  wire br_inst_n_49;
  wire br_inst_n_50;
  wire br_inst_n_51;
  wire br_inst_n_52;
  wire br_inst_n_53;
  wire br_inst_n_54;
  wire br_inst_n_55;
  wire br_inst_n_56;
  wire br_inst_n_57;
  wire br_inst_n_58;
  wire [11:0]bu_data_a_r;
  wire \c1_s1_reg[0] ;
  wire \c1_s1_reg[5] ;
  wire clk;
  wire [12:0]d1;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [3:0]mem_reg_2;
  wire [3:0]mem_reg_3;
  wire [12:3]p_1_in;
  wire [23:0]\^product ;
  wire product_n_74;
  wire product_n_75;
  wire product_n_76;
  wire product_n_77;
  wire product_n_78;
  wire product_n_79;
  wire product_n_80;
  wire product_n_81;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_3__5_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_3__5_O_UNCONNECTED ;
  wire NLW_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_product_OVERFLOW_UNCONNECTED;
  wire NLW_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_product_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_product_P_UNCONNECTED;
  wire [47:0]NLW_product_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_10__5 
       (.I0(\^product [22]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_7__5 
       (.I0(\^product [21]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_8__5 
       (.I0(\^product [20]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_9__5 
       (.I0(\^product [19]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[11]_i_4__5 
       (.I0(\^product [23]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_10__5 
       (.I0(\^product [11]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[2]_i_10__5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_7__5 
       (.I0(\^product [14]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_8__5 
       (.I0(\^product [13]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[2]_i_8__5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_9__5 
       (.I0(\^product [12]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[2]_i_9__5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_10__5 
       (.I0(\^product [15]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_7__5 
       (.I0(\^product [18]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_8__5 
       (.I0(\^product [17]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_9__5 
       (.I0(\^product [16]),
        .I1(\c1_s1_reg[5] ),
        .O(p_1_in[5]));
  CARRY4 \Q1_s1_reg[10]_i_2__5 
       (.CI(\Q1_s1_reg[6]_i_2__5_n_0 ),
        .CO({\Q1_s1_reg[10]_i_2__5_n_0 ,\Q1_s1_reg[10]_i_2__5_n_1 ,\Q1_s1_reg[10]_i_2__5_n_2 ,\Q1_s1_reg[10]_i_2__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in[10:8]}),
        .O(d1[11:8]),
        .S({p_1_in[11],br_inst_n_56,br_inst_n_57,br_inst_n_58}));
  CARRY4 \Q1_s1_reg[11]_i_3__5 
       (.CI(\Q1_s1_reg[10]_i_2__5_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_3__5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_3__5_O_UNCONNECTED [3:1],d1[12]}),
        .S({1'b0,1'b0,1'b0,p_1_in[12]}));
  CARRY4 \Q1_s1_reg[2]_i_2__5 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_2__5_n_0 ,\Q1_s1_reg[2]_i_2__5_n_1 ,\Q1_s1_reg[2]_i_2__5_n_2 ,\Q1_s1_reg[2]_i_2__5_n_3 }),
        .CYINIT(1'b0),
        .DI({p_1_in[3],\Q1_s1[2]_i_8__5_n_0 ,\Q1_s1[2]_i_9__5_n_0 ,\Q1_s1[2]_i_10__5_n_0 }),
        .O(d1[3:0]),
        .S({br_inst_n_48,br_inst_n_49,br_inst_n_50,br_inst_n_51}));
  CARRY4 \Q1_s1_reg[6]_i_2__5 
       (.CI(\Q1_s1_reg[2]_i_2__5_n_0 ),
        .CO({\Q1_s1_reg[6]_i_2__5_n_0 ,\Q1_s1_reg[6]_i_2__5_n_1 ,\Q1_s1_reg[6]_i_2__5_n_2 ,\Q1_s1_reg[6]_i_2__5_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O(d1[7:4]),
        .S({br_inst_n_52,br_inst_n_53,br_inst_n_54,br_inst_n_55}));
  FDCE \a_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [0]),
        .Q(Q[0]));
  FDCE \a_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [10]),
        .Q(Q[10]));
  FDCE \a_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [11]),
        .Q(Q[11]));
  FDCE \a_reg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [12]),
        .Q(Q[12]));
  FDCE \a_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [1]),
        .Q(Q[1]));
  FDCE \a_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [2]),
        .Q(Q[2]));
  FDCE \a_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [3]),
        .Q(Q[3]));
  FDCE \a_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [4]),
        .Q(Q[4]));
  FDCE \a_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [5]),
        .Q(Q[5]));
  FDCE \a_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [6]),
        .Q(Q[6]));
  FDCE \a_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [7]),
        .Q(Q[7]));
  FDCE \a_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [8]),
        .Q(Q[8]));
  FDCE \a_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\a_reg_reg[15]_0 [9]),
        .Q(Q[9]));
  FDCE \b_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [0]),
        .Q(b_reg[0]));
  FDCE \b_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [10]),
        .Q(b_reg[10]));
  FDCE \b_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [11]),
        .Q(b_reg[11]));
  FDCE \b_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [1]),
        .Q(b_reg[1]));
  FDCE \b_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [2]),
        .Q(b_reg[2]));
  FDCE \b_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [3]),
        .Q(b_reg[3]));
  FDCE \b_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [4]),
        .Q(b_reg[4]));
  FDCE \b_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [5]),
        .Q(b_reg[5]));
  FDCE \b_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [6]),
        .Q(b_reg[6]));
  FDCE \b_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [7]),
        .Q(b_reg[7]));
  FDCE \b_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [8]),
        .Q(b_reg[8]));
  FDCE \b_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [9]),
        .Q(b_reg[9]));
  design_1_polymul_axi_top_0_0_barrett_reduction_14 br_inst
       (.A_web(A_web),
        .B_web(B_web),
        .D(D),
        .DIBDI(DIBDI),
        .O(O),
        .P(\^product ),
        .\R_s2_reg[11]_0 (\R_s2_reg[11] ),
        .\R_s2_reg[11]_1 (\R_s2_reg[11]_0 ),
        .S({br_inst_n_48,br_inst_n_49,br_inst_n_50,br_inst_n_51}),
        .\b2_reg_r_reg[0] (\b2_reg_r_reg[0] ),
        .bu_data_a_r(bu_data_a_r),
        .\c1_s1_reg[0]_0 (\c1_s1_reg[0] ),
        .\c1_s1_reg[5]_0 (\c1_s1_reg[5] ),
        .clk(clk),
        .d1(d1),
        .mem_reg(mem_reg),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(mem_reg_1),
        .mem_reg_2(mem_reg_2),
        .mem_reg_3(mem_reg_3),
        .product({br_inst_n_52,br_inst_n_53,br_inst_n_54,br_inst_n_55}),
        .product_0({br_inst_n_56,br_inst_n_57,br_inst_n_58}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[12],Q[12],Q[12],Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,b_reg}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_product_OVERFLOW_UNCONNECTED),
        .P({NLW_product_P_UNCONNECTED[47:32],product_n_74,product_n_75,product_n_76,product_n_77,product_n_78,product_n_79,product_n_80,product_n_81,\^product }),
        .PATTERNBDETECT(NLW_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "mod_multiplier" *) 
module design_1_polymul_axi_top_0_0_mod_multiplier_15
   (D,
    DIBDI,
    \R_s2_reg[11] ,
    \R_s2_reg[11]_0 ,
    clk,
    Q,
    \c1_s1_reg[5] ,
    bu_data_a_r,
    \b2_reg_r_reg[0] ,
    mem_reg,
    mem_reg_0,
    O,
    A_web,
    B_web,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    \b_reg_reg[11]_0 ,
    \c1_s1_reg[0] );
  output [11:0]D;
  output [11:0]DIBDI;
  output [11:0]\R_s2_reg[11] ;
  output [11:0]\R_s2_reg[11]_0 ;
  input clk;
  input [12:0]Q;
  input \c1_s1_reg[5] ;
  input [11:0]bu_data_a_r;
  input \b2_reg_r_reg[0] ;
  input mem_reg;
  input mem_reg_0;
  input [3:0]O;
  input A_web;
  input B_web;
  input mem_reg_1;
  input [3:0]mem_reg_2;
  input [3:0]mem_reg_3;
  input [11:0]\b_reg_reg[11]_0 ;
  input \c1_s1_reg[0] ;

  wire A_web;
  wire B_web;
  wire [11:0]D;
  wire [11:0]DIBDI;
  wire [3:0]O;
  wire [12:0]Q;
  wire \Q1_s1[10]_i_10__4_n_0 ;
  wire \Q1_s1[10]_i_7__4_n_0 ;
  wire \Q1_s1[10]_i_8__4_n_0 ;
  wire \Q1_s1[10]_i_9__4_n_0 ;
  wire \Q1_s1[11]_i_4__4_n_0 ;
  wire \Q1_s1[2]_i_10__4_n_0 ;
  wire \Q1_s1[2]_i_7__4_n_0 ;
  wire \Q1_s1[2]_i_8__4_n_0 ;
  wire \Q1_s1[2]_i_9__4_n_0 ;
  wire \Q1_s1[6]_i_10__4_n_0 ;
  wire \Q1_s1[6]_i_7__4_n_0 ;
  wire \Q1_s1[6]_i_8__4_n_0 ;
  wire \Q1_s1[6]_i_9__4_n_0 ;
  wire \Q1_s1_reg[10]_i_2__4_n_0 ;
  wire \Q1_s1_reg[10]_i_2__4_n_1 ;
  wire \Q1_s1_reg[10]_i_2__4_n_2 ;
  wire \Q1_s1_reg[10]_i_2__4_n_3 ;
  wire \Q1_s1_reg[10]_i_2__4_n_4 ;
  wire \Q1_s1_reg[10]_i_2__4_n_5 ;
  wire \Q1_s1_reg[10]_i_2__4_n_6 ;
  wire \Q1_s1_reg[10]_i_2__4_n_7 ;
  wire \Q1_s1_reg[11]_i_3__4_n_7 ;
  wire \Q1_s1_reg[2]_i_2__4_n_0 ;
  wire \Q1_s1_reg[2]_i_2__4_n_1 ;
  wire \Q1_s1_reg[2]_i_2__4_n_2 ;
  wire \Q1_s1_reg[2]_i_2__4_n_3 ;
  wire \Q1_s1_reg[2]_i_2__4_n_4 ;
  wire \Q1_s1_reg[2]_i_2__4_n_5 ;
  wire \Q1_s1_reg[2]_i_2__4_n_6 ;
  wire \Q1_s1_reg[2]_i_2__4_n_7 ;
  wire \Q1_s1_reg[6]_i_2__4_n_0 ;
  wire \Q1_s1_reg[6]_i_2__4_n_1 ;
  wire \Q1_s1_reg[6]_i_2__4_n_2 ;
  wire \Q1_s1_reg[6]_i_2__4_n_3 ;
  wire \Q1_s1_reg[6]_i_2__4_n_4 ;
  wire \Q1_s1_reg[6]_i_2__4_n_5 ;
  wire \Q1_s1_reg[6]_i_2__4_n_6 ;
  wire \Q1_s1_reg[6]_i_2__4_n_7 ;
  wire [11:0]\R_s2_reg[11] ;
  wire [11:0]\R_s2_reg[11]_0 ;
  wire \b2_reg_r_reg[0] ;
  wire [11:0]\b_reg_reg[11]_0 ;
  wire \b_reg_reg_n_0_[0] ;
  wire \b_reg_reg_n_0_[10] ;
  wire \b_reg_reg_n_0_[11] ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire \b_reg_reg_n_0_[8] ;
  wire \b_reg_reg_n_0_[9] ;
  wire br_inst_n_48;
  wire br_inst_n_49;
  wire br_inst_n_50;
  wire br_inst_n_51;
  wire br_inst_n_52;
  wire br_inst_n_53;
  wire br_inst_n_54;
  wire br_inst_n_55;
  wire br_inst_n_56;
  wire br_inst_n_57;
  wire br_inst_n_58;
  wire [11:0]bu_data_a_r;
  wire \c1_s1_reg[0] ;
  wire \c1_s1_reg[5] ;
  wire clk;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [3:0]mem_reg_2;
  wire [3:0]mem_reg_3;
  wire [23:0]\^product ;
  wire product_n_74;
  wire product_n_75;
  wire product_n_76;
  wire product_n_77;
  wire product_n_78;
  wire product_n_79;
  wire product_n_80;
  wire product_n_81;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_3__4_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_3__4_O_UNCONNECTED ;
  wire NLW_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_product_OVERFLOW_UNCONNECTED;
  wire NLW_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_product_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_product_P_UNCONNECTED;
  wire [47:0]NLW_product_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_10__4 
       (.I0(\^product [22]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[10]_i_10__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_7__4 
       (.I0(\^product [21]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[10]_i_7__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_8__4 
       (.I0(\^product [20]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[10]_i_8__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_9__4 
       (.I0(\^product [19]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[10]_i_9__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[11]_i_4__4 
       (.I0(\^product [23]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[11]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_10__4 
       (.I0(\^product [11]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[2]_i_10__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_7__4 
       (.I0(\^product [14]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[2]_i_7__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_8__4 
       (.I0(\^product [13]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[2]_i_8__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_9__4 
       (.I0(\^product [12]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[2]_i_9__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_10__4 
       (.I0(\^product [15]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[6]_i_10__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_7__4 
       (.I0(\^product [18]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[6]_i_7__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_8__4 
       (.I0(\^product [17]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[6]_i_8__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_9__4 
       (.I0(\^product [16]),
        .I1(\c1_s1_reg[5] ),
        .O(\Q1_s1[6]_i_9__4_n_0 ));
  CARRY4 \Q1_s1_reg[10]_i_2__4 
       (.CI(\Q1_s1_reg[6]_i_2__4_n_0 ),
        .CO({\Q1_s1_reg[10]_i_2__4_n_0 ,\Q1_s1_reg[10]_i_2__4_n_1 ,\Q1_s1_reg[10]_i_2__4_n_2 ,\Q1_s1_reg[10]_i_2__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Q1_s1[10]_i_7__4_n_0 ,\Q1_s1[10]_i_8__4_n_0 ,\Q1_s1[10]_i_9__4_n_0 }),
        .O({\Q1_s1_reg[10]_i_2__4_n_4 ,\Q1_s1_reg[10]_i_2__4_n_5 ,\Q1_s1_reg[10]_i_2__4_n_6 ,\Q1_s1_reg[10]_i_2__4_n_7 }),
        .S({\Q1_s1[10]_i_10__4_n_0 ,br_inst_n_56,br_inst_n_57,br_inst_n_58}));
  CARRY4 \Q1_s1_reg[11]_i_3__4 
       (.CI(\Q1_s1_reg[10]_i_2__4_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_3__4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_3__4_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_3__4_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_4__4_n_0 }));
  CARRY4 \Q1_s1_reg[2]_i_2__4 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_2__4_n_0 ,\Q1_s1_reg[2]_i_2__4_n_1 ,\Q1_s1_reg[2]_i_2__4_n_2 ,\Q1_s1_reg[2]_i_2__4_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[2]_i_7__4_n_0 ,\Q1_s1[2]_i_8__4_n_0 ,\Q1_s1[2]_i_9__4_n_0 ,\Q1_s1[2]_i_10__4_n_0 }),
        .O({\Q1_s1_reg[2]_i_2__4_n_4 ,\Q1_s1_reg[2]_i_2__4_n_5 ,\Q1_s1_reg[2]_i_2__4_n_6 ,\Q1_s1_reg[2]_i_2__4_n_7 }),
        .S({br_inst_n_48,br_inst_n_49,br_inst_n_50,br_inst_n_51}));
  CARRY4 \Q1_s1_reg[6]_i_2__4 
       (.CI(\Q1_s1_reg[2]_i_2__4_n_0 ),
        .CO({\Q1_s1_reg[6]_i_2__4_n_0 ,\Q1_s1_reg[6]_i_2__4_n_1 ,\Q1_s1_reg[6]_i_2__4_n_2 ,\Q1_s1_reg[6]_i_2__4_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[6]_i_7__4_n_0 ,\Q1_s1[6]_i_8__4_n_0 ,\Q1_s1[6]_i_9__4_n_0 ,\Q1_s1[6]_i_10__4_n_0 }),
        .O({\Q1_s1_reg[6]_i_2__4_n_4 ,\Q1_s1_reg[6]_i_2__4_n_5 ,\Q1_s1_reg[6]_i_2__4_n_6 ,\Q1_s1_reg[6]_i_2__4_n_7 }),
        .S({br_inst_n_52,br_inst_n_53,br_inst_n_54,br_inst_n_55}));
  FDCE \b_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [0]),
        .Q(\b_reg_reg_n_0_[0] ));
  FDCE \b_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [10]),
        .Q(\b_reg_reg_n_0_[10] ));
  FDCE \b_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [11]),
        .Q(\b_reg_reg_n_0_[11] ));
  FDCE \b_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [1]),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE \b_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [2]),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE \b_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [3]),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE \b_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [4]),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE \b_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [5]),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE \b_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [6]),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE \b_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [7]),
        .Q(\b_reg_reg_n_0_[7] ));
  FDCE \b_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [8]),
        .Q(\b_reg_reg_n_0_[8] ));
  FDCE \b_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c1_s1_reg[0] ),
        .D(\b_reg_reg[11]_0 [9]),
        .Q(\b_reg_reg_n_0_[9] ));
  design_1_polymul_axi_top_0_0_barrett_reduction_18 br_inst
       (.A_web(A_web),
        .B_web(B_web),
        .D(D),
        .DIBDI(DIBDI),
        .O({\Q1_s1_reg[2]_i_2__4_n_4 ,\Q1_s1_reg[2]_i_2__4_n_5 ,\Q1_s1_reg[2]_i_2__4_n_6 ,\Q1_s1_reg[2]_i_2__4_n_7 }),
        .P(\^product ),
        .\Q1_s1_reg[10]_0 ({\Q1_s1_reg[10]_i_2__4_n_4 ,\Q1_s1_reg[10]_i_2__4_n_5 ,\Q1_s1_reg[10]_i_2__4_n_6 ,\Q1_s1_reg[10]_i_2__4_n_7 }),
        .\Q1_s1_reg[11]_0 (\Q1_s1_reg[11]_i_3__4_n_7 ),
        .\Q1_s1_reg[6]_0 ({\Q1_s1_reg[6]_i_2__4_n_4 ,\Q1_s1_reg[6]_i_2__4_n_5 ,\Q1_s1_reg[6]_i_2__4_n_6 ,\Q1_s1_reg[6]_i_2__4_n_7 }),
        .\R_s2_reg[11]_0 (\R_s2_reg[11] ),
        .\R_s2_reg[11]_1 (\R_s2_reg[11]_0 ),
        .S({br_inst_n_48,br_inst_n_49,br_inst_n_50,br_inst_n_51}),
        .\b2_reg_r_reg[0] (\b2_reg_r_reg[0] ),
        .bu_data_a_r(bu_data_a_r),
        .\c1_s1_reg[0]_0 (\c1_s1_reg[0] ),
        .\c1_s1_reg[5]_0 (\c1_s1_reg[5] ),
        .clk(clk),
        .mem_reg(mem_reg),
        .mem_reg_0(mem_reg_0),
        .mem_reg_1(O),
        .mem_reg_2(mem_reg_1),
        .mem_reg_3(mem_reg_2),
        .mem_reg_4(mem_reg_3),
        .product({br_inst_n_52,br_inst_n_53,br_inst_n_54,br_inst_n_55}),
        .product_0({br_inst_n_56,br_inst_n_57,br_inst_n_58}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[12],Q[12],Q[12],Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\b_reg_reg_n_0_[11] ,\b_reg_reg_n_0_[10] ,\b_reg_reg_n_0_[9] ,\b_reg_reg_n_0_[8] ,\b_reg_reg_n_0_[7] ,\b_reg_reg_n_0_[6] ,\b_reg_reg_n_0_[5] ,\b_reg_reg_n_0_[4] ,\b_reg_reg_n_0_[3] ,\b_reg_reg_n_0_[2] ,\b_reg_reg_n_0_[1] ,\b_reg_reg_n_0_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_product_OVERFLOW_UNCONNECTED),
        .P({NLW_product_P_UNCONNECTED[47:32],product_n_74,product_n_75,product_n_76,product_n_77,product_n_78,product_n_79,product_n_80,product_n_81,\^product }),
        .PATTERNBDETECT(NLW_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "mod_multiplier" *) 
module design_1_polymul_axi_top_0_0_mod_multiplier_3
   (Q,
    \a_reg_reg[11]_0 ,
    D,
    clk,
    \c0_s1_reg[0] ,
    \a_reg_reg[11]_1 ,
    \R_s2_reg[0] ,
    \b_reg_reg[11]_0 );
  output [11:0]Q;
  output [11:0]\a_reg_reg[11]_0 ;
  output [12:0]D;
  input clk;
  input \c0_s1_reg[0] ;
  input [11:0]\a_reg_reg[11]_1 ;
  input \R_s2_reg[0] ;
  input [11:0]\b_reg_reg[11]_0 ;

  wire [12:0]D;
  wire [11:0]Q;
  wire \Q1_s1[10]_i_10_n_0 ;
  wire \Q1_s1[10]_i_7_n_0 ;
  wire \Q1_s1[10]_i_8_n_0 ;
  wire \Q1_s1[10]_i_9_n_0 ;
  wire \Q1_s1[11]_i_4_n_0 ;
  wire \Q1_s1[2]_i_10_n_0 ;
  wire \Q1_s1[2]_i_7_n_0 ;
  wire \Q1_s1[2]_i_8_n_0 ;
  wire \Q1_s1[2]_i_9_n_0 ;
  wire \Q1_s1[6]_i_10_n_0 ;
  wire \Q1_s1[6]_i_7_n_0 ;
  wire \Q1_s1[6]_i_8_n_0 ;
  wire \Q1_s1[6]_i_9_n_0 ;
  wire \Q1_s1_reg[10]_i_2_n_0 ;
  wire \Q1_s1_reg[10]_i_2_n_1 ;
  wire \Q1_s1_reg[10]_i_2_n_2 ;
  wire \Q1_s1_reg[10]_i_2_n_3 ;
  wire \Q1_s1_reg[10]_i_2_n_4 ;
  wire \Q1_s1_reg[10]_i_2_n_5 ;
  wire \Q1_s1_reg[10]_i_2_n_6 ;
  wire \Q1_s1_reg[10]_i_2_n_7 ;
  wire \Q1_s1_reg[11]_i_3_n_7 ;
  wire \Q1_s1_reg[2]_i_2_n_0 ;
  wire \Q1_s1_reg[2]_i_2_n_1 ;
  wire \Q1_s1_reg[2]_i_2_n_2 ;
  wire \Q1_s1_reg[2]_i_2_n_3 ;
  wire \Q1_s1_reg[2]_i_2_n_4 ;
  wire \Q1_s1_reg[2]_i_2_n_5 ;
  wire \Q1_s1_reg[2]_i_2_n_6 ;
  wire \Q1_s1_reg[2]_i_2_n_7 ;
  wire \Q1_s1_reg[6]_i_2_n_0 ;
  wire \Q1_s1_reg[6]_i_2_n_1 ;
  wire \Q1_s1_reg[6]_i_2_n_2 ;
  wire \Q1_s1_reg[6]_i_2_n_3 ;
  wire \Q1_s1_reg[6]_i_2_n_4 ;
  wire \Q1_s1_reg[6]_i_2_n_5 ;
  wire \Q1_s1_reg[6]_i_2_n_6 ;
  wire \Q1_s1_reg[6]_i_2_n_7 ;
  wire \R_s2_reg[0] ;
  wire [11:0]\a_reg_reg[11]_0 ;
  wire [11:0]\a_reg_reg[11]_1 ;
  wire [11:0]\b_reg_reg[11]_0 ;
  wire br_inst_n_0;
  wire br_inst_n_1;
  wire br_inst_n_10;
  wire br_inst_n_2;
  wire br_inst_n_3;
  wire br_inst_n_4;
  wire br_inst_n_5;
  wire br_inst_n_6;
  wire br_inst_n_7;
  wire br_inst_n_8;
  wire br_inst_n_9;
  wire \c0_s1_reg[0] ;
  wire clk;
  wire [23:0]product__0;
  wire product_n_74;
  wire product_n_75;
  wire product_n_76;
  wire product_n_77;
  wire product_n_78;
  wire product_n_79;
  wire product_n_80;
  wire product_n_81;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_3_O_UNCONNECTED ;
  wire NLW_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_product_OVERFLOW_UNCONNECTED;
  wire NLW_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_product_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_product_P_UNCONNECTED;
  wire [47:0]NLW_product_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_10 
       (.I0(product__0[22]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_7 
       (.I0(product__0[21]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_8 
       (.I0(product__0[20]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_9 
       (.I0(product__0[19]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[11]_i_4 
       (.I0(product__0[23]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_10 
       (.I0(product__0[11]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_7 
       (.I0(product__0[14]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_8 
       (.I0(product__0[13]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_9 
       (.I0(product__0[12]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_10 
       (.I0(product__0[15]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_7 
       (.I0(product__0[18]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_8 
       (.I0(product__0[17]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_9 
       (.I0(product__0[16]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_9_n_0 ));
  CARRY4 \Q1_s1_reg[10]_i_2 
       (.CI(\Q1_s1_reg[6]_i_2_n_0 ),
        .CO({\Q1_s1_reg[10]_i_2_n_0 ,\Q1_s1_reg[10]_i_2_n_1 ,\Q1_s1_reg[10]_i_2_n_2 ,\Q1_s1_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Q1_s1[10]_i_7_n_0 ,\Q1_s1[10]_i_8_n_0 ,\Q1_s1[10]_i_9_n_0 }),
        .O({\Q1_s1_reg[10]_i_2_n_4 ,\Q1_s1_reg[10]_i_2_n_5 ,\Q1_s1_reg[10]_i_2_n_6 ,\Q1_s1_reg[10]_i_2_n_7 }),
        .S({\Q1_s1[10]_i_10_n_0 ,br_inst_n_8,br_inst_n_9,br_inst_n_10}));
  CARRY4 \Q1_s1_reg[11]_i_3 
       (.CI(\Q1_s1_reg[10]_i_2_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_3_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_3_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_4_n_0 }));
  CARRY4 \Q1_s1_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_2_n_0 ,\Q1_s1_reg[2]_i_2_n_1 ,\Q1_s1_reg[2]_i_2_n_2 ,\Q1_s1_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[2]_i_7_n_0 ,\Q1_s1[2]_i_8_n_0 ,\Q1_s1[2]_i_9_n_0 ,\Q1_s1[2]_i_10_n_0 }),
        .O({\Q1_s1_reg[2]_i_2_n_4 ,\Q1_s1_reg[2]_i_2_n_5 ,\Q1_s1_reg[2]_i_2_n_6 ,\Q1_s1_reg[2]_i_2_n_7 }),
        .S({br_inst_n_0,br_inst_n_1,br_inst_n_2,br_inst_n_3}));
  CARRY4 \Q1_s1_reg[6]_i_2 
       (.CI(\Q1_s1_reg[2]_i_2_n_0 ),
        .CO({\Q1_s1_reg[6]_i_2_n_0 ,\Q1_s1_reg[6]_i_2_n_1 ,\Q1_s1_reg[6]_i_2_n_2 ,\Q1_s1_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[6]_i_7_n_0 ,\Q1_s1[6]_i_8_n_0 ,\Q1_s1[6]_i_9_n_0 ,\Q1_s1[6]_i_10_n_0 }),
        .O({\Q1_s1_reg[6]_i_2_n_4 ,\Q1_s1_reg[6]_i_2_n_5 ,\Q1_s1_reg[6]_i_2_n_6 ,\Q1_s1_reg[6]_i_2_n_7 }),
        .S({br_inst_n_4,br_inst_n_5,br_inst_n_6,br_inst_n_7}));
  FDCE \a_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [0]),
        .Q(\a_reg_reg[11]_0 [0]));
  FDCE \a_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [10]),
        .Q(\a_reg_reg[11]_0 [10]));
  FDCE \a_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [11]),
        .Q(\a_reg_reg[11]_0 [11]));
  FDCE \a_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [1]),
        .Q(\a_reg_reg[11]_0 [1]));
  FDCE \a_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [2]),
        .Q(\a_reg_reg[11]_0 [2]));
  FDCE \a_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [3]),
        .Q(\a_reg_reg[11]_0 [3]));
  FDCE \a_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [4]),
        .Q(\a_reg_reg[11]_0 [4]));
  FDCE \a_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [5]),
        .Q(\a_reg_reg[11]_0 [5]));
  FDCE \a_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [6]),
        .Q(\a_reg_reg[11]_0 [6]));
  FDCE \a_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [7]),
        .Q(\a_reg_reg[11]_0 [7]));
  FDCE \a_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [8]),
        .Q(\a_reg_reg[11]_0 [8]));
  FDCE \a_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\a_reg_reg[11]_1 [9]),
        .Q(\a_reg_reg[11]_0 [9]));
  FDCE \b_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [0]),
        .Q(Q[0]));
  FDCE \b_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [10]),
        .Q(Q[10]));
  FDCE \b_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [11]),
        .Q(Q[11]));
  FDCE \b_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [1]),
        .Q(Q[1]));
  FDCE \b_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [2]),
        .Q(Q[2]));
  FDCE \b_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [3]),
        .Q(Q[3]));
  FDCE \b_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [4]),
        .Q(Q[4]));
  FDCE \b_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [5]),
        .Q(Q[5]));
  FDCE \b_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [6]),
        .Q(Q[6]));
  FDCE \b_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [7]),
        .Q(Q[7]));
  FDCE \b_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [8]),
        .Q(Q[8]));
  FDCE \b_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\R_s2_reg[0] ),
        .D(\b_reg_reg[11]_0 [9]),
        .Q(Q[9]));
  design_1_polymul_axi_top_0_0_barrett_reduction_9 br_inst
       (.D(D),
        .O({\Q1_s1_reg[2]_i_2_n_4 ,\Q1_s1_reg[2]_i_2_n_5 ,\Q1_s1_reg[2]_i_2_n_6 ,\Q1_s1_reg[2]_i_2_n_7 }),
        .P(product__0),
        .\Q1_s1_reg[10]_0 ({\Q1_s1_reg[10]_i_2_n_4 ,\Q1_s1_reg[10]_i_2_n_5 ,\Q1_s1_reg[10]_i_2_n_6 ,\Q1_s1_reg[10]_i_2_n_7 }),
        .\Q1_s1_reg[11]_0 (\Q1_s1_reg[11]_i_3_n_7 ),
        .\Q1_s1_reg[6]_0 ({\Q1_s1_reg[6]_i_2_n_4 ,\Q1_s1_reg[6]_i_2_n_5 ,\Q1_s1_reg[6]_i_2_n_6 ,\Q1_s1_reg[6]_i_2_n_7 }),
        .\R_s2_reg[0]_0 (\R_s2_reg[0] ),
        .S({br_inst_n_0,br_inst_n_1,br_inst_n_2,br_inst_n_3}),
        .\c0_s1_reg[0]_0 (\c0_s1_reg[0] ),
        .clk(clk),
        .product({br_inst_n_4,br_inst_n_5,br_inst_n_6,br_inst_n_7}),
        .product_0({br_inst_n_8,br_inst_n_9,br_inst_n_10}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\a_reg_reg[11]_0 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_product_OVERFLOW_UNCONNECTED),
        .P({NLW_product_P_UNCONNECTED[47:32],product_n_74,product_n_75,product_n_76,product_n_77,product_n_78,product_n_79,product_n_80,product_n_81,product__0}),
        .PATTERNBDETECT(NLW_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "mod_multiplier" *) 
module design_1_polymul_axi_top_0_0_mod_multiplier_4
   (\R_s2_reg[13] ,
    \R_s2_reg[13]_0 ,
    \R_s2_reg[13]_1 ,
    \R_s2_reg[13]_2 ,
    \R_s2_reg[13]_3 ,
    \R_s2_reg[13]_4 ,
    \R_s2_reg[13]_5 ,
    \R_s2_reg[13]_6 ,
    \R_s2_reg[13]_7 ,
    \R_s2_reg[13]_8 ,
    \R_s2_reg[13]_9 ,
    \R_s2_reg[13]_10 ,
    clk,
    Q,
    product_0,
    \c0_s1_reg[0] ,
    \c1_s1_reg[0] );
  output \R_s2_reg[13] ;
  output \R_s2_reg[13]_0 ;
  output \R_s2_reg[13]_1 ;
  output \R_s2_reg[13]_2 ;
  output \R_s2_reg[13]_3 ;
  output \R_s2_reg[13]_4 ;
  output \R_s2_reg[13]_5 ;
  output \R_s2_reg[13]_6 ;
  output \R_s2_reg[13]_7 ;
  output \R_s2_reg[13]_8 ;
  output \R_s2_reg[13]_9 ;
  output \R_s2_reg[13]_10 ;
  input clk;
  input [11:0]Q;
  input [11:0]product_0;
  input \c0_s1_reg[0] ;
  input \c1_s1_reg[0] ;

  wire [11:0]Q;
  wire \Q1_s1[10]_i_10__3_n_0 ;
  wire \Q1_s1[10]_i_7__3_n_0 ;
  wire \Q1_s1[10]_i_8__3_n_0 ;
  wire \Q1_s1[10]_i_9__3_n_0 ;
  wire \Q1_s1[11]_i_4__3_n_0 ;
  wire \Q1_s1[2]_i_10__3_n_0 ;
  wire \Q1_s1[2]_i_7__3_n_0 ;
  wire \Q1_s1[2]_i_8__3_n_0 ;
  wire \Q1_s1[2]_i_9__3_n_0 ;
  wire \Q1_s1[6]_i_10__3_n_0 ;
  wire \Q1_s1[6]_i_7__3_n_0 ;
  wire \Q1_s1[6]_i_8__3_n_0 ;
  wire \Q1_s1[6]_i_9__3_n_0 ;
  wire \Q1_s1_reg[10]_i_2__3_n_0 ;
  wire \Q1_s1_reg[10]_i_2__3_n_1 ;
  wire \Q1_s1_reg[10]_i_2__3_n_2 ;
  wire \Q1_s1_reg[10]_i_2__3_n_3 ;
  wire \Q1_s1_reg[10]_i_2__3_n_4 ;
  wire \Q1_s1_reg[10]_i_2__3_n_5 ;
  wire \Q1_s1_reg[10]_i_2__3_n_6 ;
  wire \Q1_s1_reg[10]_i_2__3_n_7 ;
  wire \Q1_s1_reg[11]_i_3__3_n_7 ;
  wire \Q1_s1_reg[2]_i_2__3_n_0 ;
  wire \Q1_s1_reg[2]_i_2__3_n_1 ;
  wire \Q1_s1_reg[2]_i_2__3_n_2 ;
  wire \Q1_s1_reg[2]_i_2__3_n_3 ;
  wire \Q1_s1_reg[2]_i_2__3_n_4 ;
  wire \Q1_s1_reg[2]_i_2__3_n_5 ;
  wire \Q1_s1_reg[2]_i_2__3_n_6 ;
  wire \Q1_s1_reg[2]_i_2__3_n_7 ;
  wire \Q1_s1_reg[6]_i_2__3_n_0 ;
  wire \Q1_s1_reg[6]_i_2__3_n_1 ;
  wire \Q1_s1_reg[6]_i_2__3_n_2 ;
  wire \Q1_s1_reg[6]_i_2__3_n_3 ;
  wire \Q1_s1_reg[6]_i_2__3_n_4 ;
  wire \Q1_s1_reg[6]_i_2__3_n_5 ;
  wire \Q1_s1_reg[6]_i_2__3_n_6 ;
  wire \Q1_s1_reg[6]_i_2__3_n_7 ;
  wire \R_s2_reg[13] ;
  wire \R_s2_reg[13]_0 ;
  wire \R_s2_reg[13]_1 ;
  wire \R_s2_reg[13]_10 ;
  wire \R_s2_reg[13]_2 ;
  wire \R_s2_reg[13]_3 ;
  wire \R_s2_reg[13]_4 ;
  wire \R_s2_reg[13]_5 ;
  wire \R_s2_reg[13]_6 ;
  wire \R_s2_reg[13]_7 ;
  wire \R_s2_reg[13]_8 ;
  wire \R_s2_reg[13]_9 ;
  wire br_inst_n_0;
  wire br_inst_n_1;
  wire br_inst_n_10;
  wire br_inst_n_2;
  wire br_inst_n_3;
  wire br_inst_n_4;
  wire br_inst_n_5;
  wire br_inst_n_6;
  wire br_inst_n_7;
  wire br_inst_n_8;
  wire br_inst_n_9;
  wire \c0_s1_reg[0] ;
  wire \c1_s1_reg[0] ;
  wire clk;
  wire [11:0]product_0;
  wire [23:0]product__0;
  wire product_n_74;
  wire product_n_75;
  wire product_n_76;
  wire product_n_77;
  wire product_n_78;
  wire product_n_79;
  wire product_n_80;
  wire product_n_81;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_3__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_3__3_O_UNCONNECTED ;
  wire NLW_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_product_OVERFLOW_UNCONNECTED;
  wire NLW_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_product_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_product_P_UNCONNECTED;
  wire [47:0]NLW_product_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_10__3 
       (.I0(product__0[22]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_10__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_7__3 
       (.I0(product__0[21]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_7__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_8__3 
       (.I0(product__0[20]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_8__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_9__3 
       (.I0(product__0[19]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_9__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[11]_i_4__3 
       (.I0(product__0[23]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[11]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_10__3 
       (.I0(product__0[11]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_10__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_7__3 
       (.I0(product__0[14]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_7__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_8__3 
       (.I0(product__0[13]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_8__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_9__3 
       (.I0(product__0[12]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_9__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_10__3 
       (.I0(product__0[15]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_10__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_7__3 
       (.I0(product__0[18]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_7__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_8__3 
       (.I0(product__0[17]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_8__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_9__3 
       (.I0(product__0[16]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_9__3_n_0 ));
  CARRY4 \Q1_s1_reg[10]_i_2__3 
       (.CI(\Q1_s1_reg[6]_i_2__3_n_0 ),
        .CO({\Q1_s1_reg[10]_i_2__3_n_0 ,\Q1_s1_reg[10]_i_2__3_n_1 ,\Q1_s1_reg[10]_i_2__3_n_2 ,\Q1_s1_reg[10]_i_2__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Q1_s1[10]_i_7__3_n_0 ,\Q1_s1[10]_i_8__3_n_0 ,\Q1_s1[10]_i_9__3_n_0 }),
        .O({\Q1_s1_reg[10]_i_2__3_n_4 ,\Q1_s1_reg[10]_i_2__3_n_5 ,\Q1_s1_reg[10]_i_2__3_n_6 ,\Q1_s1_reg[10]_i_2__3_n_7 }),
        .S({\Q1_s1[10]_i_10__3_n_0 ,br_inst_n_8,br_inst_n_9,br_inst_n_10}));
  CARRY4 \Q1_s1_reg[11]_i_3__3 
       (.CI(\Q1_s1_reg[10]_i_2__3_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_3__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_3__3_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_3__3_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_4__3_n_0 }));
  CARRY4 \Q1_s1_reg[2]_i_2__3 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_2__3_n_0 ,\Q1_s1_reg[2]_i_2__3_n_1 ,\Q1_s1_reg[2]_i_2__3_n_2 ,\Q1_s1_reg[2]_i_2__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[2]_i_7__3_n_0 ,\Q1_s1[2]_i_8__3_n_0 ,\Q1_s1[2]_i_9__3_n_0 ,\Q1_s1[2]_i_10__3_n_0 }),
        .O({\Q1_s1_reg[2]_i_2__3_n_4 ,\Q1_s1_reg[2]_i_2__3_n_5 ,\Q1_s1_reg[2]_i_2__3_n_6 ,\Q1_s1_reg[2]_i_2__3_n_7 }),
        .S({br_inst_n_0,br_inst_n_1,br_inst_n_2,br_inst_n_3}));
  CARRY4 \Q1_s1_reg[6]_i_2__3 
       (.CI(\Q1_s1_reg[2]_i_2__3_n_0 ),
        .CO({\Q1_s1_reg[6]_i_2__3_n_0 ,\Q1_s1_reg[6]_i_2__3_n_1 ,\Q1_s1_reg[6]_i_2__3_n_2 ,\Q1_s1_reg[6]_i_2__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[6]_i_7__3_n_0 ,\Q1_s1[6]_i_8__3_n_0 ,\Q1_s1[6]_i_9__3_n_0 ,\Q1_s1[6]_i_10__3_n_0 }),
        .O({\Q1_s1_reg[6]_i_2__3_n_4 ,\Q1_s1_reg[6]_i_2__3_n_5 ,\Q1_s1_reg[6]_i_2__3_n_6 ,\Q1_s1_reg[6]_i_2__3_n_7 }),
        .S({br_inst_n_4,br_inst_n_5,br_inst_n_6,br_inst_n_7}));
  design_1_polymul_axi_top_0_0_barrett_reduction_8 br_inst
       (.O({\Q1_s1_reg[2]_i_2__3_n_4 ,\Q1_s1_reg[2]_i_2__3_n_5 ,\Q1_s1_reg[2]_i_2__3_n_6 ,\Q1_s1_reg[2]_i_2__3_n_7 }),
        .P(product__0),
        .\Q1_s1_reg[10]_0 ({\Q1_s1_reg[10]_i_2__3_n_4 ,\Q1_s1_reg[10]_i_2__3_n_5 ,\Q1_s1_reg[10]_i_2__3_n_6 ,\Q1_s1_reg[10]_i_2__3_n_7 }),
        .\Q1_s1_reg[11]_0 (\Q1_s1_reg[11]_i_3__3_n_7 ),
        .\Q1_s1_reg[6]_0 ({\Q1_s1_reg[6]_i_2__3_n_4 ,\Q1_s1_reg[6]_i_2__3_n_5 ,\Q1_s1_reg[6]_i_2__3_n_6 ,\Q1_s1_reg[6]_i_2__3_n_7 }),
        .\R_s2_reg[13]_0 (\R_s2_reg[13] ),
        .\R_s2_reg[13]_1 (\R_s2_reg[13]_0 ),
        .\R_s2_reg[13]_10 (\R_s2_reg[13]_9 ),
        .\R_s2_reg[13]_11 (\R_s2_reg[13]_10 ),
        .\R_s2_reg[13]_2 (\R_s2_reg[13]_1 ),
        .\R_s2_reg[13]_3 (\R_s2_reg[13]_2 ),
        .\R_s2_reg[13]_4 (\R_s2_reg[13]_3 ),
        .\R_s2_reg[13]_5 (\R_s2_reg[13]_4 ),
        .\R_s2_reg[13]_6 (\R_s2_reg[13]_5 ),
        .\R_s2_reg[13]_7 (\R_s2_reg[13]_6 ),
        .\R_s2_reg[13]_8 (\R_s2_reg[13]_7 ),
        .\R_s2_reg[13]_9 (\R_s2_reg[13]_8 ),
        .S({br_inst_n_0,br_inst_n_1,br_inst_n_2,br_inst_n_3}),
        .\c0_s1_reg[0]_0 (\c0_s1_reg[0] ),
        .\c1_s1_reg[0]_0 (\c1_s1_reg[0] ),
        .clk(clk),
        .product({br_inst_n_4,br_inst_n_5,br_inst_n_6,br_inst_n_7}),
        .product_0({br_inst_n_8,br_inst_n_9,br_inst_n_10}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,product_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_product_OVERFLOW_UNCONNECTED),
        .P({NLW_product_P_UNCONNECTED[47:32],product_n_74,product_n_75,product_n_76,product_n_77,product_n_78,product_n_79,product_n_80,product_n_81,product__0}),
        .PATTERNBDETECT(NLW_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "mod_multiplier" *) 
module design_1_polymul_axi_top_0_0_mod_multiplier_5
   (\R_s2_reg[13] ,
    \R_s2_reg[13]_0 ,
    \R_s2_reg[13]_1 ,
    \R_s2_reg[13]_2 ,
    \R_s2_reg[13]_3 ,
    \R_s2_reg[13]_4 ,
    \R_s2_reg[13]_5 ,
    \R_s2_reg[13]_6 ,
    \R_s2_reg[13]_7 ,
    \R_s2_reg[13]_8 ,
    \R_s2_reg[13]_9 ,
    \R_s2_reg[13]_10 ,
    clk,
    Q,
    product_0,
    \c0_s1_reg[0] ,
    \R_s2_reg[0] );
  output \R_s2_reg[13] ;
  output \R_s2_reg[13]_0 ;
  output \R_s2_reg[13]_1 ;
  output \R_s2_reg[13]_2 ;
  output \R_s2_reg[13]_3 ;
  output \R_s2_reg[13]_4 ;
  output \R_s2_reg[13]_5 ;
  output \R_s2_reg[13]_6 ;
  output \R_s2_reg[13]_7 ;
  output \R_s2_reg[13]_8 ;
  output \R_s2_reg[13]_9 ;
  output \R_s2_reg[13]_10 ;
  input clk;
  input [11:0]Q;
  input [11:0]product_0;
  input \c0_s1_reg[0] ;
  input \R_s2_reg[0] ;

  wire [11:0]Q;
  wire \Q1_s1[10]_i_10__2_n_0 ;
  wire \Q1_s1[10]_i_7__2_n_0 ;
  wire \Q1_s1[10]_i_8__2_n_0 ;
  wire \Q1_s1[10]_i_9__2_n_0 ;
  wire \Q1_s1[11]_i_4__2_n_0 ;
  wire \Q1_s1[2]_i_10__2_n_0 ;
  wire \Q1_s1[2]_i_7__2_n_0 ;
  wire \Q1_s1[2]_i_8__2_n_0 ;
  wire \Q1_s1[2]_i_9__2_n_0 ;
  wire \Q1_s1[6]_i_10__2_n_0 ;
  wire \Q1_s1[6]_i_7__2_n_0 ;
  wire \Q1_s1[6]_i_8__2_n_0 ;
  wire \Q1_s1[6]_i_9__2_n_0 ;
  wire \Q1_s1_reg[10]_i_2__2_n_0 ;
  wire \Q1_s1_reg[10]_i_2__2_n_1 ;
  wire \Q1_s1_reg[10]_i_2__2_n_2 ;
  wire \Q1_s1_reg[10]_i_2__2_n_3 ;
  wire \Q1_s1_reg[10]_i_2__2_n_4 ;
  wire \Q1_s1_reg[10]_i_2__2_n_5 ;
  wire \Q1_s1_reg[10]_i_2__2_n_6 ;
  wire \Q1_s1_reg[10]_i_2__2_n_7 ;
  wire \Q1_s1_reg[11]_i_3__2_n_7 ;
  wire \Q1_s1_reg[2]_i_2__2_n_0 ;
  wire \Q1_s1_reg[2]_i_2__2_n_1 ;
  wire \Q1_s1_reg[2]_i_2__2_n_2 ;
  wire \Q1_s1_reg[2]_i_2__2_n_3 ;
  wire \Q1_s1_reg[2]_i_2__2_n_4 ;
  wire \Q1_s1_reg[2]_i_2__2_n_5 ;
  wire \Q1_s1_reg[2]_i_2__2_n_6 ;
  wire \Q1_s1_reg[2]_i_2__2_n_7 ;
  wire \Q1_s1_reg[6]_i_2__2_n_0 ;
  wire \Q1_s1_reg[6]_i_2__2_n_1 ;
  wire \Q1_s1_reg[6]_i_2__2_n_2 ;
  wire \Q1_s1_reg[6]_i_2__2_n_3 ;
  wire \Q1_s1_reg[6]_i_2__2_n_4 ;
  wire \Q1_s1_reg[6]_i_2__2_n_5 ;
  wire \Q1_s1_reg[6]_i_2__2_n_6 ;
  wire \Q1_s1_reg[6]_i_2__2_n_7 ;
  wire \R_s2_reg[0] ;
  wire \R_s2_reg[13] ;
  wire \R_s2_reg[13]_0 ;
  wire \R_s2_reg[13]_1 ;
  wire \R_s2_reg[13]_10 ;
  wire \R_s2_reg[13]_2 ;
  wire \R_s2_reg[13]_3 ;
  wire \R_s2_reg[13]_4 ;
  wire \R_s2_reg[13]_5 ;
  wire \R_s2_reg[13]_6 ;
  wire \R_s2_reg[13]_7 ;
  wire \R_s2_reg[13]_8 ;
  wire \R_s2_reg[13]_9 ;
  wire br_inst_n_0;
  wire br_inst_n_1;
  wire br_inst_n_10;
  wire br_inst_n_2;
  wire br_inst_n_3;
  wire br_inst_n_4;
  wire br_inst_n_5;
  wire br_inst_n_6;
  wire br_inst_n_7;
  wire br_inst_n_8;
  wire br_inst_n_9;
  wire \c0_s1_reg[0] ;
  wire clk;
  wire [11:0]product_0;
  wire [23:0]product__0;
  wire product_n_74;
  wire product_n_75;
  wire product_n_76;
  wire product_n_77;
  wire product_n_78;
  wire product_n_79;
  wire product_n_80;
  wire product_n_81;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_3__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_3__2_O_UNCONNECTED ;
  wire NLW_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_product_OVERFLOW_UNCONNECTED;
  wire NLW_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_product_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_product_P_UNCONNECTED;
  wire [47:0]NLW_product_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_10__2 
       (.I0(product__0[22]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_10__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_7__2 
       (.I0(product__0[21]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_7__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_8__2 
       (.I0(product__0[20]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_8__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_9__2 
       (.I0(product__0[19]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[11]_i_4__2 
       (.I0(product__0[23]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[11]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_10__2 
       (.I0(product__0[11]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_10__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_7__2 
       (.I0(product__0[14]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_7__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_8__2 
       (.I0(product__0[13]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_8__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_9__2 
       (.I0(product__0[12]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_10__2 
       (.I0(product__0[15]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_10__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_7__2 
       (.I0(product__0[18]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_7__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_8__2 
       (.I0(product__0[17]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_8__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_9__2 
       (.I0(product__0[16]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_9__2_n_0 ));
  CARRY4 \Q1_s1_reg[10]_i_2__2 
       (.CI(\Q1_s1_reg[6]_i_2__2_n_0 ),
        .CO({\Q1_s1_reg[10]_i_2__2_n_0 ,\Q1_s1_reg[10]_i_2__2_n_1 ,\Q1_s1_reg[10]_i_2__2_n_2 ,\Q1_s1_reg[10]_i_2__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Q1_s1[10]_i_7__2_n_0 ,\Q1_s1[10]_i_8__2_n_0 ,\Q1_s1[10]_i_9__2_n_0 }),
        .O({\Q1_s1_reg[10]_i_2__2_n_4 ,\Q1_s1_reg[10]_i_2__2_n_5 ,\Q1_s1_reg[10]_i_2__2_n_6 ,\Q1_s1_reg[10]_i_2__2_n_7 }),
        .S({\Q1_s1[10]_i_10__2_n_0 ,br_inst_n_8,br_inst_n_9,br_inst_n_10}));
  CARRY4 \Q1_s1_reg[11]_i_3__2 
       (.CI(\Q1_s1_reg[10]_i_2__2_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_3__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_3__2_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_3__2_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_4__2_n_0 }));
  CARRY4 \Q1_s1_reg[2]_i_2__2 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_2__2_n_0 ,\Q1_s1_reg[2]_i_2__2_n_1 ,\Q1_s1_reg[2]_i_2__2_n_2 ,\Q1_s1_reg[2]_i_2__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[2]_i_7__2_n_0 ,\Q1_s1[2]_i_8__2_n_0 ,\Q1_s1[2]_i_9__2_n_0 ,\Q1_s1[2]_i_10__2_n_0 }),
        .O({\Q1_s1_reg[2]_i_2__2_n_4 ,\Q1_s1_reg[2]_i_2__2_n_5 ,\Q1_s1_reg[2]_i_2__2_n_6 ,\Q1_s1_reg[2]_i_2__2_n_7 }),
        .S({br_inst_n_0,br_inst_n_1,br_inst_n_2,br_inst_n_3}));
  CARRY4 \Q1_s1_reg[6]_i_2__2 
       (.CI(\Q1_s1_reg[2]_i_2__2_n_0 ),
        .CO({\Q1_s1_reg[6]_i_2__2_n_0 ,\Q1_s1_reg[6]_i_2__2_n_1 ,\Q1_s1_reg[6]_i_2__2_n_2 ,\Q1_s1_reg[6]_i_2__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[6]_i_7__2_n_0 ,\Q1_s1[6]_i_8__2_n_0 ,\Q1_s1[6]_i_9__2_n_0 ,\Q1_s1[6]_i_10__2_n_0 }),
        .O({\Q1_s1_reg[6]_i_2__2_n_4 ,\Q1_s1_reg[6]_i_2__2_n_5 ,\Q1_s1_reg[6]_i_2__2_n_6 ,\Q1_s1_reg[6]_i_2__2_n_7 }),
        .S({br_inst_n_4,br_inst_n_5,br_inst_n_6,br_inst_n_7}));
  design_1_polymul_axi_top_0_0_barrett_reduction_7 br_inst
       (.O({\Q1_s1_reg[2]_i_2__2_n_4 ,\Q1_s1_reg[2]_i_2__2_n_5 ,\Q1_s1_reg[2]_i_2__2_n_6 ,\Q1_s1_reg[2]_i_2__2_n_7 }),
        .P(product__0),
        .\Q1_s1_reg[10]_0 ({\Q1_s1_reg[10]_i_2__2_n_4 ,\Q1_s1_reg[10]_i_2__2_n_5 ,\Q1_s1_reg[10]_i_2__2_n_6 ,\Q1_s1_reg[10]_i_2__2_n_7 }),
        .\Q1_s1_reg[11]_0 (\Q1_s1_reg[11]_i_3__2_n_7 ),
        .\Q1_s1_reg[6]_0 ({\Q1_s1_reg[6]_i_2__2_n_4 ,\Q1_s1_reg[6]_i_2__2_n_5 ,\Q1_s1_reg[6]_i_2__2_n_6 ,\Q1_s1_reg[6]_i_2__2_n_7 }),
        .\R_s2_reg[0]_0 (\R_s2_reg[0] ),
        .\R_s2_reg[13]_0 (\R_s2_reg[13] ),
        .\R_s2_reg[13]_1 (\R_s2_reg[13]_0 ),
        .\R_s2_reg[13]_10 (\R_s2_reg[13]_9 ),
        .\R_s2_reg[13]_11 (\R_s2_reg[13]_10 ),
        .\R_s2_reg[13]_2 (\R_s2_reg[13]_1 ),
        .\R_s2_reg[13]_3 (\R_s2_reg[13]_2 ),
        .\R_s2_reg[13]_4 (\R_s2_reg[13]_3 ),
        .\R_s2_reg[13]_5 (\R_s2_reg[13]_4 ),
        .\R_s2_reg[13]_6 (\R_s2_reg[13]_5 ),
        .\R_s2_reg[13]_7 (\R_s2_reg[13]_6 ),
        .\R_s2_reg[13]_8 (\R_s2_reg[13]_7 ),
        .\R_s2_reg[13]_9 (\R_s2_reg[13]_8 ),
        .S({br_inst_n_0,br_inst_n_1,br_inst_n_2,br_inst_n_3}),
        .\c0_s1_reg[0]_0 (\c0_s1_reg[0] ),
        .clk(clk),
        .product({br_inst_n_4,br_inst_n_5,br_inst_n_6,br_inst_n_7}),
        .product_0({br_inst_n_8,br_inst_n_9,br_inst_n_10}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,product_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_product_OVERFLOW_UNCONNECTED),
        .P({NLW_product_P_UNCONNECTED[47:32],product_n_74,product_n_75,product_n_76,product_n_77,product_n_78,product_n_79,product_n_80,product_n_81,product__0}),
        .PATTERNBDETECT(NLW_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "mod_multiplier" *) 
module design_1_polymul_axi_top_0_0_mod_multiplier_6
   (resetn_0,
    \R_s2_reg[0] ,
    Q,
    \R_s2_reg[7] ,
    \R_s2_reg[9] ,
    \R_s2_reg[0]_0 ,
    \R_s2_reg[8] ,
    \R_s2_reg[10] ,
    \R_s2_reg[12] ,
    O,
    \m0_d_reg[3][7] ,
    \m0_d_reg[3][11] ,
    CO,
    \b_reg_reg[11]_0 ,
    clk,
    \b_reg_reg[10]_0 ,
    \b_reg_reg[9]_0 ,
    \b_reg_reg[8]_0 ,
    \b_reg_reg[7]_0 ,
    \b_reg_reg[6]_0 ,
    \b_reg_reg[5]_0 ,
    \b_reg_reg[4]_0 ,
    \b_reg_reg[3]_0 ,
    \b_reg_reg[2]_0 ,
    \b_reg_reg[1]_0 ,
    \b_reg_reg[0]_0 ,
    \c0_s1_reg[0] ,
    resetn,
    I66,
    \c_pkt_reg[3] ,
    \c_pkt_reg[7] ,
    \c_pkt_reg[11] ,
    D);
  output resetn_0;
  output [3:0]\R_s2_reg[0] ;
  output [12:0]Q;
  output [3:0]\R_s2_reg[7] ;
  output [2:0]\R_s2_reg[9] ;
  output [3:0]\R_s2_reg[0]_0 ;
  output [3:0]\R_s2_reg[8] ;
  output [2:0]\R_s2_reg[10] ;
  output \R_s2_reg[12] ;
  output [3:0]O;
  output [3:0]\m0_d_reg[3][7] ;
  output [3:0]\m0_d_reg[3][11] ;
  output [0:0]CO;
  input \b_reg_reg[11]_0 ;
  input clk;
  input \b_reg_reg[10]_0 ;
  input \b_reg_reg[9]_0 ;
  input \b_reg_reg[8]_0 ;
  input \b_reg_reg[7]_0 ;
  input \b_reg_reg[6]_0 ;
  input \b_reg_reg[5]_0 ;
  input \b_reg_reg[4]_0 ;
  input \b_reg_reg[3]_0 ;
  input \b_reg_reg[2]_0 ;
  input \b_reg_reg[1]_0 ;
  input \b_reg_reg[0]_0 ;
  input \c0_s1_reg[0] ;
  input resetn;
  input [11:0]I66;
  input [3:0]\c_pkt_reg[3] ;
  input [3:0]\c_pkt_reg[7] ;
  input [3:0]\c_pkt_reg[11] ;
  input [12:0]D;

  wire [0:0]CO;
  wire [12:0]D;
  wire [11:0]I66;
  wire [3:0]O;
  wire [12:0]Q;
  wire \Q1_s1[10]_i_10__0_n_0 ;
  wire \Q1_s1[10]_i_7__0_n_0 ;
  wire \Q1_s1[10]_i_8__0_n_0 ;
  wire \Q1_s1[10]_i_9__0_n_0 ;
  wire \Q1_s1[11]_i_4__0_n_0 ;
  wire \Q1_s1[2]_i_10__0_n_0 ;
  wire \Q1_s1[2]_i_7__0_n_0 ;
  wire \Q1_s1[2]_i_8__0_n_0 ;
  wire \Q1_s1[2]_i_9__0_n_0 ;
  wire \Q1_s1[6]_i_10__0_n_0 ;
  wire \Q1_s1[6]_i_7__0_n_0 ;
  wire \Q1_s1[6]_i_8__0_n_0 ;
  wire \Q1_s1[6]_i_9__0_n_0 ;
  wire \Q1_s1_reg[10]_i_2__0_n_0 ;
  wire \Q1_s1_reg[10]_i_2__0_n_1 ;
  wire \Q1_s1_reg[10]_i_2__0_n_2 ;
  wire \Q1_s1_reg[10]_i_2__0_n_3 ;
  wire \Q1_s1_reg[10]_i_2__0_n_4 ;
  wire \Q1_s1_reg[10]_i_2__0_n_5 ;
  wire \Q1_s1_reg[10]_i_2__0_n_6 ;
  wire \Q1_s1_reg[10]_i_2__0_n_7 ;
  wire \Q1_s1_reg[11]_i_3__0_n_7 ;
  wire \Q1_s1_reg[2]_i_2__0_n_0 ;
  wire \Q1_s1_reg[2]_i_2__0_n_1 ;
  wire \Q1_s1_reg[2]_i_2__0_n_2 ;
  wire \Q1_s1_reg[2]_i_2__0_n_3 ;
  wire \Q1_s1_reg[2]_i_2__0_n_4 ;
  wire \Q1_s1_reg[2]_i_2__0_n_5 ;
  wire \Q1_s1_reg[2]_i_2__0_n_6 ;
  wire \Q1_s1_reg[2]_i_2__0_n_7 ;
  wire \Q1_s1_reg[6]_i_2__0_n_0 ;
  wire \Q1_s1_reg[6]_i_2__0_n_1 ;
  wire \Q1_s1_reg[6]_i_2__0_n_2 ;
  wire \Q1_s1_reg[6]_i_2__0_n_3 ;
  wire \Q1_s1_reg[6]_i_2__0_n_4 ;
  wire \Q1_s1_reg[6]_i_2__0_n_5 ;
  wire \Q1_s1_reg[6]_i_2__0_n_6 ;
  wire \Q1_s1_reg[6]_i_2__0_n_7 ;
  wire [3:0]\R_s2_reg[0] ;
  wire [3:0]\R_s2_reg[0]_0 ;
  wire [2:0]\R_s2_reg[10] ;
  wire \R_s2_reg[12] ;
  wire [3:0]\R_s2_reg[7] ;
  wire [3:0]\R_s2_reg[8] ;
  wire [2:0]\R_s2_reg[9] ;
  wire \a_reg_reg_n_0_[0] ;
  wire \a_reg_reg_n_0_[10] ;
  wire \a_reg_reg_n_0_[11] ;
  wire \a_reg_reg_n_0_[12] ;
  wire \a_reg_reg_n_0_[1] ;
  wire \a_reg_reg_n_0_[2] ;
  wire \a_reg_reg_n_0_[3] ;
  wire \a_reg_reg_n_0_[4] ;
  wire \a_reg_reg_n_0_[5] ;
  wire \a_reg_reg_n_0_[6] ;
  wire \a_reg_reg_n_0_[7] ;
  wire \a_reg_reg_n_0_[8] ;
  wire \a_reg_reg_n_0_[9] ;
  wire \b_reg_reg[0]_0 ;
  wire \b_reg_reg[10]_0 ;
  wire \b_reg_reg[11]_0 ;
  wire \b_reg_reg[1]_0 ;
  wire \b_reg_reg[2]_0 ;
  wire \b_reg_reg[3]_0 ;
  wire \b_reg_reg[4]_0 ;
  wire \b_reg_reg[5]_0 ;
  wire \b_reg_reg[6]_0 ;
  wire \b_reg_reg[7]_0 ;
  wire \b_reg_reg[8]_0 ;
  wire \b_reg_reg[9]_0 ;
  wire \b_reg_reg_n_0_[0] ;
  wire \b_reg_reg_n_0_[10] ;
  wire \b_reg_reg_n_0_[11] ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire \b_reg_reg_n_0_[8] ;
  wire \b_reg_reg_n_0_[9] ;
  wire br_inst_n_50;
  wire br_inst_n_51;
  wire br_inst_n_52;
  wire br_inst_n_53;
  wire br_inst_n_54;
  wire br_inst_n_55;
  wire br_inst_n_56;
  wire br_inst_n_57;
  wire br_inst_n_58;
  wire br_inst_n_59;
  wire br_inst_n_60;
  wire \c0_s1_reg[0] ;
  wire [3:0]\c_pkt_reg[11] ;
  wire [3:0]\c_pkt_reg[3] ;
  wire [3:0]\c_pkt_reg[7] ;
  wire clk;
  wire [3:0]\m0_d_reg[3][11] ;
  wire [3:0]\m0_d_reg[3][7] ;
  wire [23:0]product__0;
  wire product_n_74;
  wire product_n_75;
  wire product_n_76;
  wire product_n_77;
  wire product_n_78;
  wire product_n_79;
  wire product_n_80;
  wire product_n_81;
  wire resetn;
  wire resetn_0;
  wire [3:0]\NLW_Q1_s1_reg[11]_i_3__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q1_s1_reg[11]_i_3__0_O_UNCONNECTED ;
  wire NLW_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_product_OVERFLOW_UNCONNECTED;
  wire NLW_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_product_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_product_P_UNCONNECTED;
  wire [47:0]NLW_product_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_10__0 
       (.I0(product__0[22]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_7__0 
       (.I0(product__0[21]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_8__0 
       (.I0(product__0[20]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[10]_i_9__0 
       (.I0(product__0[19]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[10]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[11]_i_4__0 
       (.I0(product__0[23]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[11]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_10__0 
       (.I0(product__0[11]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_7__0 
       (.I0(product__0[14]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_8__0 
       (.I0(product__0[13]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[2]_i_9__0 
       (.I0(product__0[12]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[2]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_10__0 
       (.I0(product__0[15]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_7__0 
       (.I0(product__0[18]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_8__0 
       (.I0(product__0[17]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q1_s1[6]_i_9__0 
       (.I0(product__0[16]),
        .I1(\c0_s1_reg[0] ),
        .O(\Q1_s1[6]_i_9__0_n_0 ));
  CARRY4 \Q1_s1_reg[10]_i_2__0 
       (.CI(\Q1_s1_reg[6]_i_2__0_n_0 ),
        .CO({\Q1_s1_reg[10]_i_2__0_n_0 ,\Q1_s1_reg[10]_i_2__0_n_1 ,\Q1_s1_reg[10]_i_2__0_n_2 ,\Q1_s1_reg[10]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Q1_s1[10]_i_7__0_n_0 ,\Q1_s1[10]_i_8__0_n_0 ,\Q1_s1[10]_i_9__0_n_0 }),
        .O({\Q1_s1_reg[10]_i_2__0_n_4 ,\Q1_s1_reg[10]_i_2__0_n_5 ,\Q1_s1_reg[10]_i_2__0_n_6 ,\Q1_s1_reg[10]_i_2__0_n_7 }),
        .S({\Q1_s1[10]_i_10__0_n_0 ,br_inst_n_58,br_inst_n_59,br_inst_n_60}));
  CARRY4 \Q1_s1_reg[11]_i_3__0 
       (.CI(\Q1_s1_reg[10]_i_2__0_n_0 ),
        .CO(\NLW_Q1_s1_reg[11]_i_3__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q1_s1_reg[11]_i_3__0_O_UNCONNECTED [3:1],\Q1_s1_reg[11]_i_3__0_n_7 }),
        .S({1'b0,1'b0,1'b0,\Q1_s1[11]_i_4__0_n_0 }));
  CARRY4 \Q1_s1_reg[2]_i_2__0 
       (.CI(1'b0),
        .CO({\Q1_s1_reg[2]_i_2__0_n_0 ,\Q1_s1_reg[2]_i_2__0_n_1 ,\Q1_s1_reg[2]_i_2__0_n_2 ,\Q1_s1_reg[2]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[2]_i_7__0_n_0 ,\Q1_s1[2]_i_8__0_n_0 ,\Q1_s1[2]_i_9__0_n_0 ,\Q1_s1[2]_i_10__0_n_0 }),
        .O({\Q1_s1_reg[2]_i_2__0_n_4 ,\Q1_s1_reg[2]_i_2__0_n_5 ,\Q1_s1_reg[2]_i_2__0_n_6 ,\Q1_s1_reg[2]_i_2__0_n_7 }),
        .S({br_inst_n_50,br_inst_n_51,br_inst_n_52,br_inst_n_53}));
  CARRY4 \Q1_s1_reg[6]_i_2__0 
       (.CI(\Q1_s1_reg[2]_i_2__0_n_0 ),
        .CO({\Q1_s1_reg[6]_i_2__0_n_0 ,\Q1_s1_reg[6]_i_2__0_n_1 ,\Q1_s1_reg[6]_i_2__0_n_2 ,\Q1_s1_reg[6]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q1_s1[6]_i_7__0_n_0 ,\Q1_s1[6]_i_8__0_n_0 ,\Q1_s1[6]_i_9__0_n_0 ,\Q1_s1[6]_i_10__0_n_0 }),
        .O({\Q1_s1_reg[6]_i_2__0_n_4 ,\Q1_s1_reg[6]_i_2__0_n_5 ,\Q1_s1_reg[6]_i_2__0_n_6 ,\Q1_s1_reg[6]_i_2__0_n_7 }),
        .S({br_inst_n_54,br_inst_n_55,br_inst_n_56,br_inst_n_57}));
  FDCE \a_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[0]),
        .Q(\a_reg_reg_n_0_[0] ));
  FDCE \a_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[10]),
        .Q(\a_reg_reg_n_0_[10] ));
  FDCE \a_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[11]),
        .Q(\a_reg_reg_n_0_[11] ));
  FDCE \a_reg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[12]),
        .Q(\a_reg_reg_n_0_[12] ));
  FDCE \a_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[1]),
        .Q(\a_reg_reg_n_0_[1] ));
  FDCE \a_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[2]),
        .Q(\a_reg_reg_n_0_[2] ));
  FDCE \a_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[3]),
        .Q(\a_reg_reg_n_0_[3] ));
  FDCE \a_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[4]),
        .Q(\a_reg_reg_n_0_[4] ));
  FDCE \a_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[5]),
        .Q(\a_reg_reg_n_0_[5] ));
  FDCE \a_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[6]),
        .Q(\a_reg_reg_n_0_[6] ));
  FDCE \a_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[7]),
        .Q(\a_reg_reg_n_0_[7] ));
  FDCE \a_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[8]),
        .Q(\a_reg_reg_n_0_[8] ));
  FDCE \a_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[9]),
        .Q(\a_reg_reg_n_0_[9] ));
  FDCE \b_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[0]_0 ),
        .Q(\b_reg_reg_n_0_[0] ));
  FDCE \b_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[10]_0 ),
        .Q(\b_reg_reg_n_0_[10] ));
  FDCE \b_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[11]_0 ),
        .Q(\b_reg_reg_n_0_[11] ));
  FDCE \b_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[1]_0 ),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE \b_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[2]_0 ),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE \b_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[3]_0 ),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE \b_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[4]_0 ),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE \b_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[5]_0 ),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE \b_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[6]_0 ),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE \b_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[7]_0 ),
        .Q(\b_reg_reg_n_0_[7] ));
  FDCE \b_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[8]_0 ),
        .Q(\b_reg_reg_n_0_[8] ));
  FDCE \b_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b_reg_reg[9]_0 ),
        .Q(\b_reg_reg_n_0_[9] ));
  design_1_polymul_axi_top_0_0_barrett_reduction br_inst
       (.CO(CO),
        .I66(I66),
        .O({\Q1_s1_reg[2]_i_2__0_n_4 ,\Q1_s1_reg[2]_i_2__0_n_5 ,\Q1_s1_reg[2]_i_2__0_n_6 ,\Q1_s1_reg[2]_i_2__0_n_7 }),
        .P(product__0),
        .Q(Q),
        .\Q1_s1_reg[10]_0 ({\Q1_s1_reg[10]_i_2__0_n_4 ,\Q1_s1_reg[10]_i_2__0_n_5 ,\Q1_s1_reg[10]_i_2__0_n_6 ,\Q1_s1_reg[10]_i_2__0_n_7 }),
        .\Q1_s1_reg[11]_0 (\Q1_s1_reg[11]_i_3__0_n_7 ),
        .\Q1_s1_reg[6]_0 ({\Q1_s1_reg[6]_i_2__0_n_4 ,\Q1_s1_reg[6]_i_2__0_n_5 ,\Q1_s1_reg[6]_i_2__0_n_6 ,\Q1_s1_reg[6]_i_2__0_n_7 }),
        .\R_s2_reg[0]_0 (\R_s2_reg[0] ),
        .\R_s2_reg[0]_1 (\R_s2_reg[0]_0 ),
        .\R_s2_reg[10]_0 (\R_s2_reg[10] ),
        .\R_s2_reg[12]_0 (\R_s2_reg[12] ),
        .\R_s2_reg[7]_0 (\R_s2_reg[7] ),
        .\R_s2_reg[8]_0 (\R_s2_reg[8] ),
        .\R_s2_reg[9]_0 (\R_s2_reg[9] ),
        .S({br_inst_n_50,br_inst_n_51,br_inst_n_52,br_inst_n_53}),
        .\c0_s1_reg[0]_0 (\c0_s1_reg[0] ),
        .\c_pkt_reg[11] (\c_pkt_reg[11] ),
        .\c_pkt_reg[3] (\c_pkt_reg[3] ),
        .\c_pkt_reg[7] (\c_pkt_reg[7] ),
        .clk(clk),
        .\m0_d_reg[3][11] (\m0_d_reg[3][11] ),
        .\m0_d_reg[3][3] (O),
        .\m0_d_reg[3][7] (\m0_d_reg[3][7] ),
        .product({br_inst_n_54,br_inst_n_55,br_inst_n_56,br_inst_n_57}),
        .product_0({br_inst_n_58,br_inst_n_59,br_inst_n_60}),
        .resetn(resetn),
        .resetn_0(resetn_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\a_reg_reg_n_0_[12] ,\a_reg_reg_n_0_[11] ,\a_reg_reg_n_0_[10] ,\a_reg_reg_n_0_[9] ,\a_reg_reg_n_0_[8] ,\a_reg_reg_n_0_[7] ,\a_reg_reg_n_0_[6] ,\a_reg_reg_n_0_[5] ,\a_reg_reg_n_0_[4] ,\a_reg_reg_n_0_[3] ,\a_reg_reg_n_0_[2] ,\a_reg_reg_n_0_[1] ,\a_reg_reg_n_0_[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\b_reg_reg_n_0_[11] ,\b_reg_reg_n_0_[10] ,\b_reg_reg_n_0_[9] ,\b_reg_reg_n_0_[8] ,\b_reg_reg_n_0_[7] ,\b_reg_reg_n_0_[6] ,\b_reg_reg_n_0_[5] ,\b_reg_reg_n_0_[4] ,\b_reg_reg_n_0_[3] ,\b_reg_reg_n_0_[2] ,\b_reg_reg_n_0_[1] ,\b_reg_reg_n_0_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_product_OVERFLOW_UNCONNECTED),
        .P({NLW_product_P_UNCONNECTED[47:32],product_n_74,product_n_75,product_n_76,product_n_77,product_n_78,product_n_79,product_n_80,product_n_81,product__0}),
        .PATTERNBDETECT(NLW_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_product_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "mod_subtractor" *) 
module design_1_polymul_axi_top_0_0_mod_subtractor
   (u,
    O,
    \ag_bu_mode_d1_reg[0]_rep__0 ,
    \ag_bu_mode_d1_reg[0]_rep__0_0 ,
    CO,
    D,
    Q,
    u_carry__1_0,
    sum_signed_carry__1_0,
    \a2_reg_reg[3] ,
    S,
    \a2_reg_reg[7] ,
    \a2_reg_reg[11] );
  output [11:0]u;
  output [3:0]O;
  output [3:0]\ag_bu_mode_d1_reg[0]_rep__0 ;
  output [3:0]\ag_bu_mode_d1_reg[0]_rep__0_0 ;
  output [0:0]CO;
  output [11:0]D;
  input [11:0]Q;
  input [11:0]u_carry__1_0;
  input sum_signed_carry__1_0;
  input \a2_reg_reg[3] ;
  input [3:0]S;
  input [3:0]\a2_reg_reg[7] ;
  input [3:0]\a2_reg_reg[11] ;

  wire [0:0]CO;
  wire [11:0]D;
  wire [3:0]O;
  wire [11:0]Q;
  wire [3:0]S;
  wire \a2_reg[11]_i_2__0_n_0 ;
  wire \a2_reg[11]_i_3__0_n_0 ;
  wire \a2_reg[11]_i_4__0_n_0 ;
  wire \a2_reg[3]_i_2__0_n_0 ;
  wire \a2_reg[7]_i_2__0_n_0 ;
  wire [3:0]\a2_reg_reg[11] ;
  wire \a2_reg_reg[11]_i_1__0_n_1 ;
  wire \a2_reg_reg[11]_i_1__0_n_2 ;
  wire \a2_reg_reg[11]_i_1__0_n_3 ;
  wire \a2_reg_reg[3] ;
  wire \a2_reg_reg[3]_i_1__0_n_0 ;
  wire \a2_reg_reg[3]_i_1__0_n_1 ;
  wire \a2_reg_reg[3]_i_1__0_n_2 ;
  wire \a2_reg_reg[3]_i_1__0_n_3 ;
  wire [3:0]\a2_reg_reg[7] ;
  wire \a2_reg_reg[7]_i_1__0_n_0 ;
  wire \a2_reg_reg[7]_i_1__0_n_1 ;
  wire \a2_reg_reg[7]_i_1__0_n_2 ;
  wire \a2_reg_reg[7]_i_1__0_n_3 ;
  wire [3:0]\ag_bu_mode_d1_reg[0]_rep__0 ;
  wire [3:0]\ag_bu_mode_d1_reg[0]_rep__0_0 ;
  wire sum_signed_carry__0_i_1__3_n_0;
  wire sum_signed_carry__0_i_2__3_n_0;
  wire sum_signed_carry__0_i_3__3_n_0;
  wire sum_signed_carry__0_i_4__3_n_0;
  wire sum_signed_carry__0_i_5__1_n_0;
  wire sum_signed_carry__0_n_0;
  wire sum_signed_carry__0_n_1;
  wire sum_signed_carry__0_n_2;
  wire sum_signed_carry__0_n_3;
  wire sum_signed_carry__1_0;
  wire sum_signed_carry__1_i_1__3_n_0;
  wire sum_signed_carry__1_i_2__2_n_0;
  wire sum_signed_carry__1_i_3__2_n_0;
  wire sum_signed_carry__1_i_4__3_n_0;
  wire sum_signed_carry__1_i_5__2_n_0;
  wire sum_signed_carry__1_i_6__2_n_0;
  wire sum_signed_carry__1_i_7__2_n_0;
  wire sum_signed_carry__1_n_1;
  wire sum_signed_carry__1_n_2;
  wire sum_signed_carry__1_n_3;
  wire sum_signed_carry_i_1__3_n_0;
  wire sum_signed_carry_i_2__3_n_0;
  wire sum_signed_carry_i_3__3_n_0;
  wire sum_signed_carry_i_4__3_n_0;
  wire sum_signed_carry_i_5__2_n_0;
  wire sum_signed_carry_n_0;
  wire sum_signed_carry_n_1;
  wire sum_signed_carry_n_2;
  wire sum_signed_carry_n_3;
  wire [11:0]u;
  wire u_carry__0_i_1__0_n_0;
  wire u_carry__0_i_2__0_n_0;
  wire u_carry__0_i_3__0_n_0;
  wire u_carry__0_i_4__0_n_0;
  wire u_carry__0_n_0;
  wire u_carry__0_n_1;
  wire u_carry__0_n_2;
  wire u_carry__0_n_3;
  wire [11:0]u_carry__1_0;
  wire u_carry__1_i_1__0_n_0;
  wire u_carry__1_i_2__0_n_0;
  wire u_carry__1_i_3__0_n_0;
  wire u_carry__1_i_4__0_n_0;
  wire u_carry__1_n_0;
  wire u_carry__1_n_1;
  wire u_carry__1_n_2;
  wire u_carry__1_n_3;
  wire u_carry_i_1__0_n_0;
  wire u_carry_i_2__0_n_0;
  wire u_carry_i_3__0_n_0;
  wire u_carry_i_4__0_n_0;
  wire u_carry_n_0;
  wire u_carry_n_1;
  wire u_carry_n_2;
  wire u_carry_n_3;
  wire [3:3]\NLW_a2_reg_reg[11]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]NLW_sum_signed_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_sum_signed_carry_i_6__0_CO_UNCONNECTED;
  wire [3:0]NLW_sum_signed_carry_i_6__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hD0)) 
    \a2_reg[11]_i_2__0 
       (.I0(CO),
        .I1(u[0]),
        .I2(\a2_reg_reg[3] ),
        .O(\a2_reg[11]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a2_reg[11]_i_3__0 
       (.I0(\a2_reg_reg[3] ),
        .I1(u[0]),
        .O(\a2_reg[11]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \a2_reg[11]_i_4__0 
       (.I0(u[0]),
        .I1(\a2_reg_reg[3] ),
        .I2(CO),
        .O(\a2_reg[11]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \a2_reg[3]_i_2__0 
       (.I0(CO),
        .I1(u[0]),
        .I2(\a2_reg_reg[3] ),
        .O(\a2_reg[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a2_reg[7]_i_2__0 
       (.I0(\a2_reg_reg[3] ),
        .I1(u[0]),
        .O(\a2_reg[7]_i_2__0_n_0 ));
  CARRY4 \a2_reg_reg[11]_i_1__0 
       (.CI(\a2_reg_reg[7]_i_1__0_n_0 ),
        .CO({\NLW_a2_reg_reg[11]_i_1__0_CO_UNCONNECTED [3],\a2_reg_reg[11]_i_1__0_n_1 ,\a2_reg_reg[11]_i_1__0_n_2 ,\a2_reg_reg[11]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\a2_reg[11]_i_2__0_n_0 ,\a2_reg[11]_i_3__0_n_0 ,\a2_reg[11]_i_4__0_n_0 }),
        .O(D[11:8]),
        .S(\a2_reg_reg[11] ));
  CARRY4 \a2_reg_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\a2_reg_reg[3]_i_1__0_n_0 ,\a2_reg_reg[3]_i_1__0_n_1 ,\a2_reg_reg[3]_i_1__0_n_2 ,\a2_reg_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\a2_reg[3]_i_2__0_n_0 }),
        .O(D[3:0]),
        .S(S));
  CARRY4 \a2_reg_reg[7]_i_1__0 
       (.CI(\a2_reg_reg[3]_i_1__0_n_0 ),
        .CO({\a2_reg_reg[7]_i_1__0_n_0 ,\a2_reg_reg[7]_i_1__0_n_1 ,\a2_reg_reg[7]_i_1__0_n_2 ,\a2_reg_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\a2_reg[7]_i_2__0_n_0 ,1'b0,1'b0,1'b0}),
        .O(D[7:4]),
        .S(\a2_reg_reg[7] ));
  CARRY4 sum_signed_carry
       (.CI(1'b0),
        .CO({sum_signed_carry_n_0,sum_signed_carry_n_1,sum_signed_carry_n_2,sum_signed_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_signed_carry_i_1__3_n_0}),
        .O(O),
        .S({sum_signed_carry_i_2__3_n_0,sum_signed_carry_i_3__3_n_0,sum_signed_carry_i_4__3_n_0,sum_signed_carry_i_5__2_n_0}));
  CARRY4 sum_signed_carry__0
       (.CI(sum_signed_carry_n_0),
        .CO({sum_signed_carry__0_n_0,sum_signed_carry__0_n_1,sum_signed_carry__0_n_2,sum_signed_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_signed_carry__0_i_1__3_n_0,1'b0,1'b0,1'b0}),
        .O(\ag_bu_mode_d1_reg[0]_rep__0 ),
        .S({sum_signed_carry__0_i_2__3_n_0,sum_signed_carry__0_i_3__3_n_0,sum_signed_carry__0_i_4__3_n_0,sum_signed_carry__0_i_5__1_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_1__3
       (.I0(u[8]),
        .I1(sum_signed_carry__1_0),
        .I2(u[7]),
        .O(sum_signed_carry__0_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h3ACA)) 
    sum_signed_carry__0_i_2__3
       (.I0(u[7]),
        .I1(u[8]),
        .I2(sum_signed_carry__1_0),
        .I3(u[0]),
        .O(sum_signed_carry__0_i_2__3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_3__3
       (.I0(u[7]),
        .I1(sum_signed_carry__1_0),
        .I2(u[6]),
        .O(sum_signed_carry__0_i_3__3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_4__3
       (.I0(u[6]),
        .I1(sum_signed_carry__1_0),
        .I2(u[5]),
        .O(sum_signed_carry__0_i_4__3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_5__1
       (.I0(u[5]),
        .I1(sum_signed_carry__1_0),
        .I2(u[4]),
        .O(sum_signed_carry__0_i_5__1_n_0));
  CARRY4 sum_signed_carry__1
       (.CI(sum_signed_carry__0_n_0),
        .CO({NLW_sum_signed_carry__1_CO_UNCONNECTED[3],sum_signed_carry__1_n_1,sum_signed_carry__1_n_2,sum_signed_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sum_signed_carry__1_i_1__3_n_0,sum_signed_carry__1_i_2__2_n_0,sum_signed_carry__1_i_3__2_n_0}),
        .O(\ag_bu_mode_d1_reg[0]_rep__0_0 ),
        .S({sum_signed_carry__1_i_4__3_n_0,sum_signed_carry__1_i_5__2_n_0,sum_signed_carry__1_i_6__2_n_0,sum_signed_carry__1_i_7__2_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_1__3
       (.I0(u[11]),
        .I1(sum_signed_carry__1_0),
        .I2(u[10]),
        .O(sum_signed_carry__1_i_1__3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_2__2
       (.I0(u[10]),
        .I1(sum_signed_carry__1_0),
        .I2(u[9]),
        .O(sum_signed_carry__1_i_2__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_3__2
       (.I0(u[9]),
        .I1(sum_signed_carry__1_0),
        .I2(u[8]),
        .O(sum_signed_carry__1_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h0CA3)) 
    sum_signed_carry__1_i_4__3
       (.I0(u[0]),
        .I1(u[11]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__1_i_4__3_n_0));
  LUT5 #(
    .INIT(32'h33C3A5A5)) 
    sum_signed_carry__1_i_5__2
       (.I0(u[10]),
        .I1(u[11]),
        .I2(CO),
        .I3(u[0]),
        .I4(sum_signed_carry__1_0),
        .O(sum_signed_carry__1_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h3ACA)) 
    sum_signed_carry__1_i_6__2
       (.I0(u[9]),
        .I1(u[10]),
        .I2(sum_signed_carry__1_0),
        .I3(u[0]),
        .O(sum_signed_carry__1_i_6__2_n_0));
  LUT5 #(
    .INIT(32'hCCAAC355)) 
    sum_signed_carry__1_i_7__2
       (.I0(u[8]),
        .I1(u[9]),
        .I2(u[0]),
        .I3(sum_signed_carry__1_0),
        .I4(CO),
        .O(sum_signed_carry__1_i_7__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_1__3
       (.I0(u[1]),
        .I1(sum_signed_carry__1_0),
        .I2(u[0]),
        .O(sum_signed_carry_i_1__3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_2__3
       (.I0(u[4]),
        .I1(sum_signed_carry__1_0),
        .I2(u[3]),
        .O(sum_signed_carry_i_2__3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_3__3
       (.I0(u[3]),
        .I1(sum_signed_carry__1_0),
        .I2(u[2]),
        .O(sum_signed_carry_i_3__3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_4__3
       (.I0(u[2]),
        .I1(sum_signed_carry__1_0),
        .I2(u[1]),
        .O(sum_signed_carry_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h59C3)) 
    sum_signed_carry_i_5__2
       (.I0(u[1]),
        .I1(CO),
        .I2(u[0]),
        .I3(sum_signed_carry__1_0),
        .O(sum_signed_carry_i_5__2_n_0));
  CARRY4 sum_signed_carry_i_6__0
       (.CI(u_carry__1_n_0),
        .CO({NLW_sum_signed_carry_i_6__0_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sum_signed_carry_i_6__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 u_carry
       (.CI(1'b0),
        .CO({u_carry_n_0,u_carry_n_1,u_carry_n_2,u_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(u[3:0]),
        .S({u_carry_i_1__0_n_0,u_carry_i_2__0_n_0,u_carry_i_3__0_n_0,u_carry_i_4__0_n_0}));
  CARRY4 u_carry__0
       (.CI(u_carry_n_0),
        .CO({u_carry__0_n_0,u_carry__0_n_1,u_carry__0_n_2,u_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(u[7:4]),
        .S({u_carry__0_i_1__0_n_0,u_carry__0_i_2__0_n_0,u_carry__0_i_3__0_n_0,u_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__0_i_1__0
       (.I0(u_carry__1_0[7]),
        .I1(Q[7]),
        .O(u_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__0_i_2__0
       (.I0(u_carry__1_0[6]),
        .I1(Q[6]),
        .O(u_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__0_i_3__0
       (.I0(u_carry__1_0[5]),
        .I1(Q[5]),
        .O(u_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__0_i_4__0
       (.I0(u_carry__1_0[4]),
        .I1(Q[4]),
        .O(u_carry__0_i_4__0_n_0));
  CARRY4 u_carry__1
       (.CI(u_carry__0_n_0),
        .CO({u_carry__1_n_0,u_carry__1_n_1,u_carry__1_n_2,u_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(u[11:8]),
        .S({u_carry__1_i_1__0_n_0,u_carry__1_i_2__0_n_0,u_carry__1_i_3__0_n_0,u_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__1_i_1__0
       (.I0(u_carry__1_0[11]),
        .I1(Q[11]),
        .O(u_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__1_i_2__0
       (.I0(u_carry__1_0[10]),
        .I1(Q[10]),
        .O(u_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__1_i_3__0
       (.I0(u_carry__1_0[9]),
        .I1(Q[9]),
        .O(u_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__1_i_4__0
       (.I0(u_carry__1_0[8]),
        .I1(Q[8]),
        .O(u_carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry_i_1__0
       (.I0(u_carry__1_0[3]),
        .I1(Q[3]),
        .O(u_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry_i_2__0
       (.I0(u_carry__1_0[2]),
        .I1(Q[2]),
        .O(u_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry_i_3__0
       (.I0(u_carry__1_0[1]),
        .I1(Q[1]),
        .O(u_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry_i_4__0
       (.I0(u_carry__1_0[0]),
        .I1(Q[0]),
        .O(u_carry_i_4__0_n_0));
endmodule

(* ORIG_REF_NAME = "mod_subtractor" *) 
module design_1_polymul_axi_top_0_0_mod_subtractor_17
   (O,
    \b1_reg_r_reg[7] ,
    \b1_reg_r_reg[11] ,
    \ag_bu_mode_d1_reg[0]_rep__0 ,
    \ag_bu_mode_d1_reg[0]_rep__0_0 ,
    \ag_bu_mode_d1_reg[0]_rep__0_1 ,
    CO,
    D,
    Q,
    u_carry__1_0,
    sum_signed_carry__1_0,
    \a2_reg_reg[3] ,
    S,
    \a2_reg_reg[7] ,
    \a2_reg_reg[11] );
  output [3:0]O;
  output [3:0]\b1_reg_r_reg[7] ;
  output [3:0]\b1_reg_r_reg[11] ;
  output [3:0]\ag_bu_mode_d1_reg[0]_rep__0 ;
  output [3:0]\ag_bu_mode_d1_reg[0]_rep__0_0 ;
  output [3:0]\ag_bu_mode_d1_reg[0]_rep__0_1 ;
  output [0:0]CO;
  output [11:0]D;
  input [11:0]Q;
  input [11:0]u_carry__1_0;
  input sum_signed_carry__1_0;
  input \a2_reg_reg[3] ;
  input [3:0]S;
  input [3:0]\a2_reg_reg[7] ;
  input [3:0]\a2_reg_reg[11] ;

  wire [0:0]CO;
  wire [11:0]D;
  wire [3:0]O;
  wire [11:0]Q;
  wire [3:0]S;
  wire \a2_reg[11]_i_2_n_0 ;
  wire \a2_reg[11]_i_3_n_0 ;
  wire \a2_reg[11]_i_4_n_0 ;
  wire \a2_reg[3]_i_2_n_0 ;
  wire \a2_reg[7]_i_2_n_0 ;
  wire [3:0]\a2_reg_reg[11] ;
  wire \a2_reg_reg[11]_i_1_n_1 ;
  wire \a2_reg_reg[11]_i_1_n_2 ;
  wire \a2_reg_reg[11]_i_1_n_3 ;
  wire \a2_reg_reg[3] ;
  wire \a2_reg_reg[3]_i_1_n_0 ;
  wire \a2_reg_reg[3]_i_1_n_1 ;
  wire \a2_reg_reg[3]_i_1_n_2 ;
  wire \a2_reg_reg[3]_i_1_n_3 ;
  wire [3:0]\a2_reg_reg[7] ;
  wire \a2_reg_reg[7]_i_1_n_0 ;
  wire \a2_reg_reg[7]_i_1_n_1 ;
  wire \a2_reg_reg[7]_i_1_n_2 ;
  wire \a2_reg_reg[7]_i_1_n_3 ;
  wire [3:0]\ag_bu_mode_d1_reg[0]_rep__0 ;
  wire [3:0]\ag_bu_mode_d1_reg[0]_rep__0_0 ;
  wire [3:0]\ag_bu_mode_d1_reg[0]_rep__0_1 ;
  wire [3:0]\b1_reg_r_reg[11] ;
  wire [3:0]\b1_reg_r_reg[7] ;
  wire sum_signed_carry__0_i_1__2_n_0;
  wire sum_signed_carry__0_i_2__2_n_0;
  wire sum_signed_carry__0_i_3__2_n_0;
  wire sum_signed_carry__0_i_4__2_n_0;
  wire sum_signed_carry__0_i_5__0_n_0;
  wire sum_signed_carry__0_n_0;
  wire sum_signed_carry__0_n_1;
  wire sum_signed_carry__0_n_2;
  wire sum_signed_carry__0_n_3;
  wire sum_signed_carry__1_0;
  wire sum_signed_carry__1_i_1__2_n_0;
  wire sum_signed_carry__1_i_2__1_n_0;
  wire sum_signed_carry__1_i_3__1_n_0;
  wire sum_signed_carry__1_i_4__2_n_0;
  wire sum_signed_carry__1_i_5__1_n_0;
  wire sum_signed_carry__1_i_6__1_n_0;
  wire sum_signed_carry__1_i_7__1_n_0;
  wire sum_signed_carry__1_n_1;
  wire sum_signed_carry__1_n_2;
  wire sum_signed_carry__1_n_3;
  wire sum_signed_carry_i_1__2_n_0;
  wire sum_signed_carry_i_2__2_n_0;
  wire sum_signed_carry_i_3__2_n_0;
  wire sum_signed_carry_i_4__2_n_0;
  wire sum_signed_carry_i_5__1_n_0;
  wire sum_signed_carry_n_0;
  wire sum_signed_carry_n_1;
  wire sum_signed_carry_n_2;
  wire sum_signed_carry_n_3;
  wire u_carry__0_i_1_n_0;
  wire u_carry__0_i_2_n_0;
  wire u_carry__0_i_3_n_0;
  wire u_carry__0_i_4_n_0;
  wire u_carry__0_n_0;
  wire u_carry__0_n_1;
  wire u_carry__0_n_2;
  wire u_carry__0_n_3;
  wire [11:0]u_carry__1_0;
  wire u_carry__1_i_1_n_0;
  wire u_carry__1_i_2_n_0;
  wire u_carry__1_i_3_n_0;
  wire u_carry__1_i_4_n_0;
  wire u_carry__1_n_0;
  wire u_carry__1_n_1;
  wire u_carry__1_n_2;
  wire u_carry__1_n_3;
  wire u_carry_i_1_n_0;
  wire u_carry_i_2_n_0;
  wire u_carry_i_3_n_0;
  wire u_carry_i_4_n_0;
  wire u_carry_n_0;
  wire u_carry_n_1;
  wire u_carry_n_2;
  wire u_carry_n_3;
  wire [3:3]\NLW_a2_reg_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_sum_signed_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_sum_signed_carry_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_sum_signed_carry_i_6_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hD0)) 
    \a2_reg[11]_i_2 
       (.I0(CO),
        .I1(O[0]),
        .I2(\a2_reg_reg[3] ),
        .O(\a2_reg[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a2_reg[11]_i_3 
       (.I0(\a2_reg_reg[3] ),
        .I1(O[0]),
        .O(\a2_reg[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \a2_reg[11]_i_4 
       (.I0(O[0]),
        .I1(\a2_reg_reg[3] ),
        .I2(CO),
        .O(\a2_reg[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \a2_reg[3]_i_2 
       (.I0(CO),
        .I1(O[0]),
        .I2(\a2_reg_reg[3] ),
        .O(\a2_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a2_reg[7]_i_2 
       (.I0(\a2_reg_reg[3] ),
        .I1(O[0]),
        .O(\a2_reg[7]_i_2_n_0 ));
  CARRY4 \a2_reg_reg[11]_i_1 
       (.CI(\a2_reg_reg[7]_i_1_n_0 ),
        .CO({\NLW_a2_reg_reg[11]_i_1_CO_UNCONNECTED [3],\a2_reg_reg[11]_i_1_n_1 ,\a2_reg_reg[11]_i_1_n_2 ,\a2_reg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\a2_reg[11]_i_2_n_0 ,\a2_reg[11]_i_3_n_0 ,\a2_reg[11]_i_4_n_0 }),
        .O(D[11:8]),
        .S(\a2_reg_reg[11] ));
  CARRY4 \a2_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\a2_reg_reg[3]_i_1_n_0 ,\a2_reg_reg[3]_i_1_n_1 ,\a2_reg_reg[3]_i_1_n_2 ,\a2_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\a2_reg[3]_i_2_n_0 }),
        .O(D[3:0]),
        .S(S));
  CARRY4 \a2_reg_reg[7]_i_1 
       (.CI(\a2_reg_reg[3]_i_1_n_0 ),
        .CO({\a2_reg_reg[7]_i_1_n_0 ,\a2_reg_reg[7]_i_1_n_1 ,\a2_reg_reg[7]_i_1_n_2 ,\a2_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\a2_reg[7]_i_2_n_0 ,1'b0,1'b0,1'b0}),
        .O(D[7:4]),
        .S(\a2_reg_reg[7] ));
  CARRY4 sum_signed_carry
       (.CI(1'b0),
        .CO({sum_signed_carry_n_0,sum_signed_carry_n_1,sum_signed_carry_n_2,sum_signed_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sum_signed_carry_i_1__2_n_0}),
        .O(\ag_bu_mode_d1_reg[0]_rep__0 ),
        .S({sum_signed_carry_i_2__2_n_0,sum_signed_carry_i_3__2_n_0,sum_signed_carry_i_4__2_n_0,sum_signed_carry_i_5__1_n_0}));
  CARRY4 sum_signed_carry__0
       (.CI(sum_signed_carry_n_0),
        .CO({sum_signed_carry__0_n_0,sum_signed_carry__0_n_1,sum_signed_carry__0_n_2,sum_signed_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_signed_carry__0_i_1__2_n_0,1'b0,1'b0,1'b0}),
        .O(\ag_bu_mode_d1_reg[0]_rep__0_0 ),
        .S({sum_signed_carry__0_i_2__2_n_0,sum_signed_carry__0_i_3__2_n_0,sum_signed_carry__0_i_4__2_n_0,sum_signed_carry__0_i_5__0_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_1__2
       (.I0(\b1_reg_r_reg[11] [0]),
        .I1(sum_signed_carry__1_0),
        .I2(\b1_reg_r_reg[7] [3]),
        .O(sum_signed_carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h3ACA)) 
    sum_signed_carry__0_i_2__2
       (.I0(\b1_reg_r_reg[7] [3]),
        .I1(\b1_reg_r_reg[11] [0]),
        .I2(sum_signed_carry__1_0),
        .I3(O[0]),
        .O(sum_signed_carry__0_i_2__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_3__2
       (.I0(\b1_reg_r_reg[7] [3]),
        .I1(sum_signed_carry__1_0),
        .I2(\b1_reg_r_reg[7] [2]),
        .O(sum_signed_carry__0_i_3__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_4__2
       (.I0(\b1_reg_r_reg[7] [2]),
        .I1(sum_signed_carry__1_0),
        .I2(\b1_reg_r_reg[7] [1]),
        .O(sum_signed_carry__0_i_4__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__0_i_5__0
       (.I0(\b1_reg_r_reg[7] [1]),
        .I1(sum_signed_carry__1_0),
        .I2(\b1_reg_r_reg[7] [0]),
        .O(sum_signed_carry__0_i_5__0_n_0));
  CARRY4 sum_signed_carry__1
       (.CI(sum_signed_carry__0_n_0),
        .CO({NLW_sum_signed_carry__1_CO_UNCONNECTED[3],sum_signed_carry__1_n_1,sum_signed_carry__1_n_2,sum_signed_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sum_signed_carry__1_i_1__2_n_0,sum_signed_carry__1_i_2__1_n_0,sum_signed_carry__1_i_3__1_n_0}),
        .O(\ag_bu_mode_d1_reg[0]_rep__0_1 ),
        .S({sum_signed_carry__1_i_4__2_n_0,sum_signed_carry__1_i_5__1_n_0,sum_signed_carry__1_i_6__1_n_0,sum_signed_carry__1_i_7__1_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_1__2
       (.I0(\b1_reg_r_reg[11] [3]),
        .I1(sum_signed_carry__1_0),
        .I2(\b1_reg_r_reg[11] [2]),
        .O(sum_signed_carry__1_i_1__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_2__1
       (.I0(\b1_reg_r_reg[11] [2]),
        .I1(sum_signed_carry__1_0),
        .I2(\b1_reg_r_reg[11] [1]),
        .O(sum_signed_carry__1_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry__1_i_3__1
       (.I0(\b1_reg_r_reg[11] [1]),
        .I1(sum_signed_carry__1_0),
        .I2(\b1_reg_r_reg[11] [0]),
        .O(sum_signed_carry__1_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h0CA3)) 
    sum_signed_carry__1_i_4__2
       (.I0(O[0]),
        .I1(\b1_reg_r_reg[11] [3]),
        .I2(sum_signed_carry__1_0),
        .I3(CO),
        .O(sum_signed_carry__1_i_4__2_n_0));
  LUT5 #(
    .INIT(32'h33C3A5A5)) 
    sum_signed_carry__1_i_5__1
       (.I0(\b1_reg_r_reg[11] [2]),
        .I1(\b1_reg_r_reg[11] [3]),
        .I2(CO),
        .I3(O[0]),
        .I4(sum_signed_carry__1_0),
        .O(sum_signed_carry__1_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h3ACA)) 
    sum_signed_carry__1_i_6__1
       (.I0(\b1_reg_r_reg[11] [1]),
        .I1(\b1_reg_r_reg[11] [2]),
        .I2(sum_signed_carry__1_0),
        .I3(O[0]),
        .O(sum_signed_carry__1_i_6__1_n_0));
  LUT5 #(
    .INIT(32'hCCAAC355)) 
    sum_signed_carry__1_i_7__1
       (.I0(\b1_reg_r_reg[11] [0]),
        .I1(\b1_reg_r_reg[11] [1]),
        .I2(O[0]),
        .I3(sum_signed_carry__1_0),
        .I4(CO),
        .O(sum_signed_carry__1_i_7__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_1__2
       (.I0(O[1]),
        .I1(sum_signed_carry__1_0),
        .I2(O[0]),
        .O(sum_signed_carry_i_1__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_2__2
       (.I0(\b1_reg_r_reg[7] [0]),
        .I1(sum_signed_carry__1_0),
        .I2(O[3]),
        .O(sum_signed_carry_i_2__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_3__2
       (.I0(O[3]),
        .I1(sum_signed_carry__1_0),
        .I2(O[2]),
        .O(sum_signed_carry_i_3__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_signed_carry_i_4__2
       (.I0(O[2]),
        .I1(sum_signed_carry__1_0),
        .I2(O[1]),
        .O(sum_signed_carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h59C3)) 
    sum_signed_carry_i_5__1
       (.I0(O[1]),
        .I1(CO),
        .I2(O[0]),
        .I3(sum_signed_carry__1_0),
        .O(sum_signed_carry_i_5__1_n_0));
  CARRY4 sum_signed_carry_i_6
       (.CI(u_carry__1_n_0),
        .CO({NLW_sum_signed_carry_i_6_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sum_signed_carry_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 u_carry
       (.CI(1'b0),
        .CO({u_carry_n_0,u_carry_n_1,u_carry_n_2,u_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(O),
        .S({u_carry_i_1_n_0,u_carry_i_2_n_0,u_carry_i_3_n_0,u_carry_i_4_n_0}));
  CARRY4 u_carry__0
       (.CI(u_carry_n_0),
        .CO({u_carry__0_n_0,u_carry__0_n_1,u_carry__0_n_2,u_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\b1_reg_r_reg[7] ),
        .S({u_carry__0_i_1_n_0,u_carry__0_i_2_n_0,u_carry__0_i_3_n_0,u_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__0_i_1
       (.I0(u_carry__1_0[7]),
        .I1(Q[7]),
        .O(u_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__0_i_2
       (.I0(u_carry__1_0[6]),
        .I1(Q[6]),
        .O(u_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__0_i_3
       (.I0(u_carry__1_0[5]),
        .I1(Q[5]),
        .O(u_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__0_i_4
       (.I0(u_carry__1_0[4]),
        .I1(Q[4]),
        .O(u_carry__0_i_4_n_0));
  CARRY4 u_carry__1
       (.CI(u_carry__0_n_0),
        .CO({u_carry__1_n_0,u_carry__1_n_1,u_carry__1_n_2,u_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\b1_reg_r_reg[11] ),
        .S({u_carry__1_i_1_n_0,u_carry__1_i_2_n_0,u_carry__1_i_3_n_0,u_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__1_i_1
       (.I0(u_carry__1_0[11]),
        .I1(Q[11]),
        .O(u_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__1_i_2
       (.I0(u_carry__1_0[10]),
        .I1(Q[10]),
        .O(u_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__1_i_3
       (.I0(u_carry__1_0[9]),
        .I1(Q[9]),
        .O(u_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry__1_i_4
       (.I0(u_carry__1_0[8]),
        .I1(Q[8]),
        .O(u_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry_i_1
       (.I0(u_carry__1_0[3]),
        .I1(Q[3]),
        .O(u_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry_i_2
       (.I0(u_carry__1_0[2]),
        .I1(Q[2]),
        .O(u_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry_i_3
       (.I0(u_carry__1_0[1]),
        .I1(Q[1]),
        .O(u_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    u_carry_i_4
       (.I0(u_carry__1_0[0]),
        .I1(Q[0]),
        .O(u_carry_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "polymul_axi_top" *) 
module design_1_polymul_axi_top_0_0_polymul_axi_top
   (resetn_0,
    state_dbg,
    Q,
    M_AXIS_S2MM_tvalid,
    s_ready_t_reg,
    clk,
    \c0_s1_reg[0] ,
    \c0_s1_reg[0]_0 ,
    \c0_s1_reg[0]_1 ,
    \c0_s1_reg[0]_2 ,
    \c0_s1_reg[0]_3 ,
    \c1_s1_reg[5] ,
    \c1_s1_reg[5]_0 ,
    resetn,
    S_AXIS_MM2S_tdata,
    S_AXIS_MM2S_tvalid,
    M_AXIS_S2MM_tready);
  output resetn_0;
  output [2:0]state_dbg;
  output [28:0]Q;
  output M_AXIS_S2MM_tvalid;
  output s_ready_t_reg;
  input clk;
  input \c0_s1_reg[0] ;
  input \c0_s1_reg[0]_0 ;
  input \c0_s1_reg[0]_1 ;
  input \c0_s1_reg[0]_2 ;
  input \c0_s1_reg[0]_3 ;
  input \c1_s1_reg[5] ;
  input \c1_s1_reg[5]_0 ;
  input resetn;
  input [23:0]S_AXIS_MM2S_tdata;
  input S_AXIS_MM2S_tvalid;
  input M_AXIS_S2MM_tready;

  wire M_AXIS_S2MM_tready;
  wire M_AXIS_S2MM_tvalid;
  wire [28:0]Q;
  wire [23:0]S_AXIS_MM2S_tdata;
  wire S_AXIS_MM2S_tvalid;
  wire \c0_s1_reg[0] ;
  wire \c0_s1_reg[0]_0 ;
  wire \c0_s1_reg[0]_1 ;
  wire \c0_s1_reg[0]_2 ;
  wire \c0_s1_reg[0]_3 ;
  wire \c1_s1_reg[5] ;
  wire \c1_s1_reg[5]_0 ;
  wire clk;
  wire [7:1]cnt;
  wire \cnt[7]_i_4_n_0 ;
  wire \cnt[7]_i_5_n_0 ;
  wire cnt_6;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire [23:0]isif_data_dout;
  wire [2:0]next_state__0;
  wire [23:0]osif_data_din;
  wire \osif_fifo/p_12_out ;
  wire pm_dbg_bram_sel;
  wire [23:0]pm_dbg_din;
  wire pm_done;
  wire resetn;
  wire resetn_0;
  wire s_ready_t_reg;
  wire [2:0]state;
  wire [2:0]state_dbg;
  wire [7:0]store_cnt_d1;
  wire store_cnt_d10;
  wire store_valid_d1;
  wire u_isif_n_1;
  wire u_isif_n_2;
  wire u_isif_n_3;
  wire u_isif_n_52;
  wire u_osif_n_7;
  wire u_osif_n_8;

  (* FSM_ENCODED_STATES = "ST_LOAD_A:001,ST_LOAD_B:010,ST_COMPUTE:011,ST_STORE:100,ST_IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(next_state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "ST_LOAD_A:001,ST_LOAD_B:010,ST_COMPUTE:011,ST_STORE:100,ST_IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(next_state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "ST_LOAD_A:001,ST_LOAD_B:010,ST_COMPUTE:011,ST_STORE:100,ST_IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(next_state__0[2]),
        .Q(state[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt[7]_i_4 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(\cnt[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \cnt[7]_i_5 
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[7] ),
        .I2(\cnt[7]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[5] ),
        .O(\cnt[7]_i_5_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(cnt_6),
        .CLR(resetn_0),
        .D(u_osif_n_7),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(cnt_6),
        .CLR(resetn_0),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(cnt_6),
        .CLR(resetn_0),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(cnt_6),
        .CLR(resetn_0),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(cnt_6),
        .CLR(resetn_0),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(cnt_6),
        .CLR(resetn_0),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(cnt_6),
        .CLR(resetn_0),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(cnt_6),
        .CLR(resetn_0),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ));
  LUT2 #(
    .INIT(4'h2)) 
    \state_dbg[0]_INST_0 
       (.I0(state[0]),
        .I1(state[2]),
        .O(state_dbg[0]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_dbg[1]_INST_0 
       (.I0(state[1]),
        .I1(state[2]),
        .O(state_dbg[1]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \state_dbg[2]_INST_0 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(state_dbg[2]));
  FDCE \store_cnt_d1_reg[0] 
       (.C(clk),
        .CE(store_cnt_d10),
        .CLR(resetn_0),
        .D(\cnt_reg_n_0_[0] ),
        .Q(store_cnt_d1[0]));
  FDCE \store_cnt_d1_reg[1] 
       (.C(clk),
        .CE(store_cnt_d10),
        .CLR(resetn_0),
        .D(\cnt_reg_n_0_[1] ),
        .Q(store_cnt_d1[1]));
  FDCE \store_cnt_d1_reg[2] 
       (.C(clk),
        .CE(store_cnt_d10),
        .CLR(resetn_0),
        .D(\cnt_reg_n_0_[2] ),
        .Q(store_cnt_d1[2]));
  FDCE \store_cnt_d1_reg[3] 
       (.C(clk),
        .CE(store_cnt_d10),
        .CLR(resetn_0),
        .D(\cnt_reg_n_0_[3] ),
        .Q(store_cnt_d1[3]));
  FDCE \store_cnt_d1_reg[4] 
       (.C(clk),
        .CE(store_cnt_d10),
        .CLR(resetn_0),
        .D(\cnt_reg_n_0_[4] ),
        .Q(store_cnt_d1[4]));
  FDCE \store_cnt_d1_reg[5] 
       (.C(clk),
        .CE(store_cnt_d10),
        .CLR(resetn_0),
        .D(\cnt_reg_n_0_[5] ),
        .Q(store_cnt_d1[5]));
  FDCE \store_cnt_d1_reg[6] 
       (.C(clk),
        .CE(store_cnt_d10),
        .CLR(resetn_0),
        .D(\cnt_reg_n_0_[6] ),
        .Q(store_cnt_d1[6]));
  FDCE \store_cnt_d1_reg[7] 
       (.C(clk),
        .CE(store_cnt_d10),
        .CLR(resetn_0),
        .D(\cnt_reg_n_0_[7] ),
        .Q(store_cnt_d1[7]));
  FDCE store_valid_d1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(store_cnt_d10),
        .Q(store_valid_d1));
  design_1_polymul_axi_top_0_0_polymul_top u_core
       (.D(next_state__0[2:1]),
        .\FSM_sequential_state_reg[1]_0 (u_osif_n_8),
        .\FSM_sequential_state_reg[1]_1 (u_isif_n_3),
        .Q(state),
        .\c0_s1_reg[0] (\c0_s1_reg[0] ),
        .\c0_s1_reg[0]_0 (\c0_s1_reg[0]_0 ),
        .\c0_s1_reg[0]_1 (\c0_s1_reg[0]_1 ),
        .\c0_s1_reg[0]_2 (\c0_s1_reg[0]_2 ),
        .\c0_s1_reg[0]_3 (\c0_s1_reg[0]_3 ),
        .\c1_s1_reg[5] (\c1_s1_reg[5] ),
        .\c1_s1_reg[5]_0 (\c1_s1_reg[5]_0 ),
        .clk(clk),
        .done(pm_done),
        .in(osif_data_din),
        .mem_reg(u_isif_n_2),
        .mem_reg_0({\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt_reg_n_0_[0] }),
        .mem_reg_1(u_isif_n_52),
        .mem_reg_2(u_isif_n_1),
        .out(isif_data_dout),
        .p_12_out(\osif_fifo/p_12_out ),
        .pm_dbg_bram_sel(pm_dbg_bram_sel),
        .pm_dbg_din(pm_dbg_din),
        .resetn(resetn),
        .resetn_0(resetn_0));
  design_1_polymul_axi_top_0_0_INPUT_STREAM_if u_isif
       (.D(next_state__0[0]),
        .\FSM_sequential_state_reg[0] (u_isif_n_2),
        .\FSM_sequential_state_reg[0]_0 (\cnt[7]_i_4_n_0 ),
        .\FSM_sequential_state_reg[0]_1 (state),
        .\FSM_sequential_state_reg[0]_2 (u_osif_n_8),
        .Q({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }),
        .SR(resetn_0),
        .S_AXIS_MM2S_tdata(S_AXIS_MM2S_tdata),
        .S_AXIS_MM2S_tvalid(S_AXIS_MM2S_tvalid),
        .clk(clk),
        .done(pm_done),
        .empty_reg(u_isif_n_1),
        .empty_reg_0(u_isif_n_3),
        .empty_reg_1(u_isif_n_52),
        .out(isif_data_dout),
        .pm_dbg_bram_sel(pm_dbg_bram_sel),
        .pm_dbg_din(pm_dbg_din),
        .s_ready_t_reg(s_ready_t_reg));
  design_1_polymul_axi_top_0_0_OUTPUT_STREAM_if u_osif
       (.D({cnt,u_osif_n_7}),
        .E(cnt_6),
        .M_AXIS_S2MM_tready(M_AXIS_S2MM_tready),
        .M_AXIS_S2MM_tvalid(M_AXIS_S2MM_tvalid),
        .Q({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt_reg_n_0_[0] }),
        .SR(resetn_0),
        .clk(clk),
        .\cnt_reg[0] (u_isif_n_1),
        .\cnt_reg[4] (u_osif_n_8),
        .\cnt_reg[7] (store_cnt_d10),
        .\cnt_reg[7]_0 (\cnt[7]_i_4_n_0 ),
        .\cnt_reg[7]_1 (\cnt[7]_i_5_n_0 ),
        .\data_p1_reg[36] (Q),
        .\gen_sr[15].mem_reg[15][36]_srl16_i_1 (store_cnt_d1),
        .in(osif_data_din),
        .p_12_out(\osif_fifo/p_12_out ),
        .\store_cnt_d1_reg[0] (state),
        .store_valid_d1(store_valid_d1));
endmodule

(* ORIG_REF_NAME = "polymul_top" *) 
module design_1_polymul_axi_top_0_0_polymul_top
   (resetn_0,
    D,
    done,
    in,
    clk,
    Q,
    \c0_s1_reg[0] ,
    \c0_s1_reg[0]_0 ,
    \c0_s1_reg[0]_1 ,
    \c0_s1_reg[0]_2 ,
    \c0_s1_reg[0]_3 ,
    \c1_s1_reg[5] ,
    \c1_s1_reg[5]_0 ,
    \FSM_sequential_state_reg[1]_0 ,
    pm_dbg_bram_sel,
    p_12_out,
    \FSM_sequential_state_reg[1]_1 ,
    resetn,
    pm_dbg_din,
    out,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2);
  output resetn_0;
  output [1:0]D;
  output done;
  output [23:0]in;
  input clk;
  input [2:0]Q;
  input \c0_s1_reg[0] ;
  input \c0_s1_reg[0]_0 ;
  input \c0_s1_reg[0]_1 ;
  input \c0_s1_reg[0]_2 ;
  input \c0_s1_reg[0]_3 ;
  input \c1_s1_reg[5] ;
  input \c1_s1_reg[5]_0 ;
  input \FSM_sequential_state_reg[1]_0 ;
  input pm_dbg_bram_sel;
  input p_12_out;
  input \FSM_sequential_state_reg[1]_1 ;
  input resetn;
  input [23:0]pm_dbg_din;
  input [23:0]out;
  input mem_reg;
  input [6:0]mem_reg_0;
  input mem_reg_1;
  input mem_reg_2;

  wire [6:0]A_addrb;
  wire [23:0]A_dinb;
  wire A_enb0_out;
  wire A_web;
  wire [6:0]B_addrb;
  wire [23:0]B_dinb;
  wire [23:0]B_douta;
  wire [23:0]B_doutb;
  wire B_enb4_out;
  wire B_web;
  wire [6:0]C_addrb;
  wire [23:0]C_dinb;
  wire [23:0]C_douta;
  wire [23:0]C_doutb;
  wire C_enb8_out;
  wire [1:0]D;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [2:0]Q;
  wire [11:0]a0_red;
  wire [11:0]a1_red;
  wire [0:0]ag_bu_mode;
  wire [0:0]ag_bu_mode_d1;
  wire \ag_bu_mode_d1_reg[0]_rep__0_n_0 ;
  wire \ag_bu_mode_d1_reg[0]_rep__1_n_0 ;
  wire \ag_bu_mode_d1_reg[0]_rep_n_0 ;
  wire ag_is_intt;
  wire ag_read_en;
  wire ag_start;
  wire ag_start0;
  wire ag_started_reg_n_0;
  wire [6:0]ag_twiddle_addr;
  wire [11:0]b0_red;
  wire [11:0]b1_red;
  wire [23:0]bu_data_a_r;
  wire [23:0]bu_data_b_r;
  wire [23:0]bu_result_u;
  wire busy0;
  wire \c0_s1_reg[0] ;
  wire \c0_s1_reg[0]_0 ;
  wire \c0_s1_reg[0]_1 ;
  wire \c0_s1_reg[0]_2 ;
  wire \c0_s1_reg[0]_3 ;
  wire \c1_s1_reg[5] ;
  wire \c1_s1_reg[5]_0 ;
  wire clk;
  wire done;
  wire done_i_1__0_n_0;
  wire [11:0]g_red;
  wire [23:0]in;
  wire [1:0]map_bram_id;
  wire mem_reg;
  wire [6:0]mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire [11:0]mux3_out;
  wire [1:0]ntt_read_bid_d1;
  wire [23:0]out;
  wire p_12_out;
  wire [7:0]p_1_in;
  wire pm_busy;
  wire pm_dbg_bram_sel;
  wire [23:0]pm_dbg_din;
  wire [23:0]pwm_c_pkt;
  wire \pwm_cnt[4]_i_2_n_0 ;
  wire \pwm_cnt[5]_i_2_n_0 ;
  wire \pwm_cnt[7]_i_1_n_0 ;
  wire \pwm_cnt[7]_i_3_n_0 ;
  wire \pwm_cnt_reg_n_0_[0] ;
  wire \pwm_cnt_reg_n_0_[1] ;
  wire \pwm_cnt_reg_n_0_[2] ;
  wire \pwm_cnt_reg_n_0_[3] ;
  wire \pwm_cnt_reg_n_0_[4] ;
  wire \pwm_cnt_reg_n_0_[5] ;
  wire \pwm_cnt_reg_n_0_[6] ;
  wire \pwm_cnt_reg_n_0_[7] ;
  wire \pwm_cnt_reg_rep_n_0_[0] ;
  wire \pwm_cnt_reg_rep_n_0_[1] ;
  wire \pwm_cnt_reg_rep_n_0_[2] ;
  wire \pwm_cnt_reg_rep_n_0_[3] ;
  wire \pwm_cnt_reg_rep_n_0_[4] ;
  wire \pwm_cnt_reg_rep_n_0_[5] ;
  wire \pwm_cnt_reg_rep_n_0_[6] ;
  wire pwm_read_active_i_1_n_0;
  wire pwm_read_active_i_2_n_0;
  wire pwm_read_active_reg_n_0;
  wire pwm_start;
  wire pwm_start0;
  wire pwm_started;
  wire pwm_started_i_1_n_0;
  wire pwm_valid_in_d1_reg_c_n_0;
  wire [6:0]pwm_wcnt;
  wire \pwm_wcnt_pipe_reg[7][0]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ;
  wire \pwm_wcnt_pipe_reg[7][1]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ;
  wire \pwm_wcnt_pipe_reg[7][2]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ;
  wire \pwm_wcnt_pipe_reg[7][3]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ;
  wire \pwm_wcnt_pipe_reg[7][4]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ;
  wire \pwm_wcnt_pipe_reg[7][5]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ;
  wire \pwm_wcnt_pipe_reg[7][6]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ;
  wire \pwm_wcnt_pipe_reg[8][0]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ;
  wire \pwm_wcnt_pipe_reg[8][1]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ;
  wire \pwm_wcnt_pipe_reg[8][2]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ;
  wire \pwm_wcnt_pipe_reg[8][3]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ;
  wire \pwm_wcnt_pipe_reg[8][4]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ;
  wire \pwm_wcnt_pipe_reg[8][5]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ;
  wire \pwm_wcnt_pipe_reg[8][6]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ;
  wire [6:0]\pwm_wcnt_pipe_reg[9]_5 ;
  wire pwm_wcnt_pipe_reg_gate__0_n_0;
  wire pwm_wcnt_pipe_reg_gate__1_n_0;
  wire pwm_wcnt_pipe_reg_gate__2_n_0;
  wire pwm_wcnt_pipe_reg_gate__3_n_0;
  wire pwm_wcnt_pipe_reg_gate__4_n_0;
  wire pwm_wcnt_pipe_reg_gate__5_n_0;
  wire pwm_wcnt_pipe_reg_gate_n_0;
  wire \pwm_wen_pipe_reg[8]_srl9_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ;
  wire \pwm_wen_pipe_reg[9]_inst_u_core_pwm_wen_pipe_reg_c_7_n_0 ;
  wire pwm_wen_pipe_reg_c_0_n_0;
  wire pwm_wen_pipe_reg_c_1_n_0;
  wire pwm_wen_pipe_reg_c_2_n_0;
  wire pwm_wen_pipe_reg_c_3_n_0;
  wire pwm_wen_pipe_reg_c_4_n_0;
  wire pwm_wen_pipe_reg_c_5_n_0;
  wire pwm_wen_pipe_reg_c_6_n_0;
  wire pwm_wen_pipe_reg_c_7_n_0;
  wire pwm_wen_pipe_reg_c_n_0;
  wire pwm_wen_pipe_reg_gate_n_0;
  wire pwm_write_active;
  wire pwm_write_active_d1;
  wire resetn;
  wire resetn_0;
  wire [2:0]state;
  wire u_addr_n_10;
  wire u_addr_n_11;
  wire u_addr_n_12;
  wire u_addr_n_13;
  wire u_addr_n_14;
  wire u_addr_n_15;
  wire u_addr_n_16;
  wire u_addr_n_17;
  wire u_addr_n_18;
  wire u_addr_n_19;
  wire u_addr_n_2;
  wire u_addr_n_20;
  wire u_addr_n_22;
  wire u_addr_n_23;
  wire u_addr_n_24;
  wire u_addr_n_25;
  wire u_addr_n_26;
  wire u_addr_n_27;
  wire u_addr_n_28;
  wire u_addr_n_29;
  wire u_addr_n_3;
  wire u_addr_n_30;
  wire u_addr_n_4;
  wire u_addr_n_41;
  wire u_addr_n_5;
  wire u_addr_n_50;
  wire u_addr_n_58;
  wire u_addr_n_59;
  wire u_addr_n_6;
  wire u_addr_n_60;
  wire u_addr_n_61;
  wire u_addr_n_62;
  wire u_addr_n_63;
  wire u_addr_n_64;
  wire u_addr_n_65;
  wire u_addr_n_66;
  wire u_addr_n_67;
  wire u_addr_n_68;
  wire u_addr_n_69;
  wire u_addr_n_7;
  wire u_addr_n_70;
  wire u_addr_n_71;
  wire u_addr_n_72;
  wire u_addr_n_73;
  wire u_addr_n_74;
  wire u_addr_n_75;
  wire u_addr_n_76;
  wire u_addr_n_77;
  wire u_addr_n_78;
  wire u_addr_n_79;
  wire u_addr_n_8;
  wire u_addr_n_80;
  wire u_addr_n_81;
  wire u_addr_n_82;
  wire u_addr_n_84;
  wire u_addr_n_9;
  wire u_bram_A_n_114;
  wire u_bram_A_n_115;
  wire u_bram_A_n_116;
  wire u_bram_A_n_117;
  wire u_bram_A_n_118;
  wire u_bram_A_n_119;
  wire u_bram_A_n_120;
  wire u_bram_A_n_121;
  wire u_bram_A_n_24;
  wire u_bram_A_n_25;
  wire u_bram_A_n_26;
  wire u_bram_A_n_27;
  wire u_bram_A_n_28;
  wire u_bram_A_n_29;
  wire u_bram_A_n_30;
  wire u_bram_A_n_31;
  wire u_bram_A_n_32;
  wire u_bram_A_n_57;
  wire u_bram_A_n_58;
  wire u_bram_A_n_59;
  wire u_bram_A_n_60;
  wire u_bram_A_n_61;
  wire u_bram_A_n_62;
  wire u_bram_A_n_63;
  wire u_bram_A_n_64;
  wire u_bram_A_n_65;
  wire u_bram_A_n_66;
  wire u_bram_A_n_67;
  wire u_bram_A_n_68;
  wire u_bram_A_n_69;
  wire u_bram_A_n_70;
  wire u_bram_A_n_71;
  wire u_bram_A_n_72;
  wire u_bram_A_n_73;
  wire u_bram_A_n_74;
  wire u_bram_A_n_75;
  wire u_bram_A_n_76;
  wire u_bram_A_n_77;
  wire u_bram_B_n_48;
  wire u_bram_B_n_49;
  wire u_bram_B_n_50;
  wire u_bram_B_n_51;
  wire u_bram_B_n_52;
  wire u_bram_C_n_48;
  wire u_bram_C_n_49;
  wire u_bram_C_n_50;
  wire u_dbu_n_0;
  wire u_dbu_n_1;
  wire u_dbu_n_10;
  wire u_dbu_n_100;
  wire u_dbu_n_101;
  wire u_dbu_n_102;
  wire u_dbu_n_103;
  wire u_dbu_n_104;
  wire u_dbu_n_105;
  wire u_dbu_n_106;
  wire u_dbu_n_107;
  wire u_dbu_n_108;
  wire u_dbu_n_109;
  wire u_dbu_n_11;
  wire u_dbu_n_110;
  wire u_dbu_n_111;
  wire u_dbu_n_112;
  wire u_dbu_n_113;
  wire u_dbu_n_114;
  wire u_dbu_n_115;
  wire u_dbu_n_140;
  wire u_dbu_n_141;
  wire u_dbu_n_142;
  wire u_dbu_n_143;
  wire u_dbu_n_144;
  wire u_dbu_n_145;
  wire u_dbu_n_146;
  wire u_dbu_n_147;
  wire u_dbu_n_148;
  wire u_dbu_n_149;
  wire u_dbu_n_150;
  wire u_dbu_n_151;
  wire u_dbu_n_152;
  wire u_dbu_n_153;
  wire u_dbu_n_154;
  wire u_dbu_n_155;
  wire u_dbu_n_156;
  wire u_dbu_n_157;
  wire u_dbu_n_158;
  wire u_dbu_n_159;
  wire u_dbu_n_160;
  wire u_dbu_n_161;
  wire u_dbu_n_162;
  wire u_dbu_n_163;
  wire u_dbu_n_164;
  wire u_dbu_n_165;
  wire u_dbu_n_166;
  wire u_dbu_n_167;
  wire u_dbu_n_168;
  wire u_dbu_n_169;
  wire u_dbu_n_170;
  wire u_dbu_n_171;
  wire u_dbu_n_172;
  wire u_dbu_n_173;
  wire u_dbu_n_174;
  wire u_dbu_n_175;
  wire u_dbu_n_176;
  wire u_dbu_n_177;
  wire u_dbu_n_178;
  wire u_dbu_n_179;
  wire u_dbu_n_180;
  wire u_dbu_n_181;
  wire u_dbu_n_182;
  wire u_dbu_n_183;
  wire u_dbu_n_184;
  wire u_dbu_n_185;
  wire u_dbu_n_186;
  wire u_dbu_n_187;
  wire u_dbu_n_2;
  wire u_dbu_n_24;
  wire u_dbu_n_25;
  wire u_dbu_n_26;
  wire u_dbu_n_27;
  wire u_dbu_n_3;
  wire u_dbu_n_4;
  wire u_dbu_n_5;
  wire u_dbu_n_6;
  wire u_dbu_n_7;
  wire u_dbu_n_8;
  wire u_dbu_n_9;
  wire [11:0]\upper_d_reg[3]_4 ;
  wire [12:0]zeta_dout;

  LUT6 #(
    .INIT(64'h33003300550FFF00)) 
    \FSM_sequential_state[1]_i_1__2 
       (.I0(done),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'h0080FF80)) 
    \FSM_sequential_state[2]_i_1__0 
       (.I0(done),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_NTT_A:101,ST_NTT_B:100,ST_PWM:011,ST_INTT:010,ST_DONE:001," *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_addr_n_4),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_NTT_A:101,ST_NTT_B:100,ST_PWM:011,ST_INTT:010,ST_DONE:001," *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_addr_n_3),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_NTT_A:101,ST_NTT_B:100,ST_PWM:011,ST_INTT:010,ST_DONE:001," *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_addr_n_2),
        .Q(state[2]));
  (* ORIG_CELL_NAME = "ag_bu_mode_d1_reg[0]" *) 
  FDCE \ag_bu_mode_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(ag_bu_mode),
        .Q(ag_bu_mode_d1));
  (* ORIG_CELL_NAME = "ag_bu_mode_d1_reg[0]" *) 
  FDCE \ag_bu_mode_d1_reg[0]_rep 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(ag_bu_mode),
        .Q(\ag_bu_mode_d1_reg[0]_rep_n_0 ));
  (* ORIG_CELL_NAME = "ag_bu_mode_d1_reg[0]" *) 
  FDCE \ag_bu_mode_d1_reg[0]_rep__0 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(ag_bu_mode),
        .Q(\ag_bu_mode_d1_reg[0]_rep__0_n_0 ));
  (* ORIG_CELL_NAME = "ag_bu_mode_d1_reg[0]" *) 
  FDCE \ag_bu_mode_d1_reg[0]_rep__1 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(ag_bu_mode),
        .Q(\ag_bu_mode_d1_reg[0]_rep__1_n_0 ));
  FDCE ag_is_intt_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_addr_n_6),
        .Q(ag_is_intt));
  FDCE ag_start_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(ag_start0),
        .Q(ag_start));
  FDCE ag_started_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_addr_n_5),
        .Q(ag_started_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'hE)) 
    busy_i_1__0
       (.I0(state[1]),
        .I1(state[2]),
        .O(busy0));
  FDCE busy_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(busy0),
        .Q(pm_busy));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h02)) 
    done_i_1__0
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(done_i_1__0_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(done_i_1__0_n_0),
        .Q(done));
  FDCE \ntt_read_bid_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(map_bram_id[0]),
        .Q(ntt_read_bid_d1[0]));
  FDCE \ntt_read_bid_d1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(map_bram_id[1]),
        .Q(ntt_read_bid_d1[1]));
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_cnt[0]_i_1 
       (.I0(pwm_start),
        .I1(state[1]),
        .I2(\pwm_cnt_reg_n_0_[0] ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \pwm_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(pwm_start),
        .I2(\pwm_cnt_reg_n_0_[0] ),
        .I3(\pwm_cnt_reg_n_0_[1] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \pwm_cnt[2]_i_1 
       (.I0(state[1]),
        .I1(pwm_start),
        .I2(\pwm_cnt_reg_n_0_[1] ),
        .I3(\pwm_cnt_reg_n_0_[0] ),
        .I4(\pwm_cnt_reg_n_0_[2] ),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \pwm_cnt[3]_i_1 
       (.I0(\pwm_cnt[4]_i_2_n_0 ),
        .I1(\pwm_cnt_reg_n_0_[2] ),
        .I2(\pwm_cnt_reg_n_0_[0] ),
        .I3(\pwm_cnt_reg_n_0_[1] ),
        .I4(\pwm_cnt_reg_n_0_[3] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \pwm_cnt[4]_i_1 
       (.I0(\pwm_cnt_reg_n_0_[2] ),
        .I1(\pwm_cnt_reg_n_0_[0] ),
        .I2(\pwm_cnt_reg_n_0_[1] ),
        .I3(\pwm_cnt_reg_n_0_[3] ),
        .I4(\pwm_cnt[4]_i_2_n_0 ),
        .I5(\pwm_cnt_reg_n_0_[4] ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \pwm_cnt[4]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(pwm_start),
        .O(\pwm_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \pwm_cnt[5]_i_1 
       (.I0(\pwm_cnt[5]_i_2_n_0 ),
        .I1(pwm_start),
        .I2(state[1]),
        .I3(\pwm_cnt_reg_n_0_[5] ),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \pwm_cnt[5]_i_2 
       (.I0(\pwm_cnt_reg_n_0_[3] ),
        .I1(\pwm_cnt_reg_n_0_[1] ),
        .I2(\pwm_cnt_reg_n_0_[0] ),
        .I3(\pwm_cnt_reg_n_0_[2] ),
        .I4(\pwm_cnt_reg_n_0_[4] ),
        .O(\pwm_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \pwm_cnt[6]_i_1 
       (.I0(\pwm_cnt[7]_i_3_n_0 ),
        .I1(pwm_start),
        .I2(state[1]),
        .I3(\pwm_cnt_reg_n_0_[6] ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h00FF000F008F000F)) 
    \pwm_cnt[7]_i_1 
       (.I0(pwm_read_active_i_2_n_0),
        .I1(pwm_read_active_reg_n_0),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(pwm_start),
        .O(\pwm_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h0000D200)) 
    \pwm_cnt[7]_i_2 
       (.I0(\pwm_cnt_reg_n_0_[6] ),
        .I1(\pwm_cnt[7]_i_3_n_0 ),
        .I2(\pwm_cnt_reg_n_0_[7] ),
        .I3(state[1]),
        .I4(pwm_start),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pwm_cnt[7]_i_3 
       (.I0(\pwm_cnt_reg_n_0_[4] ),
        .I1(\pwm_cnt_reg_n_0_[2] ),
        .I2(\pwm_cnt_reg_n_0_[0] ),
        .I3(\pwm_cnt_reg_n_0_[1] ),
        .I4(\pwm_cnt_reg_n_0_[3] ),
        .I5(\pwm_cnt_reg_n_0_[5] ),
        .O(\pwm_cnt[7]_i_3_n_0 ));
  FDCE \pwm_cnt_reg[0] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[0]),
        .Q(\pwm_cnt_reg_n_0_[0] ));
  FDCE \pwm_cnt_reg[1] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[1]),
        .Q(\pwm_cnt_reg_n_0_[1] ));
  FDCE \pwm_cnt_reg[2] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[2]),
        .Q(\pwm_cnt_reg_n_0_[2] ));
  FDCE \pwm_cnt_reg[3] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[3]),
        .Q(\pwm_cnt_reg_n_0_[3] ));
  FDCE \pwm_cnt_reg[4] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[4]),
        .Q(\pwm_cnt_reg_n_0_[4] ));
  FDCE \pwm_cnt_reg[5] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[5]),
        .Q(\pwm_cnt_reg_n_0_[5] ));
  FDCE \pwm_cnt_reg[6] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[6]),
        .Q(\pwm_cnt_reg_n_0_[6] ));
  FDCE \pwm_cnt_reg[7] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[7]),
        .Q(\pwm_cnt_reg_n_0_[7] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \pwm_cnt_reg_rep[0] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[0]),
        .Q(\pwm_cnt_reg_rep_n_0_[0] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \pwm_cnt_reg_rep[1] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[1]),
        .Q(\pwm_cnt_reg_rep_n_0_[1] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \pwm_cnt_reg_rep[2] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[2]),
        .Q(\pwm_cnt_reg_rep_n_0_[2] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \pwm_cnt_reg_rep[3] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[3]),
        .Q(\pwm_cnt_reg_rep_n_0_[3] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \pwm_cnt_reg_rep[4] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[4]),
        .Q(\pwm_cnt_reg_rep_n_0_[4] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \pwm_cnt_reg_rep[5] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[5]),
        .Q(\pwm_cnt_reg_rep_n_0_[5] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \pwm_cnt_reg_rep[6] 
       (.C(clk),
        .CE(\pwm_cnt[7]_i_1_n_0 ),
        .CLR(resetn_0),
        .D(p_1_in[6]),
        .Q(\pwm_cnt_reg_rep_n_0_[6] ));
  LUT6 #(
    .INIT(64'hCCF0CCC0CC80CCC0)) 
    pwm_read_active_i_1
       (.I0(pwm_read_active_i_2_n_0),
        .I1(pwm_read_active_reg_n_0),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(pwm_start),
        .O(pwm_read_active_i_1_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    pwm_read_active_i_2
       (.I0(\pwm_cnt_reg_n_0_[6] ),
        .I1(\pwm_cnt[7]_i_3_n_0 ),
        .I2(\pwm_cnt_reg_n_0_[7] ),
        .O(pwm_read_active_i_2_n_0));
  FDCE pwm_read_active_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_read_active_i_1_n_0),
        .Q(pwm_read_active_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    pwm_start_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(pwm_started),
        .O(pwm_start0));
  FDCE pwm_start_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_start0),
        .Q(pwm_start));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'hAEA0)) 
    pwm_started_i_1
       (.I0(pwm_started),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(pwm_started_i_1_n_0));
  FDCE pwm_started_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_started_i_1_n_0),
        .Q(pwm_started));
  FDCE pwm_valid_in_d1_reg_c
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(1'b1),
        .Q(pwm_valid_in_d1_reg_c_n_0));
  (* srl_bus_name = "\inst/u_core/pwm_wcnt_pipe_reg[7] " *) 
  (* srl_name = "\inst/u_core/pwm_wcnt_pipe_reg[7][0]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 " *) 
  SRL16E \pwm_wcnt_pipe_reg[7][0]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\pwm_cnt_reg_n_0_[0] ),
        .Q(\pwm_wcnt_pipe_reg[7][0]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ));
  (* srl_bus_name = "\inst/u_core/pwm_wcnt_pipe_reg[7] " *) 
  (* srl_name = "\inst/u_core/pwm_wcnt_pipe_reg[7][1]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 " *) 
  SRL16E \pwm_wcnt_pipe_reg[7][1]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\pwm_cnt_reg_n_0_[1] ),
        .Q(\pwm_wcnt_pipe_reg[7][1]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ));
  (* srl_bus_name = "\inst/u_core/pwm_wcnt_pipe_reg[7] " *) 
  (* srl_name = "\inst/u_core/pwm_wcnt_pipe_reg[7][2]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 " *) 
  SRL16E \pwm_wcnt_pipe_reg[7][2]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\pwm_cnt_reg_n_0_[2] ),
        .Q(\pwm_wcnt_pipe_reg[7][2]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ));
  (* srl_bus_name = "\inst/u_core/pwm_wcnt_pipe_reg[7] " *) 
  (* srl_name = "\inst/u_core/pwm_wcnt_pipe_reg[7][3]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 " *) 
  SRL16E \pwm_wcnt_pipe_reg[7][3]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\pwm_cnt_reg_n_0_[3] ),
        .Q(\pwm_wcnt_pipe_reg[7][3]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ));
  (* srl_bus_name = "\inst/u_core/pwm_wcnt_pipe_reg[7] " *) 
  (* srl_name = "\inst/u_core/pwm_wcnt_pipe_reg[7][4]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 " *) 
  SRL16E \pwm_wcnt_pipe_reg[7][4]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\pwm_cnt_reg_n_0_[4] ),
        .Q(\pwm_wcnt_pipe_reg[7][4]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ));
  (* srl_bus_name = "\inst/u_core/pwm_wcnt_pipe_reg[7] " *) 
  (* srl_name = "\inst/u_core/pwm_wcnt_pipe_reg[7][5]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 " *) 
  SRL16E \pwm_wcnt_pipe_reg[7][5]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\pwm_cnt_reg_n_0_[5] ),
        .Q(\pwm_wcnt_pipe_reg[7][5]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ));
  (* srl_bus_name = "\inst/u_core/pwm_wcnt_pipe_reg[7] " *) 
  (* srl_name = "\inst/u_core/pwm_wcnt_pipe_reg[7][6]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 " *) 
  SRL16E \pwm_wcnt_pipe_reg[7][6]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\pwm_cnt_reg_n_0_[6] ),
        .Q(\pwm_wcnt_pipe_reg[7][6]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ));
  FDRE \pwm_wcnt_pipe_reg[8][0]_inst_u_core_pwm_wen_pipe_reg_c_6 
       (.C(clk),
        .CE(1'b1),
        .D(\pwm_wcnt_pipe_reg[7][0]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ),
        .Q(\pwm_wcnt_pipe_reg[8][0]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .R(1'b0));
  FDRE \pwm_wcnt_pipe_reg[8][1]_inst_u_core_pwm_wen_pipe_reg_c_6 
       (.C(clk),
        .CE(1'b1),
        .D(\pwm_wcnt_pipe_reg[7][1]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ),
        .Q(\pwm_wcnt_pipe_reg[8][1]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .R(1'b0));
  FDRE \pwm_wcnt_pipe_reg[8][2]_inst_u_core_pwm_wen_pipe_reg_c_6 
       (.C(clk),
        .CE(1'b1),
        .D(\pwm_wcnt_pipe_reg[7][2]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ),
        .Q(\pwm_wcnt_pipe_reg[8][2]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .R(1'b0));
  FDRE \pwm_wcnt_pipe_reg[8][3]_inst_u_core_pwm_wen_pipe_reg_c_6 
       (.C(clk),
        .CE(1'b1),
        .D(\pwm_wcnt_pipe_reg[7][3]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ),
        .Q(\pwm_wcnt_pipe_reg[8][3]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .R(1'b0));
  FDRE \pwm_wcnt_pipe_reg[8][4]_inst_u_core_pwm_wen_pipe_reg_c_6 
       (.C(clk),
        .CE(1'b1),
        .D(\pwm_wcnt_pipe_reg[7][4]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ),
        .Q(\pwm_wcnt_pipe_reg[8][4]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .R(1'b0));
  FDRE \pwm_wcnt_pipe_reg[8][5]_inst_u_core_pwm_wen_pipe_reg_c_6 
       (.C(clk),
        .CE(1'b1),
        .D(\pwm_wcnt_pipe_reg[7][5]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ),
        .Q(\pwm_wcnt_pipe_reg[8][5]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .R(1'b0));
  FDRE \pwm_wcnt_pipe_reg[8][6]_inst_u_core_pwm_wen_pipe_reg_c_6 
       (.C(clk),
        .CE(1'b1),
        .D(\pwm_wcnt_pipe_reg[7][6]_srl8_inst_u_core_pwm_wen_pipe_reg_c_5_n_0 ),
        .Q(\pwm_wcnt_pipe_reg[8][6]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .R(1'b0));
  FDCE \pwm_wcnt_pipe_reg[9][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wcnt_pipe_reg_gate__5_n_0),
        .Q(\pwm_wcnt_pipe_reg[9]_5 [0]));
  FDCE \pwm_wcnt_pipe_reg[9][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wcnt_pipe_reg_gate__4_n_0),
        .Q(\pwm_wcnt_pipe_reg[9]_5 [1]));
  FDCE \pwm_wcnt_pipe_reg[9][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wcnt_pipe_reg_gate__3_n_0),
        .Q(\pwm_wcnt_pipe_reg[9]_5 [2]));
  FDCE \pwm_wcnt_pipe_reg[9][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wcnt_pipe_reg_gate__2_n_0),
        .Q(\pwm_wcnt_pipe_reg[9]_5 [3]));
  FDCE \pwm_wcnt_pipe_reg[9][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wcnt_pipe_reg_gate__1_n_0),
        .Q(\pwm_wcnt_pipe_reg[9]_5 [4]));
  FDCE \pwm_wcnt_pipe_reg[9][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wcnt_pipe_reg_gate__0_n_0),
        .Q(\pwm_wcnt_pipe_reg[9]_5 [5]));
  FDCE \pwm_wcnt_pipe_reg[9][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wcnt_pipe_reg_gate_n_0),
        .Q(\pwm_wcnt_pipe_reg[9]_5 [6]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pwm_wcnt_pipe_reg_gate
       (.I0(\pwm_wcnt_pipe_reg[8][6]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .I1(pwm_wen_pipe_reg_c_6_n_0),
        .O(pwm_wcnt_pipe_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pwm_wcnt_pipe_reg_gate__0
       (.I0(\pwm_wcnt_pipe_reg[8][5]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .I1(pwm_wen_pipe_reg_c_6_n_0),
        .O(pwm_wcnt_pipe_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pwm_wcnt_pipe_reg_gate__1
       (.I0(\pwm_wcnt_pipe_reg[8][4]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .I1(pwm_wen_pipe_reg_c_6_n_0),
        .O(pwm_wcnt_pipe_reg_gate__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pwm_wcnt_pipe_reg_gate__2
       (.I0(\pwm_wcnt_pipe_reg[8][3]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .I1(pwm_wen_pipe_reg_c_6_n_0),
        .O(pwm_wcnt_pipe_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pwm_wcnt_pipe_reg_gate__3
       (.I0(\pwm_wcnt_pipe_reg[8][2]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .I1(pwm_wen_pipe_reg_c_6_n_0),
        .O(pwm_wcnt_pipe_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pwm_wcnt_pipe_reg_gate__4
       (.I0(\pwm_wcnt_pipe_reg[8][1]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .I1(pwm_wen_pipe_reg_c_6_n_0),
        .O(pwm_wcnt_pipe_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pwm_wcnt_pipe_reg_gate__5
       (.I0(\pwm_wcnt_pipe_reg[8][0]_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .I1(pwm_wen_pipe_reg_c_6_n_0),
        .O(pwm_wcnt_pipe_reg_gate__5_n_0));
  FDRE \pwm_wcnt_reg[0] 
       (.C(clk),
        .CE(resetn),
        .D(\pwm_wcnt_pipe_reg[9]_5 [0]),
        .Q(pwm_wcnt[0]),
        .R(1'b0));
  FDRE \pwm_wcnt_reg[1] 
       (.C(clk),
        .CE(resetn),
        .D(\pwm_wcnt_pipe_reg[9]_5 [1]),
        .Q(pwm_wcnt[1]),
        .R(1'b0));
  FDRE \pwm_wcnt_reg[2] 
       (.C(clk),
        .CE(resetn),
        .D(\pwm_wcnt_pipe_reg[9]_5 [2]),
        .Q(pwm_wcnt[2]),
        .R(1'b0));
  FDRE \pwm_wcnt_reg[3] 
       (.C(clk),
        .CE(resetn),
        .D(\pwm_wcnt_pipe_reg[9]_5 [3]),
        .Q(pwm_wcnt[3]),
        .R(1'b0));
  FDRE \pwm_wcnt_reg[4] 
       (.C(clk),
        .CE(resetn),
        .D(\pwm_wcnt_pipe_reg[9]_5 [4]),
        .Q(pwm_wcnt[4]),
        .R(1'b0));
  FDRE \pwm_wcnt_reg[5] 
       (.C(clk),
        .CE(resetn),
        .D(\pwm_wcnt_pipe_reg[9]_5 [5]),
        .Q(pwm_wcnt[5]),
        .R(1'b0));
  FDRE \pwm_wcnt_reg[6] 
       (.C(clk),
        .CE(resetn),
        .D(\pwm_wcnt_pipe_reg[9]_5 [6]),
        .Q(pwm_wcnt[6]),
        .R(1'b0));
  (* srl_bus_name = "\inst/u_core/pwm_wen_pipe_reg " *) 
  (* srl_name = "\inst/u_core/pwm_wen_pipe_reg[8]_srl9_inst_u_core_pwm_wen_pipe_reg_c_6 " *) 
  SRL16E \pwm_wen_pipe_reg[8]_srl9_inst_u_core_pwm_wen_pipe_reg_c_6 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clk),
        .D(pwm_read_active_reg_n_0),
        .Q(\pwm_wen_pipe_reg[8]_srl9_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ));
  FDRE \pwm_wen_pipe_reg[9]_inst_u_core_pwm_wen_pipe_reg_c_7 
       (.C(clk),
        .CE(1'b1),
        .D(\pwm_wen_pipe_reg[8]_srl9_inst_u_core_pwm_wen_pipe_reg_c_6_n_0 ),
        .Q(\pwm_wen_pipe_reg[9]_inst_u_core_pwm_wen_pipe_reg_c_7_n_0 ),
        .R(1'b0));
  FDCE pwm_wen_pipe_reg_c
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_valid_in_d1_reg_c_n_0),
        .Q(pwm_wen_pipe_reg_c_n_0));
  FDCE pwm_wen_pipe_reg_c_0
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wen_pipe_reg_c_n_0),
        .Q(pwm_wen_pipe_reg_c_0_n_0));
  FDCE pwm_wen_pipe_reg_c_1
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wen_pipe_reg_c_0_n_0),
        .Q(pwm_wen_pipe_reg_c_1_n_0));
  FDCE pwm_wen_pipe_reg_c_2
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wen_pipe_reg_c_1_n_0),
        .Q(pwm_wen_pipe_reg_c_2_n_0));
  FDCE pwm_wen_pipe_reg_c_3
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wen_pipe_reg_c_2_n_0),
        .Q(pwm_wen_pipe_reg_c_3_n_0));
  FDCE pwm_wen_pipe_reg_c_4
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wen_pipe_reg_c_3_n_0),
        .Q(pwm_wen_pipe_reg_c_4_n_0));
  FDCE pwm_wen_pipe_reg_c_5
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wen_pipe_reg_c_4_n_0),
        .Q(pwm_wen_pipe_reg_c_5_n_0));
  FDCE pwm_wen_pipe_reg_c_6
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wen_pipe_reg_c_5_n_0),
        .Q(pwm_wen_pipe_reg_c_6_n_0));
  FDCE pwm_wen_pipe_reg_c_7
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wen_pipe_reg_c_6_n_0),
        .Q(pwm_wen_pipe_reg_c_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pwm_wen_pipe_reg_gate
       (.I0(\pwm_wen_pipe_reg[9]_inst_u_core_pwm_wen_pipe_reg_c_7_n_0 ),
        .I1(pwm_wen_pipe_reg_c_7_n_0),
        .O(pwm_wen_pipe_reg_gate_n_0));
  FDCE pwm_write_active_d1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_write_active),
        .Q(pwm_write_active_d1));
  FDCE pwm_write_active_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(pwm_wen_pipe_reg_gate_n_0),
        .Q(pwm_write_active));
  design_1_polymul_axi_top_0_0_addr_gen u_addr
       (.ADDRARDADDR({u_addr_n_7,u_addr_n_8,u_addr_n_9,u_addr_n_10,u_addr_n_11,u_addr_n_12,u_addr_n_13}),
        .ADDRBWRADDR(B_addrb),
        .A_enb0_out(A_enb0_out),
        .A_web(A_web),
        .B_enb4_out(B_enb4_out),
        .B_web(B_web),
        .C_enb8_out(C_enb8_out),
        .D(map_bram_id),
        .DIADI({u_addr_n_58,u_addr_n_59,u_addr_n_60,u_addr_n_61,u_addr_n_62,u_addr_n_63,u_addr_n_64,u_addr_n_65,u_addr_n_66,u_addr_n_67,u_addr_n_68,u_addr_n_69,u_addr_n_70,u_addr_n_71,u_addr_n_72,u_addr_n_73,u_addr_n_74,u_addr_n_75,u_addr_n_76,u_addr_n_77,u_addr_n_78,u_addr_n_79,u_addr_n_80,u_addr_n_81}),
        .\FSM_sequential_state_reg[0] (u_addr_n_2),
        .\FSM_sequential_state_reg[0]_0 (u_addr_n_3),
        .\FSM_sequential_state_reg[0]_1 (u_addr_n_29),
        .\FSM_sequential_state_reg[0]_2 (done),
        .\FSM_sequential_state_reg[0]_3 (\FSM_sequential_state[2]_i_4_n_0 ),
        .\FSM_sequential_state_reg[1] (u_addr_n_4),
        .\FSM_sequential_state_reg[1]_0 (u_addr_n_30),
        .\FSM_sequential_state_reg[2] (u_addr_n_41),
        .Q(pwm_wcnt),
        .WEA(u_addr_n_82),
        .ag_bu_mode(ag_bu_mode),
        .ag_is_intt(ag_is_intt),
        .ag_read_en(ag_read_en),
        .ag_start(ag_start),
        .ag_start0(ag_start0),
        .ag_started_reg(u_addr_n_5),
        .ag_started_reg_0(u_addr_n_6),
        .ag_started_reg_1(ag_started_reg_n_0),
        .bu_result_u(bu_result_u),
        .c_pkt(pwm_c_pkt),
        .clk(clk),
        .done_reg_0(resetn_0),
        .mem_reg(u_bram_B_n_49),
        .mem_reg_0(u_bram_A_n_115),
        .mem_reg_1(u_bram_C_n_48),
        .mem_reg_10(u_bram_A_n_117),
        .mem_reg_11(u_bram_A_n_118),
        .mem_reg_12(u_bram_A_n_119),
        .mem_reg_13(u_bram_A_n_120),
        .mem_reg_14(u_bram_B_n_50),
        .mem_reg_15(u_bram_A_n_121),
        .mem_reg_16(mem_reg_0),
        .mem_reg_17(mem_reg_1),
        .mem_reg_18(u_bram_B_n_51),
        .mem_reg_2({\pwm_cnt_reg_n_0_[6] ,\pwm_cnt_reg_n_0_[5] ,\pwm_cnt_reg_n_0_[4] ,\pwm_cnt_reg_n_0_[3] ,\pwm_cnt_reg_n_0_[2] ,\pwm_cnt_reg_n_0_[1] ,\pwm_cnt_reg_n_0_[0] }),
        .mem_reg_3(pwm_read_active_reg_n_0),
        .mem_reg_4(u_bram_B_n_48),
        .mem_reg_5(u_bram_B_n_52),
        .mem_reg_6(u_bram_C_n_49),
        .mem_reg_7(u_bram_C_n_50),
        .mem_reg_8(u_bram_A_n_114),
        .mem_reg_9(u_bram_A_n_116),
        .pm_busy(pm_busy),
        .pm_dbg_bram_sel(pm_dbg_bram_sel),
        .pm_dbg_din(pm_dbg_din),
        .\pp_pipe_reg[6]_1 (pwm_wen_pipe_reg_c_3_n_0),
        .\pwm_cnt_reg[6] ({u_addr_n_22,u_addr_n_23,u_addr_n_24,u_addr_n_25,u_addr_n_26,u_addr_n_27,u_addr_n_28}),
        .pwm_write_active(pwm_write_active),
        .pwm_write_active_d1(pwm_write_active_d1),
        .stage_active_reg_0(u_addr_n_50),
        .state(state),
        .twiddle_addr(ag_twiddle_addr),
        .\waj_pipe_reg[6][6]_0 ({u_addr_n_14,u_addr_n_15,u_addr_n_16,u_addr_n_17,u_addr_n_18,u_addr_n_19,u_addr_n_20}),
        .\wajpk_pipe_reg[6][6]_0 (C_addrb),
        .\wajpk_pipe_reg[6][6]_1 (A_addrb),
        .\wen_pipe_reg[6]_0 (u_addr_n_84));
  design_1_polymul_axi_top_0_0_bram_128x24 u_bram_A
       (.A_enb0_out(A_enb0_out),
        .A_web(A_web),
        .CO(u_bram_A_n_28),
        .D({u_bram_A_n_66,u_bram_A_n_67,u_bram_A_n_68,u_bram_A_n_69,u_bram_A_n_70,u_bram_A_n_71,u_bram_A_n_72,u_bram_A_n_73,u_bram_A_n_74,u_bram_A_n_75,u_bram_A_n_76,u_bram_A_n_77}),
        .DI(u_dbu_n_26),
        .DIADI({u_dbu_n_140,u_dbu_n_141,u_dbu_n_142,u_dbu_n_143,u_dbu_n_144,u_dbu_n_145,u_dbu_n_146,u_dbu_n_147,u_dbu_n_148,u_dbu_n_149,u_dbu_n_150,u_dbu_n_151,u_dbu_n_152,u_dbu_n_153,u_dbu_n_154,u_dbu_n_155,u_dbu_n_156,u_dbu_n_157,u_dbu_n_158,u_dbu_n_159,u_dbu_n_160,u_dbu_n_161,u_dbu_n_162,u_dbu_n_163}),
        .DIBDI(A_dinb),
        .DOADO(B_douta),
        .DOBDO(B_doutb),
        .\FSM_sequential_state_reg[1] (u_bram_A_n_121),
        .O({u_bram_A_n_24,u_bram_A_n_25,u_bram_A_n_26,u_bram_A_n_27}),
        .Q({\pwm_cnt_reg_n_0_[6] ,\pwm_cnt_reg_n_0_[5] ,\pwm_cnt_reg_n_0_[4] ,\pwm_cnt_reg_n_0_[3] ,\pwm_cnt_reg_n_0_[2] ,\pwm_cnt_reg_n_0_[1] ,\pwm_cnt_reg_n_0_[0] }),
        .S(u_dbu_n_100),
        .\ag_bu_mode_d1_reg[0]_rep ({u_bram_A_n_29,u_bram_A_n_30,u_bram_A_n_31,u_bram_A_n_32}),
        .\ag_bu_mode_d1_reg[0]_rep_0 (mux3_out),
        .\ag_bu_mode_d1_reg[0]_rep__1 ({u_bram_A_n_57,u_bram_A_n_58,u_bram_A_n_59,u_bram_A_n_60}),
        .\ag_bu_mode_d1_reg[0]_rep__1_0 (u_bram_A_n_61),
        .\ag_bu_mode_d1_reg[0]_rep__1_1 ({u_bram_A_n_62,u_bram_A_n_63,u_bram_A_n_64,u_bram_A_n_65}),
        .\b1_reg_r_reg[0] (u_dbu_n_11),
        .\b1_reg_r_reg[0]_0 (ntt_read_bid_d1),
        .\b1_reg_r_reg[10] (u_dbu_n_1),
        .\b1_reg_r_reg[11] (\ag_bu_mode_d1_reg[0]_rep_n_0 ),
        .\b1_reg_r_reg[11]_0 (u_dbu_n_0),
        .\b1_reg_r_reg[11]_1 (C_doutb),
        .\b1_reg_r_reg[1] (u_dbu_n_10),
        .\b1_reg_r_reg[2] (u_dbu_n_9),
        .\b1_reg_r_reg[3] (u_dbu_n_8),
        .\b1_reg_r_reg[4] (u_dbu_n_7),
        .\b1_reg_r_reg[5] (u_dbu_n_6),
        .\b1_reg_r_reg[6] (u_dbu_n_5),
        .\b1_reg_r_reg[7] (u_dbu_n_4),
        .\b1_reg_r_reg[8] (u_dbu_n_3),
        .\b1_reg_r_reg[9] (u_dbu_n_2),
        .bu_data_a_r(bu_data_a_r),
        .bu_data_b_r(bu_data_b_r),
        .clk(clk),
        .\cnt_reg[0] (u_bram_A_n_114),
        .\cnt_reg[1] (u_bram_A_n_115),
        .\cnt_reg[2] (u_bram_A_n_116),
        .\cnt_reg[3] (u_bram_A_n_117),
        .\cnt_reg[4] (u_bram_A_n_118),
        .\cnt_reg[5] (u_bram_A_n_119),
        .\cnt_reg[6] (u_bram_A_n_120),
        .in(in),
        .mem_reg_0(b1_red),
        .mem_reg_1(b0_red),
        .mem_reg_10(Q),
        .mem_reg_2(u_addr_n_30),
        .mem_reg_3({u_addr_n_14,u_addr_n_15,u_addr_n_16,u_addr_n_17,u_addr_n_18,u_addr_n_19,u_addr_n_20}),
        .mem_reg_4(A_addrb),
        .mem_reg_5(u_addr_n_84),
        .mem_reg_6(mem_reg_0),
        .mem_reg_7(mem_reg_1),
        .mem_reg_8(u_bram_C_n_48),
        .mem_reg_9(mem_reg_2),
        .p_12_out(p_12_out),
        .pm_dbg_bram_sel(pm_dbg_bram_sel),
        .state(state[2:1]),
        .\upper_d_reg[1][11]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_5__0 (C_douta),
        .\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 ({u_dbu_n_108,u_dbu_n_109}),
        .\upper_d_reg[1][3]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 ({u_dbu_n_114,u_dbu_n_115}),
        .\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1_0 ({u_dbu_n_104,u_dbu_n_105,u_dbu_n_106,u_dbu_n_107}),
        .\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_0 (\ag_bu_mode_d1_reg[0]_rep__1_n_0 ),
        .\upper_d_reg[1][7]_srl3_inst_u_core_pwm_wen_pipe_reg_c_0_i_1__0_1 ({u_dbu_n_110,u_dbu_n_111,u_dbu_n_112,u_dbu_n_113}),
        .\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 (u_dbu_n_27),
        .\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1_0 (u_dbu_n_102),
        .\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 (u_dbu_n_24),
        .\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 (u_dbu_n_101),
        .\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_1 (u_dbu_n_25),
        .\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_2 (u_dbu_n_103),
        .\upper_d_reg[3]_4 (\upper_d_reg[3]_4 ));
  design_1_polymul_axi_top_0_0_bram_128x24_0 u_bram_B
       (.ADDRARDADDR({u_addr_n_7,u_addr_n_8,u_addr_n_9,u_addr_n_10,u_addr_n_11,u_addr_n_12,u_addr_n_13}),
        .ADDRBWRADDR(B_addrb),
        .B_enb4_out(B_enb4_out),
        .B_web(B_web),
        .DIADI({u_addr_n_58,u_addr_n_59,u_addr_n_60,u_addr_n_61,u_addr_n_62,u_addr_n_63,u_addr_n_64,u_addr_n_65,u_addr_n_66,u_addr_n_67,u_addr_n_68,u_addr_n_69,u_addr_n_70,u_addr_n_71,u_addr_n_72,u_addr_n_73,u_addr_n_74,u_addr_n_75,u_addr_n_76,u_addr_n_77,u_addr_n_78,u_addr_n_79,u_addr_n_80,u_addr_n_81}),
        .DIBDI(B_dinb),
        .DOADO(B_douta),
        .DOBDO(B_doutb),
        .\FSM_sequential_state_reg[1] (u_bram_B_n_49),
        .\FSM_sequential_state_reg[1]_0 (u_bram_B_n_50),
        .\FSM_sequential_state_reg[1]_1 (u_bram_B_n_52),
        .\FSM_sequential_state_reg[2] (u_bram_B_n_48),
        .\FSM_sequential_state_reg[2]_0 (u_bram_B_n_51),
        .Q(Q),
        .WEA(u_addr_n_82),
        .clk(clk),
        .mem_reg_0(u_addr_n_41),
        .mem_reg_1(mem_reg_2),
        .pwm_write_active(pwm_write_active),
        .state(state));
  design_1_polymul_axi_top_0_0_bram_128x24_1 u_bram_C
       (.C_enb8_out(C_enb8_out),
        .D(a1_red),
        .DIADI({u_dbu_n_164,u_dbu_n_165,u_dbu_n_166,u_dbu_n_167,u_dbu_n_168,u_dbu_n_169,u_dbu_n_170,u_dbu_n_171,u_dbu_n_172,u_dbu_n_173,u_dbu_n_174,u_dbu_n_175,u_dbu_n_176,u_dbu_n_177,u_dbu_n_178,u_dbu_n_179,u_dbu_n_180,u_dbu_n_181,u_dbu_n_182,u_dbu_n_183,u_dbu_n_184,u_dbu_n_185,u_dbu_n_186,u_dbu_n_187}),
        .DIBDI(C_dinb),
        .\FSM_sequential_state_reg[1] (u_bram_C_n_48),
        .\FSM_sequential_state_reg[1]_0 (u_bram_C_n_49),
        .\FSM_sequential_state_reg[2] (u_bram_C_n_50),
        .clk(clk),
        .mem_reg_0(C_douta),
        .mem_reg_1(C_doutb),
        .mem_reg_2(a0_red),
        .mem_reg_3(u_addr_n_50),
        .mem_reg_4({u_addr_n_22,u_addr_n_23,u_addr_n_24,u_addr_n_25,u_addr_n_26,u_addr_n_27,u_addr_n_28}),
        .mem_reg_5(C_addrb),
        .mem_reg_6(u_addr_n_29),
        .mem_reg_7(pwm_read_active_reg_n_0),
        .state(state));
  design_1_polymul_axi_top_0_0_dual_butterfly_unit u_dbu
       (.A_web(A_web),
        .B_web(B_web),
        .CO(u_bram_A_n_28),
        .D(zeta_dout),
        .DI(u_dbu_n_26),
        .DIADI({u_dbu_n_140,u_dbu_n_141,u_dbu_n_142,u_dbu_n_143,u_dbu_n_144,u_dbu_n_145,u_dbu_n_146,u_dbu_n_147,u_dbu_n_148,u_dbu_n_149,u_dbu_n_150,u_dbu_n_151,u_dbu_n_152,u_dbu_n_153,u_dbu_n_154,u_dbu_n_155,u_dbu_n_156,u_dbu_n_157,u_dbu_n_158,u_dbu_n_159,u_dbu_n_160,u_dbu_n_161,u_dbu_n_162,u_dbu_n_163}),
        .DIBDI(C_dinb),
        .O({u_bram_A_n_24,u_bram_A_n_25,u_bram_A_n_26,u_bram_A_n_27}),
        .\R_s2_reg[11] (A_dinb),
        .\R_s2_reg[11]_0 (B_dinb),
        .S(u_dbu_n_100),
        .ag_bu_mode_d1(ag_bu_mode_d1),
        .\ag_bu_mode_d1_reg[0]_rep (u_dbu_n_24),
        .\ag_bu_mode_d1_reg[0]_rep_0 (u_dbu_n_101),
        .\ag_bu_mode_d1_reg[0]_rep__1 (u_dbu_n_25),
        .\ag_bu_mode_d1_reg[0]_rep__1_0 (u_dbu_n_27),
        .\ag_bu_mode_d1_reg[0]_rep__1_1 (u_dbu_n_102),
        .\ag_bu_mode_d1_reg[0]_rep__1_2 (u_dbu_n_103),
        .\ag_bu_mode_d1_reg[0]_rep__1_3 ({u_dbu_n_164,u_dbu_n_165,u_dbu_n_166,u_dbu_n_167,u_dbu_n_168,u_dbu_n_169,u_dbu_n_170,u_dbu_n_171,u_dbu_n_172,u_dbu_n_173,u_dbu_n_174,u_dbu_n_175,u_dbu_n_176,u_dbu_n_177,u_dbu_n_178,u_dbu_n_179,u_dbu_n_180,u_dbu_n_181,u_dbu_n_182,u_dbu_n_183,u_dbu_n_184,u_dbu_n_185,u_dbu_n_186,u_dbu_n_187}),
        .\b1_reg_r_reg[11] ({u_bram_A_n_66,u_bram_A_n_67,u_bram_A_n_68,u_bram_A_n_69,u_bram_A_n_70,u_bram_A_n_71,u_bram_A_n_72,u_bram_A_n_73,u_bram_A_n_74,u_bram_A_n_75,u_bram_A_n_76,u_bram_A_n_77}),
        .\b1_reg_r_reg[11]_0 (mux3_out),
        .\b1_reg_r_reg[3] ({u_dbu_n_108,u_dbu_n_109}),
        .\b1_reg_r_reg[3]_0 ({u_dbu_n_114,u_dbu_n_115}),
        .\b1_reg_r_reg[7] ({u_dbu_n_104,u_dbu_n_105,u_dbu_n_106,u_dbu_n_107}),
        .\b1_reg_r_reg[7]_0 ({u_dbu_n_110,u_dbu_n_111,u_dbu_n_112,u_dbu_n_113}),
        .\b2_reg_r_reg[0] (\ag_bu_mode_d1_reg[0]_rep_n_0 ),
        .bu_data_a_r(bu_data_a_r),
        .bu_data_b_r(bu_data_b_r),
        .bu_result_u(bu_result_u),
        .\c1_s1_reg[0] (resetn_0),
        .\c1_s1_reg[5] (\c1_s1_reg[5] ),
        .\c1_s1_reg[5]_0 (\c1_s1_reg[5]_0 ),
        .clk(clk),
        .mem_reg(\ag_bu_mode_d1_reg[0]_rep__0_n_0 ),
        .mem_reg_0(\ag_bu_mode_d1_reg[0]_rep__1_n_0 ),
        .mem_reg_1(u_addr_n_29),
        .mem_reg_2(mem_reg),
        .mem_reg_3(u_bram_A_n_121),
        .out(out),
        .\upper_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_1 (u_bram_A_n_61),
        .\upper_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_1 ({u_bram_A_n_57,u_bram_A_n_58,u_bram_A_n_59,u_bram_A_n_60}),
        .\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1 ({u_bram_A_n_29,u_bram_A_n_30,u_bram_A_n_31,u_bram_A_n_32}),
        .\upper_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_1_0 ({u_bram_A_n_62,u_bram_A_n_63,u_bram_A_n_64,u_bram_A_n_65}),
        .\upper_d_reg[3][0] (u_dbu_n_11),
        .\upper_d_reg[3][0]_0 (pwm_wen_pipe_reg_c_1_n_0),
        .\upper_d_reg[3][10] (u_dbu_n_1),
        .\upper_d_reg[3][11] (u_dbu_n_0),
        .\upper_d_reg[3][1] (u_dbu_n_10),
        .\upper_d_reg[3][2] (u_dbu_n_9),
        .\upper_d_reg[3][3] (u_dbu_n_8),
        .\upper_d_reg[3][4] (u_dbu_n_7),
        .\upper_d_reg[3][5] (u_dbu_n_6),
        .\upper_d_reg[3][6] (u_dbu_n_5),
        .\upper_d_reg[3][7] (u_dbu_n_4),
        .\upper_d_reg[3][8] (u_dbu_n_3),
        .\upper_d_reg[3][9] (u_dbu_n_2),
        .\upper_d_reg[3]_4 (\upper_d_reg[3]_4 ));
  design_1_polymul_axi_top_0_0_pwm_unit u_pwm
       (.D(a1_red),
        .Q(pwm_c_pkt),
        .\a0_s0_reg[11]_0 (a0_red),
        .\b0_s0_reg[11]_0 (b0_red),
        .\b1_s0_reg[11]_0 (b1_red),
        .\b_reg_reg[11] (pwm_wen_pipe_reg_c_2_n_0),
        .\c0_s1_reg[0] (\c0_s1_reg[0] ),
        .\c0_s1_reg[0]_0 (\c0_s1_reg[0]_0 ),
        .\c0_s1_reg[0]_1 (\c0_s1_reg[0]_1 ),
        .\c0_s1_reg[0]_2 (\c0_s1_reg[0]_2 ),
        .\c0_s1_reg[0]_3 (\c0_s1_reg[0]_3 ),
        .clk(clk),
        .g_red(g_red),
        .\m0_d_reg[3][11]_0 (pwm_wen_pipe_reg_c_0_n_0),
        .resetn(resetn),
        .resetn_0(resetn_0));
  design_1_polymul_axi_top_0_0_zetas_pwm_rom u_zeta_pwm_rom
       (.Q({\pwm_cnt_reg_rep_n_0_[6] ,\pwm_cnt_reg_rep_n_0_[5] ,\pwm_cnt_reg_rep_n_0_[4] ,\pwm_cnt_reg_rep_n_0_[3] ,\pwm_cnt_reg_rep_n_0_[2] ,\pwm_cnt_reg_rep_n_0_[1] ,\pwm_cnt_reg_rep_n_0_[0] }),
        .clk(clk),
        .dout_reg_0(pwm_read_active_reg_n_0),
        .g_red(g_red));
  design_1_polymul_axi_top_0_0_zetas_rom u_zeta_rom
       (.D(zeta_dout),
        .ag_read_en(ag_read_en),
        .clk(clk),
        .twiddle_addr(ag_twiddle_addr));
endmodule

(* ORIG_REF_NAME = "pwm_unit" *) 
module design_1_polymul_axi_top_0_0_pwm_unit
   (resetn_0,
    Q,
    g_red,
    clk,
    \b_reg_reg[11] ,
    \m0_d_reg[3][11]_0 ,
    \c0_s1_reg[0] ,
    \c0_s1_reg[0]_0 ,
    \c0_s1_reg[0]_1 ,
    \c0_s1_reg[0]_2 ,
    \c0_s1_reg[0]_3 ,
    resetn,
    D,
    \b1_s0_reg[11]_0 ,
    \a0_s0_reg[11]_0 ,
    \b0_s0_reg[11]_0 );
  output resetn_0;
  output [23:0]Q;
  input [11:0]g_red;
  input clk;
  input \b_reg_reg[11] ;
  input \m0_d_reg[3][11]_0 ;
  input \c0_s1_reg[0] ;
  input \c0_s1_reg[0]_0 ;
  input \c0_s1_reg[0]_1 ;
  input \c0_s1_reg[0]_2 ;
  input \c0_s1_reg[0]_3 ;
  input resetn;
  input [11:0]D;
  input [11:0]\b1_s0_reg[11]_0 ;
  input [11:0]\a0_s0_reg[11]_0 ;
  input [11:0]\b0_s0_reg[11]_0 ;

  wire [11:0]D;
  wire [23:0]Q;
  wire [11:0]a0_s0;
  wire [11:0]\a0_s0_reg[11]_0 ;
  wire [11:0]a1_s0;
  wire [11:0]a_reg;
  wire [11:0]b0_s0;
  wire [11:0]\b0_s0_reg[11]_0 ;
  wire [11:0]b1_s0;
  wire [11:0]\b1_s0_reg[11]_0 ;
  wire [11:0]b_reg;
  wire \b_reg_reg[11] ;
  wire \c0_s1_reg[0] ;
  wire \c0_s1_reg[0]_0 ;
  wire \c0_s1_reg[0]_1 ;
  wire \c0_s1_reg[0]_2 ;
  wire \c0_s1_reg[0]_3 ;
  wire \c_pkt[15]_i_6_n_0 ;
  wire \c_pkt[23]_i_3_n_0 ;
  wire \c_pkt[23]_i_4_n_0 ;
  wire \c_pkt[23]_i_6_n_0 ;
  wire \c_pkt_reg[23]_i_11_n_3 ;
  wire clk;
  wire [11:0]g_red;
  wire \gamma_d_reg[2][0]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][10]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][1]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][2]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][3]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][5]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][6]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][7]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[2][9]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ;
  wire \gamma_d_reg[3][0]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][10]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][11]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][1]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][2]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][3]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][4]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][5]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][6]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][7]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][8]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire \gamma_d_reg[3][9]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ;
  wire gamma_d_reg_gate__0_n_0;
  wire gamma_d_reg_gate__10_n_0;
  wire gamma_d_reg_gate__1_n_0;
  wire gamma_d_reg_gate__2_n_0;
  wire gamma_d_reg_gate__3_n_0;
  wire gamma_d_reg_gate__4_n_0;
  wire gamma_d_reg_gate__5_n_0;
  wire gamma_d_reg_gate__6_n_0;
  wire gamma_d_reg_gate__7_n_0;
  wire gamma_d_reg_gate__8_n_0;
  wire gamma_d_reg_gate__9_n_0;
  wire gamma_d_reg_gate_n_0;
  wire \m0_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m0_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m0_d_reg[3][11]_0 ;
  wire [11:0]\m0_d_reg[3]_1 ;
  wire m0_d_reg_gate__0_n_0;
  wire m0_d_reg_gate__10_n_0;
  wire m0_d_reg_gate__1_n_0;
  wire m0_d_reg_gate__2_n_0;
  wire m0_d_reg_gate__3_n_0;
  wire m0_d_reg_gate__4_n_0;
  wire m0_d_reg_gate__5_n_0;
  wire m0_d_reg_gate__6_n_0;
  wire m0_d_reg_gate__7_n_0;
  wire m0_d_reg_gate__8_n_0;
  wire m0_d_reg_gate__9_n_0;
  wire m0_d_reg_gate_n_0;
  wire \m2_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m2_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m2_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire [11:0]\m2_d_reg[3]_3 ;
  wire m2_d_reg_gate__0_n_0;
  wire m2_d_reg_gate__10_n_0;
  wire m2_d_reg_gate__1_n_0;
  wire m2_d_reg_gate__2_n_0;
  wire m2_d_reg_gate__3_n_0;
  wire m2_d_reg_gate__4_n_0;
  wire m2_d_reg_gate__5_n_0;
  wire m2_d_reg_gate__6_n_0;
  wire m2_d_reg_gate__7_n_0;
  wire m2_d_reg_gate__8_n_0;
  wire m2_d_reg_gate__9_n_0;
  wire m2_d_reg_gate_n_0;
  wire \m3_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ;
  wire \m3_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire \m3_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ;
  wire [11:0]\m3_d_reg[3]_2 ;
  wire m3_d_reg_gate__0_n_0;
  wire m3_d_reg_gate__10_n_0;
  wire m3_d_reg_gate__1_n_0;
  wire m3_d_reg_gate__2_n_0;
  wire m3_d_reg_gate__3_n_0;
  wire m3_d_reg_gate__4_n_0;
  wire m3_d_reg_gate__5_n_0;
  wire m3_d_reg_gate__6_n_0;
  wire m3_d_reg_gate__7_n_0;
  wire m3_d_reg_gate__8_n_0;
  wire m3_d_reg_gate__9_n_0;
  wire m3_d_reg_gate_n_0;
  wire resetn;
  wire resetn_0;
  wire [12:0]result;
  wire sum_signed_carry__0_i_2_n_0;
  wire sum_signed_carry__0_i_3_n_0;
  wire sum_signed_carry__0_i_4_n_0;
  wire sum_signed_carry__0_i_5_n_0;
  wire sum_signed_carry__1_i_2__3_n_0;
  wire sum_signed_carry__1_i_3__3_n_0;
  wire sum_signed_carry__1_i_4_n_0;
  wire sum_signed_carry__1_i_5__3_n_0;
  wire sum_signed_carry_i_2_n_0;
  wire sum_signed_carry_i_3_n_0;
  wire sum_signed_carry_i_4_n_0;
  wire sum_signed_carry_i_5__3_n_0;
  wire u_add_c0_n_0;
  wire u_add_c0_n_1;
  wire u_add_c0_n_10;
  wire u_add_c0_n_11;
  wire u_add_c0_n_12;
  wire u_add_c0_n_13;
  wire u_add_c0_n_14;
  wire u_add_c0_n_15;
  wire u_add_c0_n_16;
  wire u_add_c0_n_17;
  wire u_add_c0_n_18;
  wire u_add_c0_n_19;
  wire u_add_c0_n_2;
  wire u_add_c0_n_20;
  wire u_add_c0_n_21;
  wire u_add_c0_n_22;
  wire u_add_c0_n_23;
  wire u_add_c0_n_3;
  wire u_add_c0_n_4;
  wire u_add_c0_n_5;
  wire u_add_c0_n_6;
  wire u_add_c0_n_7;
  wire u_add_c0_n_8;
  wire u_add_c0_n_9;
  wire u_add_c1_n_0;
  wire u_add_c1_n_1;
  wire u_add_c1_n_10;
  wire u_add_c1_n_11;
  wire u_add_c1_n_12;
  wire u_add_c1_n_13;
  wire u_add_c1_n_14;
  wire u_add_c1_n_15;
  wire u_add_c1_n_16;
  wire u_add_c1_n_2;
  wire u_add_c1_n_3;
  wire u_add_c1_n_4;
  wire u_add_c1_n_5;
  wire u_add_c1_n_6;
  wire u_add_c1_n_7;
  wire u_add_c1_n_8;
  wire u_add_c1_n_9;
  wire u_mul_0_n_24;
  wire u_mul_0_n_25;
  wire u_mul_0_n_26;
  wire u_mul_0_n_27;
  wire u_mul_0_n_28;
  wire u_mul_0_n_29;
  wire u_mul_0_n_30;
  wire u_mul_0_n_31;
  wire u_mul_0_n_32;
  wire u_mul_0_n_33;
  wire u_mul_0_n_34;
  wire u_mul_0_n_35;
  wire u_mul_1_n_0;
  wire u_mul_1_n_1;
  wire u_mul_1_n_10;
  wire u_mul_1_n_11;
  wire u_mul_1_n_12;
  wire u_mul_1_n_13;
  wire u_mul_1_n_14;
  wire u_mul_1_n_15;
  wire u_mul_1_n_16;
  wire u_mul_1_n_17;
  wire u_mul_1_n_18;
  wire u_mul_1_n_19;
  wire u_mul_1_n_2;
  wire u_mul_1_n_20;
  wire u_mul_1_n_21;
  wire u_mul_1_n_22;
  wire u_mul_1_n_23;
  wire u_mul_1_n_3;
  wire u_mul_1_n_4;
  wire u_mul_1_n_5;
  wire u_mul_1_n_6;
  wire u_mul_1_n_7;
  wire u_mul_1_n_8;
  wire u_mul_1_n_9;
  wire u_mul_2_n_0;
  wire u_mul_2_n_1;
  wire u_mul_2_n_10;
  wire u_mul_2_n_11;
  wire u_mul_2_n_2;
  wire u_mul_2_n_3;
  wire u_mul_2_n_4;
  wire u_mul_2_n_5;
  wire u_mul_2_n_6;
  wire u_mul_2_n_7;
  wire u_mul_2_n_8;
  wire u_mul_2_n_9;
  wire u_mul_3_n_0;
  wire u_mul_3_n_1;
  wire u_mul_3_n_10;
  wire u_mul_3_n_11;
  wire u_mul_3_n_2;
  wire u_mul_3_n_3;
  wire u_mul_3_n_4;
  wire u_mul_3_n_5;
  wire u_mul_3_n_6;
  wire u_mul_3_n_7;
  wire u_mul_3_n_8;
  wire u_mul_3_n_9;
  wire u_mul_4_n_1;
  wire u_mul_4_n_10;
  wire u_mul_4_n_11;
  wire u_mul_4_n_12;
  wire u_mul_4_n_13;
  wire u_mul_4_n_14;
  wire u_mul_4_n_15;
  wire u_mul_4_n_16;
  wire u_mul_4_n_17;
  wire u_mul_4_n_18;
  wire u_mul_4_n_19;
  wire u_mul_4_n_2;
  wire u_mul_4_n_20;
  wire u_mul_4_n_21;
  wire u_mul_4_n_22;
  wire u_mul_4_n_23;
  wire u_mul_4_n_24;
  wire u_mul_4_n_25;
  wire u_mul_4_n_26;
  wire u_mul_4_n_27;
  wire u_mul_4_n_28;
  wire u_mul_4_n_29;
  wire u_mul_4_n_3;
  wire u_mul_4_n_30;
  wire u_mul_4_n_31;
  wire u_mul_4_n_32;
  wire u_mul_4_n_33;
  wire u_mul_4_n_34;
  wire u_mul_4_n_35;
  wire u_mul_4_n_36;
  wire u_mul_4_n_37;
  wire u_mul_4_n_38;
  wire u_mul_4_n_39;
  wire u_mul_4_n_4;
  wire u_mul_4_n_40;
  wire u_mul_4_n_41;
  wire u_mul_4_n_42;
  wire u_mul_4_n_43;
  wire u_mul_4_n_44;
  wire u_mul_4_n_45;
  wire u_mul_4_n_46;
  wire u_mul_4_n_47;
  wire u_mul_4_n_48;
  wire u_mul_4_n_49;
  wire u_mul_4_n_5;
  wire u_mul_4_n_6;
  wire u_mul_4_n_7;
  wire u_mul_4_n_8;
  wire u_mul_4_n_9;
  wire [3:1]\NLW_c_pkt_reg[23]_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_c_pkt_reg[23]_i_11_O_UNCONNECTED ;

  FDCE \a0_s0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [0]),
        .Q(a0_s0[0]));
  FDCE \a0_s0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [10]),
        .Q(a0_s0[10]));
  FDCE \a0_s0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [11]),
        .Q(a0_s0[11]));
  FDCE \a0_s0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [1]),
        .Q(a0_s0[1]));
  FDCE \a0_s0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [2]),
        .Q(a0_s0[2]));
  FDCE \a0_s0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [3]),
        .Q(a0_s0[3]));
  FDCE \a0_s0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [4]),
        .Q(a0_s0[4]));
  FDCE \a0_s0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [5]),
        .Q(a0_s0[5]));
  FDCE \a0_s0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [6]),
        .Q(a0_s0[6]));
  FDCE \a0_s0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [7]),
        .Q(a0_s0[7]));
  FDCE \a0_s0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [8]),
        .Q(a0_s0[8]));
  FDCE \a0_s0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\a0_s0_reg[11]_0 [9]),
        .Q(a0_s0[9]));
  FDCE \a1_s0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[0]),
        .Q(a1_s0[0]));
  FDCE \a1_s0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[10]),
        .Q(a1_s0[10]));
  FDCE \a1_s0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[11]),
        .Q(a1_s0[11]));
  FDCE \a1_s0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[1]),
        .Q(a1_s0[1]));
  FDCE \a1_s0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[2]),
        .Q(a1_s0[2]));
  FDCE \a1_s0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[3]),
        .Q(a1_s0[3]));
  FDCE \a1_s0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[4]),
        .Q(a1_s0[4]));
  FDCE \a1_s0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[5]),
        .Q(a1_s0[5]));
  FDCE \a1_s0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[6]),
        .Q(a1_s0[6]));
  FDCE \a1_s0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[7]),
        .Q(a1_s0[7]));
  FDCE \a1_s0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[8]),
        .Q(a1_s0[8]));
  FDCE \a1_s0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(D[9]),
        .Q(a1_s0[9]));
  FDCE \b0_s0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [0]),
        .Q(b0_s0[0]));
  FDCE \b0_s0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [10]),
        .Q(b0_s0[10]));
  FDCE \b0_s0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [11]),
        .Q(b0_s0[11]));
  FDCE \b0_s0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [1]),
        .Q(b0_s0[1]));
  FDCE \b0_s0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [2]),
        .Q(b0_s0[2]));
  FDCE \b0_s0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [3]),
        .Q(b0_s0[3]));
  FDCE \b0_s0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [4]),
        .Q(b0_s0[4]));
  FDCE \b0_s0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [5]),
        .Q(b0_s0[5]));
  FDCE \b0_s0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [6]),
        .Q(b0_s0[6]));
  FDCE \b0_s0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [7]),
        .Q(b0_s0[7]));
  FDCE \b0_s0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [8]),
        .Q(b0_s0[8]));
  FDCE \b0_s0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b0_s0_reg[11]_0 [9]),
        .Q(b0_s0[9]));
  FDCE \b1_s0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [0]),
        .Q(b1_s0[0]));
  FDCE \b1_s0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [10]),
        .Q(b1_s0[10]));
  FDCE \b1_s0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [11]),
        .Q(b1_s0[11]));
  FDCE \b1_s0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [1]),
        .Q(b1_s0[1]));
  FDCE \b1_s0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [2]),
        .Q(b1_s0[2]));
  FDCE \b1_s0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [3]),
        .Q(b1_s0[3]));
  FDCE \b1_s0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [4]),
        .Q(b1_s0[4]));
  FDCE \b1_s0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [5]),
        .Q(b1_s0[5]));
  FDCE \b1_s0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [6]),
        .Q(b1_s0[6]));
  FDCE \b1_s0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [7]),
        .Q(b1_s0[7]));
  FDCE \b1_s0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [8]),
        .Q(b1_s0[8]));
  FDCE \b1_s0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(\b1_s0_reg[11]_0 [9]),
        .Q(b1_s0[9]));
  LUT2 #(
    .INIT(4'h9)) 
    \c_pkt[15]_i_6 
       (.I0(u_add_c1_n_0),
        .I1(\c_pkt_reg[23]_i_11_n_3 ),
        .O(\c_pkt[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \c_pkt[23]_i_3 
       (.I0(\c_pkt_reg[23]_i_11_n_3 ),
        .I1(u_add_c1_n_2),
        .O(\c_pkt[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \c_pkt[23]_i_4 
       (.I0(\c_pkt_reg[23]_i_11_n_3 ),
        .I1(u_add_c1_n_3),
        .O(\c_pkt[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \c_pkt[23]_i_6 
       (.I0(u_add_c1_n_4),
        .I1(\c_pkt_reg[23]_i_11_n_3 ),
        .O(\c_pkt[23]_i_6_n_0 ));
  FDCE \c_pkt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_11),
        .Q(Q[0]));
  FDCE \c_pkt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_1),
        .Q(Q[10]));
  FDCE \c_pkt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_0),
        .Q(Q[11]));
  FDCE \c_pkt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_16),
        .Q(Q[12]));
  FDCE \c_pkt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_15),
        .Q(Q[13]));
  FDCE \c_pkt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_14),
        .Q(Q[14]));
  FDCE \c_pkt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_13),
        .Q(Q[15]));
  FDCE \c_pkt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_12),
        .Q(Q[16]));
  FDCE \c_pkt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_11),
        .Q(Q[17]));
  FDCE \c_pkt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_10),
        .Q(Q[18]));
  FDCE \c_pkt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_9),
        .Q(Q[19]));
  FDCE \c_pkt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_10),
        .Q(Q[1]));
  FDCE \c_pkt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_8),
        .Q(Q[20]));
  FDCE \c_pkt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_7),
        .Q(Q[21]));
  FDCE \c_pkt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_6),
        .Q(Q[22]));
  FDCE \c_pkt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c1_n_5),
        .Q(Q[23]));
  CARRY4 \c_pkt_reg[23]_i_11 
       (.CI(u_add_c1_n_1),
        .CO({\NLW_c_pkt_reg[23]_i_11_CO_UNCONNECTED [3:1],\c_pkt_reg[23]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_c_pkt_reg[23]_i_11_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \c_pkt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_9),
        .Q(Q[2]));
  FDCE \c_pkt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_8),
        .Q(Q[3]));
  FDCE \c_pkt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_7),
        .Q(Q[4]));
  FDCE \c_pkt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_6),
        .Q(Q[5]));
  FDCE \c_pkt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_5),
        .Q(Q[6]));
  FDCE \c_pkt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_4),
        .Q(Q[7]));
  FDCE \c_pkt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_3),
        .Q(Q[8]));
  FDCE \c_pkt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(u_add_c0_n_2),
        .Q(Q[9]));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][0]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][0]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[0]),
        .Q(\gamma_d_reg[2][0]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][10]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][10]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[10]),
        .Q(\gamma_d_reg[2][10]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[11]),
        .Q(\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][1]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][1]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[1]),
        .Q(\gamma_d_reg[2][1]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][2]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][2]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[2]),
        .Q(\gamma_d_reg[2][2]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][3]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][3]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[3]),
        .Q(\gamma_d_reg[2][3]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[4]),
        .Q(\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][5]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][5]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[5]),
        .Q(\gamma_d_reg[2][5]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][6]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][6]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[6]),
        .Q(\gamma_d_reg[2][6]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][7]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][7]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[7]),
        .Q(\gamma_d_reg[2][7]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[8]),
        .Q(\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/gamma_d_reg[2] " *) 
  (* srl_name = "\inst/u_core/u_pwm/gamma_d_reg[2][9]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 " *) 
  SRL16E \gamma_d_reg[2][9]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(g_red[9]),
        .Q(\gamma_d_reg[2][9]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ));
  FDRE \gamma_d_reg[3][0]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][0]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][0]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][10]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][10]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][10]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][11]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][11]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][1]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][1]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][1]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][2]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][2]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][2]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][3]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][3]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][3]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][4]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][4]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][5]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][5]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][5]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][6]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][6]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][6]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][7]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][7]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][7]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][8]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][8]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE \gamma_d_reg[3][9]_inst_u_core_pwm_wen_pipe_reg_c_2 
       (.C(clk),
        .CE(1'b1),
        .D(\gamma_d_reg[2][9]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_n_0 ),
        .Q(\gamma_d_reg[3][9]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate
       (.I0(\gamma_d_reg[3][11]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__0
       (.I0(\gamma_d_reg[3][10]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__1
       (.I0(\gamma_d_reg[3][9]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__10
       (.I0(\gamma_d_reg[3][0]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__2
       (.I0(\gamma_d_reg[3][8]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__3
       (.I0(\gamma_d_reg[3][7]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__4
       (.I0(\gamma_d_reg[3][6]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__5
       (.I0(\gamma_d_reg[3][5]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__6
       (.I0(\gamma_d_reg[3][4]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__7
       (.I0(\gamma_d_reg[3][3]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__8
       (.I0(\gamma_d_reg[3][2]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gamma_d_reg_gate__9
       (.I0(\gamma_d_reg[3][1]_inst_u_core_pwm_wen_pipe_reg_c_2_n_0 ),
        .I1(\b_reg_reg[11] ),
        .O(gamma_d_reg_gate__9_n_0));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_24),
        .Q(\m0_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_26),
        .Q(\m0_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_25),
        .Q(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_35),
        .Q(\m0_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_34),
        .Q(\m0_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_33),
        .Q(\m0_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_32),
        .Q(\m0_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_31),
        .Q(\m0_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_30),
        .Q(\m0_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_29),
        .Q(\m0_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_28),
        .Q(\m0_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m0_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m0_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m0_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_0_n_27),
        .Q(\m0_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  FDRE \m0_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m0_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m0_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m0_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDCE \m0_d_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__10_n_0),
        .Q(\m0_d_reg[3]_1 [0]));
  FDCE \m0_d_reg[3][10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__0_n_0),
        .Q(\m0_d_reg[3]_1 [10]));
  FDCE \m0_d_reg[3][11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate_n_0),
        .Q(\m0_d_reg[3]_1 [11]));
  FDCE \m0_d_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__9_n_0),
        .Q(\m0_d_reg[3]_1 [1]));
  FDCE \m0_d_reg[3][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__8_n_0),
        .Q(\m0_d_reg[3]_1 [2]));
  FDCE \m0_d_reg[3][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__7_n_0),
        .Q(\m0_d_reg[3]_1 [3]));
  FDCE \m0_d_reg[3][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__6_n_0),
        .Q(\m0_d_reg[3]_1 [4]));
  FDCE \m0_d_reg[3][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__5_n_0),
        .Q(\m0_d_reg[3]_1 [5]));
  FDCE \m0_d_reg[3][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__4_n_0),
        .Q(\m0_d_reg[3]_1 [6]));
  FDCE \m0_d_reg[3][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__3_n_0),
        .Q(\m0_d_reg[3]_1 [7]));
  FDCE \m0_d_reg[3][8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__2_n_0),
        .Q(\m0_d_reg[3]_1 [8]));
  FDCE \m0_d_reg[3][9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m0_d_reg_gate__1_n_0),
        .Q(\m0_d_reg[3]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate
       (.I0(\m0_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__0
       (.I0(\m0_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__1
       (.I0(\m0_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__10
       (.I0(\m0_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__2
       (.I0(\m0_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__3
       (.I0(\m0_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__4
       (.I0(\m0_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__5
       (.I0(\m0_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__6
       (.I0(\m0_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__7
       (.I0(\m0_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__8
       (.I0(\m0_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m0_d_reg_gate__9
       (.I0(\m0_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m0_d_reg_gate__9_n_0));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_0),
        .Q(\m2_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_2),
        .Q(\m2_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_1),
        .Q(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_11),
        .Q(\m2_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_10),
        .Q(\m2_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_9),
        .Q(\m2_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_8),
        .Q(\m2_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_7),
        .Q(\m2_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_6),
        .Q(\m2_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_5),
        .Q(\m2_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_4),
        .Q(\m2_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m2_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m2_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m2_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_2_n_3),
        .Q(\m2_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  FDRE \m2_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m2_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m2_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m2_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDCE \m2_d_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__10_n_0),
        .Q(\m2_d_reg[3]_3 [0]));
  FDCE \m2_d_reg[3][10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__0_n_0),
        .Q(\m2_d_reg[3]_3 [10]));
  FDCE \m2_d_reg[3][11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate_n_0),
        .Q(\m2_d_reg[3]_3 [11]));
  FDCE \m2_d_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__9_n_0),
        .Q(\m2_d_reg[3]_3 [1]));
  FDCE \m2_d_reg[3][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__8_n_0),
        .Q(\m2_d_reg[3]_3 [2]));
  FDCE \m2_d_reg[3][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__7_n_0),
        .Q(\m2_d_reg[3]_3 [3]));
  FDCE \m2_d_reg[3][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__6_n_0),
        .Q(\m2_d_reg[3]_3 [4]));
  FDCE \m2_d_reg[3][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__5_n_0),
        .Q(\m2_d_reg[3]_3 [5]));
  FDCE \m2_d_reg[3][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__4_n_0),
        .Q(\m2_d_reg[3]_3 [6]));
  FDCE \m2_d_reg[3][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__3_n_0),
        .Q(\m2_d_reg[3]_3 [7]));
  FDCE \m2_d_reg[3][8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__2_n_0),
        .Q(\m2_d_reg[3]_3 [8]));
  FDCE \m2_d_reg[3][9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m2_d_reg_gate__1_n_0),
        .Q(\m2_d_reg[3]_3 [9]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate
       (.I0(\m2_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__0
       (.I0(\m2_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__1
       (.I0(\m2_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__10
       (.I0(\m2_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__2
       (.I0(\m2_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__3
       (.I0(\m2_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__4
       (.I0(\m2_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__5
       (.I0(\m2_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__6
       (.I0(\m2_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__7
       (.I0(\m2_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__8
       (.I0(\m2_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m2_d_reg_gate__9
       (.I0(\m2_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m2_d_reg_gate__9_n_0));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_0),
        .Q(\m3_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_2),
        .Q(\m3_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_1),
        .Q(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_11),
        .Q(\m3_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_10),
        .Q(\m3_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_9),
        .Q(\m3_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_8),
        .Q(\m3_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_7),
        .Q(\m3_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_6),
        .Q(\m3_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_5),
        .Q(\m3_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_4),
        .Q(\m3_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  (* srl_bus_name = "\inst/u_core/u_pwm/m3_d_reg[1] " *) 
  (* srl_name = "\inst/u_core/u_pwm/m3_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c " *) 
  SRL16E \m3_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(u_mul_3_n_3),
        .Q(\m3_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ));
  FDRE \m3_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][0]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][10]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][11]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][1]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][2]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][3]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][4]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][5]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][6]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][7]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][8]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDRE \m3_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0 
       (.C(clk),
        .CE(1'b1),
        .D(\m3_d_reg[1][9]_srl2_inst_u_core_pwm_wen_pipe_reg_c_n_0 ),
        .Q(\m3_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .R(1'b0));
  FDCE \m3_d_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__10_n_0),
        .Q(\m3_d_reg[3]_2 [0]));
  FDCE \m3_d_reg[3][10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__0_n_0),
        .Q(\m3_d_reg[3]_2 [10]));
  FDCE \m3_d_reg[3][11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate_n_0),
        .Q(\m3_d_reg[3]_2 [11]));
  FDCE \m3_d_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__9_n_0),
        .Q(\m3_d_reg[3]_2 [1]));
  FDCE \m3_d_reg[3][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__8_n_0),
        .Q(\m3_d_reg[3]_2 [2]));
  FDCE \m3_d_reg[3][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__7_n_0),
        .Q(\m3_d_reg[3]_2 [3]));
  FDCE \m3_d_reg[3][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__6_n_0),
        .Q(\m3_d_reg[3]_2 [4]));
  FDCE \m3_d_reg[3][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__5_n_0),
        .Q(\m3_d_reg[3]_2 [5]));
  FDCE \m3_d_reg[3][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__4_n_0),
        .Q(\m3_d_reg[3]_2 [6]));
  FDCE \m3_d_reg[3][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__3_n_0),
        .Q(\m3_d_reg[3]_2 [7]));
  FDCE \m3_d_reg[3][8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__2_n_0),
        .Q(\m3_d_reg[3]_2 [8]));
  FDCE \m3_d_reg[3][9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetn_0),
        .D(m3_d_reg_gate__1_n_0),
        .Q(\m3_d_reg[3]_2 [9]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate
       (.I0(\m3_d_reg[2][11]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__0
       (.I0(\m3_d_reg[2][10]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__1
       (.I0(\m3_d_reg[2][9]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__10
       (.I0(\m3_d_reg[2][0]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__2
       (.I0(\m3_d_reg[2][8]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__3
       (.I0(\m3_d_reg[2][7]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__4
       (.I0(\m3_d_reg[2][6]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__5
       (.I0(\m3_d_reg[2][5]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__6
       (.I0(\m3_d_reg[2][4]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__7
       (.I0(\m3_d_reg[2][3]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__8
       (.I0(\m3_d_reg[2][2]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m3_d_reg_gate__9
       (.I0(\m3_d_reg[2][1]_inst_u_core_pwm_wen_pipe_reg_c_0_n_0 ),
        .I1(\m0_d_reg[3][11]_0 ),
        .O(m3_d_reg_gate__9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_signed_carry__0_i_2
       (.I0(u_mul_4_n_41),
        .O(sum_signed_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_signed_carry__0_i_3
       (.I0(u_mul_4_n_42),
        .O(sum_signed_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_signed_carry__0_i_4
       (.I0(u_mul_4_n_43),
        .O(sum_signed_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_signed_carry__0_i_5
       (.I0(u_mul_4_n_44),
        .O(sum_signed_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_signed_carry__1_i_2__3
       (.I0(u_mul_4_n_49),
        .I1(u_mul_4_n_45),
        .O(sum_signed_carry__1_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_signed_carry__1_i_3__3
       (.I0(u_mul_4_n_49),
        .I1(u_mul_4_n_46),
        .O(sum_signed_carry__1_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_signed_carry__1_i_4
       (.I0(u_mul_4_n_47),
        .O(sum_signed_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_signed_carry__1_i_5__3
       (.I0(u_mul_4_n_48),
        .I1(u_mul_4_n_49),
        .O(sum_signed_carry__1_i_5__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_signed_carry_i_2
       (.I0(u_mul_4_n_37),
        .O(sum_signed_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_signed_carry_i_3
       (.I0(u_mul_4_n_38),
        .O(sum_signed_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sum_signed_carry_i_4
       (.I0(u_mul_4_n_39),
        .O(sum_signed_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_signed_carry_i_5__3
       (.I0(u_mul_4_n_40),
        .I1(u_mul_4_n_49),
        .O(sum_signed_carry_i_5__3_n_0));
  design_1_polymul_axi_top_0_0_mod_adder u_add_c0
       (.D({u_add_c0_n_0,u_add_c0_n_1,u_add_c0_n_2,u_add_c0_n_3,u_add_c0_n_4,u_add_c0_n_5,u_add_c0_n_6,u_add_c0_n_7,u_add_c0_n_8,u_add_c0_n_9,u_add_c0_n_10,u_add_c0_n_11}),
        .I66(\m0_d_reg[3]_1 ),
        .O({u_mul_4_n_37,u_mul_4_n_38,u_mul_4_n_39,u_mul_4_n_40}),
        .Q({u_mul_4_n_5,u_mul_4_n_6,u_mul_4_n_7,u_mul_4_n_8,u_mul_4_n_9,u_mul_4_n_10,u_mul_4_n_11,u_mul_4_n_12,u_mul_4_n_13,u_mul_4_n_14,u_mul_4_n_15,u_mul_4_n_16,u_mul_4_n_17}),
        .S({sum_signed_carry_i_2_n_0,sum_signed_carry_i_3_n_0,sum_signed_carry_i_4_n_0,sum_signed_carry_i_5__3_n_0}),
        .\c_pkt_reg[11] ({u_mul_4_n_46,u_mul_4_n_47,u_mul_4_n_48}),
        .\c_pkt_reg[11]_0 ({sum_signed_carry__1_i_2__3_n_0,sum_signed_carry__1_i_3__3_n_0,sum_signed_carry__1_i_4_n_0,sum_signed_carry__1_i_5__3_n_0}),
        .\c_pkt_reg[7] ({u_mul_4_n_41,u_mul_4_n_42,u_mul_4_n_43,u_mul_4_n_44}),
        .\c_pkt_reg[7]_0 ({sum_signed_carry__0_i_2_n_0,sum_signed_carry__0_i_3_n_0,sum_signed_carry__0_i_4_n_0,sum_signed_carry__0_i_5_n_0}),
        .\m0_d_reg[3][11] ({u_add_c0_n_20,u_add_c0_n_21,u_add_c0_n_22,u_add_c0_n_23}),
        .\m0_d_reg[3][3] ({u_add_c0_n_12,u_add_c0_n_13,u_add_c0_n_14,u_add_c0_n_15}),
        .\m0_d_reg[3][7] ({u_add_c0_n_16,u_add_c0_n_17,u_add_c0_n_18,u_add_c0_n_19}),
        .sum_signed_carry__0_i_1({u_mul_4_n_1,u_mul_4_n_2,u_mul_4_n_3,u_mul_4_n_4}),
        .sum_signed_carry__0_i_1_0({u_mul_4_n_25,u_mul_4_n_26,u_mul_4_n_27,u_mul_4_n_28}),
        .sum_signed_carry__1_i_1(u_mul_4_n_36),
        .sum_signed_carry__1_i_1_0({u_mul_4_n_18,u_mul_4_n_19,u_mul_4_n_20,u_mul_4_n_21}),
        .sum_signed_carry__1_i_1_1({u_mul_4_n_29,u_mul_4_n_30,u_mul_4_n_31,u_mul_4_n_32}),
        .sum_signed_carry__1_i_1_2({u_mul_4_n_22,u_mul_4_n_23,u_mul_4_n_24}),
        .sum_signed_carry__1_i_1_3({u_mul_4_n_33,u_mul_4_n_34,u_mul_4_n_35}));
  design_1_polymul_axi_top_0_0_mod_adder_2 u_add_c1
       (.CO(u_add_c1_n_1),
        .D({u_add_c1_n_5,u_add_c1_n_6,u_add_c1_n_7,u_add_c1_n_8,u_add_c1_n_9,u_add_c1_n_10,u_add_c1_n_11,u_add_c1_n_12,u_add_c1_n_13,u_add_c1_n_14,u_add_c1_n_15,u_add_c1_n_16}),
        .I73(\m2_d_reg[3]_3 ),
        .O(u_add_c1_n_0),
        .S(\c_pkt[15]_i_6_n_0 ),
        .\c_pkt_reg[23] ({\c_pkt[23]_i_3_n_0 ,\c_pkt[23]_i_4_n_0 ,\c_pkt[23]_i_6_n_0 }),
        .\m2_d_reg[3][11] ({u_add_c1_n_2,u_add_c1_n_3,u_add_c1_n_4}),
        .\m3_d_reg[3]_2 (\m3_d_reg[3]_2 ));
  design_1_polymul_axi_top_0_0_mod_multiplier u_mul_0
       (.Q(b_reg),
        .\R_s2_reg[13] (u_mul_0_n_24),
        .\R_s2_reg[13]_0 (u_mul_0_n_25),
        .\R_s2_reg[13]_1 (u_mul_0_n_26),
        .\R_s2_reg[13]_10 (u_mul_0_n_35),
        .\R_s2_reg[13]_2 (u_mul_0_n_27),
        .\R_s2_reg[13]_3 (u_mul_0_n_28),
        .\R_s2_reg[13]_4 (u_mul_0_n_29),
        .\R_s2_reg[13]_5 (u_mul_0_n_30),
        .\R_s2_reg[13]_6 (u_mul_0_n_31),
        .\R_s2_reg[13]_7 (u_mul_0_n_32),
        .\R_s2_reg[13]_8 (u_mul_0_n_33),
        .\R_s2_reg[13]_9 (u_mul_0_n_34),
        .\a_reg_reg[11]_0 (a_reg),
        .\a_reg_reg[11]_1 (a0_s0),
        .\b_reg_reg[11]_0 (b0_s0),
        .\c0_s1_reg[0] (\c0_s1_reg[0]_1 ),
        .\c1_s1_reg[0] (resetn_0),
        .clk(clk));
  design_1_polymul_axi_top_0_0_mod_multiplier_3 u_mul_1
       (.D(result),
        .Q({u_mul_1_n_0,u_mul_1_n_1,u_mul_1_n_2,u_mul_1_n_3,u_mul_1_n_4,u_mul_1_n_5,u_mul_1_n_6,u_mul_1_n_7,u_mul_1_n_8,u_mul_1_n_9,u_mul_1_n_10,u_mul_1_n_11}),
        .\R_s2_reg[0] (resetn_0),
        .\a_reg_reg[11]_0 ({u_mul_1_n_12,u_mul_1_n_13,u_mul_1_n_14,u_mul_1_n_15,u_mul_1_n_16,u_mul_1_n_17,u_mul_1_n_18,u_mul_1_n_19,u_mul_1_n_20,u_mul_1_n_21,u_mul_1_n_22,u_mul_1_n_23}),
        .\a_reg_reg[11]_1 (a1_s0),
        .\b_reg_reg[11]_0 (b1_s0),
        .\c0_s1_reg[0] (\c0_s1_reg[0] ),
        .clk(clk));
  design_1_polymul_axi_top_0_0_mod_multiplier_4 u_mul_2
       (.Q({u_mul_1_n_0,u_mul_1_n_1,u_mul_1_n_2,u_mul_1_n_3,u_mul_1_n_4,u_mul_1_n_5,u_mul_1_n_6,u_mul_1_n_7,u_mul_1_n_8,u_mul_1_n_9,u_mul_1_n_10,u_mul_1_n_11}),
        .\R_s2_reg[13] (u_mul_2_n_0),
        .\R_s2_reg[13]_0 (u_mul_2_n_1),
        .\R_s2_reg[13]_1 (u_mul_2_n_2),
        .\R_s2_reg[13]_10 (u_mul_2_n_11),
        .\R_s2_reg[13]_2 (u_mul_2_n_3),
        .\R_s2_reg[13]_3 (u_mul_2_n_4),
        .\R_s2_reg[13]_4 (u_mul_2_n_5),
        .\R_s2_reg[13]_5 (u_mul_2_n_6),
        .\R_s2_reg[13]_6 (u_mul_2_n_7),
        .\R_s2_reg[13]_7 (u_mul_2_n_8),
        .\R_s2_reg[13]_8 (u_mul_2_n_9),
        .\R_s2_reg[13]_9 (u_mul_2_n_10),
        .\c0_s1_reg[0] (\c0_s1_reg[0]_3 ),
        .\c1_s1_reg[0] (resetn_0),
        .clk(clk),
        .product_0(a_reg));
  design_1_polymul_axi_top_0_0_mod_multiplier_5 u_mul_3
       (.Q(b_reg),
        .\R_s2_reg[0] (resetn_0),
        .\R_s2_reg[13] (u_mul_3_n_0),
        .\R_s2_reg[13]_0 (u_mul_3_n_1),
        .\R_s2_reg[13]_1 (u_mul_3_n_2),
        .\R_s2_reg[13]_10 (u_mul_3_n_11),
        .\R_s2_reg[13]_2 (u_mul_3_n_3),
        .\R_s2_reg[13]_3 (u_mul_3_n_4),
        .\R_s2_reg[13]_4 (u_mul_3_n_5),
        .\R_s2_reg[13]_5 (u_mul_3_n_6),
        .\R_s2_reg[13]_6 (u_mul_3_n_7),
        .\R_s2_reg[13]_7 (u_mul_3_n_8),
        .\R_s2_reg[13]_8 (u_mul_3_n_9),
        .\R_s2_reg[13]_9 (u_mul_3_n_10),
        .\c0_s1_reg[0] (\c0_s1_reg[0]_2 ),
        .clk(clk),
        .product_0({u_mul_1_n_12,u_mul_1_n_13,u_mul_1_n_14,u_mul_1_n_15,u_mul_1_n_16,u_mul_1_n_17,u_mul_1_n_18,u_mul_1_n_19,u_mul_1_n_20,u_mul_1_n_21,u_mul_1_n_22,u_mul_1_n_23}));
  design_1_polymul_axi_top_0_0_mod_multiplier_6 u_mul_4
       (.CO(u_mul_4_n_49),
        .D(result),
        .I66(\m0_d_reg[3]_1 ),
        .O({u_mul_4_n_37,u_mul_4_n_38,u_mul_4_n_39,u_mul_4_n_40}),
        .Q({u_mul_4_n_5,u_mul_4_n_6,u_mul_4_n_7,u_mul_4_n_8,u_mul_4_n_9,u_mul_4_n_10,u_mul_4_n_11,u_mul_4_n_12,u_mul_4_n_13,u_mul_4_n_14,u_mul_4_n_15,u_mul_4_n_16,u_mul_4_n_17}),
        .\R_s2_reg[0] ({u_mul_4_n_1,u_mul_4_n_2,u_mul_4_n_3,u_mul_4_n_4}),
        .\R_s2_reg[0]_0 ({u_mul_4_n_25,u_mul_4_n_26,u_mul_4_n_27,u_mul_4_n_28}),
        .\R_s2_reg[10] ({u_mul_4_n_33,u_mul_4_n_34,u_mul_4_n_35}),
        .\R_s2_reg[12] (u_mul_4_n_36),
        .\R_s2_reg[7] ({u_mul_4_n_18,u_mul_4_n_19,u_mul_4_n_20,u_mul_4_n_21}),
        .\R_s2_reg[8] ({u_mul_4_n_29,u_mul_4_n_30,u_mul_4_n_31,u_mul_4_n_32}),
        .\R_s2_reg[9] ({u_mul_4_n_22,u_mul_4_n_23,u_mul_4_n_24}),
        .\b_reg_reg[0]_0 (gamma_d_reg_gate__10_n_0),
        .\b_reg_reg[10]_0 (gamma_d_reg_gate__0_n_0),
        .\b_reg_reg[11]_0 (gamma_d_reg_gate_n_0),
        .\b_reg_reg[1]_0 (gamma_d_reg_gate__9_n_0),
        .\b_reg_reg[2]_0 (gamma_d_reg_gate__8_n_0),
        .\b_reg_reg[3]_0 (gamma_d_reg_gate__7_n_0),
        .\b_reg_reg[4]_0 (gamma_d_reg_gate__6_n_0),
        .\b_reg_reg[5]_0 (gamma_d_reg_gate__5_n_0),
        .\b_reg_reg[6]_0 (gamma_d_reg_gate__4_n_0),
        .\b_reg_reg[7]_0 (gamma_d_reg_gate__3_n_0),
        .\b_reg_reg[8]_0 (gamma_d_reg_gate__2_n_0),
        .\b_reg_reg[9]_0 (gamma_d_reg_gate__1_n_0),
        .\c0_s1_reg[0] (\c0_s1_reg[0]_0 ),
        .\c_pkt_reg[11] ({u_add_c0_n_20,u_add_c0_n_21,u_add_c0_n_22,u_add_c0_n_23}),
        .\c_pkt_reg[3] ({u_add_c0_n_12,u_add_c0_n_13,u_add_c0_n_14,u_add_c0_n_15}),
        .\c_pkt_reg[7] ({u_add_c0_n_16,u_add_c0_n_17,u_add_c0_n_18,u_add_c0_n_19}),
        .clk(clk),
        .\m0_d_reg[3][11] ({u_mul_4_n_45,u_mul_4_n_46,u_mul_4_n_47,u_mul_4_n_48}),
        .\m0_d_reg[3][7] ({u_mul_4_n_41,u_mul_4_n_42,u_mul_4_n_43,u_mul_4_n_44}),
        .resetn(resetn),
        .resetn_0(resetn_0));
endmodule

(* ORIG_REF_NAME = "zetas_pwm_rom" *) 
module design_1_polymul_axi_top_0_0_zetas_pwm_rom
   (g_red,
    clk,
    dout_reg_0,
    Q);
  output [11:0]g_red;
  input clk;
  input dout_reg_0;
  input [6:0]Q;

  wire [6:0]Q;
  wire clk;
  wire dout_reg_0;
  wire dout_reg_n_3;
  wire [11:0]g_red;
  wire \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_2 ;
  wire \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_3 ;
  wire \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4_n_0 ;
  wire \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5_n_0 ;
  wire \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_6_n_0 ;
  wire \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_0 ;
  wire \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_1 ;
  wire \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_2 ;
  wire \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_3 ;
  wire \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_3_n_0 ;
  wire \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4_n_0 ;
  wire \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5_n_0 ;
  wire \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_6_n_0 ;
  wire \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_0 ;
  wire \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_1 ;
  wire \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_2 ;
  wire \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_3 ;
  wire \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_3_n_0 ;
  wire \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4_n_0 ;
  wire \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5_n_0 ;
  wire [11:0]pwm_gamma_w;
  wire [11:1]\u_pwm/g_red0 ;
  wire \u_pwm/g_red1 ;
  wire [15:13]NLW_dout_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_dout_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPBDOP_UNCONNECTED;
  wire [3:2]\NLW_gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_O_UNCONNECTED ;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d13" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1664" *) 
  (* RTL_RAM_NAME = "u_zeta_pwm_rom/dout" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "12" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "12" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h08B5044C041108F00A2E02D3069C066502A80A590ABA024702380AC90CF00011),
    .INIT_01(256'h01170BEA013A0BC70495086C0A0D02F40C1800E900300CD1029B0A6607800581),
    .INIT_02(256'h02820A7F074C05B5094903B805CA0737060406FD021C0AE5068E0673065A06A7),
    .INIT_03(256'h0A8002810BF5010C03E009210A2402DD03AD0954037C098503FD0904095603AB),
    .INIT_04(256'h0694066D04D7082A030C09F50B8A0177006D0C94050C07F5040708FA06D10630),
    .INIT_05(256'h02DF0A22035F09A20AD0023104CE08330A0C02F5022C0AD50BC2013F08DA0427),
    .INIT_06(256'h098B0376022A0AD7049B0866088A047708FF04020B6E019308BD0444020D0AF4),
    .INIT_07(256'h0497086A098C0375018A0B7704C3083E08FC040505AF0752084504BC064706BA),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    dout_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_dout_reg_DOADO_UNCONNECTED[15:13],dout_reg_n_3,pwm_gamma_w}),
        .DOBDO(NLW_dout_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_dout_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_dout_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(dout_reg_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gamma_d_reg[2][0]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(pwm_gamma_w[0]),
        .I1(\u_pwm/g_red1 ),
        .O(g_red[0]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][10]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [10]),
        .I1(pwm_gamma_w[10]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [11]),
        .I1(pwm_gamma_w[11]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[11]));
  CARRY4 \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2 
       (.CI(\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_0 ),
        .CO({\NLW_gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_CO_UNCONNECTED [3:2],\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_2 ,\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pwm_gamma_w[9]}),
        .O({\NLW_gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_O_UNCONNECTED [3],\u_pwm/g_red0 [11:9]}),
        .S({1'b0,pwm_gamma_w[11:10],\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4_n_0 }));
  LUT6 #(
    .INIT(64'hAAA8888800000000)) 
    \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_3 
       (.I0(pwm_gamma_w[10]),
        .I1(pwm_gamma_w[9]),
        .I2(\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5_n_0 ),
        .I3(\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_6_n_0 ),
        .I4(pwm_gamma_w[8]),
        .I5(pwm_gamma_w[11]),
        .O(\u_pwm/g_red1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4 
       (.I0(pwm_gamma_w[9]),
        .O(\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5 
       (.I0(pwm_gamma_w[2]),
        .I1(pwm_gamma_w[1]),
        .I2(pwm_gamma_w[4]),
        .I3(pwm_gamma_w[3]),
        .O(\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_6 
       (.I0(pwm_gamma_w[6]),
        .I1(pwm_gamma_w[5]),
        .I2(pwm_gamma_w[0]),
        .I3(pwm_gamma_w[7]),
        .O(\gamma_d_reg[2][11]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][1]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [1]),
        .I1(pwm_gamma_w[1]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[1]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][2]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [2]),
        .I1(pwm_gamma_w[2]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[2]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][3]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [3]),
        .I1(pwm_gamma_w[3]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[3]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [4]),
        .I1(pwm_gamma_w[4]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[4]));
  CARRY4 \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2 
       (.CI(1'b0),
        .CO({\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_0 ,\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_1 ,\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_2 ,\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_3 }),
        .CYINIT(pwm_gamma_w[0]),
        .DI(pwm_gamma_w[4:1]),
        .O(\u_pwm/g_red0 [4:1]),
        .S({\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_3_n_0 ,\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4_n_0 ,\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5_n_0 ,\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_6_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_3 
       (.I0(pwm_gamma_w[4]),
        .O(\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4 
       (.I0(pwm_gamma_w[3]),
        .O(\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5 
       (.I0(pwm_gamma_w[2]),
        .O(\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_6 
       (.I0(pwm_gamma_w[1]),
        .O(\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][5]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [5]),
        .I1(pwm_gamma_w[5]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[5]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][6]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [6]),
        .I1(pwm_gamma_w[6]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[6]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][7]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [7]),
        .I1(pwm_gamma_w[7]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[7]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [8]),
        .I1(pwm_gamma_w[8]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[8]));
  CARRY4 \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2 
       (.CI(\gamma_d_reg[2][4]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_0 ),
        .CO({\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_0 ,\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_1 ,\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_2 ,\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,pwm_gamma_w[7:5]}),
        .O(\u_pwm/g_red0 [8:5]),
        .S({pwm_gamma_w[8],\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_3_n_0 ,\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4_n_0 ,\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_3 
       (.I0(pwm_gamma_w[7]),
        .O(\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4 
       (.I0(pwm_gamma_w[6]),
        .O(\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5 
       (.I0(pwm_gamma_w[5]),
        .O(\gamma_d_reg[2][8]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \gamma_d_reg[2][9]_srl4_inst_u_core_pwm_wen_pipe_reg_c_1_i_1 
       (.I0(\u_pwm/g_red0 [9]),
        .I1(pwm_gamma_w[9]),
        .I2(\u_pwm/g_red1 ),
        .O(g_red[9]));
endmodule

(* ORIG_REF_NAME = "zetas_rom" *) 
module design_1_polymul_axi_top_0_0_zetas_rom
   (D,
    clk,
    ag_read_en,
    twiddle_addr);
  output [12:0]D;
  input clk;
  input ag_read_en;
  input [6:0]twiddle_addr;

  wire [12:0]D;
  wire ag_read_en;
  wire clk;
  wire [6:0]twiddle_addr;
  wire [15:13]NLW_dout_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_dout_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d13" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1664" *) 
  (* RTL_RAM_NAME = "u_zeta_rom/dout" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "12" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "12" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h06D202390CBC0AE2031D00C1077F04260350076902760A520CD90A1406C10001),
    .INIT_01(256'h033507B60B3F09590B420217082E0592053508C000380BE605C4053B098F0128),
    .INIT_02(256'h077B052800210B31027809D107B9028A080708E5090004AD06DC0CB5014B0121),
    .INIT_03(256'h038E04CB0C2609AA028805C90A390A57096205FE0B34059E01C40327059B090F),
    .INIT_04(256'h0BEA0BC7086C02F400E90CD10A660581044C08F002D306650A5902470AC90011),
    .INIT_05(256'h0281010C092102DD09540985090403AB0A7F05B503B8073706FD0AE5067306A7),
    .INIT_06(256'h0A2209A20231083302F50AD5013F0427066D082A09F501770C9407F508FA0630),
    .INIT_07(256'h086A03750B77083E0405075204BC06BA03760AD7086604770402019304440AF4),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    dout_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,twiddle_addr,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_dout_reg_DOADO_UNCONNECTED[15:13],D}),
        .DOBDO(NLW_dout_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_dout_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_dout_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(ag_read_en),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
