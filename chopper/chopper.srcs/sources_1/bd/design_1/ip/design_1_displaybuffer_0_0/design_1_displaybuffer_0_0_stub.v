// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Mon Jan 21 00:15:27 2019
// Host        : bilgin running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/irfan/Vivado/pinpon3/pinpon3.srcs/sources_1/bd/design_1/ip/design_1_displaybuffer_0_0/design_1_displaybuffer_0_0_stub.v
// Design      : design_1_displaybuffer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "displaybuffer,Vivado 2018.2.2" *)
module design_1_displaybuffer_0_0(clk, video_active, pixel_x, pixel_y, rgb, bram_enb, 
  bram_addrb, bram_doutb, bram_wenb, bram_dinb, bram_rstb, counter_out, obj_x_out, obj_w_out, 
  obj_render_bit)
/* synthesis syn_black_box black_box_pad_pin="clk,video_active,pixel_x[15:0],pixel_y[15:0],rgb[23:0],bram_enb,bram_addrb[0:31],bram_doutb[0:31],bram_wenb[0:3],bram_dinb[0:31],bram_rstb,counter_out[31:0],obj_x_out[15:0],obj_w_out[15:0],obj_render_bit" */;
  input clk;
  input video_active;
  input [15:0]pixel_x;
  input [15:0]pixel_y;
  output [23:0]rgb;
  output bram_enb;
  output [0:31]bram_addrb;
  input [0:31]bram_doutb;
  output [0:3]bram_wenb;
  output [0:31]bram_dinb;
  output bram_rstb;
  output [31:0]counter_out;
  output [15:0]obj_x_out;
  output [15:0]obj_w_out;
  output obj_render_bit;
endmodule
