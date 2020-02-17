-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Fri Dec 28 00:03:09 2018
-- Host        : bilgin running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_rgb2tmds_0_0 -prefix
--               design_1_rgb2tmds_0_0_ design_1_rgb2tmds_0_0_stub.vhdl
-- Design      : design_1_rgb2tmds_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_rgb2tmds_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    pixelclock : in STD_LOGIC;
    serialclock : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    video_active : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    clk_p : out STD_LOGIC;
    clk_n : out STD_LOGIC;
    data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_n : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end design_1_rgb2tmds_0_0;

architecture stub of design_1_rgb2tmds_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,pixelclock,serialclock,video_data[23:0],video_active,hsync,vsync,clk_p,clk_n,data_p[2:0],data_n[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rgb2tmds,Vivado 2018.2.2";
begin
end;
