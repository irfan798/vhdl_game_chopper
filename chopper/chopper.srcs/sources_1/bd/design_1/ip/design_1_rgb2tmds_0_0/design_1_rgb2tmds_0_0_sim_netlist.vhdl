-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Fri Dec 28 00:03:09 2018
-- Host        : bilgin running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_rgb2tmds_0_0 -prefix
--               design_1_rgb2tmds_0_0_ design_1_rgb2tmds_0_0_sim_netlist.vhdl
-- Design      : design_1_rgb2tmds_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2tmds_0_0_serializer is
  port (
    data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    serialclock : in STD_LOGIC;
    pixelclock : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC
  );
end design_1_rgb2tmds_0_0_serializer;

architecture STRUCTURE of design_1_rgb2tmds_0_0_serializer is
  signal cascade1 : STD_LOGIC;
  signal cascade2 : STD_LOGIC;
  signal sdata : STD_LOGIC;
  signal NLW_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of master : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of obuf : label is "DONT_CARE";
  attribute box_type of obuf : label is "PRIMITIVE";
  attribute box_type of slave : label is "PRIMITIVE";
begin
master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serialclock,
      CLKDIV => pixelclock,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => '1',
      OFB => NLW_master_OFB_UNCONNECTED,
      OQ => sdata,
      RST => rst,
      SHIFTIN1 => cascade1,
      SHIFTIN2 => cascade2,
      SHIFTOUT1 => NLW_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_TFB_UNCONNECTED,
      TQ => NLW_master_TQ_UNCONNECTED
    );
obuf: unisim.vcomponents.OBUFDS
     port map (
      I => sdata,
      O => data_p(0),
      OB => data_n(0)
    );
slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serialclock,
      CLKDIV => pixelclock,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_OFB_UNCONNECTED,
      OQ => NLW_slave_OQ_UNCONNECTED,
      RST => rst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => cascade1,
      SHIFTOUT2 => cascade2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_TFB_UNCONNECTED,
      TQ => NLW_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2tmds_0_0_serializer_0 is
  port (
    clk_p : out STD_LOGIC;
    clk_n : out STD_LOGIC;
    serialclock : in STD_LOGIC;
    pixelclock : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rgb2tmds_0_0_serializer_0 : entity is "serializer";
end design_1_rgb2tmds_0_0_serializer_0;

architecture STRUCTURE of design_1_rgb2tmds_0_0_serializer_0 is
  signal cascade1 : STD_LOGIC;
  signal cascade2 : STD_LOGIC;
  signal sdata : STD_LOGIC;
  signal NLW_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of master : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of obuf : label is "DONT_CARE";
  attribute box_type of obuf : label is "PRIMITIVE";
  attribute box_type of slave : label is "PRIMITIVE";
begin
master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serialclock,
      CLKDIV => pixelclock,
      D1 => '0',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '1',
      D7 => '1',
      D8 => '1',
      OCE => '1',
      OFB => NLW_master_OFB_UNCONNECTED,
      OQ => sdata,
      RST => rst,
      SHIFTIN1 => cascade1,
      SHIFTIN2 => cascade2,
      SHIFTOUT1 => NLW_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_TFB_UNCONNECTED,
      TQ => NLW_master_TQ_UNCONNECTED
    );
obuf: unisim.vcomponents.OBUFDS
     port map (
      I => sdata,
      O => clk_p,
      OB => clk_n
    );
slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serialclock,
      CLKDIV => pixelclock,
      D1 => '0',
      D2 => '0',
      D3 => '1',
      D4 => '1',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_OFB_UNCONNECTED,
      OQ => NLW_slave_OQ_UNCONNECTED,
      RST => rst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => cascade1,
      SHIFTOUT2 => cascade2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_TFB_UNCONNECTED,
      TQ => NLW_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2tmds_0_0_serializer_1 is
  port (
    data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    serialclock : in STD_LOGIC;
    pixelclock : in STD_LOGIC;
    endata_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rgb2tmds_0_0_serializer_1 : entity is "serializer";
end design_1_rgb2tmds_0_0_serializer_1;

architecture STRUCTURE of design_1_rgb2tmds_0_0_serializer_1 is
  signal cascade1 : STD_LOGIC;
  signal cascade2 : STD_LOGIC;
  signal sdata : STD_LOGIC;
  signal NLW_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of master : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of obuf : label is "DONT_CARE";
  attribute box_type of obuf : label is "PRIMITIVE";
  attribute box_type of slave : label is "PRIMITIVE";
begin
master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serialclock,
      CLKDIV => pixelclock,
      D1 => endata_i(0),
      D2 => endata_i(1),
      D3 => endata_i(2),
      D4 => endata_i(3),
      D5 => endata_i(4),
      D6 => endata_i(5),
      D7 => endata_i(6),
      D8 => endata_i(7),
      OCE => '1',
      OFB => NLW_master_OFB_UNCONNECTED,
      OQ => sdata,
      RST => rst,
      SHIFTIN1 => cascade1,
      SHIFTIN2 => cascade2,
      SHIFTOUT1 => NLW_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_TFB_UNCONNECTED,
      TQ => NLW_master_TQ_UNCONNECTED
    );
obuf: unisim.vcomponents.OBUFDS
     port map (
      I => sdata,
      O => data_p(0),
      OB => data_n(0)
    );
slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serialclock,
      CLKDIV => pixelclock,
      D1 => '0',
      D2 => '0',
      D3 => endata_i(8),
      D4 => endata_i(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_OFB_UNCONNECTED,
      OQ => NLW_slave_OQ_UNCONNECTED,
      RST => rst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => cascade1,
      SHIFTOUT2 => cascade2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_TFB_UNCONNECTED,
      TQ => NLW_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2tmds_0_0_serializer_2 is
  port (
    data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    serialclock : in STD_LOGIC;
    pixelclock : in STD_LOGIC;
    endata_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rgb2tmds_0_0_serializer_2 : entity is "serializer";
end design_1_rgb2tmds_0_0_serializer_2;

architecture STRUCTURE of design_1_rgb2tmds_0_0_serializer_2 is
  signal cascade1 : STD_LOGIC;
  signal cascade2 : STD_LOGIC;
  signal sdata : STD_LOGIC;
  signal NLW_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of master : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of obuf : label is "DONT_CARE";
  attribute box_type of obuf : label is "PRIMITIVE";
  attribute box_type of slave : label is "PRIMITIVE";
begin
master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serialclock,
      CLKDIV => pixelclock,
      D1 => endata_i(0),
      D2 => endata_i(1),
      D3 => endata_i(2),
      D4 => endata_i(3),
      D5 => endata_i(4),
      D6 => endata_i(5),
      D7 => endata_i(6),
      D8 => endata_i(7),
      OCE => '1',
      OFB => NLW_master_OFB_UNCONNECTED,
      OQ => sdata,
      RST => rst,
      SHIFTIN1 => cascade1,
      SHIFTIN2 => cascade2,
      SHIFTOUT1 => NLW_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_master_TFB_UNCONNECTED,
      TQ => NLW_master_TQ_UNCONNECTED
    );
obuf: unisim.vcomponents.OBUFDS
     port map (
      I => sdata,
      O => data_p(0),
      OB => data_n(0)
    );
slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => serialclock,
      CLKDIV => pixelclock,
      D1 => '0',
      D2 => '0',
      D3 => endata_i(8),
      D4 => endata_i(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_slave_OFB_UNCONNECTED,
      OQ => NLW_slave_OQ_UNCONNECTED,
      RST => rst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => cascade1,
      SHIFTOUT2 => cascade2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_slave_TFB_UNCONNECTED,
      TQ => NLW_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2tmds_0_0_tmds_encoder is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    video_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_active : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    video_active_0 : in STD_LOGIC;
    pixelclock : in STD_LOGIC
  );
end design_1_rgb2tmds_0_0_tmds_encoder;

architecture STRUCTURE of design_1_rgb2tmds_0_0_tmds_encoder is
  signal disparity : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \disparity[0]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[0]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_7_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_10_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_11_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_12_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_13_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_14_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_15__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_16_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_17_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_18_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_19_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_20_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_21_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_22_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_23_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_7_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_8_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_9_n_0\ : STD_LOGIC;
  signal \disparity_reg_n_0_[0]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[1]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[2]\ : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \dout[5]_i_2_n_0\ : STD_LOGIC;
  signal \dout[6]_i_2_n_0\ : STD_LOGIC;
  signal \dout[7]_i_2_n_0\ : STD_LOGIC;
  signal \dout[7]_i_3_n_0\ : STD_LOGIC;
  signal \dout[9]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disparity[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \disparity[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \disparity[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \disparity[2]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \disparity[2]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \disparity[3]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \disparity[3]_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \disparity[3]_i_13\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \disparity[3]_i_15__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \disparity[3]_i_16\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \disparity[3]_i_18\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \disparity[3]_i_19\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \disparity[3]_i_21\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \disparity[3]_i_6__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \disparity[3]_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dout[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dout[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dout[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dout[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout[9]_i_2\ : label is "soft_lutpair11";
begin
\disparity[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \disparity[0]_i_2_n_0\,
      I1 => \disparity[1]_i_3_n_0\,
      I2 => \disparity_reg_n_0_[0]\,
      O => \disparity[0]_i_1_n_0\
    );
\disparity[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[3]_i_8_n_0\,
      I2 => \disparity[3]_i_5_n_0\,
      O => \disparity[0]_i_2_n_0\
    );
\disparity[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA69666669AAAA"
    )
        port map (
      I0 => \disparity[1]_i_2_n_0\,
      I1 => \disparity[1]_i_3_n_0\,
      I2 => \disparity[2]_i_3_n_0\,
      I3 => \disparity[3]_i_8_n_0\,
      I4 => \disparity_reg_n_0_[0]\,
      I5 => \disparity[3]_i_5_n_0\,
      O => \disparity[1]_i_1_n_0\
    );
\disparity[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[3]_i_10_n_0\,
      O => \disparity[1]_i_2_n_0\
    );
\disparity[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(3),
      I2 => video_data(7),
      I3 => video_data(5),
      O => \disparity[1]_i_3_n_0\
    );
\disparity[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \disparity[2]_i_2_n_0\,
      I1 => \disparity[2]_i_3_n_0\,
      I2 => \disparity[2]_i_4_n_0\,
      I3 => \disparity[3]_i_8_n_0\,
      I4 => \disparity[2]_i_5_n_0\,
      O => \disparity[2]_i_1_n_0\
    );
\disparity[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66C36393C3996393"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => \disparity[2]_i_6_n_0\,
      I2 => \disparity[3]_i_10_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[1]_i_3_n_0\,
      I5 => \disparity_reg_n_0_[0]\,
      O => \disparity[2]_i_2_n_0\
    );
\disparity[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \disparity[1]_i_3_n_0\,
      I1 => \disparity[3]_i_10_n_0\,
      I2 => \disparity[3]_i_9_n_0\,
      I3 => \disparity[2]_i_7_n_0\,
      O => \disparity[2]_i_3_n_0\
    );
\disparity[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C663C333C3336339"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => \disparity[2]_i_6_n_0\,
      I2 => \disparity[3]_i_10_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[1]_i_3_n_0\,
      I5 => \disparity_reg_n_0_[0]\,
      O => \disparity[2]_i_4_n_0\
    );
\disparity[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3339639C393C33"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => \disparity[2]_i_6_n_0\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity[3]_i_10_n_0\,
      I4 => \disparity[1]_i_3_n_0\,
      I5 => \disparity_reg_n_0_[0]\,
      O => \disparity[2]_i_5_n_0\
    );
\disparity[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity[3]_i_9_n_0\,
      O => \disparity[2]_i_6_n_0\
    );
\disparity[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \disparity_reg_n_0_[0]\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => disparity(3),
      O => \disparity[2]_i_7_n_0\
    );
\disparity[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \disparity[3]_i_20_n_0\,
      I1 => \disparity[3]_i_19_n_0\,
      I2 => \disparity[3]_i_22_n_0\,
      I3 => \disparity[3]_i_21_n_0\,
      O => \disparity[3]_i_10_n_0\
    );
\disparity[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40FD0202FDBF40"
    )
        port map (
      I0 => \disparity[3]_i_23_n_0\,
      I1 => \disparity[3]_i_10_n_0\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity[3]_i_8_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_9_n_0\,
      O => \disparity[3]_i_11_n_0\
    );
\disparity[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[3]_i_10_n_0\,
      I2 => \disparity[1]_i_3_n_0\,
      I3 => \disparity_reg_n_0_[0]\,
      O => \disparity[3]_i_12_n_0\
    );
\disparity[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[3]_i_10_n_0\,
      I2 => \disparity[1]_i_3_n_0\,
      I3 => \disparity_reg_n_0_[0]\,
      O => \disparity[3]_i_13_n_0\
    );
\disparity[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => video_data(4),
      I1 => video_data(6),
      I2 => video_data(5),
      I3 => video_data(3),
      I4 => video_data(2),
      I5 => video_data(1),
      O => \disparity[3]_i_14_n_0\
    );
\disparity[3]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => video_data(6),
      I1 => video_data(5),
      I2 => video_data(4),
      O => \disparity[3]_i_15__1_n_0\
    );
\disparity[3]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => video_data(3),
      I1 => video_data(2),
      I2 => video_data(1),
      O => \disparity[3]_i_16_n_0\
    );
\disparity[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => video_data(4),
      I1 => video_data(6),
      I2 => video_data(5),
      I3 => video_data(3),
      I4 => video_data(2),
      I5 => video_data(1),
      O => \disparity[3]_i_17_n_0\
    );
\disparity[3]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF0B"
    )
        port map (
      I0 => \disparity_reg_n_0_[0]\,
      I1 => \disparity[1]_i_3_n_0\,
      I2 => \disparity[3]_i_10_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      O => \disparity[3]_i_18_n_0\
    );
\disparity[3]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"693CC369"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => video_data(1),
      I2 => video_data(0),
      I3 => video_data(3),
      I4 => video_data(2),
      O => \disparity[3]_i_19_n_0\
    );
\disparity[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000AA02FF03FF03"
    )
        port map (
      I0 => \disparity[3]_i_3__1_n_0\,
      I1 => \disparity[3]_i_4_n_0\,
      I2 => \disparity[3]_i_5_n_0\,
      I3 => \disparity[3]_i_6__1_n_0\,
      I4 => \disparity[3]_i_7_n_0\,
      I5 => \disparity[3]_i_8_n_0\,
      O => \disparity[3]_i_2_n_0\
    );
\disparity[3]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14D7D714"
    )
        port map (
      I0 => video_data(0),
      I1 => video_data(5),
      I2 => \disparity[3]_i_5_n_0\,
      I3 => video_data(4),
      I4 => \dout[5]_i_2_n_0\,
      O => \disparity[3]_i_20_n_0\
    );
\disparity[3]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060690"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(3),
      I2 => video_data(0),
      I3 => video_data(7),
      I4 => video_data(5),
      O => \disparity[3]_i_21_n_0\
    );
\disparity[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F0990F960F66F06"
    )
        port map (
      I0 => \dout[6]_i_2_n_0\,
      I1 => video_data(6),
      I2 => video_data(7),
      I3 => \disparity[3]_i_5_n_0\,
      I4 => video_data(0),
      I5 => video_data(5),
      O => \disparity[3]_i_22_n_0\
    );
\disparity[3]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41141441"
    )
        port map (
      I0 => \disparity_reg_n_0_[0]\,
      I1 => video_data(5),
      I2 => video_data(7),
      I3 => video_data(3),
      I4 => video_data(1),
      O => \disparity[3]_i_23_n_0\
    );
\disparity[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FF02FFFFFF02FF"
    )
        port map (
      I0 => \disparity[3]_i_9_n_0\,
      I1 => \disparity[3]_i_10_n_0\,
      I2 => \disparity[1]_i_3_n_0\,
      I3 => \disparity[3]_i_5_n_0\,
      I4 => \disparity[3]_i_11_n_0\,
      I5 => \disparity[2]_i_3_n_0\,
      O => \disparity[3]_i_3__1_n_0\
    );
\disparity[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFEAEABFABFEEABF"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity[3]_i_9_n_0\,
      I3 => \disparity[3]_i_8_n_0\,
      I4 => \disparity[3]_i_12_n_0\,
      I5 => \disparity[3]_i_13_n_0\,
      O => \disparity[3]_i_4_n_0\
    );
\disparity[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA222200FF7F7FDF"
    )
        port map (
      I0 => \disparity[3]_i_14_n_0\,
      I1 => \disparity[3]_i_15__1_n_0\,
      I2 => video_data(0),
      I3 => video_data(7),
      I4 => \disparity[3]_i_16_n_0\,
      I5 => \disparity[3]_i_17_n_0\,
      O => \disparity[3]_i_5_n_0\
    );
\disparity[3]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1070"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity[3]_i_9_n_0\,
      I2 => \disparity[3]_i_5_n_0\,
      I3 => \disparity[3]_i_18_n_0\,
      I4 => \disparity[3]_i_8_n_0\,
      O => \disparity[3]_i_6__1_n_0\
    );
