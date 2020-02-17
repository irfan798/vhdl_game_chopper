// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
// Date        : Fri Dec 28 00:03:09 2018
// Host        : bilgin running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top design_1_rgb2tmds_0_0 -prefix
//               design_1_rgb2tmds_0_0_ design_1_rgb2tmds_0_0_sim_netlist.v
// Design      : design_1_rgb2tmds_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rgb2tmds_0_0,rgb2tmds,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "rgb2tmds,Vivado 2018.2.2" *) 
(* NotValidForBitStream *)
module design_1_rgb2tmds_0_0
   (rst,
    pixelclock,
    serialclock,
    video_data,
    video_active,
    hsync,
    vsync,
    clk_p,
    clk_n,
    data_p,
    data_n);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 pixelclock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME pixelclock, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input pixelclock;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 serialclock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME serialclock, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input serialclock;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 video_data DATA" *) input [23:0]video_data;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 video_data ACTIVE_VIDEO" *) input video_active;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 video_data HSYNC" *) input hsync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 video_data VSYNC" *) input vsync;
  (* x_interface_info = "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_CLK_P" *) output clk_p;
  (* x_interface_info = "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_CLK_N" *) output clk_n;
  (* x_interface_info = "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_DATA_P" *) output [2:0]data_p;
  (* x_interface_info = "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_DATA_N" *) output [2:0]data_n;

  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire clk_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire clk_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]data_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]data_p;
  wire hsync;
  wire pixelclock;
  wire rst;
  wire serialclock;
  wire video_active;
  wire [23:0]video_data;
  wire vsync;

  design_1_rgb2tmds_0_0_rgb2tmds U0
       (.clk_n(clk_n),
        .clk_p(clk_p),
        .data_n(data_n),
        .data_p(data_p),
        .hsync(hsync),
        .pixelclock(pixelclock),
        .rst(rst),
        .serialclock(serialclock),
        .video_active(video_active),
        .video_data(video_data),
        .vsync(vsync));
endmodule

module design_1_rgb2tmds_0_0_rgb2tmds
   (data_p,
    data_n,
    clk_p,
    clk_n,
    video_data,
    video_active,
    serialclock,
    pixelclock,
    rst,
    hsync,
    vsync);
  output [2:0]data_p;
  output [2:0]data_n;
  output clk_p;
  output clk_n;
  input [23:0]video_data;
  input video_active;
  input serialclock;
  input pixelclock;
  input rst;
  input hsync;
  input vsync;

  wire clk_n;
  wire clk_p;
  wire [2:0]data_n;
  wire [2:0]data_p;
  wire [9:0]dout_0;
  wire [9:0]engreen;
  wire [9:0]enred;
  wire hsync;
  wire pixelclock;
  wire rst;
  wire serialclock;
  wire tr_n_0;
  wire video_active;
  wire [23:0]video_data;
  wire vsync;

  design_1_rgb2tmds_0_0_serializer ser_b
       (.Q(dout_0),
        .data_n(data_n[0]),
        .data_p(data_p[0]),
        .pixelclock(pixelclock),
        .rst(rst),
        .serialclock(serialclock));
  design_1_rgb2tmds_0_0_serializer_0 ser_c
       (.clk_n(clk_n),
        .clk_p(clk_p),
        .pixelclock(pixelclock),
        .rst(rst),
        .serialclock(serialclock));
  design_1_rgb2tmds_0_0_serializer_1 ser_g
       (.data_n(data_n[1]),
        .data_p(data_p[1]),
        .endata_i(engreen),
        .pixelclock(pixelclock),
        .rst(rst),
        .serialclock(serialclock));
  design_1_rgb2tmds_0_0_serializer_2 ser_r
       (.data_n(data_n[2]),
        .data_p(data_p[2]),
        .endata_i(enred),
        .pixelclock(pixelclock),
        .rst(rst),
        .serialclock(serialclock));
  design_1_rgb2tmds_0_0_tmds_encoder tb
       (.Q(dout_0),
        .hsync(hsync),
        .pixelclock(pixelclock),
        .video_active(video_active),
        .video_active_0(tr_n_0),
        .video_data(video_data[7:0]),
        .vsync(vsync));
  design_1_rgb2tmds_0_0_tmds_encoder_3 tg
       (.endata_i(engreen),
        .pixelclock(pixelclock),
        .video_active(video_active),
        .video_active_0(tr_n_0),
        .video_data(video_data[15:8]));
  design_1_rgb2tmds_0_0_tmds_encoder_4 tr
       (.\disparity_reg[0]_0 (tr_n_0),
        .endata_i(enred),
        .pixelclock(pixelclock),
        .video_active(video_active),
        .video_data(video_data[23:16]));
endmodule

