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

-- DATE "10/06/2022 17:19:10"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Count8 IS
    PORT (
	count_s : OUT std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	CLK_in : IN std_logic;
	rst_deb : IN std_logic;
	input_key : IN std_logic;
	\JUMP_\ : IN std_logic;
	MCLEAR : IN std_logic
	);
END Count8;

-- Design Ports Information
-- count_s[7]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_s[6]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_s[5]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_s[4]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_s[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_s[2]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_s[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_s[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMP_	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLEAR	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_deb	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_key	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_in	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_count_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK_in : std_logic;
SIGNAL ww_rst_deb : std_logic;
SIGNAL ww_input_key : std_logic;
SIGNAL \ww_JUMP_\ : std_logic;
SIGNAL ww_MCLEAR : std_logic;
SIGNAL \CLK_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|out_key~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count_s[7]~output_o\ : std_logic;
SIGNAL \count_s[6]~output_o\ : std_logic;
SIGNAL \count_s[5]~output_o\ : std_logic;
SIGNAL \count_s[4]~output_o\ : std_logic;
SIGNAL \count_s[3]~output_o\ : std_logic;
SIGNAL \count_s[2]~output_o\ : std_logic;
SIGNAL \count_s[1]~output_o\ : std_logic;
SIGNAL \count_s[0]~output_o\ : std_logic;
SIGNAL \rst_deb~input_o\ : std_logic;
SIGNAL \input_key~input_o\ : std_logic;
SIGNAL \inst1|out_key~1_combout\ : std_logic;
SIGNAL \CLK_in~input_o\ : std_logic;
SIGNAL \CLK_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|counter[0]~16_combout\ : std_logic;
SIGNAL \inst1|intermediate~1_combout\ : std_logic;
SIGNAL \inst1|intermediate~_emulatedfeeder_combout\ : std_logic;
SIGNAL \inst1|intermediate~_emulated_q\ : std_logic;
SIGNAL \inst1|intermediate~0_combout\ : std_logic;
SIGNAL \inst1|always0~0_combout\ : std_logic;
SIGNAL \inst1|counter[0]~17\ : std_logic;
SIGNAL \inst1|counter[1]~18_combout\ : std_logic;
SIGNAL \inst1|counter[1]~19\ : std_logic;
SIGNAL \inst1|counter[2]~20_combout\ : std_logic;
SIGNAL \inst1|counter[2]~21\ : std_logic;
SIGNAL \inst1|counter[3]~22_combout\ : std_logic;
SIGNAL \inst1|counter[3]~23\ : std_logic;
SIGNAL \inst1|counter[4]~24_combout\ : std_logic;
SIGNAL \inst1|counter[4]~25\ : std_logic;
SIGNAL \inst1|counter[5]~26_combout\ : std_logic;
SIGNAL \inst1|counter[5]~27\ : std_logic;
SIGNAL \inst1|counter[6]~28_combout\ : std_logic;
SIGNAL \inst1|counter[6]~29\ : std_logic;
SIGNAL \inst1|counter[7]~30_combout\ : std_logic;
SIGNAL \inst1|counter[7]~31\ : std_logic;
SIGNAL \inst1|counter[8]~32_combout\ : std_logic;
SIGNAL \inst1|counter[8]~33\ : std_logic;
SIGNAL \inst1|counter[9]~34_combout\ : std_logic;
SIGNAL \inst1|counter[9]~35\ : std_logic;
SIGNAL \inst1|counter[10]~36_combout\ : std_logic;
SIGNAL \inst1|counter[10]~37\ : std_logic;
SIGNAL \inst1|counter[11]~38_combout\ : std_logic;
SIGNAL \inst1|counter[11]~39\ : std_logic;
SIGNAL \inst1|counter[12]~40_combout\ : std_logic;
SIGNAL \inst1|counter[12]~41\ : std_logic;
SIGNAL \inst1|counter[13]~42_combout\ : std_logic;
SIGNAL \inst1|counter[13]~43\ : std_logic;
SIGNAL \inst1|counter[14]~44_combout\ : std_logic;
SIGNAL \inst1|counter[14]~45\ : std_logic;
SIGNAL \inst1|counter[15]~46_combout\ : std_logic;
SIGNAL \inst1|out_key~8_combout\ : std_logic;
SIGNAL \inst1|out_key~7_combout\ : std_logic;
SIGNAL \inst1|out_key~9_combout\ : std_logic;
SIGNAL \inst1|out_key~6_combout\ : std_logic;
SIGNAL \inst1|out_key~5_combout\ : std_logic;
SIGNAL \inst1|out_key~10_combout\ : std_logic;
SIGNAL \inst1|out_key~3_combout\ : std_logic;
SIGNAL \inst1|out_key~_emulated_q\ : std_logic;
SIGNAL \inst1|out_key~2_combout\ : std_logic;
SIGNAL \JUMP_~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst68~combout\ : std_logic;
SIGNAL \MCLEAR~input_o\ : std_logic;
SIGNAL \inst52~combout\ : std_logic;
SIGNAL \inst51~1_combout\ : std_logic;
SIGNAL \inst1|out_key~2clkctrl_outclk\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst58~combout\ : std_logic;
SIGNAL \inst42~combout\ : std_logic;
SIGNAL \inst41~1_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst38~combout\ : std_logic;
SIGNAL \inst54~combout\ : std_logic;
SIGNAL \inst37~1_combout\ : std_logic;
SIGNAL \inst37~3_combout\ : std_logic;
SIGNAL \inst37~0_combout\ : std_logic;
SIGNAL \inst37~_emulated_q\ : std_logic;
SIGNAL \inst37~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst55~combout\ : std_logic;
SIGNAL \inst40~combout\ : std_logic;
SIGNAL \inst39~1_combout\ : std_logic;
SIGNAL \inst39~3_combout\ : std_logic;
SIGNAL \inst39~0_combout\ : std_logic;
SIGNAL \inst39~_emulated_q\ : std_logic;
SIGNAL \inst39~2_combout\ : std_logic;
SIGNAL \inst41~3_combout\ : std_logic;
SIGNAL \inst41~0_combout\ : std_logic;
SIGNAL \inst41~_emulated_q\ : std_logic;
SIGNAL \inst41~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst60~combout\ : std_logic;
SIGNAL \inst44~combout\ : std_logic;
SIGNAL \inst43~1_combout\ : std_logic;
SIGNAL \inst70~combout\ : std_logic;
SIGNAL \inst43~3_combout\ : std_logic;
SIGNAL \inst43~0_combout\ : std_logic;
SIGNAL \inst43~_emulated_q\ : std_logic;
SIGNAL \inst43~2_combout\ : std_logic;
SIGNAL \inst72~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst48~combout\ : std_logic;
SIGNAL \inst64~combout\ : std_logic;
SIGNAL \inst47~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst46~combout\ : std_logic;
SIGNAL \inst62~combout\ : std_logic;
SIGNAL \inst45~1_combout\ : std_logic;
SIGNAL \inst71~combout\ : std_logic;
SIGNAL \inst45~3_combout\ : std_logic;
SIGNAL \inst45~0_combout\ : std_logic;
SIGNAL \inst45~_emulated_q\ : std_logic;
SIGNAL \inst45~2_combout\ : std_logic;
SIGNAL \inst47~3_combout\ : std_logic;
SIGNAL \inst47~0_combout\ : std_logic;
SIGNAL \inst47~_emulated_q\ : std_logic;
SIGNAL \inst47~2_combout\ : std_logic;
SIGNAL \inst74~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst50~combout\ : std_logic;
SIGNAL \inst66~combout\ : std_logic;
SIGNAL \inst49~1_combout\ : std_logic;
SIGNAL \inst49~7_combout\ : std_logic;
SIGNAL \inst49~3_combout\ : std_logic;
SIGNAL \inst49~0_combout\ : std_logic;
SIGNAL \inst49~_emulated_q\ : std_logic;
SIGNAL \inst49~2_combout\ : std_logic;
SIGNAL \inst51~3_combout\ : std_logic;
SIGNAL \inst51~0_combout\ : std_logic;
SIGNAL \inst51~_emulated_q\ : std_logic;
SIGNAL \inst51~2_combout\ : std_logic;
SIGNAL \inst1|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst39~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst41~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst43~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst45~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst49~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst51~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

count_s <= ww_count_s;
ww_A <= A;
ww_CLK_in <= CLK_in;
ww_rst_deb <= rst_deb;
ww_input_key <= input_key;
\ww_JUMP_\ <= \JUMP_\;
ww_MCLEAR <= MCLEAR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_in~input_o\);

\inst1|out_key~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|out_key~2_combout\);
\ALT_INV_inst37~0_combout\ <= NOT \inst37~0_combout\;
\ALT_INV_inst39~0_combout\ <= NOT \inst39~0_combout\;
\ALT_INV_inst41~0_combout\ <= NOT \inst41~0_combout\;
\ALT_INV_inst43~0_combout\ <= NOT \inst43~0_combout\;
\ALT_INV_inst45~0_combout\ <= NOT \inst45~0_combout\;
\ALT_INV_inst47~0_combout\ <= NOT \inst47~0_combout\;
\ALT_INV_inst49~0_combout\ <= NOT \inst49~0_combout\;
\ALT_INV_inst51~0_combout\ <= NOT \inst51~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y10_N9
\count_s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst51~2_combout\,
	devoe => ww_devoe,
	o => \count_s[7]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\count_s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst49~2_combout\,
	devoe => ww_devoe,
	o => \count_s[6]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\count_s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47~2_combout\,
	devoe => ww_devoe,
	o => \count_s[5]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\count_s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45~2_combout\,
	devoe => ww_devoe,
	o => \count_s[4]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\count_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst43~2_combout\,
	devoe => ww_devoe,
	o => \count_s[3]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\count_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41~2_combout\,
	devoe => ww_devoe,
	o => \count_s[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\count_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39~2_combout\,
	devoe => ww_devoe,
	o => \count_s[1]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\count_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst37~2_combout\,
	devoe => ww_devoe,
	o => \count_s[0]~output_o\);

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

-- Location: IOIBUF_X115_Y7_N15
\input_key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_key,
	o => \input_key~input_o\);

