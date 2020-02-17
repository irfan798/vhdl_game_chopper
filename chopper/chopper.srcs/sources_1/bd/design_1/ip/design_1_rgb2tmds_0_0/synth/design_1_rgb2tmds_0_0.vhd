-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: furkan.space:ip:rgb2tmds:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_rgb2tmds_0_0 IS
  PORT (
    rst : IN STD_LOGIC;
    pixelclock : IN STD_LOGIC;
    serialclock : IN STD_LOGIC;
    video_data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    video_active : IN STD_LOGIC;
    hsync : IN STD_LOGIC;
    vsync : IN STD_LOGIC;
    clk_p : OUT STD_LOGIC;
    clk_n : OUT STD_LOGIC;
    data_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    data_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END design_1_rgb2tmds_0_0;

ARCHITECTURE design_1_rgb2tmds_0_0_arch OF design_1_rgb2tmds_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_rgb2tmds_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT rgb2tmds IS
    PORT (
      rst : IN STD_LOGIC;
      pixelclock : IN STD_LOGIC;
      serialclock : IN STD_LOGIC;
      video_data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      video_active : IN STD_LOGIC;
      hsync : IN STD_LOGIC;
      vsync : IN STD_LOGIC;
      clk_p : OUT STD_LOGIC;
      clk_n : OUT STD_LOGIC;
      data_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      data_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
  END COMPONENT rgb2tmds;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_rgb2tmds_0_0_arch: ARCHITECTURE IS "rgb2tmds,Vivado 2018.2.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_rgb2tmds_0_0_arch : ARCHITECTURE IS "design_1_rgb2tmds_0_0,rgb2tmds,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_rgb2tmds_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF data_n: SIGNAL IS "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_DATA_N";
  ATTRIBUTE X_INTERFACE_INFO OF data_p: SIGNAL IS "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_DATA_P";
  ATTRIBUTE X_INTERFACE_INFO OF clk_n: SIGNAL IS "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_CLK_N";
  ATTRIBUTE X_INTERFACE_INFO OF clk_p: SIGNAL IS "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_CLK_P";
  ATTRIBUTE X_INTERFACE_INFO OF vsync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 video_data VSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF hsync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 video_data HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF video_active: SIGNAL IS "xilinx.com:interface:vid_io:1.0 video_data ACTIVE_VIDEO";
  ATTRIBUTE X_INTERFACE_INFO OF video_data: SIGNAL IS "xilinx.com:interface:vid_io:1.0 video_data DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF serialclock: SIGNAL IS "XIL_INTERFACENAME serialclock, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF serialclock: SIGNAL IS "xilinx.com:signal:clock:1.0 serialclock CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pixelclock: SIGNAL IS "XIL_INTERFACENAME pixelclock, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF pixelclock: SIGNAL IS "xilinx.com:signal:clock:1.0 pixelclock CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
BEGIN
  U0 : rgb2tmds
    PORT MAP (
      rst => rst,
      pixelclock => pixelclock,
      serialclock => serialclock,
      video_data => video_data,
      video_active => video_active,
      hsync => hsync,
      vsync => vsync,
      clk_p => clk_p,
      clk_n => clk_n,
      data_p => data_p,
      data_n => data_n
    );
END design_1_rgb2tmds_0_0_arch;
