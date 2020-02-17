-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Fri Dec 28 00:03:11 2018
-- Host        : bilgin running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_vtg_0_0 -prefix
--               design_1_vtg_0_0_ design_1_vtg_0_0_sim_netlist.vhdl
-- Design      : design_1_vtg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vtg_0_0_timing_generator is
  port (
    video_active : out STD_LOGIC;
    pixel_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    hsync : out STD_LOGIC;
    pixel_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vsync : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end design_1_vtg_0_0_timing_generator;

architecture STRUCTURE of design_1_vtg_0_0_timing_generator is
  signal \hcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \hcount[0]_i_3_n_0\ : STD_LOGIC;
  signal hcount_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \hcount_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \hcount_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \hcount_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \hcount_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \hcount_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \hcount_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \hcount_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \hcount_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \hcount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \hcount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \hcount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \hcount_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \hcount_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \hcount_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \hcount_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \hcount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \hcount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \hcount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \hcount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \hcount_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \hcount_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \hcount_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \hcount_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \hcount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \hcount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \hcount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \hcount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \hcount_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \hcount_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \hcount_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \hcount_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal hsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal \vcount[0]_i_10_n_0\ : STD_LOGIC;
  signal \vcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \vcount[0]_i_2_n_0\ : STD_LOGIC;
  signal \vcount[0]_i_4_n_0\ : STD_LOGIC;
  signal \vcount[0]_i_5_n_0\ : STD_LOGIC;
  signal \vcount[0]_i_6_n_0\ : STD_LOGIC;
  signal \vcount[0]_i_7_n_0\ : STD_LOGIC;
  signal \vcount[0]_i_8_n_0\ : STD_LOGIC;
  signal \vcount[0]_i_9_n_0\ : STD_LOGIC;
  signal vcount_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \vcount_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \vcount_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \vcount_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \vcount_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \vcount_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \vcount_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \vcount_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \vcount_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \vcount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \vcount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \vcount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \vcount_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \vcount_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \vcount_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \vcount_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \vcount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \vcount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \vcount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \vcount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \vcount_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \vcount_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \vcount_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \vcount_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \vcount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \vcount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \vcount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \vcount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \vcount_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \vcount_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \vcount_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \vcount_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal video_active_INST_0_i_1_n_0 : STD_LOGIC;
  signal video_active_INST_0_i_2_n_0 : STD_LOGIC;
  signal video_active_INST_0_i_3_n_0 : STD_LOGIC;
  signal vsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal vsync_INST_0_i_2_n_0 : STD_LOGIC;
  signal vsync_INST_0_i_3_n_0 : STD_LOGIC;
  signal \NLW_hcount_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_vcount_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of hsync_INST_0_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pixel_x[10]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixel_x[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pixel_x[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pixel_x[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_x[6]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pixel_x[7]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixel_x[8]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pixel_x[9]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_y[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pixel_y[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pixel_y[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pixel_y[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixel_y[4]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pixel_y[5]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixel_y[6]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pixel_y[7]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pixel_y[8]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vcount[0]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vcount[0]_i_5\ : label is "soft_lutpair4";
begin
\hcount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => \vcount[0]_i_2_n_0\,
      O => \hcount[0]_i_1_n_0\
    );
\hcount[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hcount_reg(0),
      O => \hcount[0]_i_3_n_0\
    );
\hcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[0]_i_2_n_7\,
      Q => hcount_reg(0),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hcount_reg[0]_i_2_n_0\,
      CO(2) => \hcount_reg[0]_i_2_n_1\,
      CO(1) => \hcount_reg[0]_i_2_n_2\,
      CO(0) => \hcount_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \hcount_reg[0]_i_2_n_4\,
      O(2) => \hcount_reg[0]_i_2_n_5\,
      O(1) => \hcount_reg[0]_i_2_n_6\,
      O(0) => \hcount_reg[0]_i_2_n_7\,
      S(3 downto 1) => hcount_reg(3 downto 1),
      S(0) => \hcount[0]_i_3_n_0\
    );
\hcount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[8]_i_1_n_5\,
      Q => hcount_reg(10),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[8]_i_1_n_4\,
      Q => hcount_reg(11),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[12]_i_1_n_7\,
      Q => hcount_reg(12),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hcount_reg[8]_i_1_n_0\,
      CO(3) => \NLW_hcount_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \hcount_reg[12]_i_1_n_1\,
      CO(1) => \hcount_reg[12]_i_1_n_2\,
      CO(0) => \hcount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hcount_reg[12]_i_1_n_4\,
      O(2) => \hcount_reg[12]_i_1_n_5\,
      O(1) => \hcount_reg[12]_i_1_n_6\,
      O(0) => \hcount_reg[12]_i_1_n_7\,
      S(3 downto 0) => hcount_reg(15 downto 12)
    );
\hcount_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[12]_i_1_n_6\,
      Q => hcount_reg(13),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[12]_i_1_n_5\,
      Q => hcount_reg(14),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[12]_i_1_n_4\,
      Q => hcount_reg(15),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[0]_i_2_n_6\,
      Q => hcount_reg(1),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[0]_i_2_n_5\,
      Q => hcount_reg(2),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[0]_i_2_n_4\,
      Q => hcount_reg(3),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[4]_i_1_n_7\,
      Q => hcount_reg(4),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hcount_reg[0]_i_2_n_0\,
      CO(3) => \hcount_reg[4]_i_1_n_0\,
      CO(2) => \hcount_reg[4]_i_1_n_1\,
      CO(1) => \hcount_reg[4]_i_1_n_2\,
      CO(0) => \hcount_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hcount_reg[4]_i_1_n_4\,
      O(2) => \hcount_reg[4]_i_1_n_5\,
      O(1) => \hcount_reg[4]_i_1_n_6\,
      O(0) => \hcount_reg[4]_i_1_n_7\,
      S(3 downto 0) => hcount_reg(7 downto 4)
    );
\hcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[4]_i_1_n_6\,
      Q => hcount_reg(5),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[4]_i_1_n_5\,
      Q => hcount_reg(6),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[4]_i_1_n_4\,
      Q => hcount_reg(7),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[8]_i_1_n_7\,
      Q => hcount_reg(8),
      R => \hcount[0]_i_1_n_0\
    );
\hcount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hcount_reg[4]_i_1_n_0\,
      CO(3) => \hcount_reg[8]_i_1_n_0\,
      CO(2) => \hcount_reg[8]_i_1_n_1\,
      CO(1) => \hcount_reg[8]_i_1_n_2\,
      CO(0) => \hcount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hcount_reg[8]_i_1_n_4\,
      O(2) => \hcount_reg[8]_i_1_n_5\,
      O(1) => \hcount_reg[8]_i_1_n_6\,
      O(0) => \hcount_reg[8]_i_1_n_7\,
      S(3 downto 0) => hcount_reg(11 downto 8)
    );
\hcount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \hcount_reg[8]_i_1_n_6\,
      Q => hcount_reg(9),
      R => \hcount[0]_i_1_n_0\
    );
hsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101410141004"
    )
        port map (
      I0 => hsync_INST_0_i_1_n_0,
      I1 => hcount_reg(7),
      I2 => hcount_reg(6),
      I3 => hcount_reg(5),
      I4 => hcount_reg(4),
      I5 => hcount_reg(3),
      O => hsync
    );