\disparity[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8800000FFFFF880"
    )
        port map (
      I0 => \disparity_reg_n_0_[0]\,
      I1 => \disparity[1]_i_3_n_0\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity[3]_i_10_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_9_n_0\,
      O => \disparity[3]_i_7_n_0\
    );
\disparity[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6A6A56"
    )
        port map (
      I0 => disparity(3),
      I1 => \disparity[3]_i_19_n_0\,
      I2 => \disparity[3]_i_20_n_0\,
      I3 => \disparity[3]_i_21_n_0\,
      I4 => \disparity[3]_i_22_n_0\,
      O => \disparity[3]_i_8_n_0\
    );
\disparity[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8EE7"
    )
        port map (
      I0 => \disparity[3]_i_22_n_0\,
      I1 => \disparity[3]_i_21_n_0\,
      I2 => \disparity[3]_i_20_n_0\,
      I3 => \disparity[3]_i_19_n_0\,
      O => \disparity[3]_i_9_n_0\
    );
\disparity_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[0]_i_1_n_0\,
      Q => \disparity_reg_n_0_[0]\,
      R => video_active_0
    );
\disparity_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[1]_i_1_n_0\,
      Q => \disparity_reg_n_0_[1]\,
      R => video_active_0
    );
\disparity_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[2]_i_1_n_0\,
      Q => \disparity_reg_n_0_[2]\,
      R => video_active_0
    );
\disparity_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[3]_i_2_n_0\,
      Q => disparity(3),
      R => video_active_0
    );
\dout[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => video_data(0),
      I1 => \dout[9]_i_2_n_0\,
      I2 => video_active,
      I3 => hsync,
      O => dout(0)
    );
\dout[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => video_data(0),
      I1 => video_data(1),
      I2 => \disparity[0]_i_2_n_0\,
      I3 => video_active,
      I4 => hsync,
      O => dout(1)
    );
\dout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"699600006996FFFF"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(2),
      I2 => video_data(0),
      I3 => \dout[9]_i_2_n_0\,
      I4 => video_active,
      I5 => hsync,
      O => dout(2)
    );
\dout[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \dout[5]_i_2_n_0\,
      I1 => \disparity[0]_i_2_n_0\,
      I2 => video_active,
      I3 => hsync,
      O => dout(3)
    );
\dout[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"690069FF"
    )
        port map (
      I0 => \dout[5]_i_2_n_0\,
      I1 => video_data(4),
      I2 => \dout[9]_i_2_n_0\,
      I3 => video_active,
      I4 => hsync,
      O => dout(4)
    );
\dout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669FFFF96690000"
    )
        port map (
      I0 => video_data(4),
      I1 => \dout[5]_i_2_n_0\,
      I2 => video_data(5),
      I3 => \disparity[0]_i_2_n_0\,
      I4 => video_active,
      I5 => hsync,
      O => dout(5)
    );
\dout[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => video_data(3),
      I1 => video_data(1),
      I2 => video_data(2),
      I3 => video_data(0),
      O => \dout[5]_i_2_n_0\
    );
\dout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"699600006996FFFF"
    )
        port map (
      I0 => video_data(5),
      I1 => \dout[6]_i_2_n_0\,
      I2 => video_data(6),
      I3 => \dout[9]_i_2_n_0\,
      I4 => video_active,
      I5 => hsync,
      O => dout(6)
    );
\dout[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => video_data(4),
      I1 => video_data(0),
      I2 => video_data(2),
      I3 => video_data(1),
      I4 => video_data(3),
      O => \dout[6]_i_2_n_0\
    );
\dout[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \dout[7]_i_2_n_0\,
      I1 => \disparity[0]_i_2_n_0\,
      I2 => video_active,
      I3 => hsync,
      O => dout(7)
    );
\dout[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(2),
      I2 => video_data(3),
      I3 => \dout[7]_i_3_n_0\,
      O => \dout[7]_i_2_n_0\
    );
\dout[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => video_data(7),
      I1 => video_data(0),
      I2 => video_data(4),
      I3 => video_data(5),
      I4 => video_data(6),
      O => \dout[7]_i_3_n_0\
    );
\dout[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => video_active,
      I2 => hsync,
      O => dout(8)
    );
\dout[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \dout[9]_i_2_n_0\,
      I1 => video_active,
      I2 => hsync,
      I3 => vsync,
      O => dout(9)
    );
