-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Mon Jan 21 00:15:27 2019
-- Host        : bilgin running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/irfan/Vivado/pinpon3/pinpon3.srcs/sources_1/bd/design_1/ip/design_1_displaybuffer_0_0/design_1_displaybuffer_0_0_stub.vhdl
-- Design      : design_1_displaybuffer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_displaybuffer_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    video_active : in STD_LOGIC;
    pixel_x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pixel_y : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    bram_enb : out STD_LOGIC;
    bram_addrb : out STD_LOGIC_VECTOR ( 0 to 31 );
    bram_doutb : in STD_LOGIC_VECTOR ( 0 to 31 );
    bram_wenb : out STD_LOGIC_VECTOR ( 0 to 3 );
    bram_dinb : out STD_LOGIC_VECTOR ( 0 to 31 );
    bram_rstb : out STD_LOGIC;
    counter_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    obj_x_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    obj_w_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    obj_render_bit : out STD_LOGIC
  );

end design_1_displaybuffer_0_0;

architecture stub of design_1_displaybuffer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,video_active,pixel_x[15:0],pixel_y[15:0],rgb[23:0],bram_enb,bram_addrb[0:31],bram_doutb[0:31],bram_wenb[0:3],bram_dinb[0:31],bram_rstb,counter_out[31:0],obj_x_out[15:0],obj_w_out[15:0],obj_render_bit";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "displaybuffer,Vivado 2018.2.2";
begin
end;
