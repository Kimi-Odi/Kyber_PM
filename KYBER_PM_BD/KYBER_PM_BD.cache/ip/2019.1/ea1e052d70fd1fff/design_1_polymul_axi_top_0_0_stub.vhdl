-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat May 16 14:59:38 2026
-- Host        : LAPTOP-RNRU6CQQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_polymul_axi_top_0_0_stub.vhdl
-- Design      : design_1_polymul_axi_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    S_AXIS_MM2S_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_MM2S_tvalid : in STD_LOGIC;
    S_AXIS_MM2S_tready : out STD_LOGIC;
    S_AXIS_MM2S_tlast : in STD_LOGIC;
    S_AXIS_MM2S_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_S2MM_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_S2MM_tvalid : out STD_LOGIC;
    M_AXIS_S2MM_tready : in STD_LOGIC;
    M_AXIS_S2MM_tlast : out STD_LOGIC;
    M_AXIS_S2MM_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    state_dbg : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,S_AXIS_MM2S_tdata[31:0],S_AXIS_MM2S_tvalid,S_AXIS_MM2S_tready,S_AXIS_MM2S_tlast,S_AXIS_MM2S_tkeep[3:0],M_AXIS_S2MM_tdata[31:0],M_AXIS_S2MM_tvalid,M_AXIS_S2MM_tready,M_AXIS_S2MM_tlast,M_AXIS_S2MM_tkeep[3:0],state_dbg[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "polymul_axi_top,Vivado 2019.1";
begin
end;
