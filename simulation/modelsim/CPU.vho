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

-- DATE "10/06/2022 15:12:44"

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

ENTITY 	mem256x16 IS
    PORT (
	b2 : OUT std_logic;
	CLK_in : IN std_logic;
	rst_deb : IN std_logic;
	input_key : IN std_logic;
	MCLEAR : IN std_logic;
	JUMP : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
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
	b3 : OUT std_logic;
	f3 : OUT std_logic;
	c3 : OUT std_logic;
	d3 : OUT std_logic;
	e3 : OUT std_logic;
	g3 : OUT std_logic;
	c4 : OUT std_logic;
	d4 : OUT std_logic;
	e4 : OUT std_logic;
	g4 : OUT std_logic;
	b4 : OUT std_logic;
	f4 : OUT std_logic;
	a11 : OUT std_logic;
	a21 : OUT std_logic;
	a31 : OUT std_logic;
	a41 : OUT std_logic
	);
END mem256x16;

-- Design Ports Information
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
-- b3	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f3	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c3	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e3	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g3	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c4	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e4	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g4	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f4	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a11	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a21	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a31	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a41	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_deb	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_key	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_in	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMP	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLEAR	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mem256x16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_CLK_in : std_logic;
SIGNAL ww_rst_deb : std_logic;
SIGNAL ww_input_key : std_logic;
SIGNAL ww_MCLEAR : std_logic;
SIGNAL ww_JUMP : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
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
SIGNAL ww_b3 : std_logic;
SIGNAL ww_f3 : std_logic;
SIGNAL ww_c3 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_e3 : std_logic;
SIGNAL ww_g3 : std_logic;
SIGNAL ww_c4 : std_logic;
SIGNAL ww_d4 : std_logic;
SIGNAL ww_e4 : std_logic;
SIGNAL ww_g4 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_f4 : std_logic;
SIGNAL ww_a11 : std_logic;
SIGNAL ww_a21 : std_logic;
SIGNAL ww_a31 : std_logic;
SIGNAL ww_a41 : std_logic;
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|out_key~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \b3~output_o\ : std_logic;
SIGNAL \f3~output_o\ : std_logic;
SIGNAL \c3~output_o\ : std_logic;
SIGNAL \d3~output_o\ : std_logic;
SIGNAL \e3~output_o\ : std_logic;
SIGNAL \g3~output_o\ : std_logic;
SIGNAL \c4~output_o\ : std_logic;
SIGNAL \d4~output_o\ : std_logic;
SIGNAL \e4~output_o\ : std_logic;
SIGNAL \g4~output_o\ : std_logic;
SIGNAL \b4~output_o\ : std_logic;
SIGNAL \f4~output_o\ : std_logic;
SIGNAL \a11~output_o\ : std_logic;
SIGNAL \a21~output_o\ : std_logic;
SIGNAL \a31~output_o\ : std_logic;
SIGNAL \a41~output_o\ : std_logic;
SIGNAL \input_key~input_o\ : std_logic;
SIGNAL \rst_deb~input_o\ : std_logic;
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
SIGNAL \inst1|out_key~7_combout\ : std_logic;
SIGNAL \inst1|out_key~5_combout\ : std_logic;
SIGNAL \inst1|counter[9]~35\ : std_logic;
SIGNAL \inst1|counter[10]~36_combout\ : std_logic;
SIGNAL \inst1|counter[10]~37\ : std_logic;
SIGNAL \inst1|counter[11]~38_combout\ : std_logic;
SIGNAL \inst1|counter[11]~39\ : std_logic;
SIGNAL \inst1|counter[12]~40_combout\ : std_logic;
SIGNAL \inst1|counter[12]~41\ : std_logic;
SIGNAL \inst1|counter[13]~42_combout\ : std_logic;
SIGNAL \inst1|out_key~6_combout\ : std_logic;
SIGNAL \inst1|counter[13]~43\ : std_logic;
SIGNAL \inst1|counter[14]~44_combout\ : std_logic;
SIGNAL \inst1|counter[14]~45\ : std_logic;
SIGNAL \inst1|counter[15]~46_combout\ : std_logic;
SIGNAL \inst1|out_key~8_combout\ : std_logic;
SIGNAL \inst1|out_key~9_combout\ : std_logic;
SIGNAL \inst1|out_key~10_combout\ : std_logic;
SIGNAL \inst1|out_key~3_combout\ : std_logic;
SIGNAL \inst1|out_key~_emulated_q\ : std_logic;
SIGNAL \inst1|out_key~2_combout\ : std_logic;
SIGNAL \inst1|out_key~2clkctrl_outclk\ : std_logic;
SIGNAL \JUMP~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst6|inst54~combout\ : std_logic;
SIGNAL \MCLEAR~input_o\ : std_logic;
SIGNAL \inst6|inst38~combout\ : std_logic;
SIGNAL \inst6|inst37~1_combout\ : std_logic;
SIGNAL \inst6|inst37~3_combout\ : std_logic;
SIGNAL \inst6|inst37~0_combout\ : std_logic;
SIGNAL \inst6|inst37~_emulated_q\ : std_logic;
SIGNAL \inst6|inst37~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst6|inst40~combout\ : std_logic;
SIGNAL \inst6|inst55~combout\ : std_logic;
SIGNAL \inst6|inst39~1_combout\ : std_logic;
SIGNAL \inst6|inst39~3_combout\ : std_logic;
SIGNAL \inst6|inst39~0_combout\ : std_logic;
SIGNAL \inst6|inst39~_emulated_q\ : std_logic;
SIGNAL \inst6|inst39~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst6|inst42~combout\ : std_logic;
SIGNAL \inst6|inst58~combout\ : std_logic;
SIGNAL \inst6|inst41~1_combout\ : std_logic;
SIGNAL \inst6|inst41~3_combout\ : std_logic;
SIGNAL \inst6|inst41~0_combout\ : std_logic;
SIGNAL \inst6|inst41~_emulated_q\ : std_logic;
SIGNAL \inst6|inst41~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst6|inst44~combout\ : std_logic;
SIGNAL \inst6|inst60~combout\ : std_logic;
SIGNAL \inst6|inst43~1_combout\ : std_logic;
SIGNAL \inst6|inst70~combout\ : std_logic;
SIGNAL \inst6|inst43~3_combout\ : std_logic;
SIGNAL \inst6|inst43~0_combout\ : std_logic;
SIGNAL \inst6|inst43~_emulated_q\ : std_logic;
SIGNAL \inst6|inst43~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst6|inst46~combout\ : std_logic;
SIGNAL \inst6|inst62~combout\ : std_logic;
SIGNAL \inst6|inst45~1_combout\ : std_logic;
SIGNAL \inst6|inst71~combout\ : std_logic;
SIGNAL \inst6|inst45~3_combout\ : std_logic;
SIGNAL \inst6|inst45~0_combout\ : std_logic;
SIGNAL \inst6|inst45~_emulated_q\ : std_logic;
SIGNAL \inst6|inst45~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst6|inst64~combout\ : std_logic;
SIGNAL \inst6|inst48~combout\ : std_logic;
SIGNAL \inst6|inst47~1_combout\ : std_logic;
SIGNAL \inst6|inst72~combout\ : std_logic;
SIGNAL \inst6|inst47~3_combout\ : std_logic;
SIGNAL \inst6|inst47~0_combout\ : std_logic;
SIGNAL \inst6|inst47~_emulated_q\ : std_logic;
SIGNAL \inst6|inst47~2_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst6|inst50~combout\ : std_logic;
SIGNAL \inst6|inst66~combout\ : std_logic;
SIGNAL \inst6|inst49~1_combout\ : std_logic;
SIGNAL \inst6|inst73~combout\ : std_logic;
SIGNAL \inst6|inst49~3_combout\ : std_logic;
SIGNAL \inst6|inst49~0_combout\ : std_logic;
SIGNAL \inst6|inst49~_emulated_q\ : std_logic;
SIGNAL \inst6|inst49~2_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst6|inst68~combout\ : std_logic;
SIGNAL \inst6|inst52~combout\ : std_logic;
SIGNAL \inst6|inst51~1_combout\ : std_logic;
SIGNAL \inst6|inst51~7_combout\ : std_logic;
SIGNAL \inst6|inst51~3_combout\ : std_logic;
SIGNAL \inst6|inst51~0_combout\ : std_logic;
SIGNAL \inst6|inst51~_emulated_q\ : std_logic;
SIGNAL \inst6|inst51~2_combout\ : std_logic;
SIGNAL \inst3|inst17~0_combout\ : std_logic;
SIGNAL \inst3|inst23~0_combout\ : std_logic;
SIGNAL \inst3|inst31~0_combout\ : std_logic;
SIGNAL \inst3|inst37~0_combout\ : std_logic;
SIGNAL \inst3|inst51~0_combout\ : std_logic;
SIGNAL \inst3|inst44~0_combout\ : std_logic;
SIGNAL \inst2|inst17~0_combout\ : std_logic;
SIGNAL \inst2|inst23~0_combout\ : std_logic;
SIGNAL \inst2|inst31~0_combout\ : std_logic;
SIGNAL \inst2|inst37~0_combout\ : std_logic;
SIGNAL \inst2|inst44~0_combout\ : std_logic;
SIGNAL \inst2|inst51~0_combout\ : std_logic;
SIGNAL \inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst4|inst44~0_combout\ : std_logic;
SIGNAL \inst4|inst23~0_combout\ : std_logic;
SIGNAL \inst4|inst31~0_combout\ : std_logic;
SIGNAL \inst4|inst37~0_combout\ : std_logic;
SIGNAL \inst4|inst51~0_combout\ : std_logic;
SIGNAL \inst5|inst23~0_combout\ : std_logic;
SIGNAL \inst5|inst31~0_combout\ : std_logic;
SIGNAL \inst5|inst37~0_combout\ : std_logic;
SIGNAL \inst5|inst51~0_combout\ : std_logic;
SIGNAL \inst5|inst17~0_combout\ : std_logic;
SIGNAL \inst5|inst44~0_combout\ : std_logic;
SIGNAL \inst2|inst9~0_combout\ : std_logic;
SIGNAL \inst3|inst9~0_combout\ : std_logic;
SIGNAL \inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst5|inst9~0_combout\ : std_logic;
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|ALT_INV_inst49~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst45~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst43~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst41~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst39~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_out_key~2clkctrl_outclk\ : std_logic;
SIGNAL \inst6|ALT_INV_inst51~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