hsync_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => video_active_INST_0_i_1_n_0,
      I1 => hcount_reg(10),
      I2 => hcount_reg(8),
      I3 => hcount_reg(9),
      O => hsync_INST_0_i_1_n_0
    );
\pixel_x[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00570000"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      I4 => hcount_reg(0),
      O => pixel_x(0)
    );
\pixel_x[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      O => pixel_x(10)
    );
\pixel_x[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00570000"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      I4 => hcount_reg(1),
      O => pixel_x(1)
    );
\pixel_x[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00570000"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      I4 => hcount_reg(2),
      O => pixel_x(2)
    );
\pixel_x[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00570000"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      I4 => hcount_reg(3),
      O => pixel_x(3)
    );
\pixel_x[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00570000"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      I4 => hcount_reg(4),
      O => pixel_x(4)
    );
\pixel_x[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00570000"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      I4 => hcount_reg(5),
      O => pixel_x(5)
    );
\pixel_x[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00570000"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      I4 => hcount_reg(6),
      O => pixel_x(6)
    );
\pixel_x[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00570000"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      I4 => hcount_reg(7),
      O => pixel_x(7)
    );
\pixel_x[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => video_active_INST_0_i_1_n_0,
      O => pixel_x(8)
    );
\pixel_x[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(9),
      I2 => video_active_INST_0_i_1_n_0,
      O => pixel_x(9)
    );
\pixel_y[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(0),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(0)
    );
\pixel_y[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(1),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(1)
    );
\pixel_y[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(2),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(2)
    );
\pixel_y[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(3),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(3)
    );
\pixel_y[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(4),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(4)
    );
\pixel_y[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(5),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(5)
    );
\pixel_y[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(6),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(6)
    );
\pixel_y[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(7),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(7)
    );
\pixel_y[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(8),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(8)
    );
\pixel_y[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vcount_reg(9),
      I1 => video_active_INST_0_i_2_n_0,
      O => pixel_y(9)
    );
\vcount[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CECC"
    )
        port map (
      I0 => \vcount[0]_i_2_n_0\,
      I1 => rst,
      I2 => \vcount[0]_i_4_n_0\,
      I3 => vsync_INST_0_i_1_n_0,
      O => \vcount[0]_i_1_n_0\
    );