\dout[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => \disparity[2]_i_3_n_0\,
      I2 => \disparity[3]_i_8_n_0\,
      O => \dout[9]_i_2_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(0),
      Q => Q(0),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(1),
      Q => Q(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(2),
      Q => Q(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(3),
      Q => Q(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(4),
      Q => Q(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(5),
      Q => Q(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(6),
      Q => Q(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(7),
      Q => Q(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(8),
      Q => Q(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => dout(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2tmds_0_0_tmds_encoder_3 is
  port (
    endata_i : out STD_LOGIC_VECTOR ( 9 downto 0 );
    video_active : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_active_0 : in STD_LOGIC;
    pixelclock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rgb2tmds_0_0_tmds_encoder_3 : entity is "tmds_encoder";
end design_1_rgb2tmds_0_0_tmds_encoder_3;

architecture STRUCTURE of design_1_rgb2tmds_0_0_tmds_encoder_3 is
  signal disparity : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \disparity[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_8__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_5__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_6__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_10__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_11__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_12__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_13__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_14__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_15__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_16__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_8__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_9__1_n_0\ : STD_LOGIC;
  signal \disparity_reg_n_0_[0]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[1]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[2]\ : STD_LOGIC;
  signal \dout[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_3__1_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disparity[1]_i_3__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \disparity[1]_i_5__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \disparity[1]_i_7__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \disparity[2]_i_6__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \disparity[3]_i_10__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \disparity[3]_i_13__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \disparity[3]_i_14__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \disparity[3]_i_16__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \disparity[3]_i_3__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \disparity[3]_i_9__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dout[2]_i_2__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dout[3]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dout[4]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout[6]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout[7]_i_2__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dout[7]_i_3__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dout[8]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout[9]_i_1__1\ : label is "soft_lutpair12";
begin
\disparity[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666696"
    )
        port map (
      I0 => \disparity[1]_i_3__1_n_0\,
      I1 => \disparity_reg_n_0_[0]\,
      I2 => \disparity[3]_i_5__1_n_0\,
      I3 => \disparity[3]_i_3__0_n_0\,
      I4 => \disparity[1]_i_4__0_n_0\,
      O => \disparity[0]_i_1__1_n_0\
    );
\disparity[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA96666696AAAA"
    )
        port map (
      I0 => \disparity[1]_i_2__1_n_0\,
      I1 => \disparity[1]_i_3__1_n_0\,
      I2 => \disparity[3]_i_5__1_n_0\,
      I3 => \disparity[3]_i_3__0_n_0\,
      I4 => \disparity_reg_n_0_[0]\,
      I5 => \disparity[1]_i_4__0_n_0\,
      O => \disparity[1]_i_1__1_n_0\
    );
\disparity[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[2]_i_6__1_n_0\,
      O => \disparity[1]_i_2__1_n_0\
    );
\disparity[1]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(3),
      I2 => video_data(7),
      I3 => video_data(5),
      O => \disparity[1]_i_3__1_n_0\
    );
\disparity[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C4C04047FFFB7FF"
    )
        port map (
      I0 => \disparity[1]_i_5__0_n_0\,
      I1 => \disparity[1]_i_6__0_n_0\,
      I2 => \disparity[1]_i_7__0_n_0\,
      I3 => video_data(0),
      I4 => video_data(7),
      I5 => \disparity[1]_i_8__0_n_0\,
      O => \disparity[1]_i_4__0_n_0\
    );
\disparity[1]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => video_data(2),
      I1 => video_data(3),
      I2 => video_data(1),
      O => \disparity[1]_i_5__0_n_0\
    );
\disparity[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => video_data(4),
      I1 => video_data(6),
      I2 => video_data(5),
      I3 => video_data(2),
      I4 => video_data(3),
      I5 => video_data(1),
      O => \disparity[1]_i_6__0_n_0\
    );
\disparity[1]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => video_data(4),
      I1 => video_data(6),
      I2 => video_data(5),
      O => \disparity[1]_i_7__0_n_0\
    );
\disparity[1]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => video_data(4),
      I1 => video_data(6),
      I2 => video_data(5),
      I3 => video_data(2),
      I4 => video_data(3),
      I5 => video_data(1),
      O => \disparity[1]_i_8__0_n_0\
    );
\disparity[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \disparity[2]_i_2__1_n_0\,
      I1 => \disparity[3]_i_3__0_n_0\,
      I2 => \disparity[2]_i_3__1_n_0\,
      I3 => \disparity[2]_i_4__1_n_0\,
      I4 => \disparity[3]_i_5__1_n_0\,
      O => \disparity[2]_i_1__1_n_0\
    );
\disparity[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C663C333C3336339"
    )
        port map (
      I0 => \disparity[1]_i_4__0_n_0\,
      I1 => \disparity[2]_i_5__1_n_0\,
      I2 => \disparity[2]_i_6__1_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[1]_i_3__1_n_0\,
      I5 => \disparity_reg_n_0_[0]\,
      O => \disparity[2]_i_2__1_n_0\
    );
\disparity[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FB0420DF04FBDF"
    )
        port map (
      I0 => \disparity[1]_i_4__0_n_0\,
      I1 => \disparity_reg_n_0_[0]\,
      I2 => \disparity[1]_i_3__1_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[2]_i_6__1_n_0\,
      I5 => \disparity[2]_i_5__1_n_0\,
      O => \disparity[2]_i_3__1_n_0\
    );
\disparity[2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66C36393C3996393"
    )
        port map (
      I0 => \disparity[1]_i_4__0_n_0\,
      I1 => \disparity[2]_i_5__1_n_0\,
      I2 => \disparity[2]_i_6__1_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[1]_i_3__1_n_0\,
      I5 => \disparity_reg_n_0_[0]\,
      O => \disparity[2]_i_4__1_n_0\
    );
\disparity[2]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity[3]_i_8__1_n_0\,
      O => \disparity[2]_i_5__1_n_0\
    );
\disparity[2]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \disparity[3]_i_13__1_n_0\,
      I1 => \disparity[3]_i_10__1_n_0\,
      I2 => \disparity[3]_i_11__1_n_0\,
      I3 => \disparity[3]_i_12__1_n_0\,
      O => \disparity[2]_i_6__1_n_0\
    );
\disparity[3]_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96C33C96"
    )
        port map (
      I0 => \disparity[1]_i_4__0_n_0\,
      I1 => video_data(1),
      I2 => video_data(0),
      I3 => video_data(3),
      I4 => video_data(2),
      O => \disparity[3]_i_10__1_n_0\
    );
\disparity[3]_i_11__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EB2828EB"
    )
        port map (
      I0 => video_data(0),
      I1 => video_data(5),
      I2 => \disparity[1]_i_4__0_n_0\,
      I3 => video_data(4),
      I4 => \dout[3]_i_2__0_n_0\,
      O => \disparity[3]_i_11__1_n_0\
    );
\disparity[3]_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6009F69FF69F6009"
    )
        port map (
      I0 => video_data(5),
      I1 => video_data(0),
      I2 => \dout[7]_i_2__1_n_0\,
      I3 => \disparity[1]_i_4__0_n_0\,
      I4 => video_data(6),
      I5 => \dout[5]_i_2__1_n_0\,
      O => \disparity[3]_i_12__1_n_0\
    );
\disparity[3]_i_13__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060690"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(3),
      I2 => video_data(0),
      I3 => video_data(7),
      I4 => video_data(5),
      O => \disparity[3]_i_13__1_n_0\
    );
\disparity[3]_i_14__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB2B"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[2]_i_6__1_n_0\,
      I2 => \disparity[1]_i_3__1_n_0\,
      I3 => \disparity_reg_n_0_[0]\,
      O => \disparity[3]_i_14__1_n_0\
    );
\disparity[3]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400DFDDDFDD0400"
    )
        port map (
      I0 => \disparity[2]_i_6__1_n_0\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[1]_i_3__1_n_0\,
      I3 => \disparity_reg_n_0_[0]\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_8__1_n_0\,
      O => \disparity[3]_i_15__0_n_0\
    );
\disparity[3]_i_16__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6996"
    )
        port map (
      I0 => video_data(5),
      I1 => video_data(7),
      I2 => video_data(3),
      I3 => video_data(1),
      I4 => \disparity[2]_i_6__1_n_0\,
      O => \disparity[3]_i_16__1_n_0\
    );
