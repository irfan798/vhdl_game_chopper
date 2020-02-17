// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Fri Dec 28 00:03:11 2018
// Host        : bilgin running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_vtg_0_0 -prefix
//               design_1_vtg_0_0_ design_1_vtg_0_0_stub.v
// Design      : design_1_vtg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "timing_generator,Vivado 2018.2.2" *)
module design_1_vtg_0_0(clk, rst, hsync, vsync, video_active, pixel_x, 
  pixel_y)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,hsync,vsync,video_active,pixel_x[15:0],pixel_y[15:0]" */;
  input clk;
  input rst;
  output hsync;
  output vsync;
  output video_active;
  output [15:0]pixel_x;
  output [15:0]pixel_y;
endmodule