-- Location: LCCOMB_X113_Y13_N16
\inst1|out_key~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~1_combout\ = (\rst_deb~input_o\ & (\inst1|out_key~1_combout\)) # (!\rst_deb~input_o\ & ((\input_key~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|out_key~1_combout\,
	datac => \rst_deb~input_o\,
	datad => \input_key~input_o\,
	combout => \inst1|out_key~1_combout\);

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

-- Location: CLKCTRL_G4
\CLK_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X114_Y13_N0
\inst1|counter[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[0]~16_combout\ = \inst1|counter\(0) $ (VCC)
-- \inst1|counter[0]~17\ = CARRY(\inst1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(0),
	datad => VCC,
	combout => \inst1|counter[0]~16_combout\,
	cout => \inst1|counter[0]~17\);

-- Location: LCCOMB_X113_Y13_N24
\inst1|intermediate~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|intermediate~1_combout\ = \inst1|out_key~1_combout\ $ (\input_key~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|out_key~1_combout\,
	datad => \input_key~input_o\,
	combout => \inst1|intermediate~1_combout\);

-- Location: LCCOMB_X113_Y13_N4
\inst1|intermediate~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|intermediate~_emulatedfeeder_combout\ = \inst1|intermediate~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|intermediate~1_combout\,
	combout => \inst1|intermediate~_emulatedfeeder_combout\);