\disparity[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \disparity[3]_i_2__1_n_0\,
      I1 => \disparity[3]_i_3__0_n_0\,
      I2 => \disparity[3]_i_4__1_n_0\,
      I3 => \disparity[3]_i_5__1_n_0\,
      I4 => \disparity[3]_i_6__0_n_0\,
      O => \disparity[3]_i_1__1_n_0\
    );
\disparity[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B48778B487877887"
    )
        port map (
      I0 => \disparity[3]_i_7__1_n_0\,
      I1 => \disparity[1]_i_4__0_n_0\,
      I2 => \disparity[3]_i_3__0_n_0\,
      I3 => \disparity[3]_i_8__1_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_9__1_n_0\,
      O => \disparity[3]_i_2__1_n_0\
    );
\disparity[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9AA95A9"
    )
        port map (
      I0 => disparity(3),
      I1 => \disparity[3]_i_10__1_n_0\,
      I2 => \disparity[3]_i_11__1_n_0\,
      I3 => \disparity[3]_i_12__1_n_0\,
      I4 => \disparity[3]_i_13__1_n_0\,
      O => \disparity[3]_i_3__0_n_0\
    );
\disparity[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF30B847B84730CF"
    )
        port map (
      I0 => \disparity[3]_i_14__1_n_0\,
      I1 => \disparity[1]_i_4__0_n_0\,
      I2 => \disparity[3]_i_15__0_n_0\,
      I3 => \disparity[3]_i_3__0_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_8__1_n_0\,
      O => \disparity[3]_i_4__1_n_0\
    );
\disparity[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFEFFFE"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity_reg_n_0_[0]\,
      I2 => disparity(3),
      I3 => \disparity_reg_n_0_[2]\,
      I4 => \disparity[3]_i_16__1_n_0\,
      I5 => \disparity[3]_i_8__1_n_0\,
      O => \disparity[3]_i_5__1_n_0\
    );
\disparity[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F087B43CC387B40F"
    )
        port map (
      I0 => \disparity[3]_i_14__1_n_0\,
      I1 => \disparity[1]_i_4__0_n_0\,
      I2 => \disparity[3]_i_3__0_n_0\,
      I3 => \disparity[3]_i_8__1_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_9__1_n_0\,
      O => \disparity[3]_i_6__0_n_0\
    );
\disparity[3]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F00010001777F"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[2]_i_6__1_n_0\,
      I2 => \disparity_reg_n_0_[0]\,
      I3 => \disparity[1]_i_3__1_n_0\,
      I4 => \disparity[3]_i_8__1_n_0\,
      I5 => \disparity_reg_n_0_[2]\,
      O => \disparity[3]_i_7__1_n_0\
    );
\disparity[3]_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DBB2"
    )
        port map (
      I0 => \disparity[3]_i_13__1_n_0\,
      I1 => \disparity[3]_i_12__1_n_0\,
      I2 => \disparity[3]_i_11__1_n_0\,
      I3 => \disparity[3]_i_10__1_n_0\,
      O => \disparity[3]_i_8__1_n_0\
    );
\disparity[3]_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => \disparity_reg_n_0_[0]\,
      I1 => \disparity[1]_i_3__1_n_0\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity[2]_i_6__1_n_0\,
      O => \disparity[3]_i_9__1_n_0\
    );
\disparity_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[0]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[0]\,
      R => video_active_0
    );
\disparity_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[1]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[1]\,
      R => video_active_0
    );
\disparity_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[2]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[2]\,
      R => video_active_0
    );
\disparity_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[3]_i_1__1_n_0\,
      Q => disparity(3),
      R => video_active_0
    );
\dout[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0280A28"
    )
        port map (
      I0 => video_active,
      I1 => \disparity[1]_i_4__0_n_0\,
      I2 => video_data(0),
      I3 => \disparity[3]_i_5__1_n_0\,
      I4 => \disparity[3]_i_3__0_n_0\,
      O => \dout[0]_i_1__1_n_0\
    );
\dout[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228282828288228"
    )
        port map (
      I0 => video_active,
      I1 => video_data(0),
      I2 => video_data(1),
      I3 => \disparity[3]_i_5__1_n_0\,
      I4 => \disparity[3]_i_3__0_n_0\,
      I5 => \disparity[1]_i_4__0_n_0\,
      O => \dout[1]_i_1__1_n_0\
    );
\dout[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7D7DD77DD7D7D77D"
    )
        port map (
      I0 => video_active,
      I1 => \dout[2]_i_2__0_n_0\,
      I2 => video_data(2),
      I3 => \disparity[1]_i_4__0_n_0\,
      I4 => \disparity[3]_i_5__1_n_0\,
      I5 => \disparity[3]_i_3__0_n_0\,
      O => \dout[2]_i_1__1_n_0\
    );
\dout[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(0),
      O => \dout[2]_i_2__0_n_0\
    );
\dout[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82222282"
    )
        port map (
      I0 => video_active,
      I1 => \dout[3]_i_2__0_n_0\,
      I2 => \disparity[3]_i_5__1_n_0\,
      I3 => \disparity[3]_i_3__0_n_0\,
      I4 => \disparity[1]_i_4__0_n_0\,
      O => \dout[3]_i_1__1_n_0\
    );
\dout[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => video_data(3),
      I1 => video_data(1),
      I2 => video_data(0),
      I3 => video_data(2),
      O => \dout[3]_i_2__0_n_0\
    );
\dout[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696669"
    )
        port map (
      I0 => \dout[3]_i_2__0_n_0\,
      I1 => video_data(4),
      I2 => \disparity[1]_i_4__0_n_0\,
      I3 => \disparity[3]_i_5__1_n_0\,
      I4 => \disparity[3]_i_3__0_n_0\,
      O => \dout[4]_i_1__1_n_0\
    );
\dout[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82222282"
    )
        port map (
      I0 => video_active,
      I1 => \dout[5]_i_2__1_n_0\,
      I2 => \disparity[3]_i_5__1_n_0\,
      I3 => \disparity[3]_i_3__0_n_0\,
      I4 => \disparity[1]_i_4__0_n_0\,
      O => \dout[5]_i_1__1_n_0\
    );
\dout[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => video_data(5),
      I1 => video_data(3),
      I2 => video_data(1),
      I3 => video_data(0),
      I4 => video_data(2),
      I5 => video_data(4),
      O => \dout[5]_i_2__1_n_0\
    );
\dout[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696669"
    )
        port map (
      I0 => \dout[5]_i_2__1_n_0\,
      I1 => video_data(6),
      I2 => \disparity[1]_i_4__0_n_0\,
      I3 => \disparity[3]_i_5__1_n_0\,
      I4 => \disparity[3]_i_3__0_n_0\,
      O => \dout[6]_i_1__1_n_0\
    );
\dout[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AA60000"
    )
        port map (
      I0 => \dout[7]_i_2__1_n_0\,
      I1 => \disparity[3]_i_5__1_n_0\,
      I2 => \disparity[3]_i_3__0_n_0\,
      I3 => \disparity[1]_i_4__0_n_0\,
      I4 => video_active,
      O => \dout[7]_i_1__1_n_0\
    );
\dout[7]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \dout[7]_i_3__1_n_0\,
      I1 => video_data(1),
      I2 => video_data(3),
      I3 => video_data(2),
      O => \dout[7]_i_2__1_n_0\
    );
\dout[7]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => video_data(5),
      I1 => video_data(6),
      I2 => video_data(4),
      I3 => video_data(7),
      I4 => video_data(0),
      O => \dout[7]_i_3__1_n_0\
    );
\dout[8]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \disparity[1]_i_4__0_n_0\,
      O => \dout[8]_i_1__1_n_0\
    );
