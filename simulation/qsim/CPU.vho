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

-- DATE "10/13/2022 23:27:33"

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

ENTITY 	CPU IS
    PORT (
	MasterCLEAR : OUT std_logic;
	MCLEAR : IN std_logic;
	CLK_in : IN std_logic;
	JUMP_UC : OUT std_logic;
	ResetREG : OUT std_logic;
	ULA0 : OUT std_logic;
	ULA1 : OUT std_logic;
	contador : OUT std_logic_vector(7 DOWNTO 0);
	MEM : OUT std_logic_vector(15 DOWNTO 0);
	RgIN : OUT std_logic_vector(1 DOWNTO 0);
	RgTO : OUT std_logic_vector(1 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- MasterCLEAR	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMP_UC	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResetREG	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA0	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA1	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[15]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[14]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[13]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[12]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[10]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[9]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[7]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[5]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[2]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RgIN[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RgIN[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RgTO[1]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RgTO[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLEAR	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_in	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MasterCLEAR : std_logic;
SIGNAL ww_MCLEAR : std_logic;
SIGNAL ww_CLK_in : std_logic;
SIGNAL ww_JUMP_UC : std_logic;
SIGNAL ww_ResetREG : std_logic;
SIGNAL ww_ULA0 : std_logic;
SIGNAL ww_ULA1 : std_logic;
SIGNAL ww_contador : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MEM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RgIN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RgTO : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterCLEAR~output_o\ : std_logic;
SIGNAL \JUMP_UC~output_o\ : std_logic;
SIGNAL \ResetREG~output_o\ : std_logic;
SIGNAL \ULA0~output_o\ : std_logic;
SIGNAL \ULA1~output_o\ : std_logic;
SIGNAL \contador[7]~output_o\ : std_logic;
SIGNAL \contador[6]~output_o\ : std_logic;
SIGNAL \contador[5]~output_o\ : std_logic;
SIGNAL \contador[4]~output_o\ : std_logic;
SIGNAL \contador[3]~output_o\ : std_logic;
SIGNAL \contador[2]~output_o\ : std_logic;
SIGNAL \contador[1]~output_o\ : std_logic;
SIGNAL \contador[0]~output_o\ : std_logic;
SIGNAL \MEM[15]~output_o\ : std_logic;
SIGNAL \MEM[14]~output_o\ : std_logic;
SIGNAL \MEM[13]~output_o\ : std_logic;
SIGNAL \MEM[12]~output_o\ : std_logic;
SIGNAL \MEM[11]~output_o\ : std_logic;
SIGNAL \MEM[10]~output_o\ : std_logic;
SIGNAL \MEM[9]~output_o\ : std_logic;
SIGNAL \MEM[8]~output_o\ : std_logic;
SIGNAL \MEM[7]~output_o\ : std_logic;
SIGNAL \MEM[6]~output_o\ : std_logic;
SIGNAL \MEM[5]~output_o\ : std_logic;
SIGNAL \MEM[4]~output_o\ : std_logic;
SIGNAL \MEM[3]~output_o\ : std_logic;
SIGNAL \MEM[2]~output_o\ : std_logic;
SIGNAL \MEM[1]~output_o\ : std_logic;
SIGNAL \MEM[0]~output_o\ : std_logic;
SIGNAL \RgIN[1]~output_o\ : std_logic;
SIGNAL \RgIN[0]~output_o\ : std_logic;
SIGNAL \RgTO[1]~output_o\ : std_logic;
SIGNAL \RgTO[0]~output_o\ : std_logic;
SIGNAL \MCLEAR~input_o\ : std_logic;
SIGNAL \CLK_in~input_o\ : std_logic;
SIGNAL \CLK_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst19~combout\ : std_logic;
SIGNAL \inst|inst30~0_combout\ : std_logic;
SIGNAL \inst|inst31~0_combout\ : std_logic;
SIGNAL \inst|inst31~1_combout\ : std_logic;
SIGNAL \inst|inst31~q\ : std_logic;
SIGNAL \inst|inst40~combout\ : std_logic;
SIGNAL \inst|inst32~0_combout\ : std_logic;
SIGNAL \inst|inst32~q\ : std_logic;
SIGNAL \inst|inst33~0_combout\ : std_logic;
SIGNAL \inst|inst33~q\ : std_logic;
SIGNAL \inst|inst53~combout\ : std_logic;
SIGNAL \inst|inst30~q\ : std_logic;
SIGNAL \inst|inst25~combout\ : std_logic;
SIGNAL \inst|inst44~combout\ : std_logic;
SIGNAL \inst|inst11~1_combout\ : std_logic;
SIGNAL \inst|inst11~3_combout\ : std_logic;
SIGNAL \inst|inst11~0_combout\ : std_logic;
SIGNAL \inst|inst11~_emulated_q\ : std_logic;
SIGNAL \inst|inst11~2_combout\ : std_logic;
SIGNAL \inst|inst24~combout\ : std_logic;
SIGNAL \inst|inst18~combout\ : std_logic;
SIGNAL \inst|inst10~1_combout\ : std_logic;
SIGNAL \inst|inst10~3_combout\ : std_logic;
SIGNAL \inst|inst10~0_combout\ : std_logic;
SIGNAL \inst|inst10~_emulated_q\ : std_logic;
SIGNAL \inst|inst10~2_combout\ : std_logic;
SIGNAL \inst|inst23~combout\ : std_logic;
SIGNAL \inst|inst48~combout\ : std_logic;
SIGNAL \inst|inst9~1_combout\ : std_logic;
SIGNAL \inst|inst9~3_combout\ : std_logic;
SIGNAL \inst|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst9~_emulated_q\ : std_logic;
SIGNAL \inst|inst9~2_combout\ : std_logic;
SIGNAL \inst|inst6~combout\ : std_logic;
SIGNAL \inst|inst4~combout\ : std_logic;
SIGNAL \inst|inst47~1_combout\ : std_logic;
SIGNAL \inst|inst47~3_combout\ : std_logic;
SIGNAL \inst|inst47~0_combout\ : std_logic;
SIGNAL \inst|inst47~_emulated_q\ : std_logic;
SIGNAL \inst|inst47~2_combout\ : std_logic;
SIGNAL \inst23|inst3|inst4~combout\ : std_logic;
SIGNAL \inst23|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst1~0_combout\ : std_logic;
SIGNAL \inst21|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst10~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst11~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst53~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

MasterCLEAR <= ww_MasterCLEAR;
ww_MCLEAR <= MCLEAR;
ww_CLK_in <= CLK_in;
JUMP_UC <= ww_JUMP_UC;
ResetREG <= ww_ResetREG;
ULA0 <= ww_ULA0;
ULA1 <= ww_ULA1;
contador <= ww_contador;
MEM <= ww_MEM;
RgIN <= ww_RgIN;
RgTO <= ww_RgTO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|inst33~q\ & \inst|inst32~q\ & \inst|inst31~q\ & \inst|inst30~q\ & \inst|inst11~2_combout\ & \inst|inst10~2_combout\ & \inst|inst9~2_combout\ & \inst|inst47~2_combout\);

\inst21|inst|altsyncram_component|auto_generated|q_a\(0) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst21|inst|altsyncram_component|auto_generated|q_a\(1) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst21|inst|altsyncram_component|auto_generated|q_a\(2) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst21|inst|altsyncram_component|auto_generated|q_a\(3) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst21|inst|altsyncram_component|auto_generated|q_a\(4) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst21|inst|altsyncram_component|auto_generated|q_a\(5) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst21|inst|altsyncram_component|auto_generated|q_a\(6) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst21|inst|altsyncram_component|auto_generated|q_a\(7) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst21|inst|altsyncram_component|auto_generated|q_a\(8) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst21|inst|altsyncram_component|auto_generated|q_a\(9) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst21|inst|altsyncram_component|auto_generated|q_a\(10) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst21|inst|altsyncram_component|auto_generated|q_a\(11) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst21|inst|altsyncram_component|auto_generated|q_a\(12) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst21|inst|altsyncram_component|auto_generated|q_a\(13) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst21|inst|altsyncram_component|auto_generated|q_a\(14) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst21|inst|altsyncram_component|auto_generated|q_a\(15) <= \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\CLK_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_in~input_o\);
\inst|ALT_INV_inst47~0_combout\ <= NOT \inst|inst47~0_combout\;
\inst|ALT_INV_inst9~0_combout\ <= NOT \inst|inst9~0_combout\;
\inst|ALT_INV_inst10~0_combout\ <= NOT \inst|inst10~0_combout\;
\inst|ALT_INV_inst11~0_combout\ <= NOT \inst|inst11~0_combout\;
\inst|ALT_INV_inst53~combout\ <= NOT \inst|inst53~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y8_N23
\MasterCLEAR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MCLEAR~input_o\,
	devoe => ww_devoe,
	o => \MasterCLEAR~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\JUMP_UC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|inst3|inst4~combout\,
	devoe => ww_devoe,
	o => \JUMP_UC~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\ResetREG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MCLEAR~input_o\,
	devoe => ww_devoe,
	o => \ResetREG~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\ULA0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|inst~0_combout\,
	devoe => ww_devoe,
	o => \ULA0~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\ULA1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|inst1~0_combout\,
	devoe => ww_devoe,
	o => \ULA1~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\contador[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst33~q\,
	devoe => ww_devoe,
	o => \contador[7]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\contador[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst32~q\,
	devoe => ww_devoe,
	o => \contador[6]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\contador[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst31~q\,
	devoe => ww_devoe,
	o => \contador[5]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\contador[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst30~q\,
	devoe => ww_devoe,
	o => \contador[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\contador[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst11~2_combout\,
	devoe => ww_devoe,
	o => \contador[3]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\contador[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst10~2_combout\,
	devoe => ww_devoe,
	o => \contador[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\contador[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst9~2_combout\,
	devoe => ww_devoe,
	o => \contador[1]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\contador[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst47~2_combout\,
	devoe => ww_devoe,
	o => \contador[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\MEM[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \MEM[15]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\MEM[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \MEM[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\MEM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \MEM[13]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\MEM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \MEM[12]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\MEM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \MEM[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\MEM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \MEM[10]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\MEM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \MEM[9]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\MEM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \MEM[8]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\MEM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \MEM[7]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\MEM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \MEM[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\MEM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \MEM[5]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\MEM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \MEM[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\MEM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \MEM[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\MEM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \MEM[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\MEM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \MEM[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\MEM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \MEM[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\RgIN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \RgIN[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\RgIN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \RgIN[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\RgTO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \RgTO[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\RgTO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|inst|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \RgTO[0]~output_o\);

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

-- Location: LCCOMB_X17_Y32_N0
\inst|inst19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst19~combout\ = (\inst|inst9~2_combout\ & \inst|inst47~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~2_combout\,
	datab => \inst|inst47~2_combout\,
	combout => \inst|inst19~combout\);

-- Location: LCCOMB_X16_Y32_N24
\inst|inst30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30~0_combout\ = \inst|inst30~q\ $ (((\inst|inst19~combout\ & (\inst|inst11~2_combout\ & \inst|inst10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19~combout\,
	datab => \inst|inst11~2_combout\,
	datac => \inst|inst30~q\,
	datad => \inst|inst10~2_combout\,
	combout => \inst|inst30~0_combout\);

-- Location: LCCOMB_X17_Y32_N26
\inst|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31~0_combout\ = (!\inst|inst30~q\) # (!\inst|inst10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst10~2_combout\,
	datad => \inst|inst30~q\,
	combout => \inst|inst31~0_combout\);

-- Location: LCCOMB_X16_Y32_N30
\inst|inst31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31~1_combout\ = \inst|inst31~q\ $ (((\inst|inst11~2_combout\ & (!\inst|inst31~0_combout\ & \inst|inst19~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11~2_combout\,
	datab => \inst|inst31~0_combout\,
	datac => \inst|inst31~q\,
	datad => \inst|inst19~combout\,
	combout => \inst|inst31~1_combout\);

-- Location: FF_X16_Y32_N31
\inst|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst|inst31~1_combout\,
	clrn => \inst|ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31~q\);

-- Location: LCCOMB_X16_Y32_N14
\inst|inst40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst40~combout\ = (\inst|inst30~q\ & (\inst|inst11~2_combout\ & (\inst|inst19~combout\ & \inst|inst10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30~q\,
	datab => \inst|inst11~2_combout\,
	datac => \inst|inst19~combout\,
	datad => \inst|inst10~2_combout\,
	combout => \inst|inst40~combout\);

-- Location: LCCOMB_X16_Y32_N4
\inst|inst32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst32~0_combout\ = \inst|inst32~q\ $ (((\inst|inst31~q\ & \inst|inst40~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31~q\,
	datac => \inst|inst32~q\,
	datad => \inst|inst40~combout\,
	combout => \inst|inst32~0_combout\);

-- Location: FF_X16_Y32_N5
\inst|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst|inst32~0_combout\,
	clrn => \inst|ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst32~q\);

-- Location: LCCOMB_X16_Y32_N26
\inst|inst33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst33~0_combout\ = \inst|inst33~q\ $ (((\inst|inst31~q\ & (\inst|inst32~q\ & \inst|inst40~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31~q\,
	datab => \inst|inst32~q\,
	datac => \inst|inst33~q\,
	datad => \inst|inst40~combout\,
	combout => \inst|inst33~0_combout\);

-- Location: FF_X16_Y32_N27
\inst|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst|inst33~0_combout\,
	clrn => \inst|ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst33~q\);

-- Location: M9K_X15_Y32_N0
\inst21|inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020006001188009302184086302240089001180040400000000000000000C0818C106202244046005",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "/home/thierryara/Documentos/USP/CPU_1/Mem01.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem256x16:inst21|rom01:inst|altsyncram:altsyncram_component|altsyncram_6bv3:auto_generated|ALTSYNCRAM",
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
	clk0 => \CLK_in~inputclkctrl_outclk\,
	portaaddr => \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst21|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y32_N16
\inst|inst53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst53~combout\ = (\MCLEAR~input_o\) # ((\CLK_in~input_o\ & (\inst21|inst|altsyncram_component|auto_generated|q_a\(10) & \inst21|inst|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_in~input_o\,
	datab => \MCLEAR~input_o\,
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst21|inst|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst|inst53~combout\);

-- Location: FF_X16_Y32_N25
\inst|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst|inst30~0_combout\,
	clrn => \inst|ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30~q\);

-- Location: LCCOMB_X16_Y32_N20
\inst|inst25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst25~combout\ = (\inst21|inst|altsyncram_component|auto_generated|q_a\(3) & (\CLK_in~input_o\ & (\inst21|inst|altsyncram_component|auto_generated|q_a\(10) & \inst21|inst|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \CLK_in~input_o\,
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst21|inst|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst|inst25~combout\);

-- Location: LCCOMB_X16_Y32_N10
\inst|inst44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst44~combout\ = (\MCLEAR~input_o\) # ((\CLK_in~input_o\ & (!\inst21|inst|altsyncram_component|auto_generated|q_a\(3) & \inst23|inst3|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \CLK_in~input_o\,
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst23|inst3|inst4~combout\,
	combout => \inst|inst44~combout\);

-- Location: LCCOMB_X16_Y32_N8
\inst|inst11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11~1_combout\ = (!\inst|inst44~combout\ & ((\inst|inst11~1_combout\) # (\inst|inst25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst11~1_combout\,
	datac => \inst|inst44~combout\,
	datad => \inst|inst25~combout\,
	combout => \inst|inst11~1_combout\);

-- Location: LCCOMB_X16_Y32_N18
\inst|inst11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11~3_combout\ = \inst|inst11~2_combout\ $ (\inst|inst11~1_combout\ $ (((\inst|inst19~combout\ & \inst|inst10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11~2_combout\,
	datab => \inst|inst11~1_combout\,
	datac => \inst|inst19~combout\,
	datad => \inst|inst10~2_combout\,
	combout => \inst|inst11~3_combout\);

-- Location: LCCOMB_X16_Y32_N22
\inst|inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11~0_combout\ = (\inst|inst44~combout\) # (\inst|inst25~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst44~combout\,
	datad => \inst|inst25~combout\,
	combout => \inst|inst11~0_combout\);

-- Location: FF_X16_Y32_N19
\inst|inst11~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst|inst11~3_combout\,
	clrn => \inst|ALT_INV_inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11~_emulated_q\);

-- Location: LCCOMB_X16_Y32_N12
\inst|inst11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11~2_combout\ = (!\inst|inst44~combout\ & ((\inst|inst25~combout\) # (\inst|inst11~1_combout\ $ (\inst|inst11~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25~combout\,
	datab => \inst|inst11~1_combout\,
	datac => \inst|inst44~combout\,
	datad => \inst|inst11~_emulated_q\,
	combout => \inst|inst11~2_combout\);

-- Location: LCCOMB_X17_Y32_N22
\inst|inst24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst24~combout\ = (\MCLEAR~input_o\) # ((\CLK_in~input_o\ & (!\inst21|inst|altsyncram_component|auto_generated|q_a\(2) & \inst23|inst3|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_in~input_o\,
	datab => \MCLEAR~input_o\,
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst23|inst3|inst4~combout\,
	combout => \inst|inst24~combout\);

-- Location: LCCOMB_X17_Y32_N20
\inst|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst18~combout\ = (\CLK_in~input_o\ & (\inst21|inst|altsyncram_component|auto_generated|q_a\(11) & (\inst21|inst|altsyncram_component|auto_generated|q_a\(2) & \inst21|inst|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_in~input_o\,
	datab => \inst21|inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst21|inst|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst|inst18~combout\);

-- Location: LCCOMB_X18_Y32_N28
\inst|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10~1_combout\ = (!\inst|inst24~combout\ & ((\inst|inst18~combout\) # (\inst|inst10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst24~combout\,
	datac => \inst|inst18~combout\,
	datad => \inst|inst10~1_combout\,
	combout => \inst|inst10~1_combout\);

-- Location: LCCOMB_X17_Y32_N12
\inst|inst10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10~3_combout\ = \inst|inst10~1_combout\ $ (\inst|inst10~2_combout\ $ (((\inst|inst47~2_combout\ & \inst|inst9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47~2_combout\,
	datab => \inst|inst10~1_combout\,
	datac => \inst|inst10~2_combout\,
	datad => \inst|inst9~2_combout\,
	combout => \inst|inst10~3_combout\);

-- Location: LCCOMB_X17_Y32_N14
\inst|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10~0_combout\ = (\inst|inst24~combout\) # (\inst|inst18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst24~combout\,
	datad => \inst|inst18~combout\,
	combout => \inst|inst10~0_combout\);

-- Location: FF_X17_Y32_N13
\inst|inst10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst|inst10~3_combout\,
	clrn => \inst|ALT_INV_inst10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10~_emulated_q\);

-- Location: LCCOMB_X17_Y32_N10
\inst|inst10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10~2_combout\ = (!\inst|inst24~combout\ & ((\inst|inst18~combout\) # (\inst|inst10~_emulated_q\ $ (\inst|inst10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10~_emulated_q\,
	datab => \inst|inst24~combout\,
	datac => \inst|inst10~1_combout\,
	datad => \inst|inst18~combout\,
	combout => \inst|inst10~2_combout\);

-- Location: LCCOMB_X17_Y32_N4
\inst|inst23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst23~combout\ = (\MCLEAR~input_o\) # ((\CLK_in~input_o\ & (!\inst21|inst|altsyncram_component|auto_generated|q_a\(1) & \inst23|inst3|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \CLK_in~input_o\,
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst23|inst3|inst4~combout\,
	combout => \inst|inst23~combout\);

-- Location: LCCOMB_X17_Y32_N18
\inst|inst48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst48~combout\ = (\inst21|inst|altsyncram_component|auto_generated|q_a\(1) & (\inst21|inst|altsyncram_component|auto_generated|q_a\(11) & (\CLK_in~input_o\ & \inst21|inst|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst21|inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \CLK_in~input_o\,
	datad => \inst21|inst|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst|inst48~combout\);

-- Location: LCCOMB_X17_Y32_N6
\inst|inst9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9~1_combout\ = (!\inst|inst23~combout\ & ((\inst|inst48~combout\) # (\inst|inst9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23~combout\,
	datac => \inst|inst48~combout\,
	datad => \inst|inst9~1_combout\,
	combout => \inst|inst9~1_combout\);

-- Location: LCCOMB_X17_Y32_N28
\inst|inst9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9~3_combout\ = \inst|inst9~1_combout\ $ (\inst|inst47~2_combout\ $ (\inst|inst9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~1_combout\,
	datac => \inst|inst47~2_combout\,
	datad => \inst|inst9~2_combout\,
	combout => \inst|inst9~3_combout\);

-- Location: LCCOMB_X17_Y32_N8
\inst|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9~0_combout\ = (\inst|inst23~combout\) # (\inst|inst48~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst23~combout\,
	datac => \inst|inst48~combout\,
	combout => \inst|inst9~0_combout\);

-- Location: FF_X17_Y32_N29
\inst|inst9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst|inst9~3_combout\,
	clrn => \inst|ALT_INV_inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst9~_emulated_q\);

-- Location: LCCOMB_X17_Y32_N30
\inst|inst9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9~2_combout\ = (!\inst|inst23~combout\ & ((\inst|inst48~combout\) # (\inst|inst9~1_combout\ $ (\inst|inst9~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~1_combout\,
	datab => \inst|inst9~_emulated_q\,
	datac => \inst|inst48~combout\,
	datad => \inst|inst23~combout\,
	combout => \inst|inst9~2_combout\);

-- Location: LCCOMB_X17_Y32_N16
\inst|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6~combout\ = (\MCLEAR~input_o\) # ((\CLK_in~input_o\ & (!\inst21|inst|altsyncram_component|auto_generated|q_a\(0) & \inst23|inst3|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCLEAR~input_o\,
	datab => \CLK_in~input_o\,
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst23|inst3|inst4~combout\,
	combout => \inst|inst6~combout\);

-- Location: LCCOMB_X17_Y32_N2
\inst|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4~combout\ = (\inst21|inst|altsyncram_component|auto_generated|q_a\(10) & (\inst21|inst|altsyncram_component|auto_generated|q_a\(11) & (\CLK_in~input_o\ & \inst21|inst|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst21|inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \CLK_in~input_o\,
	datad => \inst21|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst4~combout\);

-- Location: LCCOMB_X18_Y32_N2
\inst|inst47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst47~1_combout\ = (!\inst|inst6~combout\ & ((\inst|inst4~combout\) # (\inst|inst47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6~combout\,
	datac => \inst|inst4~combout\,
	datad => \inst|inst47~1_combout\,
	combout => \inst|inst47~1_combout\);

-- Location: LCCOMB_X18_Y32_N4
\inst|inst47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst47~3_combout\ = \inst|inst47~1_combout\ $ (!\inst|inst47~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst47~1_combout\,
	datad => \inst|inst47~2_combout\,
	combout => \inst|inst47~3_combout\);

-- Location: LCCOMB_X18_Y32_N10
\inst|inst47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst47~0_combout\ = (\inst|inst6~combout\) # (\inst|inst4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6~combout\,
	datab => \inst|inst4~combout\,
	combout => \inst|inst47~0_combout\);

-- Location: FF_X18_Y32_N5
\inst|inst47~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \inst|inst47~3_combout\,
	clrn => \inst|ALT_INV_inst47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst47~_emulated_q\);

-- Location: LCCOMB_X17_Y32_N24
\inst|inst47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst47~2_combout\ = (!\inst|inst6~combout\ & ((\inst|inst4~combout\) # (\inst|inst47~1_combout\ $ (\inst|inst47~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47~1_combout\,
	datab => \inst|inst6~combout\,
	datac => \inst|inst4~combout\,
	datad => \inst|inst47~_emulated_q\,
	combout => \inst|inst47~2_combout\);

-- Location: LCCOMB_X16_Y32_N28
\inst23|inst3|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst3|inst4~combout\ = (\inst21|inst|altsyncram_component|auto_generated|q_a\(10) & \inst21|inst|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst21|inst|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst23|inst3|inst4~combout\);

-- Location: LCCOMB_X1_Y35_N16
\inst23|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst~0_combout\ = (!\inst21|inst|altsyncram_component|auto_generated|q_a\(10) & (!\inst21|inst|altsyncram_component|auto_generated|q_a\(11) & \inst21|inst|altsyncram_component|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst21|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst23|inst~0_combout\);

-- Location: LCCOMB_X1_Y35_N14
\inst23|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst1~0_combout\ = (!\inst21|inst|altsyncram_component|auto_generated|q_a\(10) & (!\inst21|inst|altsyncram_component|auto_generated|q_a\(11) & \inst21|inst|altsyncram_component|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst21|inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst21|inst|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst23|inst1~0_combout\);

ww_MasterCLEAR <= \MasterCLEAR~output_o\;

ww_JUMP_UC <= \JUMP_UC~output_o\;

ww_ResetREG <= \ResetREG~output_o\;

ww_ULA0 <= \ULA0~output_o\;

ww_ULA1 <= \ULA1~output_o\;

ww_contador(7) <= \contador[7]~output_o\;

ww_contador(6) <= \contador[6]~output_o\;

ww_contador(5) <= \contador[5]~output_o\;

ww_contador(4) <= \contador[4]~output_o\;

ww_contador(3) <= \contador[3]~output_o\;

ww_contador(2) <= \contador[2]~output_o\;

ww_contador(1) <= \contador[1]~output_o\;

ww_contador(0) <= \contador[0]~output_o\;

ww_MEM(15) <= \MEM[15]~output_o\;

ww_MEM(14) <= \MEM[14]~output_o\;

ww_MEM(13) <= \MEM[13]~output_o\;

ww_MEM(12) <= \MEM[12]~output_o\;

ww_MEM(11) <= \MEM[11]~output_o\;

ww_MEM(10) <= \MEM[10]~output_o\;

ww_MEM(9) <= \MEM[9]~output_o\;

ww_MEM(8) <= \MEM[8]~output_o\;

ww_MEM(7) <= \MEM[7]~output_o\;

ww_MEM(6) <= \MEM[6]~output_o\;

ww_MEM(5) <= \MEM[5]~output_o\;

ww_MEM(4) <= \MEM[4]~output_o\;

ww_MEM(3) <= \MEM[3]~output_o\;

ww_MEM(2) <= \MEM[2]~output_o\;

ww_MEM(1) <= \MEM[1]~output_o\;

ww_MEM(0) <= \MEM[0]~output_o\;

ww_RgIN(1) <= \RgIN[1]~output_o\;

ww_RgIN(0) <= \RgIN[0]~output_o\;

ww_RgTO(1) <= \RgTO[1]~output_o\;

ww_RgTO(0) <= \RgTO[0]~output_o\;
END structure;