-- Location: FF_X113_Y13_N5
\inst1|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|intermediate~_emulatedfeeder_combout\,
	clrn => \rst_deb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|intermediate~_emulated_q\);

-- Location: LCCOMB_X113_Y13_N26
\inst1|intermediate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|intermediate~0_combout\ = (\rst_deb~input_o\ & ((\inst1|intermediate~_emulated_q\ $ (\inst1|out_key~1_combout\)))) # (!\rst_deb~input_o\ & (\input_key~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_key~input_o\,
	datab => \rst_deb~input_o\,
	datac => \inst1|intermediate~_emulated_q\,
	datad => \inst1|out_key~1_combout\,
	combout => \inst1|intermediate~0_combout\);

-- Location: LCCOMB_X113_Y13_N30
\inst1|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|always0~0_combout\ = \input_key~input_o\ $ (\inst1|intermediate~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_key~input_o\,
	datad => \inst1|intermediate~0_combout\,
	combout => \inst1|always0~0_combout\);

-- Location: FF_X114_Y13_N1
\inst1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[0]~16_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(0));

-- Location: LCCOMB_X114_Y13_N2
\inst1|counter[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[1]~18_combout\ = (\inst1|counter\(1) & (!\inst1|counter[0]~17\)) # (!\inst1|counter\(1) & ((\inst1|counter[0]~17\) # (GND)))
-- \inst1|counter[1]~19\ = CARRY((!\inst1|counter[0]~17\) # (!\inst1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(1),
	datad => VCC,
	cin => \inst1|counter[0]~17\,
	combout => \inst1|counter[1]~18_combout\,
	cout => \inst1|counter[1]~19\);

-- Location: FF_X114_Y13_N3
\inst1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[1]~18_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(1));