\vcount[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => vcount_reg(2),
      I1 => vcount_reg(5),
      I2 => vcount_reg(1),
      I3 => vcount_reg(8),
      O => \vcount[0]_i_10_n_0\
    );
\vcount[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => hcount_reg(14),
      I1 => hcount_reg(15),
      I2 => \vcount[0]_i_5_n_0\,
      I3 => \vcount[0]_i_6_n_0\,
      I4 => \vcount[0]_i_7_n_0\,
      I5 => \vcount[0]_i_8_n_0\,
      O => \vcount[0]_i_2_n_0\
    );
\vcount[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => vcount_reg(0),
      I1 => vcount_reg(7),
      I2 => vcount_reg(4),
      I3 => vcount_reg(3),
      I4 => \vcount[0]_i_10_n_0\,
      O => \vcount[0]_i_4_n_0\
    );
\vcount[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(9),
      O => \vcount[0]_i_5_n_0\
    );
\vcount[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => hcount_reg(13),
      I1 => hcount_reg(6),
      I2 => hcount_reg(4),
      I3 => hcount_reg(7),
      O => \vcount[0]_i_6_n_0\
    );
\vcount[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => hcount_reg(5),
      I1 => hcount_reg(12),
      I2 => hcount_reg(1),
      I3 => hcount_reg(0),
      O => \vcount[0]_i_7_n_0\
    );
\vcount[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => hcount_reg(11),
      I1 => hcount_reg(2),
      I2 => hcount_reg(3),
      I3 => hcount_reg(8),
      O => \vcount[0]_i_8_n_0\
    );
\vcount[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vcount_reg(0),
      O => \vcount[0]_i_9_n_0\
    );
\vcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[0]_i_3_n_7\,
      Q => vcount_reg(0),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \vcount_reg[0]_i_3_n_0\,
      CO(2) => \vcount_reg[0]_i_3_n_1\,
      CO(1) => \vcount_reg[0]_i_3_n_2\,
      CO(0) => \vcount_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \vcount_reg[0]_i_3_n_4\,
      O(2) => \vcount_reg[0]_i_3_n_5\,
      O(1) => \vcount_reg[0]_i_3_n_6\,
      O(0) => \vcount_reg[0]_i_3_n_7\,
      S(3 downto 1) => vcount_reg(3 downto 1),
      S(0) => \vcount[0]_i_9_n_0\
    );
\vcount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[8]_i_1_n_5\,
      Q => vcount_reg(10),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[8]_i_1_n_4\,
      Q => vcount_reg(11),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[12]_i_1_n_7\,
      Q => vcount_reg(12),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vcount_reg[8]_i_1_n_0\,
      CO(3) => \NLW_vcount_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \vcount_reg[12]_i_1_n_1\,
      CO(1) => \vcount_reg[12]_i_1_n_2\,
      CO(0) => \vcount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vcount_reg[12]_i_1_n_4\,
      O(2) => \vcount_reg[12]_i_1_n_5\,
      O(1) => \vcount_reg[12]_i_1_n_6\,
      O(0) => \vcount_reg[12]_i_1_n_7\,
      S(3 downto 0) => vcount_reg(15 downto 12)
    );
\vcount_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[12]_i_1_n_6\,
      Q => vcount_reg(13),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[12]_i_1_n_5\,
      Q => vcount_reg(14),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[12]_i_1_n_4\,
      Q => vcount_reg(15),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[0]_i_3_n_6\,
      Q => vcount_reg(1),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[0]_i_3_n_5\,
      Q => vcount_reg(2),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[0]_i_3_n_4\,
      Q => vcount_reg(3),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[4]_i_1_n_7\,
      Q => vcount_reg(4),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vcount_reg[0]_i_3_n_0\,
      CO(3) => \vcount_reg[4]_i_1_n_0\,
      CO(2) => \vcount_reg[4]_i_1_n_1\,
      CO(1) => \vcount_reg[4]_i_1_n_2\,
      CO(0) => \vcount_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vcount_reg[4]_i_1_n_4\,
      O(2) => \vcount_reg[4]_i_1_n_5\,
      O(1) => \vcount_reg[4]_i_1_n_6\,
      O(0) => \vcount_reg[4]_i_1_n_7\,
      S(3 downto 0) => vcount_reg(7 downto 4)
    );
\vcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[4]_i_1_n_6\,
      Q => vcount_reg(5),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[4]_i_1_n_5\,
      Q => vcount_reg(6),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[4]_i_1_n_4\,
      Q => vcount_reg(7),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[8]_i_1_n_7\,
      Q => vcount_reg(8),
      R => \vcount[0]_i_1_n_0\
    );