\dout[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \disparity[3]_i_3__0_n_0\,
      I1 => \disparity[3]_i_5__1_n_0\,
      I2 => \disparity[1]_i_4__0_n_0\,
      O => \dout[9]_i_1__1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[0]_i_1__1_n_0\,
      Q => endata_i(0),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[1]_i_1__1_n_0\,
      Q => endata_i(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[2]_i_1__1_n_0\,
      Q => endata_i(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[3]_i_1__1_n_0\,
      Q => endata_i(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[4]_i_1__1_n_0\,
      Q => endata_i(4),
      S => video_active_0
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[5]_i_1__1_n_0\,
      Q => endata_i(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[6]_i_1__1_n_0\,
      Q => endata_i(6),
      S => video_active_0
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[7]_i_1__1_n_0\,
      Q => endata_i(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[8]_i_1__1_n_0\,
      Q => endata_i(8),
      S => video_active_0
    );
\dout_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[9]_i_1__1_n_0\,
      Q => endata_i(9),
      S => video_active_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2tmds_0_0_tmds_encoder_4 is
  port (
    \disparity_reg[0]_0\ : out STD_LOGIC;
    endata_i : out STD_LOGIC_VECTOR ( 9 downto 0 );
    video_active : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pixelclock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rgb2tmds_0_0_tmds_encoder_4 : entity is "tmds_encoder";
end design_1_rgb2tmds_0_0_tmds_encoder_4;

architecture STRUCTURE of design_1_rgb2tmds_0_0_tmds_encoder_4 is
  signal disparity : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \disparity[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_7_n_0\ : STD_LOGIC;
  signal \disparity[1]_i_8_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_11__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_12__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_13__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_14__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_15_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_16__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_9__0_n_0\ : STD_LOGIC;
  signal \^disparity_reg[0]_0\ : STD_LOGIC;
  signal \disparity_reg_n_0_[0]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[1]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[2]\ : STD_LOGIC;
  signal \dout[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[2]_i_2_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_2_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disparity[1]_i_3__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \disparity[1]_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \disparity[1]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \disparity[2]_i_6__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \disparity[3]_i_10__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \disparity[3]_i_13__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \disparity[3]_i_14__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \disparity[3]_i_16__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \disparity[3]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \disparity[3]_i_9__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dout[2]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dout[3]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dout[4]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dout[6]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dout[7]_i_2__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dout[7]_i_3__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dout[8]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dout[9]_i_1__0\ : label is "soft_lutpair21";
begin
  \disparity_reg[0]_0\ <= \^disparity_reg[0]_0\;
\disparity[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666696"
    )
        port map (
      I0 => \disparity[1]_i_3__0_n_0\,
      I1 => \disparity_reg_n_0_[0]\,
      I2 => \disparity[3]_i_5__0_n_0\,
      I3 => \disparity[3]_i_3_n_0\,
      I4 => \disparity[1]_i_4_n_0\,
      O => \disparity[0]_i_1__0_n_0\
    );
\disparity[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA96666696AAAA"
    )
        port map (
      I0 => \disparity[1]_i_2__0_n_0\,
      I1 => \disparity[1]_i_3__0_n_0\,
      I2 => \disparity[3]_i_5__0_n_0\,
      I3 => \disparity[3]_i_3_n_0\,
      I4 => \disparity_reg_n_0_[0]\,
      I5 => \disparity[1]_i_4_n_0\,
      O => \disparity[1]_i_1__0_n_0\
    );
\disparity[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[2]_i_6__0_n_0\,
      O => \disparity[1]_i_2__0_n_0\
    );
\disparity[1]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(3),
      I2 => video_data(7),
      I3 => video_data(5),
      O => \disparity[1]_i_3__0_n_0\
    );
\disparity[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C4C04047FFFB7FF"
    )
        port map (
      I0 => \disparity[1]_i_5_n_0\,
      I1 => \disparity[1]_i_6_n_0\,
      I2 => \disparity[1]_i_7_n_0\,
      I3 => video_data(0),
      I4 => video_data(7),
      I5 => \disparity[1]_i_8_n_0\,
      O => \disparity[1]_i_4_n_0\
    );
\disparity[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => video_data(2),
      I1 => video_data(3),
      I2 => video_data(1),
      O => \disparity[1]_i_5_n_0\
    );
\disparity[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => video_data(4),
      I1 => video_data(6),
      I2 => video_data(5),
      I3 => video_data(2),
      I4 => video_data(3),
      I5 => video_data(1),
      O => \disparity[1]_i_6_n_0\
    );
\disparity[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => video_data(4),
      I1 => video_data(6),
      I2 => video_data(5),
      O => \disparity[1]_i_7_n_0\
    );
\disparity[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => video_data(4),
      I1 => video_data(6),
      I2 => video_data(5),
      I3 => video_data(2),
      I4 => video_data(3),
      I5 => video_data(1),
      O => \disparity[1]_i_8_n_0\
    );
\disparity[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"474700FF"
    )
        port map (
      I0 => \disparity[2]_i_2__0_n_0\,
      I1 => \disparity[3]_i_3_n_0\,
      I2 => \disparity[2]_i_3__0_n_0\,
      I3 => \disparity[2]_i_4__0_n_0\,
      I4 => \disparity[3]_i_5__0_n_0\,
      O => \disparity[2]_i_1__0_n_0\
    );
\disparity[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C663C333C3336339"
    )
        port map (
      I0 => \disparity[1]_i_4_n_0\,
      I1 => \disparity[2]_i_5__0_n_0\,
      I2 => \disparity[2]_i_6__0_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[1]_i_3__0_n_0\,
      I5 => \disparity_reg_n_0_[0]\,
      O => \disparity[2]_i_2__0_n_0\
    );
\disparity[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FB0420DF04FBDF"
    )
        port map (
      I0 => \disparity[1]_i_4_n_0\,
      I1 => \disparity_reg_n_0_[0]\,
      I2 => \disparity[1]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[2]_i_6__0_n_0\,
      I5 => \disparity[2]_i_5__0_n_0\,
      O => \disparity[2]_i_3__0_n_0\
    );
\disparity[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66C36393C3996393"
    )
        port map (
      I0 => \disparity[1]_i_4_n_0\,
      I1 => \disparity[2]_i_5__0_n_0\,
      I2 => \disparity[2]_i_6__0_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[1]_i_3__0_n_0\,
      I5 => \disparity_reg_n_0_[0]\,
      O => \disparity[2]_i_4__0_n_0\
    );
\disparity[2]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity[3]_i_8__0_n_0\,
      O => \disparity[2]_i_5__0_n_0\
    );
\disparity[2]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \disparity[3]_i_13__0_n_0\,
      I1 => \disparity[3]_i_10__0_n_0\,
      I2 => \disparity[3]_i_11__0_n_0\,
      I3 => \disparity[3]_i_12__0_n_0\,
      O => \disparity[2]_i_6__0_n_0\
    );
\disparity[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => video_active,
      O => \^disparity_reg[0]_0\
    );
\disparity[3]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96C33C96"
    )
        port map (
      I0 => \disparity[1]_i_4_n_0\,
      I1 => video_data(1),
      I2 => video_data(0),
      I3 => video_data(3),
      I4 => video_data(2),
      O => \disparity[3]_i_10__0_n_0\
    );
\disparity[3]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EB2828EB"
    )
        port map (
      I0 => video_data(0),
      I1 => video_data(5),
      I2 => \disparity[1]_i_4_n_0\,
      I3 => video_data(4),
      I4 => \dout[3]_i_2_n_0\,
      O => \disparity[3]_i_11__0_n_0\
    );
\disparity[3]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6009F69FF69F6009"
    )
        port map (
      I0 => video_data(5),
      I1 => video_data(0),
      I2 => \dout[7]_i_2__0_n_0\,
      I3 => \disparity[1]_i_4_n_0\,
      I4 => video_data(6),
      I5 => \dout[5]_i_2__0_n_0\,
      O => \disparity[3]_i_12__0_n_0\
    );
\disparity[3]_i_13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060690"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(3),
      I2 => video_data(0),
      I3 => video_data(7),
      I4 => video_data(5),
      O => \disparity[3]_i_13__0_n_0\
    );
\disparity[3]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB2B"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[2]_i_6__0_n_0\,
      I2 => \disparity[1]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[0]\,
      O => \disparity[3]_i_14__0_n_0\
    );