-- Location: LCCOMB_X114_Y13_N4
\inst1|counter[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[2]~20_combout\ = (\inst1|counter\(2) & (\inst1|counter[1]~19\ $ (GND))) # (!\inst1|counter\(2) & (!\inst1|counter[1]~19\ & VCC))
-- \inst1|counter[2]~21\ = CARRY((\inst1|counter\(2) & !\inst1|counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(2),
	datad => VCC,
	cin => \inst1|counter[1]~19\,
	combout => \inst1|counter[2]~20_combout\,
	cout => \inst1|counter[2]~21\);

-- Location: FF_X114_Y13_N5
\inst1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[2]~20_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(2));

-- Location: LCCOMB_X114_Y13_N6
\inst1|counter[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[3]~22_combout\ = (\inst1|counter\(3) & (!\inst1|counter[2]~21\)) # (!\inst1|counter\(3) & ((\inst1|counter[2]~21\) # (GND)))
-- \inst1|counter[3]~23\ = CARRY((!\inst1|counter[2]~21\) # (!\inst1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(3),
	datad => VCC,
	cin => \inst1|counter[2]~21\,
	combout => \inst1|counter[3]~22_combout\,
	cout => \inst1|counter[3]~23\);

-- Location: FF_X114_Y13_N7
\inst1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[3]~22_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(3));

-- Location: LCCOMB_X114_Y13_N8
\inst1|counter[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[4]~24_combout\ = (\inst1|counter\(4) & (\inst1|counter[3]~23\ $ (GND))) # (!\inst1|counter\(4) & (!\inst1|counter[3]~23\ & VCC))
-- \inst1|counter[4]~25\ = CARRY((\inst1|counter\(4) & !\inst1|counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(4),
	datad => VCC,
	cin => \inst1|counter[3]~23\,
	combout => \inst1|counter[4]~24_combout\,
	cout => \inst1|counter[4]~25\);

-- Location: FF_X114_Y13_N9
\inst1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[4]~24_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(4));

-- Location: LCCOMB_X114_Y13_N10
\inst1|counter[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[5]~26_combout\ = (\inst1|counter\(5) & (!\inst1|counter[4]~25\)) # (!\inst1|counter\(5) & ((\inst1|counter[4]~25\) # (GND)))
-- \inst1|counter[5]~27\ = CARRY((!\inst1|counter[4]~25\) # (!\inst1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(5),
	datad => VCC,
	cin => \inst1|counter[4]~25\,
	combout => \inst1|counter[5]~26_combout\,
	cout => \inst1|counter[5]~27\);

-- Location: FF_X114_Y13_N11
\inst1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[5]~26_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(5));

-- Location: LCCOMB_X114_Y13_N12
\inst1|counter[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[6]~28_combout\ = (\inst1|counter\(6) & (\inst1|counter[5]~27\ $ (GND))) # (!\inst1|counter\(6) & (!\inst1|counter[5]~27\ & VCC))
-- \inst1|counter[6]~29\ = CARRY((\inst1|counter\(6) & !\inst1|counter[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(6),
	datad => VCC,
	cin => \inst1|counter[5]~27\,
	combout => \inst1|counter[6]~28_combout\,
	cout => \inst1|counter[6]~29\);

-- Location: FF_X114_Y13_N13
\inst1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[6]~28_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(6));

-- Location: LCCOMB_X114_Y13_N14
\inst1|counter[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[7]~30_combout\ = (\inst1|counter\(7) & (!\inst1|counter[6]~29\)) # (!\inst1|counter\(7) & ((\inst1|counter[6]~29\) # (GND)))
-- \inst1|counter[7]~31\ = CARRY((!\inst1|counter[6]~29\) # (!\inst1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(7),
	datad => VCC,
	cin => \inst1|counter[6]~29\,
	combout => \inst1|counter[7]~30_combout\,
	cout => \inst1|counter[7]~31\);

-- Location: FF_X114_Y13_N15
\inst1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[7]~30_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(7));

-- Location: LCCOMB_X114_Y13_N16
\inst1|counter[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[8]~32_combout\ = (\inst1|counter\(8) & (\inst1|counter[7]~31\ $ (GND))) # (!\inst1|counter\(8) & (!\inst1|counter[7]~31\ & VCC))
-- \inst1|counter[8]~33\ = CARRY((\inst1|counter\(8) & !\inst1|counter[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(8),
	datad => VCC,
	cin => \inst1|counter[7]~31\,
	combout => \inst1|counter[8]~32_combout\,
	cout => \inst1|counter[8]~33\);

-- Location: FF_X114_Y13_N17
\inst1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[8]~32_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(8));

-- Location: LCCOMB_X114_Y13_N18
\inst1|counter[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[9]~34_combout\ = (\inst1|counter\(9) & (!\inst1|counter[8]~33\)) # (!\inst1|counter\(9) & ((\inst1|counter[8]~33\) # (GND)))
-- \inst1|counter[9]~35\ = CARRY((!\inst1|counter[8]~33\) # (!\inst1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(9),
	datad => VCC,
	cin => \inst1|counter[8]~33\,
	combout => \inst1|counter[9]~34_combout\,
	cout => \inst1|counter[9]~35\);

-- Location: FF_X114_Y13_N19
\inst1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[9]~34_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(9));

-- Location: LCCOMB_X114_Y13_N20
\inst1|counter[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[10]~36_combout\ = (\inst1|counter\(10) & (\inst1|counter[9]~35\ $ (GND))) # (!\inst1|counter\(10) & (!\inst1|counter[9]~35\ & VCC))
-- \inst1|counter[10]~37\ = CARRY((\inst1|counter\(10) & !\inst1|counter[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(10),
	datad => VCC,
	cin => \inst1|counter[9]~35\,
	combout => \inst1|counter[10]~36_combout\,
	cout => \inst1|counter[10]~37\);

-- Location: FF_X114_Y13_N21
\inst1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[10]~36_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(10));

-- Location: LCCOMB_X114_Y13_N22
\inst1|counter[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[11]~38_combout\ = (\inst1|counter\(11) & (!\inst1|counter[10]~37\)) # (!\inst1|counter\(11) & ((\inst1|counter[10]~37\) # (GND)))
-- \inst1|counter[11]~39\ = CARRY((!\inst1|counter[10]~37\) # (!\inst1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(11),
	datad => VCC,
	cin => \inst1|counter[10]~37\,
	combout => \inst1|counter[11]~38_combout\,
	cout => \inst1|counter[11]~39\);

-- Location: FF_X114_Y13_N23
\inst1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[11]~38_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(11));

-- Location: LCCOMB_X114_Y13_N24
\inst1|counter[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[12]~40_combout\ = (\inst1|counter\(12) & (\inst1|counter[11]~39\ $ (GND))) # (!\inst1|counter\(12) & (!\inst1|counter[11]~39\ & VCC))
-- \inst1|counter[12]~41\ = CARRY((\inst1|counter\(12) & !\inst1|counter[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(12),
	datad => VCC,
	cin => \inst1|counter[11]~39\,
	combout => \inst1|counter[12]~40_combout\,
	cout => \inst1|counter[12]~41\);

-- Location: FF_X114_Y13_N25
\inst1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[12]~40_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(12));

-- Location: LCCOMB_X114_Y13_N26
\inst1|counter[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[13]~42_combout\ = (\inst1|counter\(13) & (!\inst1|counter[12]~41\)) # (!\inst1|counter\(13) & ((\inst1|counter[12]~41\) # (GND)))
-- \inst1|counter[13]~43\ = CARRY((!\inst1|counter[12]~41\) # (!\inst1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(13),
	datad => VCC,
	cin => \inst1|counter[12]~41\,
	combout => \inst1|counter[13]~42_combout\,
	cout => \inst1|counter[13]~43\);

-- Location: FF_X114_Y13_N27
\inst1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[13]~42_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(13));

-- Location: LCCOMB_X114_Y13_N28
\inst1|counter[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[14]~44_combout\ = (\inst1|counter\(14) & (\inst1|counter[13]~43\ $ (GND))) # (!\inst1|counter\(14) & (!\inst1|counter[13]~43\ & VCC))
-- \inst1|counter[14]~45\ = CARRY((\inst1|counter\(14) & !\inst1|counter[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(14),
	datad => VCC,
	cin => \inst1|counter[13]~43\,
	combout => \inst1|counter[14]~44_combout\,
	cout => \inst1|counter[14]~45\);

-- Location: FF_X114_Y13_N29
\inst1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[14]~44_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(14));

-- Location: LCCOMB_X114_Y13_N30
\inst1|counter[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[15]~46_combout\ = \inst1|counter[14]~45\ $ (\inst1|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|counter\(15),
	cin => \inst1|counter[14]~45\,
	combout => \inst1|counter[15]~46_combout\);

-- Location: FF_X114_Y13_N31
\inst1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst1|counter[15]~46_combout\,
	clrn => \rst_deb~input_o\,
	sclr => \inst1|always0~0_combout\,
	ena => \inst1|out_key~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(15));

-- Location: LCCOMB_X113_Y13_N28
\inst1|out_key~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~8_combout\ = (\inst1|counter\(14) & (\inst1|intermediate~0_combout\ $ (!\input_key~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|intermediate~0_combout\,
	datac => \input_key~input_o\,
	datad => \inst1|counter\(14),
	combout => \inst1|out_key~8_combout\);

-- Location: LCCOMB_X113_Y13_N18
\inst1|out_key~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~7_combout\ = (\inst1|counter\(2) & (\inst1|counter\(5) & (\inst1|counter\(4) & \inst1|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(2),
	datab => \inst1|counter\(5),
	datac => \inst1|counter\(4),
	datad => \inst1|counter\(3),
	combout => \inst1|out_key~7_combout\);

-- Location: LCCOMB_X113_Y13_N14
\inst1|out_key~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~9_combout\ = (\inst1|counter\(1) & (\inst1|out_key~8_combout\ & (\inst1|counter\(0) & \inst1|out_key~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(1),
	datab => \inst1|out_key~8_combout\,
	datac => \inst1|counter\(0),
	datad => \inst1|out_key~7_combout\,
	combout => \inst1|out_key~9_combout\);

-- Location: LCCOMB_X113_Y13_N8
\inst1|out_key~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~6_combout\ = (\inst1|counter\(10) & (\inst1|counter\(11) & (\inst1|counter\(13) & \inst1|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(10),
	datab => \inst1|counter\(11),
	datac => \inst1|counter\(13),
	datad => \inst1|counter\(12),
	combout => \inst1|out_key~6_combout\);

-- Location: LCCOMB_X113_Y13_N20
\inst1|out_key~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~5_combout\ = (\inst1|counter\(7) & (\inst1|counter\(9) & (\inst1|counter\(6) & \inst1|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(7),
	datab => \inst1|counter\(9),
	datac => \inst1|counter\(6),
	datad => \inst1|counter\(8),
	combout => \inst1|out_key~5_combout\);

-- Location: LCCOMB_X113_Y13_N10
\inst1|out_key~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~10_combout\ = (((!\inst1|out_key~5_combout\) # (!\inst1|out_key~6_combout\)) # (!\inst1|out_key~9_combout\)) # (!\inst1|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(15),
	datab => \inst1|out_key~9_combout\,
	datac => \inst1|out_key~6_combout\,
	datad => \inst1|out_key~5_combout\,
	combout => \inst1|out_key~10_combout\);

-- Location: LCCOMB_X113_Y13_N12
\inst1|out_key~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~3_combout\ = \inst1|out_key~1_combout\ $ (((\inst1|out_key~10_combout\ & (\inst1|out_key~2_combout\)) # (!\inst1|out_key~10_combout\ & ((\inst1|intermediate~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|out_key~1_combout\,
	datab => \inst1|out_key~2_combout\,
	datac => \inst1|out_key~10_combout\,
	datad => \inst1|intermediate~0_combout\,
	combout => \inst1|out_key~3_combout\);

-- Location: FF_X113_Y13_N13
\inst1|out_key~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~input_o\,
	d => \inst1|out_key~3_combout\,
	clrn => \rst_deb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|out_key~_emulated_q\);

-- Location: LCCOMB_X113_Y13_N22
\inst1|out_key~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~2_combout\ = (\rst_deb~input_o\ & (\inst1|out_key~1_combout\ $ (((\inst1|out_key~_emulated_q\))))) # (!\rst_deb~input_o\ & (((\input_key~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_deb~input_o\,
	datab => \inst1|out_key~1_combout\,
	datac => \input_key~input_o\,
	datad => \inst1|out_key~_emulated_q\,
	combout => \inst1|out_key~2_combout\);

-- Location: IOIBUF_X115_Y16_N8
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

-- Location: LCCOMB_X113_Y14_N28
inst68 : cycloneive_lcell_comb
-- Equation(s):
-- \inst68~combout\ = (\inst1|out_key~2_combout\ & (\JUMP_~input_o\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|out_key~2_combout\,
	datac => \JUMP_~input_o\,
	datad => \A[7]~input_o\,
	combout => \inst68~combout\);

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

-- Location: LCCOMB_X113_Y14_N2
inst52 : cycloneive_lcell_comb
-- Equation(s):
-- \inst52~combout\ = (\MCLEAR~input_o\) # ((\JUMP_~input_o\ & (\inst1|out_key~2_combout\ & !\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP_~input_o\,
	datab => \MCLEAR~input_o\,
	datac => \inst1|out_key~2_combout\,
	datad => \A[7]~input_o\,
	combout => \inst52~combout\);

-- Location: LCCOMB_X113_Y14_N6
\inst51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51~1_combout\ = (!\inst52~combout\ & ((\inst68~combout\) # (\inst51~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst68~combout\,
	datac => \inst52~combout\,
	datad => \inst51~1_combout\,
	combout => \inst51~1_combout\);

-- Location: CLKCTRL_G9
\inst1|out_key~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|out_key~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|out_key~2clkctrl_outclk\);

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

-- Location: LCCOMB_X112_Y14_N30
inst58 : cycloneive_lcell_comb
-- Equation(s):
-- \inst58~combout\ = (\inst1|out_key~2_combout\ & (\A[2]~input_o\ & \JUMP_~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|out_key~2_combout\,
	datac => \A[2]~input_o\,
	datad => \JUMP_~input_o\,
	combout => \inst58~combout\);

-- Location: LCCOMB_X112_Y14_N8
inst42 : cycloneive_lcell_comb
-- Equation(s):
-- \inst42~combout\ = (\MCLEAR~input_o\) # ((\JUMP_~input_o\ & (!\A[2]~input_o\ & \inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \JUMP_~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst42~combout\);

-- Location: LCCOMB_X111_Y14_N24
\inst41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41~1_combout\ = (!\inst42~combout\ & ((\inst58~combout\) # (\inst41~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst58~combout\,
	datab => \inst42~combout\,
	datad => \inst41~1_combout\,
	combout => \inst41~1_combout\);

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

-- Location: LCCOMB_X112_Y14_N6
inst38 : cycloneive_lcell_comb
-- Equation(s):
-- \inst38~combout\ = (\MCLEAR~input_o\) # ((\JUMP_~input_o\ & (!\A[0]~input_o\ & \inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \JUMP_~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst38~combout\);

-- Location: LCCOMB_X112_Y14_N20
inst54 : cycloneive_lcell_comb
-- Equation(s):
-- \inst54~combout\ = (\JUMP_~input_o\ & (\A[0]~input_o\ & \inst1|out_key~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JUMP_~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst54~combout\);

-- Location: LCCOMB_X111_Y14_N28
\inst37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37~1_combout\ = (!\inst38~combout\ & ((\inst54~combout\) # (\inst37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38~combout\,
	datab => \inst54~combout\,
	datad => \inst37~1_combout\,
	combout => \inst37~1_combout\);

-- Location: LCCOMB_X111_Y14_N22
\inst37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37~3_combout\ = \inst37~2_combout\ $ (!\inst37~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37~2_combout\,
	datab => \inst37~1_combout\,
	combout => \inst37~3_combout\);

-- Location: LCCOMB_X111_Y14_N20
\inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37~0_combout\ = (\inst38~combout\) # (\inst54~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38~combout\,
	datac => \inst54~combout\,
	combout => \inst37~0_combout\);

-- Location: FF_X111_Y14_N23
\inst37~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2clkctrl_outclk\,
	d => \inst37~3_combout\,
	clrn => \ALT_INV_inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37~_emulated_q\);

-- Location: LCCOMB_X112_Y14_N14
\inst37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37~2_combout\ = (!\inst38~combout\ & ((\inst54~combout\) # (\inst37~1_combout\ $ (\inst37~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37~1_combout\,
	datab => \inst54~combout\,
	datac => \inst38~combout\,
	datad => \inst37~_emulated_q\,
	combout => \inst37~2_combout\);

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

-- Location: LCCOMB_X113_Y14_N12
inst55 : cycloneive_lcell_comb
-- Equation(s):
-- \inst55~combout\ = (\JUMP_~input_o\ & (\inst1|out_key~2_combout\ & \A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP_~input_o\,
	datac => \inst1|out_key~2_combout\,
	datad => \A[1]~input_o\,
	combout => \inst55~combout\);

-- Location: LCCOMB_X112_Y14_N18
inst40 : cycloneive_lcell_comb
-- Equation(s):
-- \inst40~combout\ = (\MCLEAR~input_o\) # ((\JUMP_~input_o\ & (!\A[1]~input_o\ & \inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \JUMP_~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst40~combout\);

-- Location: LCCOMB_X111_Y14_N10
\inst39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39~1_combout\ = (!\inst40~combout\ & ((\inst55~combout\) # (\inst39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40~combout\,
	datac => \inst55~combout\,
	datad => \inst39~1_combout\,
	combout => \inst39~1_combout\);

-- Location: LCCOMB_X111_Y14_N8
\inst39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39~3_combout\ = \inst37~2_combout\ $ (\inst39~1_combout\ $ (\inst39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37~2_combout\,
	datac => \inst39~1_combout\,
	datad => \inst39~2_combout\,
	combout => \inst39~3_combout\);

-- Location: LCCOMB_X111_Y14_N30
\inst39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39~0_combout\ = (\inst40~combout\) # (\inst55~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40~combout\,
	datac => \inst55~combout\,
	combout => \inst39~0_combout\);

-- Location: FF_X111_Y14_N9
\inst39~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2clkctrl_outclk\,
	d => \inst39~3_combout\,
	clrn => \ALT_INV_inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39~_emulated_q\);

-- Location: LCCOMB_X112_Y14_N12
\inst39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39~2_combout\ = (!\inst40~combout\ & ((\inst55~combout\) # (\inst39~1_combout\ $ (\inst39~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst55~combout\,
	datab => \inst39~1_combout\,
	datac => \inst40~combout\,
	datad => \inst39~_emulated_q\,
	combout => \inst39~2_combout\);

-- Location: LCCOMB_X112_Y14_N0
\inst41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41~3_combout\ = \inst41~1_combout\ $ (\inst41~2_combout\ $ (((\inst37~2_combout\ & \inst39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37~2_combout\,
	datab => \inst41~1_combout\,
	datac => \inst39~2_combout\,
	datad => \inst41~2_combout\,
	combout => \inst41~3_combout\);

-- Location: LCCOMB_X112_Y14_N28
\inst41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41~0_combout\ = (\inst42~combout\) # (\inst58~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst42~combout\,
	datad => \inst58~combout\,
	combout => \inst41~0_combout\);

-- Location: FF_X112_Y14_N1
\inst41~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2clkctrl_outclk\,
	d => \inst41~3_combout\,
	clrn => \ALT_INV_inst41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41~_emulated_q\);

-- Location: LCCOMB_X112_Y14_N2
\inst41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41~2_combout\ = (!\inst42~combout\ & ((\inst58~combout\) # (\inst41~1_combout\ $ (\inst41~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41~1_combout\,
	datab => \inst58~combout\,
	datac => \inst42~combout\,
	datad => \inst41~_emulated_q\,
	combout => \inst41~2_combout\);

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

-- Location: LCCOMB_X112_Y14_N4
inst60 : cycloneive_lcell_comb
-- Equation(s):
-- \inst60~combout\ = (\JUMP_~input_o\ & (\A[3]~input_o\ & \inst1|out_key~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JUMP_~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst60~combout\);

-- Location: LCCOMB_X112_Y14_N22
inst44 : cycloneive_lcell_comb
-- Equation(s):
-- \inst44~combout\ = (\MCLEAR~input_o\) # ((\JUMP_~input_o\ & (!\A[3]~input_o\ & \inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \JUMP_~input_o\,
	datac => \A[3]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst44~combout\);

-- Location: LCCOMB_X111_Y14_N18
\inst43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~1_combout\ = (!\inst44~combout\ & ((\inst60~combout\) # (\inst43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst44~combout\,
	datac => \inst60~combout\,
	datad => \inst43~1_combout\,
	combout => \inst43~1_combout\);

-- Location: LCCOMB_X112_Y14_N26
inst70 : cycloneive_lcell_comb
-- Equation(s):
-- \inst70~combout\ = (\inst39~2_combout\ & \inst37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39~2_combout\,
	datad => \inst37~2_combout\,
	combout => \inst70~combout\);

-- Location: LCCOMB_X112_Y14_N16
\inst43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~3_combout\ = \inst43~1_combout\ $ (\inst43~2_combout\ $ (((\inst70~combout\ & \inst41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70~combout\,
	datab => \inst43~1_combout\,
	datac => \inst43~2_combout\,
	datad => \inst41~2_combout\,
	combout => \inst43~3_combout\);

-- Location: LCCOMB_X111_Y14_N12
\inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~0_combout\ = (\inst44~combout\) # (\inst60~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst44~combout\,
	datac => \inst60~combout\,
	combout => \inst43~0_combout\);

-- Location: FF_X112_Y14_N17
\inst43~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2clkctrl_outclk\,
	d => \inst43~3_combout\,
	clrn => \ALT_INV_inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43~_emulated_q\);

-- Location: LCCOMB_X112_Y14_N10
\inst43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~2_combout\ = (!\inst44~combout\ & ((\inst60~combout\) # (\inst43~1_combout\ $ (\inst43~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst60~combout\,
	datab => \inst43~1_combout\,
	datac => \inst44~combout\,
	datad => \inst43~_emulated_q\,
	combout => \inst43~2_combout\);

-- Location: LCCOMB_X112_Y14_N24
inst72 : cycloneive_lcell_comb
-- Equation(s):
-- \inst72~combout\ = (\inst41~2_combout\ & (\inst37~2_combout\ & (\inst43~2_combout\ & \inst39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41~2_combout\,
	datab => \inst37~2_combout\,
	datac => \inst43~2_combout\,
	datad => \inst39~2_combout\,
	combout => \inst72~combout\);

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

-- Location: LCCOMB_X114_Y14_N28
inst48 : cycloneive_lcell_comb
-- Equation(s):
-- \inst48~combout\ = (\MCLEAR~input_o\) # ((\JUMP_~input_o\ & (\inst1|out_key~2_combout\ & !\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \JUMP_~input_o\,
	datac => \inst1|out_key~2_combout\,
	datad => \A[5]~input_o\,
	combout => \inst48~combout\);

-- Location: LCCOMB_X114_Y14_N10
inst64 : cycloneive_lcell_comb
-- Equation(s):
-- \inst64~combout\ = (\A[5]~input_o\ & (\inst1|out_key~2_combout\ & \JUMP_~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \inst1|out_key~2_combout\,
	datad => \JUMP_~input_o\,
	combout => \inst64~combout\);

-- Location: LCCOMB_X114_Y14_N20
\inst47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~1_combout\ = (!\inst48~combout\ & ((\inst64~combout\) # (\inst47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48~combout\,
	datac => \inst64~combout\,
	datad => \inst47~1_combout\,
	combout => \inst47~1_combout\);

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

-- Location: LCCOMB_X113_Y14_N30
inst46 : cycloneive_lcell_comb
-- Equation(s):
-- \inst46~combout\ = (\MCLEAR~input_o\) # ((\inst1|out_key~2_combout\ & (\JUMP_~input_o\ & !\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|out_key~2_combout\,
	datab => \JUMP_~input_o\,
	datac => \A[4]~input_o\,
	datad => \MCLEAR~input_o\,
	combout => \inst46~combout\);

-- Location: LCCOMB_X113_Y14_N8
inst62 : cycloneive_lcell_comb
-- Equation(s):
-- \inst62~combout\ = (\JUMP_~input_o\ & (\A[4]~input_o\ & \inst1|out_key~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP_~input_o\,
	datac => \A[4]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst62~combout\);

-- Location: LCCOMB_X113_Y14_N16
\inst45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45~1_combout\ = (!\inst46~combout\ & ((\inst62~combout\) # (\inst45~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst62~combout\,
	datac => \inst46~combout\,
	datad => \inst45~1_combout\,
	combout => \inst45~1_combout\);

-- Location: LCCOMB_X113_Y14_N24
inst71 : cycloneive_lcell_comb
-- Equation(s):
-- \inst71~combout\ = (\inst37~2_combout\ & (\inst39~2_combout\ & \inst41~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst37~2_combout\,
	datac => \inst39~2_combout\,
	datad => \inst41~2_combout\,
	combout => \inst71~combout\);

-- Location: LCCOMB_X113_Y14_N4
\inst45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45~3_combout\ = \inst45~2_combout\ $ (\inst45~1_combout\ $ (((\inst71~combout\ & \inst43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~2_combout\,
	datab => \inst45~1_combout\,
	datac => \inst71~combout\,
	datad => \inst43~2_combout\,
	combout => \inst45~3_combout\);

-- Location: LCCOMB_X113_Y14_N10
\inst45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45~0_combout\ = (\inst46~combout\) # (\inst62~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46~combout\,
	datad => \inst62~combout\,
	combout => \inst45~0_combout\);

-- Location: FF_X113_Y14_N5
\inst45~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2clkctrl_outclk\,
	d => \inst45~3_combout\,
	clrn => \ALT_INV_inst45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45~_emulated_q\);

-- Location: LCCOMB_X113_Y14_N22
\inst45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45~2_combout\ = (!\inst46~combout\ & ((\inst62~combout\) # (\inst45~1_combout\ $ (\inst45~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46~combout\,
	datab => \inst45~1_combout\,
	datac => \inst45~_emulated_q\,
	datad => \inst62~combout\,
	combout => \inst45~2_combout\);

-- Location: LCCOMB_X114_Y14_N24
\inst47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~3_combout\ = \inst47~1_combout\ $ (\inst47~2_combout\ $ (((\inst72~combout\ & \inst45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72~combout\,
	datab => \inst47~1_combout\,
	datac => \inst45~2_combout\,
	datad => \inst47~2_combout\,
	combout => \inst47~3_combout\);

-- Location: LCCOMB_X114_Y14_N4
\inst47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~0_combout\ = (\inst48~combout\) # (\inst64~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48~combout\,
	datac => \inst64~combout\,
	combout => \inst47~0_combout\);

-- Location: FF_X114_Y14_N25
\inst47~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2clkctrl_outclk\,
	d => \inst47~3_combout\,
	clrn => \ALT_INV_inst47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47~_emulated_q\);

-- Location: LCCOMB_X114_Y14_N30
\inst47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~2_combout\ = (!\inst48~combout\ & ((\inst64~combout\) # (\inst47~1_combout\ $ (\inst47~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48~combout\,
	datab => \inst47~1_combout\,
	datac => \inst64~combout\,
	datad => \inst47~_emulated_q\,
	combout => \inst47~2_combout\);

-- Location: LCCOMB_X113_Y14_N0
inst74 : cycloneive_lcell_comb
-- Equation(s):
-- \inst74~combout\ = (\inst72~combout\ & (\inst47~2_combout\ & \inst45~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72~combout\,
	datac => \inst47~2_combout\,
	datad => \inst45~2_combout\,
	combout => \inst74~combout\);

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

-- Location: LCCOMB_X114_Y14_N6
inst50 : cycloneive_lcell_comb
-- Equation(s):
-- \inst50~combout\ = (\MCLEAR~input_o\) # ((\inst1|out_key~2_combout\ & (!\A[6]~input_o\ & \JUMP_~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|out_key~2_combout\,
	datab => \A[6]~input_o\,
	datac => \MCLEAR~input_o\,
	datad => \JUMP_~input_o\,
	combout => \inst50~combout\);

-- Location: LCCOMB_X114_Y14_N16
inst66 : cycloneive_lcell_comb
-- Equation(s):
-- \inst66~combout\ = (\inst1|out_key~2_combout\ & (\A[6]~input_o\ & \JUMP_~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|out_key~2_combout\,
	datac => \A[6]~input_o\,
	datad => \JUMP_~input_o\,
	combout => \inst66~combout\);

-- Location: LCCOMB_X114_Y14_N18
\inst49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49~1_combout\ = (!\inst50~combout\ & ((\inst66~combout\) # (\inst49~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50~combout\,
	datac => \inst66~combout\,
	datad => \inst49~1_combout\,
	combout => \inst49~1_combout\);

-- Location: LCCOMB_X114_Y14_N8
\inst49~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49~7_combout\ = (\inst47~2_combout\ & \inst45~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47~2_combout\,
	datad => \inst45~2_combout\,
	combout => \inst49~7_combout\);

-- Location: LCCOMB_X114_Y14_N0
\inst49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49~3_combout\ = \inst49~1_combout\ $ (\inst49~2_combout\ $ (((\inst49~7_combout\ & \inst72~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49~7_combout\,
	datab => \inst49~1_combout\,
	datac => \inst49~2_combout\,
	datad => \inst72~combout\,
	combout => \inst49~3_combout\);

-- Location: LCCOMB_X114_Y14_N14
\inst49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49~0_combout\ = (\inst66~combout\) # (\inst50~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst66~combout\,
	datad => \inst50~combout\,
	combout => \inst49~0_combout\);

-- Location: FF_X114_Y14_N1
\inst49~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2clkctrl_outclk\,
	d => \inst49~3_combout\,
	clrn => \ALT_INV_inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49~_emulated_q\);

-- Location: LCCOMB_X114_Y14_N2
\inst49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49~2_combout\ = (!\inst50~combout\ & ((\inst66~combout\) # (\inst49~1_combout\ $ (\inst49~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49~1_combout\,
	datab => \inst50~combout\,
	datac => \inst66~combout\,
	datad => \inst49~_emulated_q\,
	combout => \inst49~2_combout\);

-- Location: LCCOMB_X113_Y14_N20
\inst51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51~3_combout\ = \inst51~2_combout\ $ (\inst51~1_combout\ $ (((\inst74~combout\ & \inst49~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst74~combout\,
	datab => \inst49~2_combout\,
	datac => \inst51~2_combout\,
	datad => \inst51~1_combout\,
	combout => \inst51~3_combout\);

-- Location: LCCOMB_X113_Y14_N18
\inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51~0_combout\ = (\inst52~combout\) # (\inst68~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst52~combout\,
	datad => \inst68~combout\,
	combout => \inst51~0_combout\);

-- Location: FF_X113_Y14_N21
\inst51~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|out_key~2clkctrl_outclk\,
	d => \inst51~3_combout\,
	clrn => \ALT_INV_inst51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51~_emulated_q\);

-- Location: LCCOMB_X113_Y14_N14
\inst51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51~2_combout\ = (!\inst52~combout\ & ((\inst68~combout\) # (\inst51~1_combout\ $ (\inst51~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51~1_combout\,
	datab => \inst51~_emulated_q\,
	datac => \inst52~combout\,
	datad => \inst68~combout\,
	combout => \inst51~2_combout\);

ww_count_s(7) <= \count_s[7]~output_o\;

ww_count_s(6) <= \count_s[6]~output_o\;

ww_count_s(5) <= \count_s[5]~output_o\;

ww_count_s(4) <= \count_s[4]~output_o\;

ww_count_s(3) <= \count_s[3]~output_o\;

ww_count_s(2) <= \count_s[2]~output_o\;

ww_count_s(1) <= \count_s[1]~output_o\;

ww_count_s(0) <= \count_s[0]~output_o\;
END structure;


