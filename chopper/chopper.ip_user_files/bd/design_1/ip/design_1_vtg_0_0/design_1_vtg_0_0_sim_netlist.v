// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Fri Dec 28 00:03:11 2018
// Host        : bilgin running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top design_1_vtg_0_0 -prefix
//               design_1_vtg_0_0_ design_1_vtg_0_0_sim_netlist.v
// Design      : design_1_vtg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vtg_0_0,timing_generator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "timing_generator,Vivado 2018.2.2" *) 
(* NotValidForBitStream *)
module design_1_vtg_0_0
   (clk,
    rst,
    hsync,
    vsync,
    video_active,
    pixel_x,
    pixel_y);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *) input rst;
  (* x_interface_info = "xilinx.com:interface:video_timing:2.0 video_timing HSYNC" *) output hsync;
  (* x_interface_info = "xilinx.com:interface:video_timing:2.0 video_timing VSYNC" *) output vsync;
  (* x_interface_info = "xilinx.com:interface:video_timing:2.0 video_timing ACTIVE_VIDEO" *) output video_active;
  output [15:0]pixel_x;
  output [15:0]pixel_y;

  wire \<const0> ;
  wire clk;
  wire hsync;
  wire [10:0]\^pixel_x ;
  wire [9:0]\^pixel_y ;
  wire rst;
  wire video_active;
  wire vsync;

  assign pixel_x[15] = \<const0> ;
  assign pixel_x[14] = \<const0> ;
  assign pixel_x[13] = \<const0> ;
  assign pixel_x[12] = \<const0> ;
  assign pixel_x[11] = \<const0> ;
  assign pixel_x[10:0] = \^pixel_x [10:0];
  assign pixel_y[15] = \<const0> ;
  assign pixel_y[14] = \<const0> ;
  assign pixel_y[13] = \<const0> ;
  assign pixel_y[12] = \<const0> ;
  assign pixel_y[11] = \<const0> ;
  assign pixel_y[10] = \<const0> ;
  assign pixel_y[9:0] = \^pixel_y [9:0];
  GND GND
       (.G(\<const0> ));
  design_1_vtg_0_0_timing_generator U0
       (.clk(clk),
        .hsync(hsync),
        .pixel_x(\^pixel_x ),
        .pixel_y(\^pixel_y ),
        .rst(rst),
        .video_active(video_active),
        .vsync(vsync));
endmodule

