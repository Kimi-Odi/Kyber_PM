// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat May 16 14:59:38 2026
// Host        : LAPTOP-RNRU6CQQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_polymul_axi_top_0_0_stub.v
// Design      : design_1_polymul_axi_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "polymul_axi_top,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, resetn, S_AXIS_MM2S_tdata, 
  S_AXIS_MM2S_tvalid, S_AXIS_MM2S_tready, S_AXIS_MM2S_tlast, S_AXIS_MM2S_tkeep, 
  M_AXIS_S2MM_tdata, M_AXIS_S2MM_tvalid, M_AXIS_S2MM_tready, M_AXIS_S2MM_tlast, 
  M_AXIS_S2MM_tkeep, state_dbg)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,S_AXIS_MM2S_tdata[31:0],S_AXIS_MM2S_tvalid,S_AXIS_MM2S_tready,S_AXIS_MM2S_tlast,S_AXIS_MM2S_tkeep[3:0],M_AXIS_S2MM_tdata[31:0],M_AXIS_S2MM_tvalid,M_AXIS_S2MM_tready,M_AXIS_S2MM_tlast,M_AXIS_S2MM_tkeep[3:0],state_dbg[2:0]" */;
  input clk;
  input resetn;
  input [31:0]S_AXIS_MM2S_tdata;
  input S_AXIS_MM2S_tvalid;
  output S_AXIS_MM2S_tready;
  input S_AXIS_MM2S_tlast;
  input [3:0]S_AXIS_MM2S_tkeep;
  output [31:0]M_AXIS_S2MM_tdata;
  output M_AXIS_S2MM_tvalid;
  input M_AXIS_S2MM_tready;
  output M_AXIS_S2MM_tlast;
  output [3:0]M_AXIS_S2MM_tkeep;
  output [2:0]state_dbg;
endmodule
