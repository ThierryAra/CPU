-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "10/19/2022 23:04:24"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
	b_out : OUT std_logic_vector(7 DOWNTO 0);
	CLK_in : IN std_logic;
	JUMP : IN std_logic;
	C : IN std_logic_vector(3 DOWNTO 0);
	MCLEAR : IN std_logic
	);
END Count8;

-- Design Ports Information
-- b_out[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_in	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLEAR	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMP	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_b_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK_in : std_logic;
SIGNAL ww_JUMP : std_logic;
SIGNAL ww_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MCLEAR : std_logic;
SIGNAL \CLK_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b_out[7]~output_o\ : std_logic;
SIGNAL \b_out[6]~output_o\ : std_logic;
SIGNAL \b_out[5]~output_o\ : std_logic;
SIGNAL \b_out[4]~output_o\ : std_logic;
SIGNAL \b_out[3]~output_o\ : std_logic;
SIGNAL \b_out[2]~output_o\ : std_logic;
SIGNAL \b_out[1]~output_o\ : std_logic;
SIGNAL \b_out[0]~output_o\ : std_logic;
SIGNAL \CLK_in~input_o\ : std_logic;
SIGNAL \CLK_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \JUMP~input_o\ : std_logic;
SIGNAL \MCLEAR~input_o\ : std_logic;
SIGNAL \inst23~combout\ : std_logic;
SIGNAL \inst48~combout\ : std_logic;
SIGNAL \inst9~1_combout\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst47~1_combout\ : std_logic;
SIGNAL \inst47~3_combout\ : std_logic;
SIGNAL \inst47~0_combout\ : std_logic;
SIGNAL \inst47~_emulated_q\ : std_logic;
SIGNAL \inst47~2_combout\ : std_logic;
SIGNAL \inst9~3_combout\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst9~_emulated_q\ : std_logic;
SIGNAL \inst9~2_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \inst24~combout\ : std_logic;
SIGNAL \inst18~combout\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst10~3_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst10~_emulated_q\ : std_logic;
SIGNAL \inst10~2_combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \inst25~combout\ : std_logic;
SIGNAL \inst44~combout\ : std_logic;
SIGNAL \inst11~1_combout\ : std_logic;
SIGNAL \inst11~3_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~_emulated_q\ : std_logic;
SIGNAL \inst11~2_combout\ : std_logic;
SIGNAL \inst30~0_combout\ : std_logic;
SIGNAL \inst53~combout\ : std_logic;
SIGNAL \inst30~q\ : std_logic;
SIGNAL \inst40~combout\ : std_logic;
SIGNAL \inst31~0_combout\ : std_logic;
SIGNAL \inst31~q\ : std_logic;
SIGNAL \inst32~0_combout\ : std_logic;
SIGNAL \inst32~q\ : std_logic;
SIGNAL \inst33~0_combout\ : std_logic;
SIGNAL \inst33~1_combout\ : std_logic;
SIGNAL \inst33~q\ : std_logic;
SIGNAL \ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst10~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst11~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst53~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

b_out <= ww_b_out;
ww_CLK_in <= CLK_in;
ww_JUMP <= JUMP;
ww_C <= C;
ww_MCLEAR <= MCLEAR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_in~input_o\);
\ALT_INV_inst47~0_combout\ <= NOT \inst47~0_combout\;
\ALT_INV_inst9~0_combout\ <= NOT \inst9~0_combout\;
\ALT_INV_inst10~0_combout\ <= NOT \inst10~0_combout\;
\ALT_INV_inst11~0_combout\ <= NOT \inst11~0_combout\;
\ALT_INV_inst53~combout\ <= NOT \inst53~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\b_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33~q\,
	devoe => ww_devoe,
	o => \b_out[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\b_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~q\,
	devoe => ww_devoe,
	o => \b_out[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\b_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31~q\,
	devoe => ww_devoe,
	o => \b_out[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\b_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30~q\,
	devoe => ww_devoe,
	o => \b_out[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\b_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~2_combout\,
	devoe => ww_devoe,
	o => \b_out[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\b_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~2_combout\,
	devoe => ww_devoe,
	o => \b_out[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\b_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~2_combout\,
	devoe => ww_devoe,
	o => \b_out[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\b_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47~2_combout\,
	devoe => ww_devoe,
	o => \b_out[0]~output_o\);

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

-- Location: IOIBUF_X0_Y35_N1
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\JUMP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JUMP,
	o => \JUMP~input_o\);

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

-- Location: LCCOMB_X1_Y36_N20
inst23 : cycloneive_lcell_comb
-- Equation(s):
-- \inst23~combout\ = (\MCLEAR~input_o\) # ((!\C[1]~input_o\ & (\JUMP~input_o\ & \CLK_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \JUMP~input_o\,
	datac => \CLK_in~input_o\,
	datad => \MCLEAR~input_o\,
	combout => \inst23~combout\);

-- Location: LCCOMB_X1_Y36_N26
inst48 : cycloneive_lcell_comb
-- Equation(s):
-- \inst48~combout\ = (\CLK_in~input_o\ & (\JUMP~input_o\ & \C[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_in~input_o\,
	datac => \JUMP~input_o\,
	datad => \C[1]~input_o\,
	combout => \inst48~combout\);

-- Location: LCCOMB_X2_Y36_N10
\inst9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9~1_combout\ = (!\inst23~combout\ & ((\inst48~combout\) # (\inst9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23~combout\,
	datac => \inst48~combout\,
	datad => \inst9~1_combout\,
	combout => \inst9~1_combout\);

-- Location: IOIBUF_X0_Y35_N8
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: LCCOMB_X1_Y36_N6
inst6 : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\MCLEAR~input_o\) # ((!\C[0]~input_o\ & (\JUMP~input_o\ & \CLK_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~input_o\,
	datab => \JUMP~input_o\,
	datac => \CLK_in~input_o\,
	datad => \MCLEAR~input_o\,
	combout => \inst6~combout\);

-- Location: LCCOMB_X1_Y36_N16
inst4 : cycloneive_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\CLK_in~input_o\ & (\JUMP~input_o\ & \C[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_in~input_o\,
	datac => \JUMP~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X2_Y36_N0
\inst47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~1_combout\ = (!\inst6~combout\ & ((\inst4~combout\) # (\inst47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~combout\,
	datac => \inst4~combout\,
	datad => \inst47~1_combout\,
	combout => \inst47~1_combout\);

-- Location: LCCOMB_X2_Y36_N4
\inst47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~3_combout\ = \inst47~1_combout\ $ (!\inst47~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47~1_combout\,
	datad => \inst47~2_combout\,
	combout => \inst47~3_combout\);

-- Location: LCCOMB_X1_Y36_N30
\inst47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~0_combout\ = (\inst4~combout\) # (\inst6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~combout\,
	datac => \inst6~combout\,
	combout => \inst47~0_combout\);

-- Location: FF_X2_Y36_N5
\inst47~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst47~3_combout\,
	clrn => \ALT_INV_inst47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47~_emulated_q\);

-- Location: LCCOMB_X1_Y36_N22
\inst47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47~2_combout\ = (!\inst6~combout\ & ((\inst4~combout\) # (\inst47~1_combout\ $ (\inst47~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47~1_combout\,
	datab => \inst6~combout\,
	datac => \inst4~combout\,
	datad => \inst47~_emulated_q\,
	combout => \inst47~2_combout\);

-- Location: LCCOMB_X1_Y36_N18
\inst9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9~3_combout\ = \inst9~2_combout\ $ (\inst47~2_combout\ $ (\inst9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~2_combout\,
	datab => \inst47~2_combout\,
	datac => \inst9~1_combout\,
	combout => \inst9~3_combout\);

-- Location: LCCOMB_X1_Y36_N8
\inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (\inst48~combout\) # (\inst23~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48~combout\,
	datab => \inst23~combout\,
	combout => \inst9~0_combout\);

-- Location: FF_X1_Y36_N19
\inst9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst9~3_combout\,
	clrn => \ALT_INV_inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~_emulated_q\);

-- Location: LCCOMB_X1_Y36_N12
\inst9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9~2_combout\ = (!\inst23~combout\ & ((\inst48~combout\) # (\inst9~1_combout\ $ (\inst9~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23~combout\,
	datab => \inst9~1_combout\,
	datac => \inst48~combout\,
	datad => \inst9~_emulated_q\,
	combout => \inst9~2_combout\);

-- Location: IOIBUF_X0_Y35_N15
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X2_Y36_N24
inst24 : cycloneive_lcell_comb
-- Equation(s):
-- \inst24~combout\ = (\MCLEAR~input_o\) # ((!\C[2]~input_o\ & (\CLK_in~input_o\ & \JUMP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \C[2]~input_o\,
	datac => \CLK_in~input_o\,
	datad => \JUMP~input_o\,
	combout => \inst24~combout\);

-- Location: LCCOMB_X2_Y36_N2
inst18 : cycloneive_lcell_comb
-- Equation(s):
-- \inst18~combout\ = (\CLK_in~input_o\ & (\C[2]~input_o\ & \JUMP~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_in~input_o\,
	datac => \C[2]~input_o\,
	datad => \JUMP~input_o\,
	combout => \inst18~combout\);

-- Location: LCCOMB_X2_Y36_N20
\inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (!\inst24~combout\ & ((\inst18~combout\) # (\inst10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24~combout\,
	datac => \inst18~combout\,
	datad => \inst10~1_combout\,
	combout => \inst10~1_combout\);

-- Location: LCCOMB_X2_Y36_N12
\inst10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~3_combout\ = \inst10~1_combout\ $ (\inst10~2_combout\ $ (((\inst9~2_combout\ & \inst47~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~2_combout\,
	datab => \inst10~1_combout\,
	datac => \inst10~2_combout\,
	datad => \inst47~2_combout\,
	combout => \inst10~3_combout\);

-- Location: LCCOMB_X2_Y36_N16
\inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\inst18~combout\) # (\inst24~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~combout\,
	datab => \inst24~combout\,
	combout => \inst10~0_combout\);

-- Location: FF_X2_Y36_N13
\inst10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst10~3_combout\,
	clrn => \ALT_INV_inst10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~_emulated_q\);

-- Location: LCCOMB_X2_Y36_N26
\inst10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~2_combout\ = (!\inst24~combout\ & ((\inst18~combout\) # (\inst10~_emulated_q\ $ (\inst10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~_emulated_q\,
	datab => \inst10~1_combout\,
	datac => \inst18~combout\,
	datad => \inst24~combout\,
	combout => \inst10~2_combout\);

-- Location: LCCOMB_X1_Y36_N24
inst19 : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~combout\ = (\inst9~2_combout\ & \inst47~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9~2_combout\,
	datad => \inst47~2_combout\,
	combout => \inst19~combout\);

-- Location: IOIBUF_X0_Y33_N15
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: LCCOMB_X2_Y36_N8
inst25 : cycloneive_lcell_comb
-- Equation(s):
-- \inst25~combout\ = (\CLK_in~input_o\ & (\C[3]~input_o\ & \JUMP~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_in~input_o\,
	datab => \C[3]~input_o\,
	datad => \JUMP~input_o\,
	combout => \inst25~combout\);

-- Location: LCCOMB_X2_Y36_N6
inst44 : cycloneive_lcell_comb
-- Equation(s):
-- \inst44~combout\ = (\MCLEAR~input_o\) # ((!\C[3]~input_o\ & (\CLK_in~input_o\ & \JUMP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \C[3]~input_o\,
	datac => \CLK_in~input_o\,
	datad => \JUMP~input_o\,
	combout => \inst44~combout\);

-- Location: LCCOMB_X2_Y36_N18
\inst11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~1_combout\ = (!\inst44~combout\ & ((\inst25~combout\) # (\inst11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~combout\,
	datac => \inst44~combout\,
	datad => \inst11~1_combout\,
	combout => \inst11~1_combout\);

-- Location: LCCOMB_X3_Y36_N28
\inst11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~3_combout\ = \inst11~2_combout\ $ (\inst11~1_combout\ $ (((\inst10~2_combout\ & \inst19~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~2_combout\,
	datab => \inst11~2_combout\,
	datac => \inst11~1_combout\,
	datad => \inst19~combout\,
	combout => \inst11~3_combout\);

-- Location: LCCOMB_X2_Y36_N30
\inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\inst44~combout\) # (\inst25~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst44~combout\,
	datad => \inst25~combout\,
	combout => \inst11~0_combout\);

-- Location: FF_X3_Y36_N29
\inst11~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst11~3_combout\,
	clrn => \ALT_INV_inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~_emulated_q\);

-- Location: LCCOMB_X2_Y36_N14
\inst11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~2_combout\ = (!\inst44~combout\ & ((\inst25~combout\) # (\inst11~1_combout\ $ (\inst11~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~1_combout\,
	datab => \inst11~_emulated_q\,
	datac => \inst44~combout\,
	datad => \inst25~combout\,
	combout => \inst11~2_combout\);

-- Location: LCCOMB_X1_Y36_N14
\inst30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30~0_combout\ = \inst30~q\ $ (((\inst10~2_combout\ & (\inst19~combout\ & \inst11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~2_combout\,
	datab => \inst19~combout\,
	datac => \inst30~q\,
	datad => \inst11~2_combout\,
	combout => \inst30~0_combout\);

-- Location: LCCOMB_X1_Y36_N2
inst53 : cycloneive_lcell_comb
-- Equation(s):
-- \inst53~combout\ = (\MCLEAR~input_o\) # ((\CLK_in~input_o\ & \JUMP~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_in~input_o\,
	datac => \JUMP~input_o\,
	datad => \MCLEAR~input_o\,
	combout => \inst53~combout\);

-- Location: FF_X1_Y36_N15
inst30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst30~0_combout\,
	clrn => \ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30~q\);

-- Location: LCCOMB_X1_Y36_N4
inst40 : cycloneive_lcell_comb
-- Equation(s):
-- \inst40~combout\ = (\inst10~2_combout\ & (\inst19~combout\ & (\inst30~q\ & \inst11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~2_combout\,
	datab => \inst19~combout\,
	datac => \inst30~q\,
	datad => \inst11~2_combout\,
	combout => \inst40~combout\);

-- Location: LCCOMB_X1_Y36_N0
\inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31~0_combout\ = \inst31~q\ $ (\inst40~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31~q\,
	datad => \inst40~combout\,
	combout => \inst31~0_combout\);

-- Location: FF_X1_Y36_N1
inst31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst31~0_combout\,
	clrn => \ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31~q\);

-- Location: LCCOMB_X1_Y36_N10
\inst32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32~0_combout\ = \inst32~q\ $ (((\inst31~q\ & \inst40~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31~q\,
	datac => \inst32~q\,
	datad => \inst40~combout\,
	combout => \inst32~0_combout\);

-- Location: FF_X1_Y36_N11
inst32 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst32~0_combout\,
	clrn => \ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32~q\);

-- Location: LCCOMB_X2_Y36_N28
\inst33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33~0_combout\ = (((!\inst11~2_combout\) # (!\inst31~q\)) # (!\inst30~q\)) # (!\inst32~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~q\,
	datab => \inst30~q\,
	datac => \inst31~q\,
	datad => \inst11~2_combout\,
	combout => \inst33~0_combout\);

-- Location: LCCOMB_X1_Y36_N28
\inst33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33~1_combout\ = \inst33~q\ $ (((!\inst33~0_combout\ & (\inst19~combout\ & \inst10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~0_combout\,
	datab => \inst19~combout\,
	datac => \inst33~q\,
	datad => \inst10~2_combout\,
	combout => \inst33~1_combout\);

-- Location: FF_X1_Y36_N29
inst33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst33~1_combout\,
	clrn => \ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33~q\);

ww_b_out(7) <= \b_out[7]~output_o\;

ww_b_out(6) <= \b_out[6]~output_o\;

ww_b_out(5) <= \b_out[5]~output_o\;

ww_b_out(4) <= \b_out[4]~output_o\;

ww_b_out(3) <= \b_out[3]~output_o\;

ww_b_out(2) <= \b_out[2]~output_o\;

ww_b_out(1) <= \b_out[1]~output_o\;

ww_b_out(0) <= \b_out[0]~output_o\;
END structure;