module design_1_vtg_0_0_timing_generator
   (video_active,
    pixel_x,
    hsync,
    pixel_y,
    vsync,
    rst,
    clk);
  output video_active;
  output [10:0]pixel_x;
  output hsync;
  output [9:0]pixel_y;
  output vsync;
  input rst;
  input clk;

  wire clk;
  wire \hcount[0]_i_1_n_0 ;
  wire \hcount[0]_i_3_n_0 ;
  wire [15:0]hcount_reg;
  wire \hcount_reg[0]_i_2_n_0 ;
  wire \hcount_reg[0]_i_2_n_1 ;
  wire \hcount_reg[0]_i_2_n_2 ;
  wire \hcount_reg[0]_i_2_n_3 ;
  wire \hcount_reg[0]_i_2_n_4 ;
  wire \hcount_reg[0]_i_2_n_5 ;
  wire \hcount_reg[0]_i_2_n_6 ;
  wire \hcount_reg[0]_i_2_n_7 ;
  wire \hcount_reg[12]_i_1_n_1 ;
  wire \hcount_reg[12]_i_1_n_2 ;
  wire \hcount_reg[12]_i_1_n_3 ;
  wire \hcount_reg[12]_i_1_n_4 ;
  wire \hcount_reg[12]_i_1_n_5 ;
  wire \hcount_reg[12]_i_1_n_6 ;
  wire \hcount_reg[12]_i_1_n_7 ;
  wire \hcount_reg[4]_i_1_n_0 ;
  wire \hcount_reg[4]_i_1_n_1 ;
  wire \hcount_reg[4]_i_1_n_2 ;
  wire \hcount_reg[4]_i_1_n_3 ;
  wire \hcount_reg[4]_i_1_n_4 ;
  wire \hcount_reg[4]_i_1_n_5 ;
  wire \hcount_reg[4]_i_1_n_6 ;
  wire \hcount_reg[4]_i_1_n_7 ;
  wire \hcount_reg[8]_i_1_n_0 ;
  wire \hcount_reg[8]_i_1_n_1 ;
  wire \hcount_reg[8]_i_1_n_2 ;
  wire \hcount_reg[8]_i_1_n_3 ;
  wire \hcount_reg[8]_i_1_n_4 ;
  wire \hcount_reg[8]_i_1_n_5 ;
  wire \hcount_reg[8]_i_1_n_6 ;
  wire \hcount_reg[8]_i_1_n_7 ;
  wire hsync;
  wire hsync_INST_0_i_1_n_0;
  wire [10:0]pixel_x;
  wire [9:0]pixel_y;
  wire rst;
  wire \vcount[0]_i_10_n_0 ;
  wire \vcount[0]_i_1_n_0 ;
  wire \vcount[0]_i_2_n_0 ;
  wire \vcount[0]_i_4_n_0 ;
  wire \vcount[0]_i_5_n_0 ;
  wire \vcount[0]_i_6_n_0 ;
  wire \vcount[0]_i_7_n_0 ;
  wire \vcount[0]_i_8_n_0 ;
  wire \vcount[0]_i_9_n_0 ;
  wire [15:0]vcount_reg;
  wire \vcount_reg[0]_i_3_n_0 ;
  wire \vcount_reg[0]_i_3_n_1 ;
  wire \vcount_reg[0]_i_3_n_2 ;
  wire \vcount_reg[0]_i_3_n_3 ;
  wire \vcount_reg[0]_i_3_n_4 ;
  wire \vcount_reg[0]_i_3_n_5 ;
  wire \vcount_reg[0]_i_3_n_6 ;
  wire \vcount_reg[0]_i_3_n_7 ;
  wire \vcount_reg[12]_i_1_n_1 ;
  wire \vcount_reg[12]_i_1_n_2 ;
  wire \vcount_reg[12]_i_1_n_3 ;
  wire \vcount_reg[12]_i_1_n_4 ;
  wire \vcount_reg[12]_i_1_n_5 ;
  wire \vcount_reg[12]_i_1_n_6 ;
  wire \vcount_reg[12]_i_1_n_7 ;
  wire \vcount_reg[4]_i_1_n_0 ;
  wire \vcount_reg[4]_i_1_n_1 ;
  wire \vcount_reg[4]_i_1_n_2 ;
  wire \vcount_reg[4]_i_1_n_3 ;
  wire \vcount_reg[4]_i_1_n_4 ;
  wire \vcount_reg[4]_i_1_n_5 ;
  wire \vcount_reg[4]_i_1_n_6 ;
  wire \vcount_reg[4]_i_1_n_7 ;
  wire \vcount_reg[8]_i_1_n_0 ;
  wire \vcount_reg[8]_i_1_n_1 ;
  wire \vcount_reg[8]_i_1_n_2 ;
  wire \vcount_reg[8]_i_1_n_3 ;
  wire \vcount_reg[8]_i_1_n_4 ;
  wire \vcount_reg[8]_i_1_n_5 ;
  wire \vcount_reg[8]_i_1_n_6 ;
  wire \vcount_reg[8]_i_1_n_7 ;
  wire video_active;
  wire video_active_INST_0_i_1_n_0;
  wire video_active_INST_0_i_2_n_0;
  wire video_active_INST_0_i_3_n_0;
  wire vsync;
  wire vsync_INST_0_i_1_n_0;
  wire vsync_INST_0_i_2_n_0;
  wire vsync_INST_0_i_3_n_0;
  wire [3:3]\NLW_hcount_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_vcount_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \hcount[0]_i_1 
       (.I0(rst),
        .I1(\vcount[0]_i_2_n_0 ),
        .O(\hcount[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hcount[0]_i_3 
       (.I0(hcount_reg[0]),
        .O(\hcount[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[0]_i_2_n_7 ),
        .Q(hcount_reg[0]),
        .R(\hcount[0]_i_1_n_0 ));
  CARRY4 \hcount_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\hcount_reg[0]_i_2_n_0 ,\hcount_reg[0]_i_2_n_1 ,\hcount_reg[0]_i_2_n_2 ,\hcount_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hcount_reg[0]_i_2_n_4 ,\hcount_reg[0]_i_2_n_5 ,\hcount_reg[0]_i_2_n_6 ,\hcount_reg[0]_i_2_n_7 }),
        .S({hcount_reg[3:1],\hcount[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[8]_i_1_n_5 ),
        .Q(hcount_reg[10]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[8]_i_1_n_4 ),
        .Q(hcount_reg[11]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[12]_i_1_n_7 ),
        .Q(hcount_reg[12]),
        .R(\hcount[0]_i_1_n_0 ));
  CARRY4 \hcount_reg[12]_i_1 
       (.CI(\hcount_reg[8]_i_1_n_0 ),
        .CO({\NLW_hcount_reg[12]_i_1_CO_UNCONNECTED [3],\hcount_reg[12]_i_1_n_1 ,\hcount_reg[12]_i_1_n_2 ,\hcount_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hcount_reg[12]_i_1_n_4 ,\hcount_reg[12]_i_1_n_5 ,\hcount_reg[12]_i_1_n_6 ,\hcount_reg[12]_i_1_n_7 }),
        .S(hcount_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[12]_i_1_n_6 ),
        .Q(hcount_reg[13]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[12]_i_1_n_5 ),
        .Q(hcount_reg[14]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[12]_i_1_n_4 ),
        .Q(hcount_reg[15]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[0]_i_2_n_6 ),
        .Q(hcount_reg[1]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[0]_i_2_n_5 ),
        .Q(hcount_reg[2]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[0]_i_2_n_4 ),
        .Q(hcount_reg[3]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[4]_i_1_n_7 ),
        .Q(hcount_reg[4]),
        .R(\hcount[0]_i_1_n_0 ));
  CARRY4 \hcount_reg[4]_i_1 
       (.CI(\hcount_reg[0]_i_2_n_0 ),
        .CO({\hcount_reg[4]_i_1_n_0 ,\hcount_reg[4]_i_1_n_1 ,\hcount_reg[4]_i_1_n_2 ,\hcount_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hcount_reg[4]_i_1_n_4 ,\hcount_reg[4]_i_1_n_5 ,\hcount_reg[4]_i_1_n_6 ,\hcount_reg[4]_i_1_n_7 }),
        .S(hcount_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[4]_i_1_n_6 ),
        .Q(hcount_reg[5]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[4]_i_1_n_5 ),
        .Q(hcount_reg[6]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[4]_i_1_n_4 ),
        .Q(hcount_reg[7]),
        .R(\hcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[8]_i_1_n_7 ),
        .Q(hcount_reg[8]),
        .R(\hcount[0]_i_1_n_0 ));
  CARRY4 \hcount_reg[8]_i_1 
       (.CI(\hcount_reg[4]_i_1_n_0 ),
        .CO({\hcount_reg[8]_i_1_n_0 ,\hcount_reg[8]_i_1_n_1 ,\hcount_reg[8]_i_1_n_2 ,\hcount_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hcount_reg[8]_i_1_n_4 ,\hcount_reg[8]_i_1_n_5 ,\hcount_reg[8]_i_1_n_6 ,\hcount_reg[8]_i_1_n_7 }),
        .S(hcount_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\hcount_reg[8]_i_1_n_6 ),
        .Q(hcount_reg[9]),
        .R(\hcount[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010101410141004)) 
    hsync_INST_0
       (.I0(hsync_INST_0_i_1_n_0),
        .I1(hcount_reg[7]),
        .I2(hcount_reg[6]),
        .I3(hcount_reg[5]),
        .I4(hcount_reg[4]),
        .I5(hcount_reg[3]),
        .O(hsync));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    hsync_INST_0_i_1
       (.I0(video_active_INST_0_i_1_n_0),
        .I1(hcount_reg[10]),
        .I2(hcount_reg[8]),
        .I3(hcount_reg[9]),
        .O(hsync_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00570000)) 
    \pixel_x[0]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .I4(hcount_reg[0]),
        .O(pixel_x[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \pixel_x[10]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .O(pixel_x[10]));
  LUT5 #(
    .INIT(32'h00570000)) 
    \pixel_x[1]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .I4(hcount_reg[1]),
        .O(pixel_x[1]));
  LUT5 #(
    .INIT(32'h00570000)) 
    \pixel_x[2]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .I4(hcount_reg[2]),
        .O(pixel_x[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00570000)) 
    \pixel_x[3]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .I4(hcount_reg[3]),
        .O(pixel_x[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00570000)) 
    \pixel_x[4]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .I4(hcount_reg[4]),
        .O(pixel_x[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00570000)) 
    \pixel_x[5]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .I4(hcount_reg[5]),
        .O(pixel_x[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00570000)) 
    \pixel_x[6]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .I4(hcount_reg[6]),
        .O(pixel_x[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00570000)) 
    \pixel_x[7]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .I4(hcount_reg[7]),
        .O(pixel_x[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pixel_x[8]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(video_active_INST_0_i_1_n_0),
        .O(pixel_x[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pixel_x[9]_INST_0 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[9]),
        .I2(video_active_INST_0_i_1_n_0),
        .O(pixel_x[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[0]_INST_0 
       (.I0(vcount_reg[0]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[1]_INST_0 
       (.I0(vcount_reg[1]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[2]_INST_0 
       (.I0(vcount_reg[2]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[3]_INST_0 
       (.I0(vcount_reg[3]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[4]_INST_0 
       (.I0(vcount_reg[4]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[5]_INST_0 
       (.I0(vcount_reg[5]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[6]_INST_0 
       (.I0(vcount_reg[6]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[7]_INST_0 
       (.I0(vcount_reg[7]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[8]_INST_0 
       (.I0(vcount_reg[8]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[9]_INST_0 
       (.I0(vcount_reg[9]),
        .I1(video_active_INST_0_i_2_n_0),
        .O(pixel_y[9]));
  LUT4 #(
    .INIT(16'hCECC)) 
    \vcount[0]_i_1 
       (.I0(\vcount[0]_i_2_n_0 ),
        .I1(rst),
        .I2(\vcount[0]_i_4_n_0 ),
        .I3(vsync_INST_0_i_1_n_0),
        .O(\vcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \vcount[0]_i_10 
       (.I0(vcount_reg[2]),
        .I1(vcount_reg[5]),
        .I2(vcount_reg[1]),
        .I3(vcount_reg[8]),
        .O(\vcount[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \vcount[0]_i_2 
       (.I0(hcount_reg[14]),
        .I1(hcount_reg[15]),
        .I2(\vcount[0]_i_5_n_0 ),
        .I3(\vcount[0]_i_6_n_0 ),
        .I4(\vcount[0]_i_7_n_0 ),
        .I5(\vcount[0]_i_8_n_0 ),
        .O(\vcount[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \vcount[0]_i_4 
       (.I0(vcount_reg[0]),
        .I1(vcount_reg[7]),
        .I2(vcount_reg[4]),
        .I3(vcount_reg[3]),
        .I4(\vcount[0]_i_10_n_0 ),
        .O(\vcount[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vcount[0]_i_5 
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[9]),
        .O(\vcount[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \vcount[0]_i_6 
       (.I0(hcount_reg[13]),
        .I1(hcount_reg[6]),
        .I2(hcount_reg[4]),
        .I3(hcount_reg[7]),
        .O(\vcount[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \vcount[0]_i_7 
       (.I0(hcount_reg[5]),
        .I1(hcount_reg[12]),
        .I2(hcount_reg[1]),
        .I3(hcount_reg[0]),
        .O(\vcount[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vcount[0]_i_8 
       (.I0(hcount_reg[11]),
        .I1(hcount_reg[2]),
        .I2(hcount_reg[3]),
        .I3(hcount_reg[8]),
        .O(\vcount[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vcount[0]_i_9 
       (.I0(vcount_reg[0]),
        .O(\vcount[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[0] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[0]_i_3_n_7 ),
        .Q(vcount_reg[0]),
        .R(\vcount[0]_i_1_n_0 ));
  CARRY4 \vcount_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\vcount_reg[0]_i_3_n_0 ,\vcount_reg[0]_i_3_n_1 ,\vcount_reg[0]_i_3_n_2 ,\vcount_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\vcount_reg[0]_i_3_n_4 ,\vcount_reg[0]_i_3_n_5 ,\vcount_reg[0]_i_3_n_6 ,\vcount_reg[0]_i_3_n_7 }),
        .S({vcount_reg[3:1],\vcount[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[10] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[8]_i_1_n_5 ),
        .Q(vcount_reg[10]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[11] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[8]_i_1_n_4 ),
        .Q(vcount_reg[11]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[12] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[12]_i_1_n_7 ),
        .Q(vcount_reg[12]),
        .R(\vcount[0]_i_1_n_0 ));
  CARRY4 \vcount_reg[12]_i_1 
       (.CI(\vcount_reg[8]_i_1_n_0 ),
        .CO({\NLW_vcount_reg[12]_i_1_CO_UNCONNECTED [3],\vcount_reg[12]_i_1_n_1 ,\vcount_reg[12]_i_1_n_2 ,\vcount_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vcount_reg[12]_i_1_n_4 ,\vcount_reg[12]_i_1_n_5 ,\vcount_reg[12]_i_1_n_6 ,\vcount_reg[12]_i_1_n_7 }),
        .S(vcount_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[13] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[12]_i_1_n_6 ),
        .Q(vcount_reg[13]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[14] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[12]_i_1_n_5 ),
        .Q(vcount_reg[14]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[15] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[12]_i_1_n_4 ),
        .Q(vcount_reg[15]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[1] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[0]_i_3_n_6 ),
        .Q(vcount_reg[1]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[2] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[0]_i_3_n_5 ),
        .Q(vcount_reg[2]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[3] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[0]_i_3_n_4 ),
        .Q(vcount_reg[3]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[4] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[4]_i_1_n_7 ),
        .Q(vcount_reg[4]),
        .R(\vcount[0]_i_1_n_0 ));
  CARRY4 \vcount_reg[4]_i_1 
       (.CI(\vcount_reg[0]_i_3_n_0 ),
        .CO({\vcount_reg[4]_i_1_n_0 ,\vcount_reg[4]_i_1_n_1 ,\vcount_reg[4]_i_1_n_2 ,\vcount_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vcount_reg[4]_i_1_n_4 ,\vcount_reg[4]_i_1_n_5 ,\vcount_reg[4]_i_1_n_6 ,\vcount_reg[4]_i_1_n_7 }),
        .S(vcount_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[5] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[4]_i_1_n_6 ),
        .Q(vcount_reg[5]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[6] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[4]_i_1_n_5 ),
        .Q(vcount_reg[6]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[7] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[4]_i_1_n_4 ),
        .Q(vcount_reg[7]),
        .R(\vcount[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[8] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[8]_i_1_n_7 ),
        .Q(vcount_reg[8]),
        .R(\vcount[0]_i_1_n_0 ));
  CARRY4 \vcount_reg[8]_i_1 
       (.CI(\vcount_reg[4]_i_1_n_0 ),
        .CO({\vcount_reg[8]_i_1_n_0 ,\vcount_reg[8]_i_1_n_1 ,\vcount_reg[8]_i_1_n_2 ,\vcount_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vcount_reg[8]_i_1_n_4 ,\vcount_reg[8]_i_1_n_5 ,\vcount_reg[8]_i_1_n_6 ,\vcount_reg[8]_i_1_n_7 }),
        .S(vcount_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[9] 
       (.C(clk),
        .CE(\vcount[0]_i_2_n_0 ),
        .D(\vcount_reg[8]_i_1_n_6 ),
        .Q(vcount_reg[9]),
        .R(\vcount[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000057)) 
    video_active_INST_0
       (.I0(hcount_reg[10]),
        .I1(hcount_reg[8]),
        .I2(hcount_reg[9]),
        .I3(video_active_INST_0_i_1_n_0),
        .I4(video_active_INST_0_i_2_n_0),
        .I5(rst),
        .O(video_active));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    video_active_INST_0_i_1
       (.I0(hcount_reg[14]),
        .I1(hcount_reg[15]),
        .I2(hcount_reg[11]),
        .I3(hcount_reg[12]),
        .I4(hcount_reg[13]),
        .O(video_active_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    video_active_INST_0_i_2
       (.I0(video_active_INST_0_i_3_n_0),
        .I1(vcount_reg[14]),
        .I2(vcount_reg[15]),
        .I3(vcount_reg[8]),
        .I4(vcount_reg[9]),
        .I5(vsync_INST_0_i_3_n_0),
        .O(video_active_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hE0000000)) 
    video_active_INST_0_i_3
       (.I0(vcount_reg[5]),
        .I1(vcount_reg[4]),
        .I2(vcount_reg[7]),
        .I3(vcount_reg[9]),
        .I4(vcount_reg[6]),
        .O(video_active_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h22222000)) 
    vsync_INST_0
       (.I0(vsync_INST_0_i_1_n_0),
        .I1(vsync_INST_0_i_2_n_0),
        .I2(vcount_reg[1]),
        .I3(vcount_reg[0]),
        .I4(vcount_reg[2]),
        .O(vsync));
  LUT5 #(
    .INIT(32'h00000008)) 
    vsync_INST_0_i_1
       (.I0(vcount_reg[9]),
        .I1(vcount_reg[6]),
        .I2(vcount_reg[15]),
        .I3(vcount_reg[14]),
        .I4(vsync_INST_0_i_3_n_0),
        .O(vsync_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF8FFFFFFFFFF)) 
    vsync_INST_0_i_2
       (.I0(vcount_reg[8]),
        .I1(vcount_reg[9]),
        .I2(vcount_reg[3]),
        .I3(vcount_reg[7]),
        .I4(vcount_reg[5]),
        .I5(vcount_reg[4]),
        .O(vsync_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    vsync_INST_0_i_3
       (.I0(vcount_reg[13]),
        .I1(vcount_reg[12]),
        .I2(vcount_reg[11]),
        .I3(vcount_reg[10]),
        .O(vsync_INST_0_i_3_n_0));
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