\disparity[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400DFDDDFDD0400"
    )
        port map (
      I0 => \disparity[2]_i_6__0_n_0\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[1]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[0]\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_8__0_n_0\,
      O => \disparity[3]_i_15_n_0\
    );
\disparity[3]_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6996"
    )
        port map (
      I0 => video_data(5),
      I1 => video_data(7),
      I2 => video_data(3),
      I3 => video_data(1),
      I4 => \disparity[2]_i_6__0_n_0\,
      O => \disparity[3]_i_16__0_n_0\
    );
\disparity[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \disparity[3]_i_2__0_n_0\,
      I1 => \disparity[3]_i_3_n_0\,
      I2 => \disparity[3]_i_4__0_n_0\,
      I3 => \disparity[3]_i_5__0_n_0\,
      I4 => \disparity[3]_i_6_n_0\,
      O => \disparity[3]_i_1__0_n_0\
    );
\disparity[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B48778B487877887"
    )
        port map (
      I0 => \disparity[3]_i_7__0_n_0\,
      I1 => \disparity[1]_i_4_n_0\,
      I2 => \disparity[3]_i_3_n_0\,
      I3 => \disparity[3]_i_8__0_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_9__0_n_0\,
      O => \disparity[3]_i_2__0_n_0\
    );
\disparity[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9AA95A9"
    )
        port map (
      I0 => disparity(3),
      I1 => \disparity[3]_i_10__0_n_0\,
      I2 => \disparity[3]_i_11__0_n_0\,
      I3 => \disparity[3]_i_12__0_n_0\,
      I4 => \disparity[3]_i_13__0_n_0\,
      O => \disparity[3]_i_3_n_0\
    );
\disparity[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF30B847B84730CF"
    )
        port map (
      I0 => \disparity[3]_i_14__0_n_0\,
      I1 => \disparity[1]_i_4_n_0\,
      I2 => \disparity[3]_i_15_n_0\,
      I3 => \disparity[3]_i_3_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_8__0_n_0\,
      O => \disparity[3]_i_4__0_n_0\
    );
\disparity[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFEFFFE"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity_reg_n_0_[0]\,
      I2 => disparity(3),
      I3 => \disparity_reg_n_0_[2]\,
      I4 => \disparity[3]_i_16__0_n_0\,
      I5 => \disparity[3]_i_8__0_n_0\,
      O => \disparity[3]_i_5__0_n_0\
    );
\disparity[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F087B43CC387B40F"
    )
        port map (
      I0 => \disparity[3]_i_14__0_n_0\,
      I1 => \disparity[1]_i_4_n_0\,
      I2 => \disparity[3]_i_3_n_0\,
      I3 => \disparity[3]_i_8__0_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_9__0_n_0\,
      O => \disparity[3]_i_6_n_0\
    );
\disparity[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F00010001777F"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[2]_i_6__0_n_0\,
      I2 => \disparity_reg_n_0_[0]\,
      I3 => \disparity[1]_i_3__0_n_0\,
      I4 => \disparity[3]_i_8__0_n_0\,
      I5 => \disparity_reg_n_0_[2]\,
      O => \disparity[3]_i_7__0_n_0\
    );
\disparity[3]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DBB2"
    )
        port map (
      I0 => \disparity[3]_i_13__0_n_0\,
      I1 => \disparity[3]_i_12__0_n_0\,
      I2 => \disparity[3]_i_11__0_n_0\,
      I3 => \disparity[3]_i_10__0_n_0\,
      O => \disparity[3]_i_8__0_n_0\
    );
\disparity[3]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => \disparity_reg_n_0_[0]\,
      I1 => \disparity[1]_i_3__0_n_0\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity[2]_i_6__0_n_0\,
      O => \disparity[3]_i_9__0_n_0\
    );
\disparity_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[0]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[0]\,
      R => \^disparity_reg[0]_0\
    );
\disparity_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[1]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[1]\,
      R => \^disparity_reg[0]_0\
    );
\disparity_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[2]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[2]\,
      R => \^disparity_reg[0]_0\
    );
\disparity_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelclock,
      CE => '1',
      D => \disparity[3]_i_1__0_n_0\,
      Q => disparity(3),
      R => \^disparity_reg[0]_0\
    );
\dout[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0280A28"
    )
        port map (
      I0 => video_active,
      I1 => \disparity[1]_i_4_n_0\,
      I2 => video_data(0),
      I3 => \disparity[3]_i_5__0_n_0\,
      I4 => \disparity[3]_i_3_n_0\,
      O => \dout[0]_i_1__0_n_0\
    );
\dout[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228282828288228"
    )
        port map (
      I0 => video_active,
      I1 => video_data(0),
      I2 => video_data(1),
      I3 => \disparity[3]_i_5__0_n_0\,
      I4 => \disparity[3]_i_3_n_0\,
      I5 => \disparity[1]_i_4_n_0\,
      O => \dout[1]_i_1__0_n_0\
    );
\dout[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7D7DD77DD7D7D77D"
    )
        port map (
      I0 => video_active,
      I1 => \dout[2]_i_2_n_0\,
      I2 => video_data(2),
      I3 => \disparity[1]_i_4_n_0\,
      I4 => \disparity[3]_i_5__0_n_0\,
      I5 => \disparity[3]_i_3_n_0\,
      O => \dout[2]_i_1__0_n_0\
    );
\dout[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => video_data(1),
      I1 => video_data(0),
      O => \dout[2]_i_2_n_0\
    );
\dout[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82222282"
    )
        port map (
      I0 => video_active,
      I1 => \dout[3]_i_2_n_0\,
      I2 => \disparity[3]_i_5__0_n_0\,
      I3 => \disparity[3]_i_3_n_0\,
      I4 => \disparity[1]_i_4_n_0\,
      O => \dout[3]_i_1__0_n_0\
    );
\dout[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => video_data(3),
      I1 => video_data(1),
      I2 => video_data(0),
      I3 => video_data(2),
      O => \dout[3]_i_2_n_0\
    );
\dout[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696669"
    )
        port map (
      I0 => \dout[3]_i_2_n_0\,
      I1 => video_data(4),
      I2 => \disparity[1]_i_4_n_0\,
      I3 => \disparity[3]_i_5__0_n_0\,
      I4 => \disparity[3]_i_3_n_0\,
      O => \dout[4]_i_1__0_n_0\
    );
\dout[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82222282"
    )
        port map (
      I0 => video_active,
      I1 => \dout[5]_i_2__0_n_0\,
      I2 => \disparity[3]_i_5__0_n_0\,
      I3 => \disparity[3]_i_3_n_0\,
      I4 => \disparity[1]_i_4_n_0\,
      O => \dout[5]_i_1__0_n_0\
    );