b2 <= ww_b2;
ww_CLK_in <= CLK_in;
ww_rst_deb <= rst_deb;
ww_input_key <= input_key;
ww_MCLEAR <= MCLEAR;
ww_JUMP <= JUMP;
ww_A <= A;
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
b3 <= ww_b3;
f3 <= ww_f3;
c3 <= ww_c3;
d3 <= ww_d3;
e3 <= ww_e3;
g3 <= ww_g3;
c4 <= ww_c4;
d4 <= ww_d4;
e4 <= ww_e4;
g4 <= ww_g4;
b4 <= ww_b4;
f4 <= ww_f4;
a11 <= ww_a11;
a21 <= ww_a21;
a31 <= ww_a31;
a41 <= ww_a41;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst6|inst51~2_combout\ & \inst6|inst49~2_combout\ & \inst6|inst47~2_combout\ & \inst6|inst45~2_combout\ & \inst6|inst43~2_combout\ & \inst6|inst41~2_combout\ & 
\inst6|inst39~2_combout\ & \inst6|inst37~2_combout\);

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|altsyncram_component|auto_generated|q_a\(8) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|altsyncram_component|auto_generated|q_a\(9) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|altsyncram_component|auto_generated|q_a\(10) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|altsyncram_component|auto_generated|q_a\(11) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|altsyncram_component|auto_generated|q_a\(12) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|altsyncram_component|auto_generated|q_a\(13) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst|altsyncram_component|auto_generated|q_a\(14) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst|altsyncram_component|auto_generated|q_a\(15) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\CLK_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_in~input_o\);

\inst1|out_key~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|out_key~2_combout\);
\inst6|ALT_INV_inst49~0_combout\ <= NOT \inst6|inst49~0_combout\;
\inst6|ALT_INV_inst47~0_combout\ <= NOT \inst6|inst47~0_combout\;
\inst6|ALT_INV_inst45~0_combout\ <= NOT \inst6|inst45~0_combout\;
\inst6|ALT_INV_inst43~0_combout\ <= NOT \inst6|inst43~0_combout\;
\inst6|ALT_INV_inst41~0_combout\ <= NOT \inst6|inst41~0_combout\;
\inst6|ALT_INV_inst39~0_combout\ <= NOT \inst6|inst39~0_combout\;
\inst6|ALT_INV_inst37~0_combout\ <= NOT \inst6|inst37~0_combout\;
\inst5|ALT_INV_inst9~0_combout\ <= NOT \inst5|inst9~0_combout\;
\inst4|ALT_INV_inst9~0_combout\ <= NOT \inst4|inst9~0_combout\;
\inst3|ALT_INV_inst9~0_combout\ <= NOT \inst3|inst9~0_combout\;
\inst2|ALT_INV_inst9~0_combout\ <= NOT \inst2|inst9~0_combout\;
\inst5|ALT_INV_inst44~0_combout\ <= NOT \inst5|inst44~0_combout\;
\inst5|ALT_INV_inst17~0_combout\ <= NOT \inst5|inst17~0_combout\;
\inst5|ALT_INV_inst51~0_combout\ <= NOT \inst5|inst51~0_combout\;
\inst5|ALT_INV_inst37~0_combout\ <= NOT \inst5|inst37~0_combout\;
\inst5|ALT_INV_inst31~0_combout\ <= NOT \inst5|inst31~0_combout\;
\inst5|ALT_INV_inst23~0_combout\ <= NOT \inst5|inst23~0_combout\;
\inst4|ALT_INV_inst51~0_combout\ <= NOT \inst4|inst51~0_combout\;
\inst4|ALT_INV_inst37~0_combout\ <= NOT \inst4|inst37~0_combout\;
\inst4|ALT_INV_inst31~0_combout\ <= NOT \inst4|inst31~0_combout\;
\inst4|ALT_INV_inst23~0_combout\ <= NOT \inst4|inst23~0_combout\;
\inst4|ALT_INV_inst44~0_combout\ <= NOT \inst4|inst44~0_combout\;
\inst4|ALT_INV_inst17~0_combout\ <= NOT \inst4|inst17~0_combout\;
\inst2|ALT_INV_inst51~0_combout\ <= NOT \inst2|inst51~0_combout\;
\inst2|ALT_INV_inst44~0_combout\ <= NOT \inst2|inst44~0_combout\;
\inst2|ALT_INV_inst37~0_combout\ <= NOT \inst2|inst37~0_combout\;
\inst2|ALT_INV_inst31~0_combout\ <= NOT \inst2|inst31~0_combout\;
\inst2|ALT_INV_inst23~0_combout\ <= NOT \inst2|inst23~0_combout\;
\inst2|ALT_INV_inst17~0_combout\ <= NOT \inst2|inst17~0_combout\;
\inst3|ALT_INV_inst44~0_combout\ <= NOT \inst3|inst44~0_combout\;
\inst3|ALT_INV_inst51~0_combout\ <= NOT \inst3|inst51~0_combout\;
\inst3|ALT_INV_inst37~0_combout\ <= NOT \inst3|inst37~0_combout\;
\inst3|ALT_INV_inst31~0_combout\ <= NOT \inst3|inst31~0_combout\;
\inst3|ALT_INV_inst23~0_combout\ <= NOT \inst3|inst23~0_combout\;
\inst3|ALT_INV_inst17~0_combout\ <= NOT \inst3|inst17~0_combout\;
\inst1|ALT_INV_out_key~2clkctrl_outclk\ <= NOT \inst1|out_key~2clkctrl_outclk\;
\inst6|ALT_INV_inst51~0_combout\ <= NOT \inst6|inst51~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y30_N9
\b2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_inst17~0_combout\,
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
	i => \inst3|ALT_INV_inst23~0_combout\,
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
	i => \inst3|ALT_INV_inst31~0_combout\,
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
	i => \inst3|ALT_INV_inst37~0_combout\,
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
	i => \inst3|ALT_INV_inst51~0_combout\,
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
	i => \inst3|ALT_INV_inst44~0_combout\,
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
	i => \inst2|ALT_INV_inst17~0_combout\,
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
	i => \inst2|ALT_INV_inst23~0_combout\,
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
	i => \inst2|ALT_INV_inst31~0_combout\,
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
	i => \inst2|ALT_INV_inst37~0_combout\,
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
	i => \inst2|ALT_INV_inst44~0_combout\,
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
	i => \inst2|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\b3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \b3~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\f3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \f3~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\c3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \c3~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\d3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \d3~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\e3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \e3~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\g3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \g3~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\c4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \c4~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\d4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \d4~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\e4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \e4~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\g4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \g4~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\b4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \b4~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\f4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \f4~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\a11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_inst9~0_combout\,
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
	i => \inst3|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \a21~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\a31~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \a31~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\a41~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \a41~output_o\);

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