module design_1_rgb2tmds_0_0_serializer
   (data_p,
    data_n,
    serialclock,
    pixelclock,
    Q,
    rst);
  output [0:0]data_p;
  output [0:0]data_n;
  input serialclock;
  input pixelclock;
  input [9:0]Q;
  input rst;

  wire [9:0]Q;
  wire cascade1;
  wire cascade2;
  wire [0:0]data_n;
  wire [0:0]data_p;
  wire pixelclock;
  wire rst;
  wire sdata;
  wire serialclock;
  wire NLW_master_OFB_UNCONNECTED;
  wire NLW_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_TBYTEOUT_UNCONNECTED;
  wire NLW_master_TFB_UNCONNECTED;
  wire NLW_master_TQ_UNCONNECTED;
  wire NLW_slave_OFB_UNCONNECTED;
  wire NLW_slave_OQ_UNCONNECTED;
  wire NLW_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_TFB_UNCONNECTED;
  wire NLW_slave_TQ_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master
       (.CLK(serialclock),
        .CLKDIV(pixelclock),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_master_OFB_UNCONNECTED),
        .OQ(sdata),
        .RST(rst),
        .SHIFTIN1(cascade1),
        .SHIFTIN2(cascade2),
        .SHIFTOUT1(NLW_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_TFB_UNCONNECTED),
        .TQ(NLW_master_TQ_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS obuf
       (.I(sdata),
        .O(data_p),
        .OB(data_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave
       (.CLK(serialclock),
        .CLKDIV(pixelclock),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_OFB_UNCONNECTED),
        .OQ(NLW_slave_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(cascade1),
        .SHIFTOUT2(cascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_TFB_UNCONNECTED),
        .TQ(NLW_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serializer" *) 
module design_1_rgb2tmds_0_0_serializer_0
   (clk_p,
    clk_n,
    serialclock,
    pixelclock,
    rst);
  output clk_p;
  output clk_n;
  input serialclock;
  input pixelclock;
  input rst;

  wire cascade1;
  wire cascade2;
  wire clk_n;
  wire clk_p;
  wire pixelclock;
  wire rst;
  wire sdata;
  wire serialclock;
  wire NLW_master_OFB_UNCONNECTED;
  wire NLW_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_TBYTEOUT_UNCONNECTED;
  wire NLW_master_TFB_UNCONNECTED;
  wire NLW_master_TQ_UNCONNECTED;
  wire NLW_slave_OFB_UNCONNECTED;
  wire NLW_slave_OQ_UNCONNECTED;
  wire NLW_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_TFB_UNCONNECTED;
  wire NLW_slave_TQ_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master
       (.CLK(serialclock),
        .CLKDIV(pixelclock),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b1),
        .OCE(1'b1),
        .OFB(NLW_master_OFB_UNCONNECTED),
        .OQ(sdata),
        .RST(rst),
        .SHIFTIN1(cascade1),
        .SHIFTIN2(cascade2),
        .SHIFTOUT1(NLW_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_TFB_UNCONNECTED),
        .TQ(NLW_master_TQ_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS obuf
       (.I(sdata),
        .O(clk_p),
        .OB(clk_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave
       (.CLK(serialclock),
        .CLKDIV(pixelclock),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_OFB_UNCONNECTED),
        .OQ(NLW_slave_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(cascade1),
        .SHIFTOUT2(cascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_TFB_UNCONNECTED),
        .TQ(NLW_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serializer" *) 
module design_1_rgb2tmds_0_0_serializer_1
   (data_p,
    data_n,
    serialclock,
    pixelclock,
    endata_i,
    rst);
  output [0:0]data_p;
  output [0:0]data_n;
  input serialclock;
  input pixelclock;
  input [9:0]endata_i;
  input rst;

  wire cascade1;
  wire cascade2;
  wire [0:0]data_n;
  wire [0:0]data_p;
  wire [9:0]endata_i;
  wire pixelclock;
  wire rst;
  wire sdata;
  wire serialclock;
  wire NLW_master_OFB_UNCONNECTED;
  wire NLW_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_TBYTEOUT_UNCONNECTED;
  wire NLW_master_TFB_UNCONNECTED;
  wire NLW_master_TQ_UNCONNECTED;
  wire NLW_slave_OFB_UNCONNECTED;
  wire NLW_slave_OQ_UNCONNECTED;
  wire NLW_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_TFB_UNCONNECTED;
  wire NLW_slave_TQ_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master
       (.CLK(serialclock),
        .CLKDIV(pixelclock),
        .D1(endata_i[0]),
        .D2(endata_i[1]),
        .D3(endata_i[2]),
        .D4(endata_i[3]),
        .D5(endata_i[4]),
        .D6(endata_i[5]),
        .D7(endata_i[6]),
        .D8(endata_i[7]),
        .OCE(1'b1),
        .OFB(NLW_master_OFB_UNCONNECTED),
        .OQ(sdata),
        .RST(rst),
        .SHIFTIN1(cascade1),
        .SHIFTIN2(cascade2),
        .SHIFTOUT1(NLW_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_TFB_UNCONNECTED),
        .TQ(NLW_master_TQ_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS obuf
       (.I(sdata),
        .O(data_p),
        .OB(data_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave
       (.CLK(serialclock),
        .CLKDIV(pixelclock),
        .D1(1'b0),
        .D2(1'b0),
        .D3(endata_i[8]),
        .D4(endata_i[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_OFB_UNCONNECTED),
        .OQ(NLW_slave_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(cascade1),
        .SHIFTOUT2(cascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_TFB_UNCONNECTED),
        .TQ(NLW_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serializer" *) 
module design_1_rgb2tmds_0_0_serializer_2
   (data_p,
    data_n,
    serialclock,
    pixelclock,
    endata_i,
    rst);
  output [0:0]data_p;
  output [0:0]data_n;
  input serialclock;
  input pixelclock;
  input [9:0]endata_i;
  input rst;

  wire cascade1;
  wire cascade2;
  wire [0:0]data_n;
  wire [0:0]data_p;
  wire [9:0]endata_i;
  wire pixelclock;
  wire rst;
  wire sdata;
  wire serialclock;
  wire NLW_master_OFB_UNCONNECTED;
  wire NLW_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_TBYTEOUT_UNCONNECTED;
  wire NLW_master_TFB_UNCONNECTED;
  wire NLW_master_TQ_UNCONNECTED;
  wire NLW_slave_OFB_UNCONNECTED;
  wire NLW_slave_OQ_UNCONNECTED;
  wire NLW_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_TFB_UNCONNECTED;
  wire NLW_slave_TQ_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master
       (.CLK(serialclock),
        .CLKDIV(pixelclock),
        .D1(endata_i[0]),
        .D2(endata_i[1]),
        .D3(endata_i[2]),
        .D4(endata_i[3]),
        .D5(endata_i[4]),
        .D6(endata_i[5]),
        .D7(endata_i[6]),
        .D8(endata_i[7]),
        .OCE(1'b1),
        .OFB(NLW_master_OFB_UNCONNECTED),
        .OQ(sdata),
        .RST(rst),
        .SHIFTIN1(cascade1),
        .SHIFTIN2(cascade2),
        .SHIFTOUT1(NLW_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_TFB_UNCONNECTED),
        .TQ(NLW_master_TQ_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS obuf
       (.I(sdata),
        .O(data_p),
        .OB(data_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave
       (.CLK(serialclock),
        .CLKDIV(pixelclock),
        .D1(1'b0),
        .D2(1'b0),
        .D3(endata_i[8]),
        .D4(endata_i[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_OFB_UNCONNECTED),
        .OQ(NLW_slave_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(cascade1),
        .SHIFTOUT2(cascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_TFB_UNCONNECTED),
        .TQ(NLW_slave_TQ_UNCONNECTED));
endmodule

module design_1_rgb2tmds_0_0_tmds_encoder
   (Q,
    video_data,
    video_active,
    hsync,
    vsync,
    video_active_0,
    pixelclock);
  output [9:0]Q;
  input [7:0]video_data;
  input video_active;
  input hsync;
  input vsync;
  input video_active_0;
  input pixelclock;

  wire [9:0]Q;
  wire [3:3]disparity;
  wire \disparity[0]_i_1_n_0 ;
  wire \disparity[0]_i_2_n_0 ;
  wire \disparity[1]_i_1_n_0 ;
  wire \disparity[1]_i_2_n_0 ;
  wire \disparity[1]_i_3_n_0 ;
  wire \disparity[2]_i_1_n_0 ;
  wire \disparity[2]_i_2_n_0 ;
  wire \disparity[2]_i_3_n_0 ;
  wire \disparity[2]_i_4_n_0 ;
  wire \disparity[2]_i_5_n_0 ;
  wire \disparity[2]_i_6_n_0 ;
  wire \disparity[2]_i_7_n_0 ;
  wire \disparity[3]_i_10_n_0 ;
  wire \disparity[3]_i_11_n_0 ;
  wire \disparity[3]_i_12_n_0 ;
  wire \disparity[3]_i_13_n_0 ;
  wire \disparity[3]_i_14_n_0 ;
  wire \disparity[3]_i_15__1_n_0 ;
  wire \disparity[3]_i_16_n_0 ;
  wire \disparity[3]_i_17_n_0 ;
  wire \disparity[3]_i_18_n_0 ;
  wire \disparity[3]_i_19_n_0 ;
  wire \disparity[3]_i_20_n_0 ;
  wire \disparity[3]_i_21_n_0 ;
  wire \disparity[3]_i_22_n_0 ;
  wire \disparity[3]_i_23_n_0 ;
  wire \disparity[3]_i_2_n_0 ;
  wire \disparity[3]_i_3__1_n_0 ;
  wire \disparity[3]_i_4_n_0 ;
  wire \disparity[3]_i_5_n_0 ;
  wire \disparity[3]_i_6__1_n_0 ;
  wire \disparity[3]_i_7_n_0 ;
  wire \disparity[3]_i_8_n_0 ;
  wire \disparity[3]_i_9_n_0 ;
  wire \disparity_reg_n_0_[0] ;
  wire \disparity_reg_n_0_[1] ;
  wire \disparity_reg_n_0_[2] ;
  wire [9:0]dout;
  wire \dout[5]_i_2_n_0 ;
  wire \dout[6]_i_2_n_0 ;
  wire \dout[7]_i_2_n_0 ;
  wire \dout[7]_i_3_n_0 ;
  wire \dout[9]_i_2_n_0 ;
  wire hsync;
  wire pixelclock;
  wire video_active;
  wire video_active_0;
  wire [7:0]video_data;
  wire vsync;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \disparity[0]_i_1 
       (.I0(\disparity[0]_i_2_n_0 ),
        .I1(\disparity[1]_i_3_n_0 ),
        .I2(\disparity_reg_n_0_[0] ),
        .O(\disparity[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \disparity[0]_i_2 
       (.I0(\disparity[2]_i_3_n_0 ),
        .I1(\disparity[3]_i_8_n_0 ),
        .I2(\disparity[3]_i_5_n_0 ),
        .O(\disparity[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA69666669AAAA)) 
    \disparity[1]_i_1 
       (.I0(\disparity[1]_i_2_n_0 ),
        .I1(\disparity[1]_i_3_n_0 ),
        .I2(\disparity[2]_i_3_n_0 ),
        .I3(\disparity[3]_i_8_n_0 ),
        .I4(\disparity_reg_n_0_[0] ),
        .I5(\disparity[3]_i_5_n_0 ),
        .O(\disparity[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[1]_i_2 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[3]_i_10_n_0 ),
        .O(\disparity[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \disparity[1]_i_3 
       (.I0(video_data[1]),
        .I1(video_data[3]),
        .I2(video_data[7]),
        .I3(video_data[5]),
        .O(\disparity[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \disparity[2]_i_1 
       (.I0(\disparity[2]_i_2_n_0 ),
        .I1(\disparity[2]_i_3_n_0 ),
        .I2(\disparity[2]_i_4_n_0 ),
        .I3(\disparity[3]_i_8_n_0 ),
        .I4(\disparity[2]_i_5_n_0 ),
        .O(\disparity[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h66C36393C3996393)) 
    \disparity[2]_i_2 
       (.I0(\disparity[3]_i_5_n_0 ),
        .I1(\disparity[2]_i_6_n_0 ),
        .I2(\disparity[3]_i_10_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[1]_i_3_n_0 ),
        .I5(\disparity_reg_n_0_[0] ),
        .O(\disparity[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \disparity[2]_i_3 
       (.I0(\disparity[1]_i_3_n_0 ),
        .I1(\disparity[3]_i_10_n_0 ),
        .I2(\disparity[3]_i_9_n_0 ),
        .I3(\disparity[2]_i_7_n_0 ),
        .O(\disparity[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC663C333C3336339)) 
    \disparity[2]_i_4 
       (.I0(\disparity[3]_i_5_n_0 ),
        .I1(\disparity[2]_i_6_n_0 ),
        .I2(\disparity[3]_i_10_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[1]_i_3_n_0 ),
        .I5(\disparity_reg_n_0_[0] ),
        .O(\disparity[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3C3339639C393C33)) 
    \disparity[2]_i_5 
       (.I0(\disparity[3]_i_5_n_0 ),
        .I1(\disparity[2]_i_6_n_0 ),
        .I2(\disparity_reg_n_0_[1] ),
        .I3(\disparity[3]_i_10_n_0 ),
        .I4(\disparity[1]_i_3_n_0 ),
        .I5(\disparity_reg_n_0_[0] ),
        .O(\disparity[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[2]_i_6 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[3]_i_9_n_0 ),
        .O(\disparity[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \disparity[2]_i_7 
       (.I0(\disparity_reg_n_0_[0] ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity_reg_n_0_[2] ),
        .I3(disparity),
        .O(\disparity[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \disparity[3]_i_10 
       (.I0(\disparity[3]_i_20_n_0 ),
        .I1(\disparity[3]_i_19_n_0 ),
        .I2(\disparity[3]_i_22_n_0 ),
        .I3(\disparity[3]_i_21_n_0 ),
        .O(\disparity[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBF40FD0202FDBF40)) 
    \disparity[3]_i_11 
       (.I0(\disparity[3]_i_23_n_0 ),
        .I1(\disparity[3]_i_10_n_0 ),
        .I2(\disparity_reg_n_0_[1] ),
        .I3(\disparity[3]_i_8_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_9_n_0 ),
        .O(\disparity[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \disparity[3]_i_12 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[3]_i_10_n_0 ),
        .I2(\disparity[1]_i_3_n_0 ),
        .I3(\disparity_reg_n_0_[0] ),
        .O(\disparity[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \disparity[3]_i_13 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[3]_i_10_n_0 ),
        .I2(\disparity[1]_i_3_n_0 ),
        .I3(\disparity_reg_n_0_[0] ),
        .O(\disparity[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \disparity[3]_i_14 
       (.I0(video_data[4]),
        .I1(video_data[6]),
        .I2(video_data[5]),
        .I3(video_data[3]),
        .I4(video_data[2]),
        .I5(video_data[1]),
        .O(\disparity[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[3]_i_15__1 
       (.I0(video_data[6]),
        .I1(video_data[5]),
        .I2(video_data[4]),
        .O(\disparity[3]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \disparity[3]_i_16 
       (.I0(video_data[3]),
        .I1(video_data[2]),
        .I2(video_data[1]),
        .O(\disparity[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \disparity[3]_i_17 
       (.I0(video_data[4]),
        .I1(video_data[6]),
        .I2(video_data[5]),
        .I3(video_data[3]),
        .I4(video_data[2]),
        .I5(video_data[1]),
        .O(\disparity[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBF0B)) 
    \disparity[3]_i_18 
       (.I0(\disparity_reg_n_0_[0] ),
        .I1(\disparity[1]_i_3_n_0 ),
        .I2(\disparity[3]_i_10_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .O(\disparity[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h693CC369)) 
    \disparity[3]_i_19 
       (.I0(\disparity[3]_i_5_n_0 ),
        .I1(video_data[1]),
        .I2(video_data[0]),
        .I3(video_data[3]),
        .I4(video_data[2]),
        .O(\disparity[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hA000AA02FF03FF03)) 
    \disparity[3]_i_2 
       (.I0(\disparity[3]_i_3__1_n_0 ),
        .I1(\disparity[3]_i_4_n_0 ),
        .I2(\disparity[3]_i_5_n_0 ),
        .I3(\disparity[3]_i_6__1_n_0 ),
        .I4(\disparity[3]_i_7_n_0 ),
        .I5(\disparity[3]_i_8_n_0 ),
        .O(\disparity[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h14D7D714)) 
    \disparity[3]_i_20 
       (.I0(video_data[0]),
        .I1(video_data[5]),
        .I2(\disparity[3]_i_5_n_0 ),
        .I3(video_data[4]),
        .I4(\dout[5]_i_2_n_0 ),
        .O(\disparity[3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h90060690)) 
    \disparity[3]_i_21 
       (.I0(video_data[1]),
        .I1(video_data[3]),
        .I2(video_data[0]),
        .I3(video_data[7]),
        .I4(video_data[5]),
        .O(\disparity[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9F0990F960F66F06)) 
    \disparity[3]_i_22 
       (.I0(\dout[6]_i_2_n_0 ),
        .I1(video_data[6]),
        .I2(video_data[7]),
        .I3(\disparity[3]_i_5_n_0 ),
        .I4(video_data[0]),
        .I5(video_data[5]),
        .O(\disparity[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h41141441)) 
    \disparity[3]_i_23 
       (.I0(\disparity_reg_n_0_[0] ),
        .I1(video_data[5]),
        .I2(video_data[7]),
        .I3(video_data[3]),
        .I4(video_data[1]),
        .O(\disparity[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h02FF02FFFFFF02FF)) 
    \disparity[3]_i_3__1 
       (.I0(\disparity[3]_i_9_n_0 ),
        .I1(\disparity[3]_i_10_n_0 ),
        .I2(\disparity[1]_i_3_n_0 ),
        .I3(\disparity[3]_i_5_n_0 ),
        .I4(\disparity[3]_i_11_n_0 ),
        .I5(\disparity[2]_i_3_n_0 ),
        .O(\disparity[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hBFEAEABFABFEEABF)) 
    \disparity[3]_i_4 
       (.I0(\disparity[2]_i_3_n_0 ),
        .I1(\disparity_reg_n_0_[2] ),
        .I2(\disparity[3]_i_9_n_0 ),
        .I3(\disparity[3]_i_8_n_0 ),
        .I4(\disparity[3]_i_12_n_0 ),
        .I5(\disparity[3]_i_13_n_0 ),
        .O(\disparity[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA222200FF7F7FDF)) 
    \disparity[3]_i_5 
       (.I0(\disparity[3]_i_14_n_0 ),
        .I1(\disparity[3]_i_15__1_n_0 ),
        .I2(video_data[0]),
        .I3(video_data[7]),
        .I4(\disparity[3]_i_16_n_0 ),
        .I5(\disparity[3]_i_17_n_0 ),
        .O(\disparity[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF1070)) 
    \disparity[3]_i_6__1 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[3]_i_9_n_0 ),
        .I2(\disparity[3]_i_5_n_0 ),
        .I3(\disparity[3]_i_18_n_0 ),
        .I4(\disparity[3]_i_8_n_0 ),
        .O(\disparity[3]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hF8800000FFFFF880)) 
    \disparity[3]_i_7 
       (.I0(\disparity_reg_n_0_[0] ),
        .I1(\disparity[1]_i_3_n_0 ),
        .I2(\disparity_reg_n_0_[1] ),
        .I3(\disparity[3]_i_10_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_9_n_0 ),
        .O(\disparity[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAA6A6A56)) 
    \disparity[3]_i_8 
       (.I0(disparity),
        .I1(\disparity[3]_i_19_n_0 ),
        .I2(\disparity[3]_i_20_n_0 ),
        .I3(\disparity[3]_i_21_n_0 ),
        .I4(\disparity[3]_i_22_n_0 ),
        .O(\disparity[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8EE7)) 
    \disparity[3]_i_9 
       (.I0(\disparity[3]_i_22_n_0 ),
        .I1(\disparity[3]_i_21_n_0 ),
        .I2(\disparity[3]_i_20_n_0 ),
        .I3(\disparity[3]_i_19_n_0 ),
        .O(\disparity[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[0] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[0]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[0] ),
        .R(video_active_0));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[1] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[1]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[1] ),
        .R(video_active_0));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[2] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[2]_i_1_n_0 ),
        .Q(\disparity_reg_n_0_[2] ),
        .R(video_active_0));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[3] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[3]_i_2_n_0 ),
        .Q(disparity),
        .R(video_active_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \dout[0]_i_1 
       (.I0(video_data[0]),
        .I1(\dout[9]_i_2_n_0 ),
        .I2(video_active),
        .I3(hsync),
        .O(dout[0]));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \dout[1]_i_1 
       (.I0(video_data[0]),
        .I1(video_data[1]),
        .I2(\disparity[0]_i_2_n_0 ),
        .I3(video_active),
        .I4(hsync),
        .O(dout[1]));
  LUT6 #(
    .INIT(64'h699600006996FFFF)) 
    \dout[2]_i_1 
       (.I0(video_data[1]),
        .I1(video_data[2]),
        .I2(video_data[0]),
        .I3(\dout[9]_i_2_n_0 ),
        .I4(video_active),
        .I5(hsync),
        .O(dout[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \dout[3]_i_1 
       (.I0(\dout[5]_i_2_n_0 ),
        .I1(\disparity[0]_i_2_n_0 ),
        .I2(video_active),
        .I3(hsync),
        .O(dout[3]));
  LUT5 #(
    .INIT(32'h690069FF)) 
    \dout[4]_i_1 
       (.I0(\dout[5]_i_2_n_0 ),
        .I1(video_data[4]),
        .I2(\dout[9]_i_2_n_0 ),
        .I3(video_active),
        .I4(hsync),
        .O(dout[4]));
  LUT6 #(
    .INIT(64'h9669FFFF96690000)) 
    \dout[5]_i_1 
       (.I0(video_data[4]),
        .I1(\dout[5]_i_2_n_0 ),
        .I2(video_data[5]),
        .I3(\disparity[0]_i_2_n_0 ),
        .I4(video_active),
        .I5(hsync),
        .O(dout[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \dout[5]_i_2 
       (.I0(video_data[3]),
        .I1(video_data[1]),
        .I2(video_data[2]),
        .I3(video_data[0]),
        .O(\dout[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h699600006996FFFF)) 
    \dout[6]_i_1 
       (.I0(video_data[5]),
        .I1(\dout[6]_i_2_n_0 ),
        .I2(video_data[6]),
        .I3(\dout[9]_i_2_n_0 ),
        .I4(video_active),
        .I5(hsync),
        .O(dout[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dout[6]_i_2 
       (.I0(video_data[4]),
        .I1(video_data[0]),
        .I2(video_data[2]),
        .I3(video_data[1]),
        .I4(video_data[3]),
        .O(\dout[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \dout[7]_i_1 
       (.I0(\dout[7]_i_2_n_0 ),
        .I1(\disparity[0]_i_2_n_0 ),
        .I2(video_active),
        .I3(hsync),
        .O(dout[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dout[7]_i_2 
       (.I0(video_data[1]),
        .I1(video_data[2]),
        .I2(video_data[3]),
        .I3(\dout[7]_i_3_n_0 ),
        .O(\dout[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dout[7]_i_3 
       (.I0(video_data[7]),
        .I1(video_data[0]),
        .I2(video_data[4]),
        .I3(video_data[5]),
        .I4(video_data[6]),
        .O(\dout[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \dout[8]_i_1 
       (.I0(\disparity[3]_i_5_n_0 ),
        .I1(video_active),
        .I2(hsync),
        .O(dout[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \dout[9]_i_1 
       (.I0(\dout[9]_i_2_n_0 ),
        .I1(video_active),
        .I2(hsync),
        .I3(vsync),
        .O(dout[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \dout[9]_i_2 
       (.I0(\disparity[3]_i_5_n_0 ),
        .I1(\disparity[2]_i_3_n_0 ),
        .I2(\disparity[3]_i_8_n_0 ),
        .O(\dout[9]_i_2_n_0 ));
  FDRE \dout_reg[0] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(dout[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tmds_encoder" *) 
module design_1_rgb2tmds_0_0_tmds_encoder_3
   (endata_i,
    video_active,
    video_data,
    video_active_0,
    pixelclock);
  output [9:0]endata_i;
  input video_active;
  input [7:0]video_data;
  input video_active_0;
  input pixelclock;

  wire [3:3]disparity;
  wire \disparity[0]_i_1__1_n_0 ;
  wire \disparity[1]_i_1__1_n_0 ;
  wire \disparity[1]_i_2__1_n_0 ;
  wire \disparity[1]_i_3__1_n_0 ;
  wire \disparity[1]_i_4__0_n_0 ;
  wire \disparity[1]_i_5__0_n_0 ;
  wire \disparity[1]_i_6__0_n_0 ;
  wire \disparity[1]_i_7__0_n_0 ;
  wire \disparity[1]_i_8__0_n_0 ;
  wire \disparity[2]_i_1__1_n_0 ;
  wire \disparity[2]_i_2__1_n_0 ;
  wire \disparity[2]_i_3__1_n_0 ;
  wire \disparity[2]_i_4__1_n_0 ;
  wire \disparity[2]_i_5__1_n_0 ;
  wire \disparity[2]_i_6__1_n_0 ;
  wire \disparity[3]_i_10__1_n_0 ;
  wire \disparity[3]_i_11__1_n_0 ;
  wire \disparity[3]_i_12__1_n_0 ;
  wire \disparity[3]_i_13__1_n_0 ;
  wire \disparity[3]_i_14__1_n_0 ;
  wire \disparity[3]_i_15__0_n_0 ;
  wire \disparity[3]_i_16__1_n_0 ;
  wire \disparity[3]_i_1__1_n_0 ;
  wire \disparity[3]_i_2__1_n_0 ;
  wire \disparity[3]_i_3__0_n_0 ;
  wire \disparity[3]_i_4__1_n_0 ;
  wire \disparity[3]_i_5__1_n_0 ;
  wire \disparity[3]_i_6__0_n_0 ;
  wire \disparity[3]_i_7__1_n_0 ;
  wire \disparity[3]_i_8__1_n_0 ;
  wire \disparity[3]_i_9__1_n_0 ;
  wire \disparity_reg_n_0_[0] ;
  wire \disparity_reg_n_0_[1] ;
  wire \disparity_reg_n_0_[2] ;
  wire \dout[0]_i_1__1_n_0 ;
  wire \dout[1]_i_1__1_n_0 ;
  wire \dout[2]_i_1__1_n_0 ;
  wire \dout[2]_i_2__0_n_0 ;
  wire \dout[3]_i_1__1_n_0 ;
  wire \dout[3]_i_2__0_n_0 ;
  wire \dout[4]_i_1__1_n_0 ;
  wire \dout[5]_i_1__1_n_0 ;
  wire \dout[5]_i_2__1_n_0 ;
  wire \dout[6]_i_1__1_n_0 ;
  wire \dout[7]_i_1__1_n_0 ;
  wire \dout[7]_i_2__1_n_0 ;
  wire \dout[7]_i_3__1_n_0 ;
  wire \dout[8]_i_1__1_n_0 ;
  wire \dout[9]_i_1__1_n_0 ;
  wire [9:0]endata_i;
  wire pixelclock;
  wire video_active;
  wire video_active_0;
  wire [7:0]video_data;

  LUT5 #(
    .INIT(32'h96666696)) 
    \disparity[0]_i_1__1 
       (.I0(\disparity[1]_i_3__1_n_0 ),
        .I1(\disparity_reg_n_0_[0] ),
        .I2(\disparity[3]_i_5__1_n_0 ),
        .I3(\disparity[3]_i_3__0_n_0 ),
        .I4(\disparity[1]_i_4__0_n_0 ),
        .O(\disparity[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA96666696AAAA)) 
    \disparity[1]_i_1__1 
       (.I0(\disparity[1]_i_2__1_n_0 ),
        .I1(\disparity[1]_i_3__1_n_0 ),
        .I2(\disparity[3]_i_5__1_n_0 ),
        .I3(\disparity[3]_i_3__0_n_0 ),
        .I4(\disparity_reg_n_0_[0] ),
        .I5(\disparity[1]_i_4__0_n_0 ),
        .O(\disparity[1]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[1]_i_2__1 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[2]_i_6__1_n_0 ),
        .O(\disparity[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \disparity[1]_i_3__1 
       (.I0(video_data[1]),
        .I1(video_data[3]),
        .I2(video_data[7]),
        .I3(video_data[5]),
        .O(\disparity[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h4C4C04047FFFB7FF)) 
    \disparity[1]_i_4__0 
       (.I0(\disparity[1]_i_5__0_n_0 ),
        .I1(\disparity[1]_i_6__0_n_0 ),
        .I2(\disparity[1]_i_7__0_n_0 ),
        .I3(video_data[0]),
        .I4(video_data[7]),
        .I5(\disparity[1]_i_8__0_n_0 ),
        .O(\disparity[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[1]_i_5__0 
       (.I0(video_data[2]),
        .I1(video_data[3]),
        .I2(video_data[1]),
        .O(\disparity[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \disparity[1]_i_6__0 
       (.I0(video_data[4]),
        .I1(video_data[6]),
        .I2(video_data[5]),
        .I3(video_data[2]),
        .I4(video_data[3]),
        .I5(video_data[1]),
        .O(\disparity[1]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[1]_i_7__0 
       (.I0(video_data[4]),
        .I1(video_data[6]),
        .I2(video_data[5]),
        .O(\disparity[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \disparity[1]_i_8__0 
       (.I0(video_data[4]),
        .I1(video_data[6]),
        .I2(video_data[5]),
        .I3(video_data[2]),
        .I4(video_data[3]),
        .I5(video_data[1]),
        .O(\disparity[1]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'h474700FF)) 
    \disparity[2]_i_1__1 
       (.I0(\disparity[2]_i_2__1_n_0 ),
        .I1(\disparity[3]_i_3__0_n_0 ),
        .I2(\disparity[2]_i_3__1_n_0 ),
        .I3(\disparity[2]_i_4__1_n_0 ),
        .I4(\disparity[3]_i_5__1_n_0 ),
        .O(\disparity[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hC663C333C3336339)) 
    \disparity[2]_i_2__1 
       (.I0(\disparity[1]_i_4__0_n_0 ),
        .I1(\disparity[2]_i_5__1_n_0 ),
        .I2(\disparity[2]_i_6__1_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[1]_i_3__1_n_0 ),
        .I5(\disparity_reg_n_0_[0] ),
        .O(\disparity[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h20FB0420DF04FBDF)) 
    \disparity[2]_i_3__1 
       (.I0(\disparity[1]_i_4__0_n_0 ),
        .I1(\disparity_reg_n_0_[0] ),
        .I2(\disparity[1]_i_3__1_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[2]_i_6__1_n_0 ),
        .I5(\disparity[2]_i_5__1_n_0 ),
        .O(\disparity[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h66C36393C3996393)) 
    \disparity[2]_i_4__1 
       (.I0(\disparity[1]_i_4__0_n_0 ),
        .I1(\disparity[2]_i_5__1_n_0 ),
        .I2(\disparity[2]_i_6__1_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[1]_i_3__1_n_0 ),
        .I5(\disparity_reg_n_0_[0] ),
        .O(\disparity[2]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \disparity[2]_i_5__1 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[3]_i_8__1_n_0 ),
        .O(\disparity[2]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \disparity[2]_i_6__1 
       (.I0(\disparity[3]_i_13__1_n_0 ),
        .I1(\disparity[3]_i_10__1_n_0 ),
        .I2(\disparity[3]_i_11__1_n_0 ),
        .I3(\disparity[3]_i_12__1_n_0 ),
        .O(\disparity[2]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h96C33C96)) 
    \disparity[3]_i_10__1 
       (.I0(\disparity[1]_i_4__0_n_0 ),
        .I1(video_data[1]),
        .I2(video_data[0]),
        .I3(video_data[3]),
        .I4(video_data[2]),
        .O(\disparity[3]_i_10__1_n_0 ));
  LUT5 #(
    .INIT(32'hEB2828EB)) 
    \disparity[3]_i_11__1 
       (.I0(video_data[0]),
        .I1(video_data[5]),
        .I2(\disparity[1]_i_4__0_n_0 ),
        .I3(video_data[4]),
        .I4(\dout[3]_i_2__0_n_0 ),
        .O(\disparity[3]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'h6009F69FF69F6009)) 
    \disparity[3]_i_12__1 
       (.I0(video_data[5]),
        .I1(video_data[0]),
        .I2(\dout[7]_i_2__1_n_0 ),
        .I3(\disparity[1]_i_4__0_n_0 ),
        .I4(video_data[6]),
        .I5(\dout[5]_i_2__1_n_0 ),
        .O(\disparity[3]_i_12__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h90060690)) 
    \disparity[3]_i_13__1 
       (.I0(video_data[1]),
        .I1(video_data[3]),
        .I2(video_data[0]),
        .I3(video_data[7]),
        .I4(video_data[5]),
        .O(\disparity[3]_i_13__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBB2B)) 
    \disparity[3]_i_14__1 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[2]_i_6__1_n_0 ),
        .I2(\disparity[1]_i_3__1_n_0 ),
        .I3(\disparity_reg_n_0_[0] ),
        .O(\disparity[3]_i_14__1_n_0 ));
  LUT6 #(
    .INIT(64'h0400DFDDDFDD0400)) 
    \disparity[3]_i_15__0 
       (.I0(\disparity[2]_i_6__1_n_0 ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity[1]_i_3__1_n_0 ),
        .I3(\disparity_reg_n_0_[0] ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_8__1_n_0 ),
        .O(\disparity[3]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \disparity[3]_i_16__1 
       (.I0(video_data[5]),
        .I1(video_data[7]),
        .I2(video_data[3]),
        .I3(video_data[1]),
        .I4(\disparity[2]_i_6__1_n_0 ),
        .O(\disparity[3]_i_16__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \disparity[3]_i_1__1 
       (.I0(\disparity[3]_i_2__1_n_0 ),
        .I1(\disparity[3]_i_3__0_n_0 ),
        .I2(\disparity[3]_i_4__1_n_0 ),
        .I3(\disparity[3]_i_5__1_n_0 ),
        .I4(\disparity[3]_i_6__0_n_0 ),
        .O(\disparity[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB48778B487877887)) 
    \disparity[3]_i_2__1 
       (.I0(\disparity[3]_i_7__1_n_0 ),
        .I1(\disparity[1]_i_4__0_n_0 ),
        .I2(\disparity[3]_i_3__0_n_0 ),
        .I3(\disparity[3]_i_8__1_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_9__1_n_0 ),
        .O(\disparity[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hA9AA95A9)) 
    \disparity[3]_i_3__0 
       (.I0(disparity),
        .I1(\disparity[3]_i_10__1_n_0 ),
        .I2(\disparity[3]_i_11__1_n_0 ),
        .I3(\disparity[3]_i_12__1_n_0 ),
        .I4(\disparity[3]_i_13__1_n_0 ),
        .O(\disparity[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hCF30B847B84730CF)) 
    \disparity[3]_i_4__1 
       (.I0(\disparity[3]_i_14__1_n_0 ),
        .I1(\disparity[1]_i_4__0_n_0 ),
        .I2(\disparity[3]_i_15__0_n_0 ),
        .I3(\disparity[3]_i_3__0_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_8__1_n_0 ),
        .O(\disparity[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFEFFFE)) 
    \disparity[3]_i_5__1 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity_reg_n_0_[0] ),
        .I2(disparity),
        .I3(\disparity_reg_n_0_[2] ),
        .I4(\disparity[3]_i_16__1_n_0 ),
        .I5(\disparity[3]_i_8__1_n_0 ),
        .O(\disparity[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hF087B43CC387B40F)) 
    \disparity[3]_i_6__0 
       (.I0(\disparity[3]_i_14__1_n_0 ),
        .I1(\disparity[1]_i_4__0_n_0 ),
        .I2(\disparity[3]_i_3__0_n_0 ),
        .I3(\disparity[3]_i_8__1_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_9__1_n_0 ),
        .O(\disparity[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h777F00010001777F)) 
    \disparity[3]_i_7__1 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[2]_i_6__1_n_0 ),
        .I2(\disparity_reg_n_0_[0] ),
        .I3(\disparity[1]_i_3__1_n_0 ),
        .I4(\disparity[3]_i_8__1_n_0 ),
        .I5(\disparity_reg_n_0_[2] ),
        .O(\disparity[3]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hDBB2)) 
    \disparity[3]_i_8__1 
       (.I0(\disparity[3]_i_13__1_n_0 ),
        .I1(\disparity[3]_i_12__1_n_0 ),
        .I2(\disparity[3]_i_11__1_n_0 ),
        .I3(\disparity[3]_i_10__1_n_0 ),
        .O(\disparity[3]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \disparity[3]_i_9__1 
       (.I0(\disparity_reg_n_0_[0] ),
        .I1(\disparity[1]_i_3__1_n_0 ),
        .I2(\disparity_reg_n_0_[1] ),
        .I3(\disparity[2]_i_6__1_n_0 ),
        .O(\disparity[3]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[0] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[0]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[0] ),
        .R(video_active_0));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[1] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[1]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[1] ),
        .R(video_active_0));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[2] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[2]_i_1__1_n_0 ),
        .Q(\disparity_reg_n_0_[2] ),
        .R(video_active_0));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[3] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[3]_i_1__1_n_0 ),
        .Q(disparity),
        .R(video_active_0));
  LUT5 #(
    .INIT(32'hA0280A28)) 
    \dout[0]_i_1__1 
       (.I0(video_active),
        .I1(\disparity[1]_i_4__0_n_0 ),
        .I2(video_data[0]),
        .I3(\disparity[3]_i_5__1_n_0 ),
        .I4(\disparity[3]_i_3__0_n_0 ),
        .O(\dout[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8228282828288228)) 
    \dout[1]_i_1__1 
       (.I0(video_active),
        .I1(video_data[0]),
        .I2(video_data[1]),
        .I3(\disparity[3]_i_5__1_n_0 ),
        .I4(\disparity[3]_i_3__0_n_0 ),
        .I5(\disparity[1]_i_4__0_n_0 ),
        .O(\dout[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7D7DD77DD7D7D77D)) 
    \dout[2]_i_1__1 
       (.I0(video_active),
        .I1(\dout[2]_i_2__0_n_0 ),
        .I2(video_data[2]),
        .I3(\disparity[1]_i_4__0_n_0 ),
        .I4(\disparity[3]_i_5__1_n_0 ),
        .I5(\disparity[3]_i_3__0_n_0 ),
        .O(\dout[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dout[2]_i_2__0 
       (.I0(video_data[1]),
        .I1(video_data[0]),
        .O(\dout[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h82222282)) 
    \dout[3]_i_1__1 
       (.I0(video_active),
        .I1(\dout[3]_i_2__0_n_0 ),
        .I2(\disparity[3]_i_5__1_n_0 ),
        .I3(\disparity[3]_i_3__0_n_0 ),
        .I4(\disparity[1]_i_4__0_n_0 ),
        .O(\dout[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \dout[3]_i_2__0 
       (.I0(video_data[3]),
        .I1(video_data[1]),
        .I2(video_data[0]),
        .I3(video_data[2]),
        .O(\dout[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h99696669)) 
    \dout[4]_i_1__1 
       (.I0(\dout[3]_i_2__0_n_0 ),
        .I1(video_data[4]),
        .I2(\disparity[1]_i_4__0_n_0 ),
        .I3(\disparity[3]_i_5__1_n_0 ),
        .I4(\disparity[3]_i_3__0_n_0 ),
        .O(\dout[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h82222282)) 
    \dout[5]_i_1__1 
       (.I0(video_active),
        .I1(\dout[5]_i_2__1_n_0 ),
        .I2(\disparity[3]_i_5__1_n_0 ),
        .I3(\disparity[3]_i_3__0_n_0 ),
        .I4(\disparity[1]_i_4__0_n_0 ),
        .O(\dout[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \dout[5]_i_2__1 
       (.I0(video_data[5]),
        .I1(video_data[3]),
        .I2(video_data[1]),
        .I3(video_data[0]),
        .I4(video_data[2]),
        .I5(video_data[4]),
        .O(\dout[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h99696669)) 
    \dout[6]_i_1__1 
       (.I0(\dout[5]_i_2__1_n_0 ),
        .I1(video_data[6]),
        .I2(\disparity[1]_i_4__0_n_0 ),
        .I3(\disparity[3]_i_5__1_n_0 ),
        .I4(\disparity[3]_i_3__0_n_0 ),
        .O(\dout[6]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h6AA60000)) 
    \dout[7]_i_1__1 
       (.I0(\dout[7]_i_2__1_n_0 ),
        .I1(\disparity[3]_i_5__1_n_0 ),
        .I2(\disparity[3]_i_3__0_n_0 ),
        .I3(\disparity[1]_i_4__0_n_0 ),
        .I4(video_active),
        .O(\dout[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \dout[7]_i_2__1 
       (.I0(\dout[7]_i_3__1_n_0 ),
        .I1(video_data[1]),
        .I2(video_data[3]),
        .I3(video_data[2]),
        .O(\dout[7]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \dout[7]_i_3__1 
       (.I0(video_data[5]),
        .I1(video_data[6]),
        .I2(video_data[4]),
        .I3(video_data[7]),
        .I4(video_data[0]),
        .O(\dout[7]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dout[8]_i_1__1 
       (.I0(\disparity[1]_i_4__0_n_0 ),
        .O(\dout[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \dout[9]_i_1__1 
       (.I0(\disparity[3]_i_3__0_n_0 ),
        .I1(\disparity[3]_i_5__1_n_0 ),
        .I2(\disparity[1]_i_4__0_n_0 ),
        .O(\dout[9]_i_1__1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[0]_i_1__1_n_0 ),
        .Q(endata_i[0]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[1]_i_1__1_n_0 ),
        .Q(endata_i[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[2]_i_1__1_n_0 ),
        .Q(endata_i[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[3]_i_1__1_n_0 ),
        .Q(endata_i[3]),
        .R(1'b0));
  FDSE \dout_reg[4] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[4]_i_1__1_n_0 ),
        .Q(endata_i[4]),
        .S(video_active_0));
  FDRE \dout_reg[5] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[5]_i_1__1_n_0 ),
        .Q(endata_i[5]),
        .R(1'b0));
  FDSE \dout_reg[6] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[6]_i_1__1_n_0 ),
        .Q(endata_i[6]),
        .S(video_active_0));
  FDRE \dout_reg[7] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[7]_i_1__1_n_0 ),
        .Q(endata_i[7]),
        .R(1'b0));
  FDSE \dout_reg[8] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[8]_i_1__1_n_0 ),
        .Q(endata_i[8]),
        .S(video_active_0));
  FDSE \dout_reg[9] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[9]_i_1__1_n_0 ),
        .Q(endata_i[9]),
        .S(video_active_0));
endmodule

(* ORIG_REF_NAME = "tmds_encoder" *) 
module design_1_rgb2tmds_0_0_tmds_encoder_4
   (\disparity_reg[0]_0 ,
    endata_i,
    video_active,
    video_data,
    pixelclock);
  output \disparity_reg[0]_0 ;
  output [9:0]endata_i;
  input video_active;
  input [7:0]video_data;
  input pixelclock;

  wire [3:3]disparity;
  wire \disparity[0]_i_1__0_n_0 ;
  wire \disparity[1]_i_1__0_n_0 ;
  wire \disparity[1]_i_2__0_n_0 ;
  wire \disparity[1]_i_3__0_n_0 ;
  wire \disparity[1]_i_4_n_0 ;
  wire \disparity[1]_i_5_n_0 ;
  wire \disparity[1]_i_6_n_0 ;
  wire \disparity[1]_i_7_n_0 ;
  wire \disparity[1]_i_8_n_0 ;
  wire \disparity[2]_i_1__0_n_0 ;
  wire \disparity[2]_i_2__0_n_0 ;
  wire \disparity[2]_i_3__0_n_0 ;
  wire \disparity[2]_i_4__0_n_0 ;
  wire \disparity[2]_i_5__0_n_0 ;
  wire \disparity[2]_i_6__0_n_0 ;
  wire \disparity[3]_i_10__0_n_0 ;
  wire \disparity[3]_i_11__0_n_0 ;
  wire \disparity[3]_i_12__0_n_0 ;
  wire \disparity[3]_i_13__0_n_0 ;
  wire \disparity[3]_i_14__0_n_0 ;
  wire \disparity[3]_i_15_n_0 ;
  wire \disparity[3]_i_16__0_n_0 ;
  wire \disparity[3]_i_1__0_n_0 ;
  wire \disparity[3]_i_2__0_n_0 ;
  wire \disparity[3]_i_3_n_0 ;
  wire \disparity[3]_i_4__0_n_0 ;
  wire \disparity[3]_i_5__0_n_0 ;
  wire \disparity[3]_i_6_n_0 ;
  wire \disparity[3]_i_7__0_n_0 ;
  wire \disparity[3]_i_8__0_n_0 ;
  wire \disparity[3]_i_9__0_n_0 ;
  wire \disparity_reg[0]_0 ;
  wire \disparity_reg_n_0_[0] ;
  wire \disparity_reg_n_0_[1] ;
  wire \disparity_reg_n_0_[2] ;
  wire \dout[0]_i_1__0_n_0 ;
  wire \dout[1]_i_1__0_n_0 ;
  wire \dout[2]_i_1__0_n_0 ;
  wire \dout[2]_i_2_n_0 ;
  wire \dout[3]_i_1__0_n_0 ;
  wire \dout[3]_i_2_n_0 ;
  wire \dout[4]_i_1__0_n_0 ;
  wire \dout[5]_i_1__0_n_0 ;
  wire \dout[5]_i_2__0_n_0 ;
  wire \dout[6]_i_1__0_n_0 ;
  wire \dout[7]_i_1__0_n_0 ;
  wire \dout[7]_i_2__0_n_0 ;
  wire \dout[7]_i_3__0_n_0 ;
  wire \dout[8]_i_1__0_n_0 ;
  wire \dout[9]_i_1__0_n_0 ;
  wire [9:0]endata_i;
  wire pixelclock;
  wire video_active;
  wire [7:0]video_data;

  LUT5 #(
    .INIT(32'h96666696)) 
    \disparity[0]_i_1__0 
       (.I0(\disparity[1]_i_3__0_n_0 ),
        .I1(\disparity_reg_n_0_[0] ),
        .I2(\disparity[3]_i_5__0_n_0 ),
        .I3(\disparity[3]_i_3_n_0 ),
        .I4(\disparity[1]_i_4_n_0 ),
        .O(\disparity[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA96666696AAAA)) 
    \disparity[1]_i_1__0 
       (.I0(\disparity[1]_i_2__0_n_0 ),
        .I1(\disparity[1]_i_3__0_n_0 ),
        .I2(\disparity[3]_i_5__0_n_0 ),
        .I3(\disparity[3]_i_3_n_0 ),
        .I4(\disparity_reg_n_0_[0] ),
        .I5(\disparity[1]_i_4_n_0 ),
        .O(\disparity[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \disparity[1]_i_2__0 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[2]_i_6__0_n_0 ),
        .O(\disparity[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \disparity[1]_i_3__0 
       (.I0(video_data[1]),
        .I1(video_data[3]),
        .I2(video_data[7]),
        .I3(video_data[5]),
        .O(\disparity[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C4C04047FFFB7FF)) 
    \disparity[1]_i_4 
       (.I0(\disparity[1]_i_5_n_0 ),
        .I1(\disparity[1]_i_6_n_0 ),
        .I2(\disparity[1]_i_7_n_0 ),
        .I3(video_data[0]),
        .I4(video_data[7]),
        .I5(\disparity[1]_i_8_n_0 ),
        .O(\disparity[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[1]_i_5 
       (.I0(video_data[2]),
        .I1(video_data[3]),
        .I2(video_data[1]),
        .O(\disparity[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \disparity[1]_i_6 
       (.I0(video_data[4]),
        .I1(video_data[6]),
        .I2(video_data[5]),
        .I3(video_data[2]),
        .I4(video_data[3]),
        .I5(video_data[1]),
        .O(\disparity[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \disparity[1]_i_7 
       (.I0(video_data[4]),
        .I1(video_data[6]),
        .I2(video_data[5]),
        .O(\disparity[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \disparity[1]_i_8 
       (.I0(video_data[4]),
        .I1(video_data[6]),
        .I2(video_data[5]),
        .I3(video_data[2]),
        .I4(video_data[3]),
        .I5(video_data[1]),
        .O(\disparity[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h474700FF)) 
    \disparity[2]_i_1__0 
       (.I0(\disparity[2]_i_2__0_n_0 ),
        .I1(\disparity[3]_i_3_n_0 ),
        .I2(\disparity[2]_i_3__0_n_0 ),
        .I3(\disparity[2]_i_4__0_n_0 ),
        .I4(\disparity[3]_i_5__0_n_0 ),
        .O(\disparity[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hC663C333C3336339)) 
    \disparity[2]_i_2__0 
       (.I0(\disparity[1]_i_4_n_0 ),
        .I1(\disparity[2]_i_5__0_n_0 ),
        .I2(\disparity[2]_i_6__0_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[1]_i_3__0_n_0 ),
        .I5(\disparity_reg_n_0_[0] ),
        .O(\disparity[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h20FB0420DF04FBDF)) 
    \disparity[2]_i_3__0 
       (.I0(\disparity[1]_i_4_n_0 ),
        .I1(\disparity_reg_n_0_[0] ),
        .I2(\disparity[1]_i_3__0_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[2]_i_6__0_n_0 ),
        .I5(\disparity[2]_i_5__0_n_0 ),
        .O(\disparity[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h66C36393C3996393)) 
    \disparity[2]_i_4__0 
       (.I0(\disparity[1]_i_4_n_0 ),
        .I1(\disparity[2]_i_5__0_n_0 ),
        .I2(\disparity[2]_i_6__0_n_0 ),
        .I3(\disparity_reg_n_0_[1] ),
        .I4(\disparity[1]_i_3__0_n_0 ),
        .I5(\disparity_reg_n_0_[0] ),
        .O(\disparity[2]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \disparity[2]_i_5__0 
       (.I0(\disparity_reg_n_0_[2] ),
        .I1(\disparity[3]_i_8__0_n_0 ),
        .O(\disparity[2]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \disparity[2]_i_6__0 
       (.I0(\disparity[3]_i_13__0_n_0 ),
        .I1(\disparity[3]_i_10__0_n_0 ),
        .I2(\disparity[3]_i_11__0_n_0 ),
        .I3(\disparity[3]_i_12__0_n_0 ),
        .O(\disparity[2]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \disparity[3]_i_1 
       (.I0(video_active),
        .O(\disparity_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h96C33C96)) 
    \disparity[3]_i_10__0 
       (.I0(\disparity[1]_i_4_n_0 ),
        .I1(video_data[1]),
        .I2(video_data[0]),
        .I3(video_data[3]),
        .I4(video_data[2]),
        .O(\disparity[3]_i_10__0_n_0 ));
  LUT5 #(
    .INIT(32'hEB2828EB)) 
    \disparity[3]_i_11__0 
       (.I0(video_data[0]),
        .I1(video_data[5]),
        .I2(\disparity[1]_i_4_n_0 ),
        .I3(video_data[4]),
        .I4(\dout[3]_i_2_n_0 ),
        .O(\disparity[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h6009F69FF69F6009)) 
    \disparity[3]_i_12__0 
       (.I0(video_data[5]),
        .I1(video_data[0]),
        .I2(\dout[7]_i_2__0_n_0 ),
        .I3(\disparity[1]_i_4_n_0 ),
        .I4(video_data[6]),
        .I5(\dout[5]_i_2__0_n_0 ),
        .O(\disparity[3]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h90060690)) 
    \disparity[3]_i_13__0 
       (.I0(video_data[1]),
        .I1(video_data[3]),
        .I2(video_data[0]),
        .I3(video_data[7]),
        .I4(video_data[5]),
        .O(\disparity[3]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hBB2B)) 
    \disparity[3]_i_14__0 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[2]_i_6__0_n_0 ),
        .I2(\disparity[1]_i_3__0_n_0 ),
        .I3(\disparity_reg_n_0_[0] ),
        .O(\disparity[3]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'h0400DFDDDFDD0400)) 
    \disparity[3]_i_15 
       (.I0(\disparity[2]_i_6__0_n_0 ),
        .I1(\disparity_reg_n_0_[1] ),
        .I2(\disparity[1]_i_3__0_n_0 ),
        .I3(\disparity_reg_n_0_[0] ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_8__0_n_0 ),
        .O(\disparity[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \disparity[3]_i_16__0 
       (.I0(video_data[5]),
        .I1(video_data[7]),
        .I2(video_data[3]),
        .I3(video_data[1]),
        .I4(\disparity[2]_i_6__0_n_0 ),
        .O(\disparity[3]_i_16__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \disparity[3]_i_1__0 
       (.I0(\disparity[3]_i_2__0_n_0 ),
        .I1(\disparity[3]_i_3_n_0 ),
        .I2(\disparity[3]_i_4__0_n_0 ),
        .I3(\disparity[3]_i_5__0_n_0 ),
        .I4(\disparity[3]_i_6_n_0 ),
        .O(\disparity[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB48778B487877887)) 
    \disparity[3]_i_2__0 
       (.I0(\disparity[3]_i_7__0_n_0 ),
        .I1(\disparity[1]_i_4_n_0 ),
        .I2(\disparity[3]_i_3_n_0 ),
        .I3(\disparity[3]_i_8__0_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_9__0_n_0 ),
        .O(\disparity[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hA9AA95A9)) 
    \disparity[3]_i_3 
       (.I0(disparity),
        .I1(\disparity[3]_i_10__0_n_0 ),
        .I2(\disparity[3]_i_11__0_n_0 ),
        .I3(\disparity[3]_i_12__0_n_0 ),
        .I4(\disparity[3]_i_13__0_n_0 ),
        .O(\disparity[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCF30B847B84730CF)) 
    \disparity[3]_i_4__0 
       (.I0(\disparity[3]_i_14__0_n_0 ),
        .I1(\disparity[1]_i_4_n_0 ),
        .I2(\disparity[3]_i_15_n_0 ),
        .I3(\disparity[3]_i_3_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_8__0_n_0 ),
        .O(\disparity[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFEFFFE)) 
    \disparity[3]_i_5__0 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity_reg_n_0_[0] ),
        .I2(disparity),
        .I3(\disparity_reg_n_0_[2] ),
        .I4(\disparity[3]_i_16__0_n_0 ),
        .I5(\disparity[3]_i_8__0_n_0 ),
        .O(\disparity[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hF087B43CC387B40F)) 
    \disparity[3]_i_6 
       (.I0(\disparity[3]_i_14__0_n_0 ),
        .I1(\disparity[1]_i_4_n_0 ),
        .I2(\disparity[3]_i_3_n_0 ),
        .I3(\disparity[3]_i_8__0_n_0 ),
        .I4(\disparity_reg_n_0_[2] ),
        .I5(\disparity[3]_i_9__0_n_0 ),
        .O(\disparity[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h777F00010001777F)) 
    \disparity[3]_i_7__0 
       (.I0(\disparity_reg_n_0_[1] ),
        .I1(\disparity[2]_i_6__0_n_0 ),
        .I2(\disparity_reg_n_0_[0] ),
        .I3(\disparity[1]_i_3__0_n_0 ),
        .I4(\disparity[3]_i_8__0_n_0 ),
        .I5(\disparity_reg_n_0_[2] ),
        .O(\disparity[3]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hDBB2)) 
    \disparity[3]_i_8__0 
       (.I0(\disparity[3]_i_13__0_n_0 ),
        .I1(\disparity[3]_i_12__0_n_0 ),
        .I2(\disparity[3]_i_11__0_n_0 ),
        .I3(\disparity[3]_i_10__0_n_0 ),
        .O(\disparity[3]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \disparity[3]_i_9__0 
       (.I0(\disparity_reg_n_0_[0] ),
        .I1(\disparity[1]_i_3__0_n_0 ),
        .I2(\disparity_reg_n_0_[1] ),
        .I3(\disparity[2]_i_6__0_n_0 ),
        .O(\disparity[3]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[0] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[0]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[0] ),
        .R(\disparity_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[1] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[1]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[1] ),
        .R(\disparity_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[2] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[2]_i_1__0_n_0 ),
        .Q(\disparity_reg_n_0_[2] ),
        .R(\disparity_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \disparity_reg[3] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\disparity[3]_i_1__0_n_0 ),
        .Q(disparity),
        .R(\disparity_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hA0280A28)) 
    \dout[0]_i_1__0 
       (.I0(video_active),
        .I1(\disparity[1]_i_4_n_0 ),
        .I2(video_data[0]),
        .I3(\disparity[3]_i_5__0_n_0 ),
        .I4(\disparity[3]_i_3_n_0 ),
        .O(\dout[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8228282828288228)) 
    \dout[1]_i_1__0 
       (.I0(video_active),
        .I1(video_data[0]),
        .I2(video_data[1]),
        .I3(\disparity[3]_i_5__0_n_0 ),
        .I4(\disparity[3]_i_3_n_0 ),
        .I5(\disparity[1]_i_4_n_0 ),
        .O(\dout[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7D7DD77DD7D7D77D)) 
    \dout[2]_i_1__0 
       (.I0(video_active),
        .I1(\dout[2]_i_2_n_0 ),
        .I2(video_data[2]),
        .I3(\disparity[1]_i_4_n_0 ),
        .I4(\disparity[3]_i_5__0_n_0 ),
        .I5(\disparity[3]_i_3_n_0 ),
        .O(\dout[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dout[2]_i_2 
       (.I0(video_data[1]),
        .I1(video_data[0]),
        .O(\dout[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h82222282)) 
    \dout[3]_i_1__0 
       (.I0(video_active),
        .I1(\dout[3]_i_2_n_0 ),
        .I2(\disparity[3]_i_5__0_n_0 ),
        .I3(\disparity[3]_i_3_n_0 ),
        .I4(\disparity[1]_i_4_n_0 ),
        .O(\dout[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \dout[3]_i_2 
       (.I0(video_data[3]),
        .I1(video_data[1]),
        .I2(video_data[0]),
        .I3(video_data[2]),
        .O(\dout[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h99696669)) 
    \dout[4]_i_1__0 
       (.I0(\dout[3]_i_2_n_0 ),
        .I1(video_data[4]),
        .I2(\disparity[1]_i_4_n_0 ),
        .I3(\disparity[3]_i_5__0_n_0 ),
        .I4(\disparity[3]_i_3_n_0 ),
        .O(\dout[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h82222282)) 
    \dout[5]_i_1__0 
       (.I0(video_active),
        .I1(\dout[5]_i_2__0_n_0 ),
        .I2(\disparity[3]_i_5__0_n_0 ),
        .I3(\disparity[3]_i_3_n_0 ),
        .I4(\disparity[1]_i_4_n_0 ),
        .O(\dout[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \dout[5]_i_2__0 
       (.I0(video_data[5]),
        .I1(video_data[3]),
        .I2(video_data[1]),
        .I3(video_data[0]),
        .I4(video_data[2]),
        .I5(video_data[4]),
        .O(\dout[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h99696669)) 
    \dout[6]_i_1__0 
       (.I0(\dout[5]_i_2__0_n_0 ),
        .I1(video_data[6]),
        .I2(\disparity[1]_i_4_n_0 ),
        .I3(\disparity[3]_i_5__0_n_0 ),
        .I4(\disparity[3]_i_3_n_0 ),
        .O(\dout[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h6AA60000)) 
    \dout[7]_i_1__0 
       (.I0(\dout[7]_i_2__0_n_0 ),
        .I1(\disparity[3]_i_5__0_n_0 ),
        .I2(\disparity[3]_i_3_n_0 ),
        .I3(\disparity[1]_i_4_n_0 ),
        .I4(video_active),
        .O(\dout[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \dout[7]_i_2__0 
       (.I0(\dout[7]_i_3__0_n_0 ),
        .I1(video_data[1]),
        .I2(video_data[3]),
        .I3(video_data[2]),
        .O(\dout[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \dout[7]_i_3__0 
       (.I0(video_data[5]),
        .I1(video_data[6]),
        .I2(video_data[4]),
        .I3(video_data[7]),
        .I4(video_data[0]),
        .O(\dout[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dout[8]_i_1__0 
       (.I0(\disparity[1]_i_4_n_0 ),
        .O(\dout[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \dout[9]_i_1__0 
       (.I0(\disparity[3]_i_3_n_0 ),
        .I1(\disparity[3]_i_5__0_n_0 ),
        .I2(\disparity[1]_i_4_n_0 ),
        .O(\dout[9]_i_1__0_n_0 ));
  FDRE \dout_reg[0] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[0]_i_1__0_n_0 ),
        .Q(endata_i[0]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[1]_i_1__0_n_0 ),
        .Q(endata_i[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[2]_i_1__0_n_0 ),
        .Q(endata_i[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[3]_i_1__0_n_0 ),
        .Q(endata_i[3]),
        .R(1'b0));
  FDSE \dout_reg[4] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[4]_i_1__0_n_0 ),
        .Q(endata_i[4]),
        .S(\disparity_reg[0]_0 ));
  FDRE \dout_reg[5] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[5]_i_1__0_n_0 ),
        .Q(endata_i[5]),
        .R(1'b0));
  FDSE \dout_reg[6] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[6]_i_1__0_n_0 ),
        .Q(endata_i[6]),
        .S(\disparity_reg[0]_0 ));
  FDRE \dout_reg[7] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[7]_i_1__0_n_0 ),
        .Q(endata_i[7]),
        .R(1'b0));
  FDSE \dout_reg[8] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[8]_i_1__0_n_0 ),
        .Q(endata_i[8]),
        .S(\disparity_reg[0]_0 ));
  FDSE \dout_reg[9] 
       (.C(pixelclock),
        .CE(1'b1),
        .D(\dout[9]_i_1__0_n_0 ),
        .Q(endata_i[9]),
        .S(\disparity_reg[0]_0 ));
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