\vcount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vcount_reg[4]_i_1_n_0\,
      CO(3) => \vcount_reg[8]_i_1_n_0\,
      CO(2) => \vcount_reg[8]_i_1_n_1\,
      CO(1) => \vcount_reg[8]_i_1_n_2\,
      CO(0) => \vcount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vcount_reg[8]_i_1_n_4\,
      O(2) => \vcount_reg[8]_i_1_n_5\,
      O(1) => \vcount_reg[8]_i_1_n_6\,
      O(0) => \vcount_reg[8]_i_1_n_7\,
      S(3 downto 0) => vcount_reg(11 downto 8)
    );
\vcount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \vcount[0]_i_2_n_0\,
      D => \vcount_reg[8]_i_1_n_6\,
      Q => vcount_reg(9),
      R => \vcount[0]_i_1_n_0\
    );
video_active_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000057"
    )
        port map (
      I0 => hcount_reg(10),
      I1 => hcount_reg(8),
      I2 => hcount_reg(9),
      I3 => video_active_INST_0_i_1_n_0,
      I4 => video_active_INST_0_i_2_n_0,
      I5 => rst,
      O => video_active
    );
video_active_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => hcount_reg(14),
      I1 => hcount_reg(15),
      I2 => hcount_reg(11),
      I3 => hcount_reg(12),
      I4 => hcount_reg(13),
      O => video_active_INST_0_i_1_n_0
    );
video_active_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => video_active_INST_0_i_3_n_0,
      I1 => vcount_reg(14),
      I2 => vcount_reg(15),
      I3 => vcount_reg(8),
      I4 => vcount_reg(9),
      I5 => vsync_INST_0_i_3_n_0,
      O => video_active_INST_0_i_2_n_0
    );
video_active_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => vcount_reg(5),
      I1 => vcount_reg(4),
      I2 => vcount_reg(7),
      I3 => vcount_reg(9),
      I4 => vcount_reg(6),
      O => video_active_INST_0_i_3_n_0
    );
vsync_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222000"
    )
        port map (
      I0 => vsync_INST_0_i_1_n_0,
      I1 => vsync_INST_0_i_2_n_0,
      I2 => vcount_reg(1),
      I3 => vcount_reg(0),
      I4 => vcount_reg(2),
      O => vsync
    );
vsync_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => vcount_reg(9),
      I1 => vcount_reg(6),
      I2 => vcount_reg(15),
      I3 => vcount_reg(14),
      I4 => vsync_INST_0_i_3_n_0,
      O => vsync_INST_0_i_1_n_0
    );
vsync_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FFFFFFFFFF"
    )
        port map (
      I0 => vcount_reg(8),
      I1 => vcount_reg(9),
      I2 => vcount_reg(3),
      I3 => vcount_reg(7),
      I4 => vcount_reg(5),
      I5 => vcount_reg(4),
      O => vsync_INST_0_i_2_n_0
    );
vsync_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => vcount_reg(13),
      I1 => vcount_reg(12),
      I2 => vcount_reg(11),
      I3 => vcount_reg(10),
      O => vsync_INST_0_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vtg_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    video_active : out STD_LOGIC;
    pixel_x : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pixel_y : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_vtg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_vtg_0_0 : entity is "design_1_vtg_0_0,timing_generator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_vtg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_vtg_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_vtg_0_0 : entity is "timing_generator,Vivado 2018.2.2";
end design_1_vtg_0_0;

architecture STRUCTURE of design_1_vtg_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^pixel_x\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^pixel_y\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of hsync : signal is "xilinx.com:interface:video_timing:2.0 video_timing HSYNC";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of video_active : signal is "xilinx.com:interface:video_timing:2.0 video_timing ACTIVE_VIDEO";
  attribute x_interface_info of vsync : signal is "xilinx.com:interface:video_timing:2.0 video_timing VSYNC";
begin
  pixel_x(15) <= \<const0>\;
  pixel_x(14) <= \<const0>\;
  pixel_x(13) <= \<const0>\;
  pixel_x(12) <= \<const0>\;
  pixel_x(11) <= \<const0>\;
  pixel_x(10 downto 0) <= \^pixel_x\(10 downto 0);
  pixel_y(15) <= \<const0>\;
  pixel_y(14) <= \<const0>\;
  pixel_y(13) <= \<const0>\;
  pixel_y(12) <= \<const0>\;
  pixel_y(11) <= \<const0>\;
  pixel_y(10) <= \<const0>\;
  pixel_y(9 downto 0) <= \^pixel_y\(9 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_vtg_0_0_timing_generator
     port map (
      clk => clk,
      hsync => hsync,
      pixel_x(10 downto 0) => \^pixel_x\(10 downto 0),
      pixel_y(9 downto 0) => \^pixel_y\(9 downto 0),
      rst => rst,
      video_active => video_active,
      vsync => vsync
    );
end STRUCTURE;