-- Location: LCCOMB_X107_Y13_N16
\inst1|out_key~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~1_combout\ = (\rst_deb~input_o\ & (\inst1|out_key~1_combout\)) # (!\rst_deb~input_o\ & ((\input_key~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|out_key~1_combout\,
	datac => \input_key~input_o\,
	datad => \rst_deb~input_o\,
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

-- Location: LCCOMB_X111_Y13_N0
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

-- Location: LCCOMB_X112_Y13_N28
\inst1|intermediate~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|intermediate~1_combout\ = \input_key~input_o\ $ (\inst1|out_key~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_key~input_o\,
	datad => \inst1|out_key~1_combout\,
	combout => \inst1|intermediate~1_combout\);

-- Location: LCCOMB_X112_Y13_N30
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

-- Location: FF_X112_Y13_N31
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

-- Location: LCCOMB_X112_Y13_N24
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

-- Location: LCCOMB_X112_Y13_N22
\inst1|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|always0~0_combout\ = \input_key~input_o\ $ (\inst1|intermediate~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_key~input_o\,
	datab => \inst1|intermediate~0_combout\,
	combout => \inst1|always0~0_combout\);

-- Location: FF_X111_Y13_N1
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

-- Location: LCCOMB_X111_Y13_N2
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

-- Location: FF_X111_Y13_N3
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

-- Location: LCCOMB_X111_Y13_N4
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

-- Location: FF_X111_Y13_N5
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

-- Location: LCCOMB_X111_Y13_N6
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

-- Location: FF_X111_Y13_N7
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

-- Location: LCCOMB_X111_Y13_N8
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

-- Location: FF_X111_Y13_N9
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

-- Location: LCCOMB_X111_Y13_N10
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

-- Location: FF_X111_Y13_N11
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

-- Location: LCCOMB_X111_Y13_N12
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

-- Location: FF_X111_Y13_N13
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

-- Location: LCCOMB_X111_Y13_N14
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

-- Location: FF_X111_Y13_N15
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

-- Location: LCCOMB_X111_Y13_N16
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

-- Location: FF_X111_Y13_N17
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

-- Location: LCCOMB_X111_Y13_N18
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

-- Location: FF_X111_Y13_N19
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

