-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "09/28/2022 13:37:50"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Count8 IS
    PORT (
	S0 : OUT std_logic;
	b_s : OUT std_logic_vector(12 DOWNTO 0);
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	b2 : OUT std_logic;
	c2 : OUT std_logic;
	d2 : OUT std_logic;
	e2 : OUT std_logic;
	g2 : OUT std_logic;
	f2 : OUT std_logic;
	b1 : OUT std_logic;
	c1 : OUT std_logic;
	d1 : OUT std_logic;
	e1 : OUT std_logic;
	f1 : OUT std_logic;
	g1 : OUT std_logic;
	a11 : OUT std_logic;
	a21 : OUT std_logic;
	CLK_in : IN std_logic;
	rst_deb : IN std_logic;
	input_key : IN std_logic;
	MCLEAR : IN std_logic;
	\JUMP_\ : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0)
	);
END Count8;

-- Design Ports Information
-- S0	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[11]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[10]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[9]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[8]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[7]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[3]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_s[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c2	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e2	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g2	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f2	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a11	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a21	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_in	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_deb	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_key	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLEAR	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMP_	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Count8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_b_s : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL ww_S6 : std_logic;
SIGNAL ww_S7 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_c2 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_e2 : std_logic;
SIGNAL ww_g2 : std_logic;
SIGNAL ww_f2 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_a11 : std_logic;
SIGNAL ww_a21 : std_logic;
SIGNAL ww_CLK_in : std_logic;
SIGNAL ww_rst_deb : std_logic;
SIGNAL ww_input_key : std_logic;
SIGNAL ww_MCLEAR : std_logic;
SIGNAL \ww_JUMP_\ : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK_in~input_o\ : std_logic;
SIGNAL \rst_deb~input_o\ : std_logic;
SIGNAL \input_key~input_o\ : std_logic;
SIGNAL \MCLEAR~input_o\ : std_logic;
SIGNAL \JUMP_~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \b_s[12]~output_o\ : std_logic;
SIGNAL \b_s[11]~output_o\ : std_logic;
SIGNAL \b_s[10]~output_o\ : std_logic;
SIGNAL \b_s[9]~output_o\ : std_logic;
SIGNAL \b_s[8]~output_o\ : std_logic;
SIGNAL \b_s[7]~output_o\ : std_logic;
SIGNAL \b_s[6]~output_o\ : std_logic;
SIGNAL \b_s[5]~output_o\ : std_logic;
SIGNAL \b_s[4]~output_o\ : std_logic;
SIGNAL \b_s[3]~output_o\ : std_logic;
SIGNAL \b_s[2]~output_o\ : std_logic;
SIGNAL \b_s[1]~output_o\ : std_logic;
SIGNAL \b_s[0]~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \S5~output_o\ : std_logic;
SIGNAL \S6~output_o\ : std_logic;
SIGNAL \S7~output_o\ : std_logic;
SIGNAL \b2~output_o\ : std_logic;
SIGNAL \c2~output_o\ : std_logic;
SIGNAL \d2~output_o\ : std_logic;
SIGNAL \e2~output_o\ : std_logic;
SIGNAL \g2~output_o\ : std_logic;
SIGNAL \f2~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \e1~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \a11~output_o\ : std_logic;
SIGNAL \a21~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S0 <= ww_S0;
b_s <= ww_b_s;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
S5 <= ww_S5;
S6 <= ww_S6;
S7 <= ww_S7;
b2 <= ww_b2;
c2 <= ww_c2;
d2 <= ww_d2;
e2 <= ww_e2;
g2 <= ww_g2;
f2 <= ww_f2;
b1 <= ww_b1;
c1 <= ww_c1;
d1 <= ww_d1;
e1 <= ww_e1;
f1 <= ww_f1;
g1 <= ww_g1;
a11 <= ww_a11;
a21 <= ww_a21;
ww_CLK_in <= CLK_in;
ww_rst_deb <= rst_deb;
ww_input_key <= input_key;
ww_MCLEAR <= MCLEAR;
\ww_JUMP_\ <= \JUMP_\;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X105_Y73_N2
\S0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\b_s[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[12]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\b_s[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[11]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\b_s[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[10]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\b_s[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[9]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\b_s[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\b_s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\b_s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[6]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\b_s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\b_s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[4]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\b_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[3]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\b_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\b_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\b_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_s[0]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\S1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\S2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\S3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\S4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\S5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S5~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\S6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S6~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\S7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S7~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\b2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b2~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\c2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \c2~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\d2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\e2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \e2~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\g2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \g2~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\f2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \f2~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\b1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\c1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\d1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\e1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \e1~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\f1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\g1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\a11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a11~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\a21~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a21~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_in,
	o => \CLK_in~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\rst_deb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_deb,
	o => \rst_deb~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\input_key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_key,
	o => \input_key~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\MCLEAR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCLEAR,
	o => \MCLEAR~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\JUMP_~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_JUMP_\,
	o => \JUMP_~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

ww_S0 <= \S0~output_o\;

ww_b_s(12) <= \b_s[12]~output_o\;

ww_b_s(11) <= \b_s[11]~output_o\;

ww_b_s(10) <= \b_s[10]~output_o\;

ww_b_s(9) <= \b_s[9]~output_o\;

ww_b_s(8) <= \b_s[8]~output_o\;

ww_b_s(7) <= \b_s[7]~output_o\;

ww_b_s(6) <= \b_s[6]~output_o\;

ww_b_s(5) <= \b_s[5]~output_o\;

ww_b_s(4) <= \b_s[4]~output_o\;

ww_b_s(3) <= \b_s[3]~output_o\;

ww_b_s(2) <= \b_s[2]~output_o\;

ww_b_s(1) <= \b_s[1]~output_o\;

ww_b_s(0) <= \b_s[0]~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S4 <= \S4~output_o\;

ww_S5 <= \S5~output_o\;

ww_S6 <= \S6~output_o\;

ww_S7 <= \S7~output_o\;

ww_b2 <= \b2~output_o\;

ww_c2 <= \c2~output_o\;

ww_d2 <= \d2~output_o\;

ww_e2 <= \e2~output_o\;

ww_g2 <= \g2~output_o\;

ww_f2 <= \f2~output_o\;

ww_b1 <= \b1~output_o\;

ww_c1 <= \c1~output_o\;

ww_d1 <= \d1~output_o\;

ww_e1 <= \e1~output_o\;

ww_f1 <= \f1~output_o\;

ww_g1 <= \g1~output_o\;

ww_a11 <= \a11~output_o\;

ww_a21 <= \a21~output_o\;
END structure;


