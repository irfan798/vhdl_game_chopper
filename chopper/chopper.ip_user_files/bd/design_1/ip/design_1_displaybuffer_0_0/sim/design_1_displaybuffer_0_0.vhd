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

-- IP VLNV: irfan.atakan:ip:displaybuffer:1.2
-- IP Revision: 59

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_displaybuffer_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    video_active : IN STD_LOGIC;
    pixel_x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pixel_y : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rgb : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    bram_enb : OUT STD_LOGIC;
    bram_addrb : OUT STD_LOGIC_VECTOR(0 TO 31);
    bram_doutb : IN STD_LOGIC_VECTOR(0 TO 31);
    bram_wenb : OUT STD_LOGIC_VECTOR(0 TO 3);
    bram_dinb : OUT STD_LOGIC_VECTOR(0 TO 31);
    bram_rstb : OUT STD_LOGIC;
    counter_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    obj_x_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    obj_w_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    obj_render_bit : OUT STD_LOGIC
  );
END design_1_displaybuffer_0_0;

ARCHITECTURE design_1_displaybuffer_0_0_arch OF design_1_displaybuffer_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_displaybuffer_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT displaybuffer IS
    GENERIC (
      OBJECT_SIZE : INTEGER;
      OBJE_SAYISI : INTEGER;
      PIXEL_SIZE : INTEGER;
      UPSIZE : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      video_active : IN STD_LOGIC;
      pixel_x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pixel_y : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      rgb : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      bram_enb : OUT STD_LOGIC;
      bram_addrb : OUT STD_LOGIC_VECTOR(0 TO 31);
      bram_doutb : IN STD_LOGIC_VECTOR(0 TO 31);
      bram_wenb : OUT STD_LOGIC_VECTOR(0 TO 3);
      bram_dinb : OUT STD_LOGIC_VECTOR(0 TO 31);
      bram_rstb : OUT STD_LOGIC;
      counter_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      obj_x_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      obj_w_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      obj_render_bit : OUT STD_LOGIC
    );
  END COMPONENT displaybuffer;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_displaybuffer_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : displaybuffer
    GENERIC MAP (
      OBJECT_SIZE => 16,
      OBJE_SAYISI => 16,
      PIXEL_SIZE => 24,
      UPSIZE => 4
    )
    PORT MAP (
      clk => clk,
      video_active => video_active,
      pixel_x => pixel_x,
      pixel_y => pixel_y,
      rgb => rgb,
      bram_enb => bram_enb,
      bram_addrb => bram_addrb,
      bram_doutb => bram_doutb,
      bram_wenb => bram_wenb,
      bram_dinb => bram_dinb,
      bram_rstb => bram_rstb,
      counter_out => counter_out,
      obj_x_out => obj_x_out,
      obj_w_out => obj_w_out,
      obj_render_bit => obj_render_bit
    );
END design_1_displaybuffer_0_0_arch;