-- Location: LCCOMB_X110_Y13_N30
\inst1|out_key~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~7_combout\ = (\inst1|counter\(6) & (\inst1|counter\(8) & (\inst1|counter\(7) & \inst1|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(6),
	datab => \inst1|counter\(8),
	datac => \inst1|counter\(7),
	datad => \inst1|counter\(9),
	combout => \inst1|out_key~7_combout\);

-- Location: LCCOMB_X112_Y13_N16
\inst1|out_key~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~5_combout\ = (\inst1|counter\(0) & (\inst1|counter\(1) & (\input_key~input_o\ $ (!\inst1|intermediate~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_key~input_o\,
	datab => \inst1|intermediate~0_combout\,
	datac => \inst1|counter\(0),
	datad => \inst1|counter\(1),
	combout => \inst1|out_key~5_combout\);

-- Location: LCCOMB_X111_Y13_N20
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

-- Location: FF_X111_Y13_N21
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

-- Location: LCCOMB_X111_Y13_N22
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

-- Location: FF_X111_Y13_N23
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

-- Location: LCCOMB_X111_Y13_N24
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

-- Location: FF_X111_Y13_N25
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

-- Location: LCCOMB_X111_Y13_N26
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

-- Location: FF_X111_Y13_N27
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

-- Location: LCCOMB_X110_Y13_N8
\inst1|out_key~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~6_combout\ = (\inst1|counter\(10) & (\inst1|counter\(11) & (\inst1|counter\(12) & \inst1|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(10),
	datab => \inst1|counter\(11),
	datac => \inst1|counter\(12),
	datad => \inst1|counter\(13),
	combout => \inst1|out_key~6_combout\);

-- Location: LCCOMB_X111_Y13_N28
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

-- Location: FF_X111_Y13_N29
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

-- Location: LCCOMB_X111_Y13_N30
\inst1|counter[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[15]~46_combout\ = \inst1|counter\(15) $ (\inst1|counter[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(15),
	cin => \inst1|counter[14]~45\,
	combout => \inst1|counter[15]~46_combout\);

-- Location: FF_X111_Y13_N31
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

-- Location: LCCOMB_X110_Y13_N20
\inst1|out_key~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~8_combout\ = (\inst1|counter\(3) & (\inst1|counter\(5) & (\inst1|counter\(4) & \inst1|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(3),
	datab => \inst1|counter\(5),
	datac => \inst1|counter\(4),
	datad => \inst1|counter\(2),
	combout => \inst1|out_key~8_combout\);

-- Location: LCCOMB_X110_Y13_N6
\inst1|out_key~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~9_combout\ = (\inst1|counter\(14) & (\inst1|counter\(15) & \inst1|out_key~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(14),
	datac => \inst1|counter\(15),
	datad => \inst1|out_key~8_combout\,
	combout => \inst1|out_key~9_combout\);

-- Location: LCCOMB_X110_Y13_N16
\inst1|out_key~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~10_combout\ = (((!\inst1|out_key~9_combout\) # (!\inst1|out_key~6_combout\)) # (!\inst1|out_key~5_combout\)) # (!\inst1|out_key~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|out_key~7_combout\,
	datab => \inst1|out_key~5_combout\,
	datac => \inst1|out_key~6_combout\,
	datad => \inst1|out_key~9_combout\,
	combout => \inst1|out_key~10_combout\);

-- Location: LCCOMB_X107_Y13_N18
\inst1|out_key~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~3_combout\ = \inst1|out_key~1_combout\ $ (((\inst1|out_key~10_combout\ & ((\inst1|out_key~2_combout\))) # (!\inst1|out_key~10_combout\ & (\inst1|intermediate~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|out_key~1_combout\,
	datab => \inst1|out_key~10_combout\,
	datac => \inst1|intermediate~0_combout\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst1|out_key~3_combout\);

-- Location: FF_X107_Y13_N19
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

-- Location: LCCOMB_X107_Y13_N22
\inst1|out_key~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|out_key~2_combout\ = (\rst_deb~input_o\ & ((\inst1|out_key~1_combout\ $ (\inst1|out_key~_emulated_q\)))) # (!\rst_deb~input_o\ & (\input_key~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_key~input_o\,
	datab => \inst1|out_key~1_combout\,
	datac => \rst_deb~input_o\,
	datad => \inst1|out_key~_emulated_q\,
	combout => \inst1|out_key~2_combout\);

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

-- Location: LCCOMB_X106_Y13_N26
\inst6|inst54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst54~combout\ = (\JUMP~input_o\ & (\A[0]~input_o\ & !\inst1|out_key~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst54~combout\);

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

-- Location: LCCOMB_X106_Y13_N8
\inst6|inst38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst38~combout\ = (\MCLEAR~input_o\) # ((\JUMP~input_o\ & (!\A[0]~input_o\ & !\inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP~input_o\,
	datab => \MCLEAR~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst38~combout\);

-- Location: LCCOMB_X106_Y13_N16
\inst6|inst37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst37~1_combout\ = (!\inst6|inst38~combout\ & ((\inst6|inst54~combout\) # (\inst6|inst37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst54~combout\,
	datac => \inst6|inst38~combout\,
	datad => \inst6|inst37~1_combout\,
	combout => \inst6|inst37~1_combout\);

-- Location: LCCOMB_X106_Y13_N20
\inst6|inst37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst37~3_combout\ = \inst6|inst37~1_combout\ $ (!\inst6|inst37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst37~1_combout\,
	datad => \inst6|inst37~2_combout\,
	combout => \inst6|inst37~3_combout\);

-- Location: LCCOMB_X106_Y13_N4
\inst6|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst37~0_combout\ = (\inst6|inst38~combout\) # (\inst6|inst54~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst38~combout\,
	datac => \inst6|inst54~combout\,
	combout => \inst6|inst37~0_combout\);

-- Location: FF_X106_Y13_N21
\inst6|inst37~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst6|inst37~3_combout\,
	clrn => \inst6|ALT_INV_inst37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst37~_emulated_q\);

-- Location: LCCOMB_X106_Y13_N18
\inst6|inst37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst37~2_combout\ = (!\inst6|inst38~combout\ & ((\inst6|inst54~combout\) # (\inst6|inst37~1_combout\ $ (\inst6|inst37~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst54~combout\,
	datab => \inst6|inst37~1_combout\,
	datac => \inst6|inst38~combout\,
	datad => \inst6|inst37~_emulated_q\,
	combout => \inst6|inst37~2_combout\);

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

-- Location: LCCOMB_X103_Y13_N2
\inst6|inst40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst40~combout\ = (\MCLEAR~input_o\) # ((!\A[1]~input_o\ & (\JUMP~input_o\ & !\inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \JUMP~input_o\,
	datac => \MCLEAR~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst40~combout\);

-- Location: LCCOMB_X103_Y13_N28
\inst6|inst55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst55~combout\ = (\JUMP~input_o\ & (\A[1]~input_o\ & !\inst1|out_key~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JUMP~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst55~combout\);

-- Location: LCCOMB_X103_Y13_N20
\inst6|inst39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst39~1_combout\ = (!\inst6|inst40~combout\ & ((\inst6|inst55~combout\) # (\inst6|inst39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst40~combout\,
	datac => \inst6|inst55~combout\,
	datad => \inst6|inst39~1_combout\,
	combout => \inst6|inst39~1_combout\);

-- Location: LCCOMB_X103_Y13_N0
\inst6|inst39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst39~3_combout\ = \inst6|inst39~1_combout\ $ (\inst6|inst37~2_combout\ $ (\inst6|inst39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst39~1_combout\,
	datac => \inst6|inst37~2_combout\,
	datad => \inst6|inst39~2_combout\,
	combout => \inst6|inst39~3_combout\);

-- Location: LCCOMB_X103_Y13_N10
\inst6|inst39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst39~0_combout\ = (\inst6|inst40~combout\) # (\inst6|inst55~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst40~combout\,
	datad => \inst6|inst55~combout\,
	combout => \inst6|inst39~0_combout\);

-- Location: FF_X103_Y13_N1
\inst6|inst39~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst6|inst39~3_combout\,
	clrn => \inst6|ALT_INV_inst39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst39~_emulated_q\);

-- Location: LCCOMB_X103_Y13_N6
\inst6|inst39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst39~2_combout\ = (!\inst6|inst40~combout\ & ((\inst6|inst55~combout\) # (\inst6|inst39~1_combout\ $ (\inst6|inst39~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst39~1_combout\,
	datab => \inst6|inst40~combout\,
	datac => \inst6|inst55~combout\,
	datad => \inst6|inst39~_emulated_q\,
	combout => \inst6|inst39~2_combout\);

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

-- Location: LCCOMB_X106_Y13_N10
\inst6|inst42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst42~combout\ = (\MCLEAR~input_o\) # ((\JUMP~input_o\ & (!\A[2]~input_o\ & !\inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP~input_o\,
	datab => \A[2]~input_o\,
	datac => \MCLEAR~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst42~combout\);

-- Location: LCCOMB_X106_Y13_N24
\inst6|inst58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst58~combout\ = (\JUMP~input_o\ & (\A[2]~input_o\ & !\inst1|out_key~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP~input_o\,
	datab => \A[2]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst58~combout\);

-- Location: LCCOMB_X106_Y13_N2
\inst6|inst41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst41~1_combout\ = (!\inst6|inst42~combout\ & ((\inst6|inst58~combout\) # (\inst6|inst41~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst42~combout\,
	datac => \inst6|inst58~combout\,
	datad => \inst6|inst41~1_combout\,
	combout => \inst6|inst41~1_combout\);

-- Location: LCCOMB_X106_Y13_N12
\inst6|inst41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst41~3_combout\ = \inst6|inst41~1_combout\ $ (\inst6|inst41~2_combout\ $ (((\inst6|inst39~2_combout\ & \inst6|inst37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst39~2_combout\,
	datab => \inst6|inst41~1_combout\,
	datac => \inst6|inst41~2_combout\,
	datad => \inst6|inst37~2_combout\,
	combout => \inst6|inst41~3_combout\);

-- Location: LCCOMB_X106_Y13_N22
\inst6|inst41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst41~0_combout\ = (\inst6|inst58~combout\) # (\inst6|inst42~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst58~combout\,
	datad => \inst6|inst42~combout\,
	combout => \inst6|inst41~0_combout\);

-- Location: FF_X106_Y13_N13
\inst6|inst41~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst6|inst41~3_combout\,
	clrn => \inst6|ALT_INV_inst41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst41~_emulated_q\);

-- Location: LCCOMB_X106_Y13_N30
\inst6|inst41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst41~2_combout\ = (!\inst6|inst42~combout\ & ((\inst6|inst58~combout\) # (\inst6|inst41~1_combout\ $ (\inst6|inst41~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst42~combout\,
	datab => \inst6|inst41~1_combout\,
	datac => \inst6|inst58~combout\,
	datad => \inst6|inst41~_emulated_q\,
	combout => \inst6|inst41~2_combout\);

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

-- Location: LCCOMB_X107_Y13_N8
\inst6|inst44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst44~combout\ = (\MCLEAR~input_o\) # ((\JUMP~input_o\ & (!\inst1|out_key~2_combout\ & !\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP~input_o\,
	datab => \MCLEAR~input_o\,
	datac => \inst1|out_key~2_combout\,
	datad => \A[3]~input_o\,
	combout => \inst6|inst44~combout\);

-- Location: LCCOMB_X107_Y13_N6
\inst6|inst60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst60~combout\ = (\JUMP~input_o\ & (\A[3]~input_o\ & !\inst1|out_key~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP~input_o\,
	datab => \A[3]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst60~combout\);

-- Location: LCCOMB_X107_Y13_N2
\inst6|inst43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst43~1_combout\ = (!\inst6|inst44~combout\ & ((\inst6|inst60~combout\) # (\inst6|inst43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst44~combout\,
	datac => \inst6|inst60~combout\,
	datad => \inst6|inst43~1_combout\,
	combout => \inst6|inst43~1_combout\);

-- Location: LCCOMB_X108_Y13_N30
\inst6|inst70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst70~combout\ = (\inst6|inst39~2_combout\ & \inst6|inst37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst39~2_combout\,
	datad => \inst6|inst37~2_combout\,
	combout => \inst6|inst70~combout\);

-- Location: LCCOMB_X108_Y13_N24
\inst6|inst43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst43~3_combout\ = \inst6|inst43~1_combout\ $ (\inst6|inst43~2_combout\ $ (((\inst6|inst70~combout\ & \inst6|inst41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst43~1_combout\,
	datab => \inst6|inst70~combout\,
	datac => \inst6|inst41~2_combout\,
	datad => \inst6|inst43~2_combout\,
	combout => \inst6|inst43~3_combout\);

-- Location: LCCOMB_X107_Y13_N20
\inst6|inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst43~0_combout\ = (\inst6|inst44~combout\) # (\inst6|inst60~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst44~combout\,
	datac => \inst6|inst60~combout\,
	combout => \inst6|inst43~0_combout\);

-- Location: FF_X108_Y13_N25
\inst6|inst43~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst6|inst43~3_combout\,
	clrn => \inst6|ALT_INV_inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst43~_emulated_q\);

-- Location: LCCOMB_X107_Y13_N30
\inst6|inst43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst43~2_combout\ = (!\inst6|inst44~combout\ & ((\inst6|inst60~combout\) # (\inst6|inst43~1_combout\ $ (\inst6|inst43~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst44~combout\,
	datab => \inst6|inst43~1_combout\,
	datac => \inst6|inst60~combout\,
	datad => \inst6|inst43~_emulated_q\,
	combout => \inst6|inst43~2_combout\);

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

-- Location: LCCOMB_X107_Y13_N24
\inst6|inst46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst46~combout\ = (\MCLEAR~input_o\) # ((\JUMP~input_o\ & (!\A[4]~input_o\ & !\inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JUMP~input_o\,
	datab => \MCLEAR~input_o\,
	datac => \A[4]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst46~combout\);

-- Location: LCCOMB_X107_Y13_N26
\inst6|inst62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst62~combout\ = (!\inst1|out_key~2_combout\ & (\A[4]~input_o\ & \JUMP~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|out_key~2_combout\,
	datac => \A[4]~input_o\,
	datad => \JUMP~input_o\,
	combout => \inst6|inst62~combout\);

-- Location: LCCOMB_X107_Y13_N28
\inst6|inst45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst45~1_combout\ = (!\inst6|inst46~combout\ & ((\inst6|inst62~combout\) # (\inst6|inst45~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst46~combout\,
	datac => \inst6|inst62~combout\,
	datad => \inst6|inst45~1_combout\,
	combout => \inst6|inst45~1_combout\);

-- Location: LCCOMB_X107_Y13_N10
\inst6|inst71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst71~combout\ = (\inst6|inst39~2_combout\ & (\inst6|inst41~2_combout\ & \inst6|inst37~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst39~2_combout\,
	datac => \inst6|inst41~2_combout\,
	datad => \inst6|inst37~2_combout\,
	combout => \inst6|inst71~combout\);

-- Location: LCCOMB_X107_Y13_N12
\inst6|inst45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst45~3_combout\ = \inst6|inst45~1_combout\ $ (\inst6|inst45~2_combout\ $ (((\inst6|inst71~combout\ & \inst6|inst43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst45~1_combout\,
	datab => \inst6|inst71~combout\,
	datac => \inst6|inst45~2_combout\,
	datad => \inst6|inst43~2_combout\,
	combout => \inst6|inst45~3_combout\);

-- Location: LCCOMB_X107_Y13_N4
\inst6|inst45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst45~0_combout\ = (\inst6|inst62~combout\) # (\inst6|inst46~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst62~combout\,
	datac => \inst6|inst46~combout\,
	combout => \inst6|inst45~0_combout\);

-- Location: FF_X107_Y13_N13
\inst6|inst45~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst6|inst45~3_combout\,
	clrn => \inst6|ALT_INV_inst45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst45~_emulated_q\);

-- Location: LCCOMB_X107_Y13_N0
\inst6|inst45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst45~2_combout\ = (!\inst6|inst46~combout\ & ((\inst6|inst62~combout\) # (\inst6|inst45~1_combout\ $ (\inst6|inst45~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst45~1_combout\,
	datab => \inst6|inst62~combout\,
	datac => \inst6|inst46~combout\,
	datad => \inst6|inst45~_emulated_q\,
	combout => \inst6|inst45~2_combout\);

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

-- Location: LCCOMB_X103_Y13_N24
\inst6|inst64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst64~combout\ = (\A[5]~input_o\ & (\JUMP~input_o\ & !\inst1|out_key~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \JUMP~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst64~combout\);

-- Location: LCCOMB_X103_Y13_N30
\inst6|inst48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst48~combout\ = (\MCLEAR~input_o\) # ((\JUMP~input_o\ & (!\A[5]~input_o\ & !\inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \JUMP~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst48~combout\);

-- Location: LCCOMB_X105_Y13_N2
\inst6|inst47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst47~1_combout\ = (!\inst6|inst48~combout\ & ((\inst6|inst64~combout\) # (\inst6|inst47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst48~combout\,
	datac => \inst6|inst64~combout\,
	datad => \inst6|inst47~1_combout\,
	combout => \inst6|inst47~1_combout\);

-- Location: LCCOMB_X106_Y13_N28
\inst6|inst72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst72~combout\ = (\inst6|inst41~2_combout\ & (\inst6|inst43~2_combout\ & (\inst6|inst37~2_combout\ & \inst6|inst39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst41~2_combout\,
	datab => \inst6|inst43~2_combout\,
	datac => \inst6|inst37~2_combout\,
	datad => \inst6|inst39~2_combout\,
	combout => \inst6|inst72~combout\);

-- Location: LCCOMB_X105_Y13_N28
\inst6|inst47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst47~3_combout\ = \inst6|inst47~1_combout\ $ (\inst6|inst47~2_combout\ $ (((\inst6|inst45~2_combout\ & \inst6|inst72~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst45~2_combout\,
	datab => \inst6|inst72~combout\,
	datac => \inst6|inst47~1_combout\,
	datad => \inst6|inst47~2_combout\,
	combout => \inst6|inst47~3_combout\);

-- Location: LCCOMB_X105_Y13_N26
\inst6|inst47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst47~0_combout\ = (\inst6|inst64~combout\) # (\inst6|inst48~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst64~combout\,
	datad => \inst6|inst48~combout\,
	combout => \inst6|inst47~0_combout\);

-- Location: FF_X105_Y13_N29
\inst6|inst47~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst6|inst47~3_combout\,
	clrn => \inst6|ALT_INV_inst47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst47~_emulated_q\);

-- Location: LCCOMB_X103_Y13_N16
\inst6|inst47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst47~2_combout\ = (!\inst6|inst48~combout\ & ((\inst6|inst64~combout\) # (\inst6|inst47~1_combout\ $ (\inst6|inst47~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst64~combout\,
	datab => \inst6|inst47~1_combout\,
	datac => \inst6|inst48~combout\,
	datad => \inst6|inst47~_emulated_q\,
	combout => \inst6|inst47~2_combout\);

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

-- Location: LCCOMB_X105_Y13_N24
\inst6|inst50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst50~combout\ = (\MCLEAR~input_o\) # ((!\A[6]~input_o\ & (\JUMP~input_o\ & !\inst1|out_key~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \MCLEAR~input_o\,
	datac => \JUMP~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst50~combout\);

-- Location: LCCOMB_X105_Y13_N30
\inst6|inst66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst66~combout\ = (\A[6]~input_o\ & (\JUMP~input_o\ & !\inst1|out_key~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \JUMP~input_o\,
	datad => \inst1|out_key~2_combout\,
	combout => \inst6|inst66~combout\);

-- Location: LCCOMB_X105_Y13_N12
\inst6|inst49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst49~1_combout\ = (!\inst6|inst50~combout\ & ((\inst6|inst66~combout\) # (\inst6|inst49~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst50~combout\,
	datac => \inst6|inst66~combout\,
	datad => \inst6|inst49~1_combout\,
	combout => \inst6|inst49~1_combout\);

-- Location: LCCOMB_X106_Y13_N6
\inst6|inst73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst73~combout\ = (\inst6|inst45~2_combout\ & \inst6|inst72~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst45~2_combout\,
	datad => \inst6|inst72~combout\,
	combout => \inst6|inst73~combout\);

-- Location: LCCOMB_X105_Y13_N10
\inst6|inst49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst49~3_combout\ = \inst6|inst49~1_combout\ $ (\inst6|inst49~2_combout\ $ (((\inst6|inst47~2_combout\ & \inst6|inst73~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst49~1_combout\,
	datab => \inst6|inst47~2_combout\,
	datac => \inst6|inst73~combout\,
	datad => \inst6|inst49~2_combout\,
	combout => \inst6|inst49~3_combout\);

-- Location: LCCOMB_X105_Y13_N20
\inst6|inst49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst49~0_combout\ = (\inst6|inst50~combout\) # (\inst6|inst66~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst50~combout\,
	datac => \inst6|inst66~combout\,
	combout => \inst6|inst49~0_combout\);

-- Location: FF_X105_Y13_N11
\inst6|inst49~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst6|inst49~3_combout\,
	clrn => \inst6|ALT_INV_inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst49~_emulated_q\);

-- Location: LCCOMB_X105_Y13_N8
\inst6|inst49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst49~2_combout\ = (!\inst6|inst50~combout\ & ((\inst6|inst66~combout\) # (\inst6|inst49~1_combout\ $ (\inst6|inst49~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst49~1_combout\,
	datab => \inst6|inst50~combout\,
	datac => \inst6|inst66~combout\,
	datad => \inst6|inst49~_emulated_q\,
	combout => \inst6|inst49~2_combout\);

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

-- Location: LCCOMB_X103_Y13_N8
\inst6|inst68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst68~combout\ = (\JUMP~input_o\ & (!\inst1|out_key~2_combout\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JUMP~input_o\,
	datac => \inst1|out_key~2_combout\,
	datad => \A[7]~input_o\,
	combout => \inst6|inst68~combout\);

-- Location: LCCOMB_X103_Y13_N26
\inst6|inst52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst52~combout\ = (\MCLEAR~input_o\) # ((\JUMP~input_o\ & (!\inst1|out_key~2_combout\ & !\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \JUMP~input_o\,
	datac => \inst1|out_key~2_combout\,
	datad => \A[7]~input_o\,
	combout => \inst6|inst52~combout\);

-- Location: LCCOMB_X103_Y13_N14
\inst6|inst51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst51~1_combout\ = (!\inst6|inst52~combout\ & ((\inst6|inst68~combout\) # (\inst6|inst51~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst68~combout\,
	datab => \inst6|inst52~combout\,
	datac => \inst6|inst51~1_combout\,
	combout => \inst6|inst51~1_combout\);

-- Location: LCCOMB_X103_Y13_N4
\inst6|inst51~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst51~7_combout\ = (\inst6|inst45~2_combout\ & (\inst6|inst47~2_combout\ & \inst6|inst49~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst45~2_combout\,
	datab => \inst6|inst47~2_combout\,
	datac => \inst6|inst49~2_combout\,
	combout => \inst6|inst51~7_combout\);

-- Location: LCCOMB_X103_Y13_N18
\inst6|inst51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst51~3_combout\ = \inst6|inst51~1_combout\ $ (\inst6|inst51~2_combout\ $ (((\inst6|inst72~combout\ & \inst6|inst51~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst72~combout\,
	datab => \inst6|inst51~1_combout\,
	datac => \inst6|inst51~7_combout\,
	datad => \inst6|inst51~2_combout\,
	combout => \inst6|inst51~3_combout\);

-- Location: LCCOMB_X103_Y13_N22
\inst6|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst51~0_combout\ = (\inst6|inst52~combout\) # (\inst6|inst68~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst52~combout\,
	datad => \inst6|inst68~combout\,
	combout => \inst6|inst51~0_combout\);

-- Location: FF_X103_Y13_N19
\inst6|inst51~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_out_key~2clkctrl_outclk\,
	d => \inst6|inst51~3_combout\,
	clrn => \inst6|ALT_INV_inst51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst51~_emulated_q\);

-- Location: LCCOMB_X103_Y13_N12
\inst6|inst51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst51~2_combout\ = (!\inst6|inst52~combout\ & ((\inst6|inst68~combout\) # (\inst6|inst51~1_combout\ $ (\inst6|inst51~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst68~combout\,
	datab => \inst6|inst52~combout\,
	datac => \inst6|inst51~1_combout\,
	datad => \inst6|inst51~_emulated_q\,
	combout => \inst6|inst51~2_combout\);

-- Location: M9K_X104_Y13_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020006001188009302184086302240089001180040400000000000000000C0818C106202244046005",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../Desktop/Mem01.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom01:inst|altsyncram:altsyncram_component|altsyncram_mps3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst1|out_key~2clkctrl_outclk\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X110_Y24_N4
\inst3|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst17~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(11) & ((\inst|altsyncram_component|auto_generated|q_a\(8) & ((!\inst|altsyncram_component|auto_generated|q_a\(9)))) # (!\inst|altsyncram_component|auto_generated|q_a\(8) & 
-- (!\inst|altsyncram_component|auto_generated|q_a\(10))))) # (!\inst|altsyncram_component|auto_generated|q_a\(11) & ((\inst|altsyncram_component|auto_generated|q_a\(9) $ (!\inst|altsyncram_component|auto_generated|q_a\(8))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst3|inst17~0_combout\);

-- Location: LCCOMB_X110_Y24_N22
\inst3|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst23~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(11) & (((!\inst|altsyncram_component|auto_generated|q_a\(9) & \inst|altsyncram_component|auto_generated|q_a\(8))) # (!\inst|altsyncram_component|auto_generated|q_a\(10)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(11) & ((\inst|altsyncram_component|auto_generated|q_a\(10)) # ((\inst|altsyncram_component|auto_generated|q_a\(8)) # (!\inst|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst3|inst23~0_combout\);

-- Location: LCCOMB_X110_Y24_N0
\inst3|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst31~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(9) & ((\inst|altsyncram_component|auto_generated|q_a\(10) & ((!\inst|altsyncram_component|auto_generated|q_a\(8)))) # (!\inst|altsyncram_component|auto_generated|q_a\(10) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(8)) # (!\inst|altsyncram_component|auto_generated|q_a\(11)))))) # (!\inst|altsyncram_component|auto_generated|q_a\(9) & ((\inst|altsyncram_component|auto_generated|q_a\(11)) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(10) $ (!\inst|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst3|inst31~0_combout\);

-- Location: LCCOMB_X110_Y24_N10
\inst3|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst37~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(9) & ((\inst|altsyncram_component|auto_generated|q_a\(11)) # ((!\inst|altsyncram_component|auto_generated|q_a\(8))))) # (!\inst|altsyncram_component|auto_generated|q_a\(9) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(10) & (\inst|altsyncram_component|auto_generated|q_a\(11))) # (!\inst|altsyncram_component|auto_generated|q_a\(10) & ((!\inst|altsyncram_component|auto_generated|q_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst3|inst37~0_combout\);

-- Location: LCCOMB_X110_Y24_N12
\inst3|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst51~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(8) & ((\inst|altsyncram_component|auto_generated|q_a\(11)) # (\inst|altsyncram_component|auto_generated|q_a\(10) $ (\inst|altsyncram_component|auto_generated|q_a\(9))))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(8) & ((\inst|altsyncram_component|auto_generated|q_a\(9)) # (\inst|altsyncram_component|auto_generated|q_a\(11) $ (\inst|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst3|inst51~0_combout\);

-- Location: LCCOMB_X110_Y24_N2
\inst3|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst44~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(10) & ((\inst|altsyncram_component|auto_generated|q_a\(11) $ (!\inst|altsyncram_component|auto_generated|q_a\(9))) # (!\inst|altsyncram_component|auto_generated|q_a\(8)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(10) & ((\inst|altsyncram_component|auto_generated|q_a\(11)) # ((!\inst|altsyncram_component|auto_generated|q_a\(9) & !\inst|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst3|inst44~0_combout\);

-- Location: LCCOMB_X109_Y58_N12
\inst2|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst17~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(15) & ((\inst|altsyncram_component|auto_generated|q_a\(12) & ((!\inst|altsyncram_component|auto_generated|q_a\(13)))) # (!\inst|altsyncram_component|auto_generated|q_a\(12) & 
-- (!\inst|altsyncram_component|auto_generated|q_a\(14))))) # (!\inst|altsyncram_component|auto_generated|q_a\(15) & ((\inst|altsyncram_component|auto_generated|q_a\(12) $ (!\inst|altsyncram_component|auto_generated|q_a\(13))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst17~0_combout\);

-- Location: LCCOMB_X109_Y58_N14
\inst2|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst23~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(15) & (((\inst|altsyncram_component|auto_generated|q_a\(12) & !\inst|altsyncram_component|auto_generated|q_a\(13))) # (!\inst|altsyncram_component|auto_generated|q_a\(14)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(15) & ((\inst|altsyncram_component|auto_generated|q_a\(14)) # ((\inst|altsyncram_component|auto_generated|q_a\(12)) # (!\inst|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst23~0_combout\);

-- Location: LCCOMB_X109_Y58_N24
\inst2|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst31~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & ((\inst|altsyncram_component|auto_generated|q_a\(14) & ((!\inst|altsyncram_component|auto_generated|q_a\(12)))) # (!\inst|altsyncram_component|auto_generated|q_a\(14) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(12)) # (!\inst|altsyncram_component|auto_generated|q_a\(15)))))) # (!\inst|altsyncram_component|auto_generated|q_a\(13) & ((\inst|altsyncram_component|auto_generated|q_a\(15)) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(14) $ (!\inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst31~0_combout\);

-- Location: LCCOMB_X109_Y58_N30
\inst2|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst37~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & ((\inst|altsyncram_component|auto_generated|q_a\(15)) # ((!\inst|altsyncram_component|auto_generated|q_a\(12))))) # (!\inst|altsyncram_component|auto_generated|q_a\(13) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(14) & (\inst|altsyncram_component|auto_generated|q_a\(15))) # (!\inst|altsyncram_component|auto_generated|q_a\(14) & ((!\inst|altsyncram_component|auto_generated|q_a\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst37~0_combout\);

-- Location: LCCOMB_X109_Y58_N0
\inst2|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst44~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(14) & ((\inst|altsyncram_component|auto_generated|q_a\(15) $ (!\inst|altsyncram_component|auto_generated|q_a\(13))) # (!\inst|altsyncram_component|auto_generated|q_a\(12)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(14) & ((\inst|altsyncram_component|auto_generated|q_a\(15)) # ((!\inst|altsyncram_component|auto_generated|q_a\(12) & !\inst|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst44~0_combout\);

-- Location: LCCOMB_X109_Y58_N2
\inst2|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst51~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(12) & ((\inst|altsyncram_component|auto_generated|q_a\(15)) # (\inst|altsyncram_component|auto_generated|q_a\(14) $ (\inst|altsyncram_component|auto_generated|q_a\(13))))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(12) & ((\inst|altsyncram_component|auto_generated|q_a\(13)) # (\inst|altsyncram_component|auto_generated|q_a\(15) $ (\inst|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst51~0_combout\);

-- Location: LCCOMB_X110_Y17_N4
\inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst17~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(7) & ((\inst|altsyncram_component|auto_generated|q_a\(4) & ((!\inst|altsyncram_component|auto_generated|q_a\(5)))) # (!\inst|altsyncram_component|auto_generated|q_a\(4) & 
-- (!\inst|altsyncram_component|auto_generated|q_a\(6))))) # (!\inst|altsyncram_component|auto_generated|q_a\(7) & ((\inst|altsyncram_component|auto_generated|q_a\(5) $ (!\inst|altsyncram_component|auto_generated|q_a\(4))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst4|inst17~0_combout\);

-- Location: LCCOMB_X110_Y17_N22
\inst4|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst44~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(6) & ((\inst|altsyncram_component|auto_generated|q_a\(7) $ (!\inst|altsyncram_component|auto_generated|q_a\(5))) # (!\inst|altsyncram_component|auto_generated|q_a\(4)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(6) & ((\inst|altsyncram_component|auto_generated|q_a\(7)) # ((!\inst|altsyncram_component|auto_generated|q_a\(5) & !\inst|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst4|inst44~0_combout\);

-- Location: LCCOMB_X110_Y17_N0
\inst4|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst23~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(7) & (((!\inst|altsyncram_component|auto_generated|q_a\(5) & \inst|altsyncram_component|auto_generated|q_a\(4))) # (!\inst|altsyncram_component|auto_generated|q_a\(6)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(7) & ((\inst|altsyncram_component|auto_generated|q_a\(6)) # ((\inst|altsyncram_component|auto_generated|q_a\(4)) # (!\inst|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst4|inst23~0_combout\);

-- Location: LCCOMB_X110_Y17_N10
\inst4|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst31~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|altsyncram_component|auto_generated|q_a\(6) & ((!\inst|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst|altsyncram_component|auto_generated|q_a\(6) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(4)) # (!\inst|altsyncram_component|auto_generated|q_a\(7)))))) # (!\inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|altsyncram_component|auto_generated|q_a\(7)) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(6) $ (!\inst|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst4|inst31~0_combout\);

-- Location: LCCOMB_X110_Y17_N24
\inst4|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst37~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|altsyncram_component|auto_generated|q_a\(7)) # ((!\inst|altsyncram_component|auto_generated|q_a\(4))))) # (!\inst|altsyncram_component|auto_generated|q_a\(5) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(6) & (\inst|altsyncram_component|auto_generated|q_a\(7))) # (!\inst|altsyncram_component|auto_generated|q_a\(6) & ((!\inst|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst4|inst37~0_combout\);

-- Location: LCCOMB_X110_Y17_N14
\inst4|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst51~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(4) & ((\inst|altsyncram_component|auto_generated|q_a\(7)) # (\inst|altsyncram_component|auto_generated|q_a\(6) $ (\inst|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(4) & ((\inst|altsyncram_component|auto_generated|q_a\(5)) # (\inst|altsyncram_component|auto_generated|q_a\(7) $ (\inst|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst4|inst51~0_combout\);

-- Location: LCCOMB_X108_Y10_N12
\inst5|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst23~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(3) & (((!\inst|altsyncram_component|auto_generated|q_a\(1) & \inst|altsyncram_component|auto_generated|q_a\(0))) # (!\inst|altsyncram_component|auto_generated|q_a\(2)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(3) & (((\inst|altsyncram_component|auto_generated|q_a\(2)) # (\inst|altsyncram_component|auto_generated|q_a\(0))) # (!\inst|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst5|inst23~0_combout\);

-- Location: LCCOMB_X108_Y10_N14
\inst5|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst31~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|altsyncram_component|auto_generated|q_a\(2) & ((!\inst|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(0)) # (!\inst|altsyncram_component|auto_generated|q_a\(3)))))) # (!\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|altsyncram_component|auto_generated|q_a\(3)) # 
-- (\inst|altsyncram_component|auto_generated|q_a\(2) $ (!\inst|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst5|inst31~0_combout\);

-- Location: LCCOMB_X108_Y10_N24
\inst5|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst37~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|altsyncram_component|auto_generated|q_a\(3)) # ((!\inst|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(2) & (\inst|altsyncram_component|auto_generated|q_a\(3))) # (!\inst|altsyncram_component|auto_generated|q_a\(2) & ((!\inst|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst5|inst37~0_combout\);

-- Location: LCCOMB_X108_Y10_N26
\inst5|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst51~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(0) & ((\inst|altsyncram_component|auto_generated|q_a\(3)) # (\inst|altsyncram_component|auto_generated|q_a\(1) $ (\inst|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(0) & ((\inst|altsyncram_component|auto_generated|q_a\(1)) # (\inst|altsyncram_component|auto_generated|q_a\(3) $ (\inst|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst5|inst51~0_combout\);

-- Location: LCCOMB_X108_Y10_N20
\inst5|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst17~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|altsyncram_component|auto_generated|q_a\(0) & (!\inst|altsyncram_component|auto_generated|q_a\(3))) # (!\inst|altsyncram_component|auto_generated|q_a\(0) & 
-- ((!\inst|altsyncram_component|auto_generated|q_a\(2)))))) # (!\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|altsyncram_component|auto_generated|q_a\(3) $ (!\inst|altsyncram_component|auto_generated|q_a\(0))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst5|inst17~0_combout\);

-- Location: LCCOMB_X108_Y10_N10
\inst5|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst44~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|altsyncram_component|auto_generated|q_a\(3)) # ((\inst|altsyncram_component|auto_generated|q_a\(2) & !\inst|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|altsyncram_component|auto_generated|q_a\(3) $ (\inst|altsyncram_component|auto_generated|q_a\(2))) # (!\inst|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst5|inst44~0_combout\);

-- Location: LCCOMB_X109_Y58_N28
\inst2|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst9~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(15) & ((\inst|altsyncram_component|auto_generated|q_a\(14) $ (!\inst|altsyncram_component|auto_generated|q_a\(13))) # (!\inst|altsyncram_component|auto_generated|q_a\(12)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(15) & ((\inst|altsyncram_component|auto_generated|q_a\(13)) # (\inst|altsyncram_component|auto_generated|q_a\(14) $ (!\inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst2|inst9~0_combout\);

-- Location: LCCOMB_X110_Y24_N24
\inst3|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(11) & ((\inst|altsyncram_component|auto_generated|q_a\(10) $ (!\inst|altsyncram_component|auto_generated|q_a\(9))) # (!\inst|altsyncram_component|auto_generated|q_a\(8)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(11) & ((\inst|altsyncram_component|auto_generated|q_a\(9)) # (\inst|altsyncram_component|auto_generated|q_a\(10) $ (!\inst|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst3|inst9~0_combout\);

-- Location: LCCOMB_X110_Y17_N12
\inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst9~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(7) & ((\inst|altsyncram_component|auto_generated|q_a\(6) $ (!\inst|altsyncram_component|auto_generated|q_a\(5))) # (!\inst|altsyncram_component|auto_generated|q_a\(4)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(7) & ((\inst|altsyncram_component|auto_generated|q_a\(5)) # (\inst|altsyncram_component|auto_generated|q_a\(6) $ (!\inst|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst4|inst9~0_combout\);

-- Location: LCCOMB_X108_Y10_N4
\inst5|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst9~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(3) & ((\inst|altsyncram_component|auto_generated|q_a\(1) $ (!\inst|altsyncram_component|auto_generated|q_a\(2))) # (!\inst|altsyncram_component|auto_generated|q_a\(0)))) # 
-- (!\inst|altsyncram_component|auto_generated|q_a\(3) & ((\inst|altsyncram_component|auto_generated|q_a\(1)) # (\inst|altsyncram_component|auto_generated|q_a\(2) $ (!\inst|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst5|inst9~0_combout\);

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

ww_b3 <= \b3~output_o\;

ww_f3 <= \f3~output_o\;

ww_c3 <= \c3~output_o\;

ww_d3 <= \d3~output_o\;

ww_e3 <= \e3~output_o\;

ww_g3 <= \g3~output_o\;

ww_c4 <= \c4~output_o\;

ww_d4 <= \d4~output_o\;

ww_e4 <= \e4~output_o\;

ww_g4 <= \g4~output_o\;

ww_b4 <= \b4~output_o\;

ww_f4 <= \f4~output_o\;

ww_a11 <= \a11~output_o\;

ww_a21 <= \a21~output_o\;

ww_a31 <= \a31~output_o\;

ww_a41 <= \a41~output_o\;
END structure;


