-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Fri Dec 28 00:03:11 2018
-- Host        : bilgin running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_vtg_0_0 -prefix
--               design_1_vtg_0_0_ design_1_vtg_0_0_stub.vhdl
-- Design      : design_1_vtg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vtg_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    video_active : out STD_LOGIC;
    pixel_x : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pixel_y : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_vtg_0_0;

architecture stub of design_1_vtg_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,hsync,vsync,video_active,pixel_x[15:0],pixel_y[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "timing_generator,Vivado 2018.2.2";
begin
end;