\dout[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => video_data(5),
      I1 => video_data(3),
      I2 => video_data(1),
      I3 => video_data(0),
      I4 => video_data(2),
      I5 => video_data(4),
      O => \dout[5]_i_2__0_n_0\
    );
\dout[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696669"
    )
        port map (
      I0 => \dout[5]_i_2__0_n_0\,
      I1 => video_data(6),
      I2 => \disparity[1]_i_4_n_0\,
      I3 => \disparity[3]_i_5__0_n_0\,
      I4 => \disparity[3]_i_3_n_0\,
      O => \dout[6]_i_1__0_n_0\
    );
\dout[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AA60000"
    )
        port map (
      I0 => \dout[7]_i_2__0_n_0\,
      I1 => \disparity[3]_i_5__0_n_0\,
      I2 => \disparity[3]_i_3_n_0\,
      I3 => \disparity[1]_i_4_n_0\,
      I4 => video_active,
      O => \dout[7]_i_1__0_n_0\
    );
\dout[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \dout[7]_i_3__0_n_0\,
      I1 => video_data(1),
      I2 => video_data(3),
      I3 => video_data(2),
      O => \dout[7]_i_2__0_n_0\
    );
\dout[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => video_data(5),
      I1 => video_data(6),
      I2 => video_data(4),
      I3 => video_data(7),
      I4 => video_data(0),
      O => \dout[7]_i_3__0_n_0\
    );
\dout[8]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \disparity[1]_i_4_n_0\,
      O => \dout[8]_i_1__0_n_0\
    );
\dout[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \disparity[3]_i_3_n_0\,
      I1 => \disparity[3]_i_5__0_n_0\,
      I2 => \disparity[1]_i_4_n_0\,
      O => \dout[9]_i_1__0_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[0]_i_1__0_n_0\,
      Q => endata_i(0),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[1]_i_1__0_n_0\,
      Q => endata_i(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[2]_i_1__0_n_0\,
      Q => endata_i(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[3]_i_1__0_n_0\,
      Q => endata_i(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[4]_i_1__0_n_0\,
      Q => endata_i(4),
      S => \^disparity_reg[0]_0\
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[5]_i_1__0_n_0\,
      Q => endata_i(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[6]_i_1__0_n_0\,
      Q => endata_i(6),
      S => \^disparity_reg[0]_0\
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[7]_i_1__0_n_0\,
      Q => endata_i(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[8]_i_1__0_n_0\,
      Q => endata_i(8),
      S => \^disparity_reg[0]_0\
    );
\dout_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => pixelclock,
      CE => '1',
      D => \dout[9]_i_1__0_n_0\,
      Q => endata_i(9),
      S => \^disparity_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2tmds_0_0_rgb2tmds is
  port (
    data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_p : out STD_LOGIC;
    clk_n : out STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    video_active : in STD_LOGIC;
    serialclock : in STD_LOGIC;
    pixelclock : in STD_LOGIC;
    rst : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC
  );
end design_1_rgb2tmds_0_0_rgb2tmds;

architecture STRUCTURE of design_1_rgb2tmds_0_0_rgb2tmds is
  signal dout_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal engreen : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal enred : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tr_n_0 : STD_LOGIC;
begin
ser_b: entity work.design_1_rgb2tmds_0_0_serializer
     port map (
      Q(9 downto 0) => dout_0(9 downto 0),
      data_n(0) => data_n(0),
      data_p(0) => data_p(0),
      pixelclock => pixelclock,
      rst => rst,
      serialclock => serialclock
    );
ser_c: entity work.design_1_rgb2tmds_0_0_serializer_0
     port map (
      clk_n => clk_n,
      clk_p => clk_p,
      pixelclock => pixelclock,
      rst => rst,
      serialclock => serialclock
    );
ser_g: entity work.design_1_rgb2tmds_0_0_serializer_1
     port map (
      data_n(0) => data_n(1),
      data_p(0) => data_p(1),
      endata_i(9 downto 0) => engreen(9 downto 0),
      pixelclock => pixelclock,
      rst => rst,
      serialclock => serialclock
    );
ser_r: entity work.design_1_rgb2tmds_0_0_serializer_2
     port map (
      data_n(0) => data_n(2),
      data_p(0) => data_p(2),
      endata_i(9 downto 0) => enred(9 downto 0),
      pixelclock => pixelclock,
      rst => rst,
      serialclock => serialclock
    );
tb: entity work.design_1_rgb2tmds_0_0_tmds_encoder
     port map (
      Q(9 downto 0) => dout_0(9 downto 0),
      hsync => hsync,
      pixelclock => pixelclock,
      video_active => video_active,
      video_active_0 => tr_n_0,
      video_data(7 downto 0) => video_data(7 downto 0),
      vsync => vsync
    );
tg: entity work.design_1_rgb2tmds_0_0_tmds_encoder_3
     port map (
      endata_i(9 downto 0) => engreen(9 downto 0),
      pixelclock => pixelclock,
      video_active => video_active,
      video_active_0 => tr_n_0,
      video_data(7 downto 0) => video_data(15 downto 8)
    );
tr: entity work.design_1_rgb2tmds_0_0_tmds_encoder_4
     port map (
      \disparity_reg[0]_0\ => tr_n_0,
      endata_i(9 downto 0) => enred(9 downto 0),
      pixelclock => pixelclock,
      video_active => video_active,
      video_data(7 downto 0) => video_data(23 downto 16)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2tmds_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rgb2tmds_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rgb2tmds_0_0 : entity is "design_1_rgb2tmds_0_0,rgb2tmds,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_rgb2tmds_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_rgb2tmds_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_rgb2tmds_0_0 : entity is "rgb2tmds,Vivado 2018.2.2";
end design_1_rgb2tmds_0_0;

architecture STRUCTURE of design_1_rgb2tmds_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk_n : signal is "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_CLK_N";
  attribute x_interface_info of clk_p : signal is "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_CLK_P";
  attribute x_interface_info of hsync : signal is "xilinx.com:interface:vid_io:1.0 video_data HSYNC";
  attribute x_interface_info of pixelclock : signal is "xilinx.com:signal:clock:1.0 pixelclock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of pixelclock : signal is "XIL_INTERFACENAME pixelclock, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of serialclock : signal is "xilinx.com:signal:clock:1.0 serialclock CLK";
  attribute x_interface_parameter of serialclock : signal is "XIL_INTERFACENAME serialclock, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of video_active : signal is "xilinx.com:interface:vid_io:1.0 video_data ACTIVE_VIDEO";
  attribute x_interface_info of vsync : signal is "xilinx.com:interface:vid_io:1.0 video_data VSYNC";
  attribute x_interface_info of data_n : signal is "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_DATA_N";
  attribute x_interface_info of data_p : signal is "xilinx.com:interface:hdmi:2.0 hdmi_out TMDS_DATA_P";
  attribute x_interface_info of video_data : signal is "xilinx.com:interface:vid_io:1.0 video_data DATA";
begin
U0: entity work.design_1_rgb2tmds_0_0_rgb2tmds
     port map (
      clk_n => clk_n,
      clk_p => clk_p,
      data_n(2 downto 0) => data_n(2 downto 0),
      data_p(2 downto 0) => data_p(2 downto 0),
      hsync => hsync,
      pixelclock => pixelclock,
      rst => rst,
      serialclock => serialclock,
      video_active => video_active,
      video_data(23 downto 0) => video_data(23 downto 0),
      vsync => vsync
    );
end STRUCTURE;
