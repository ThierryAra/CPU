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

-- DATE "10/21/2022 17:42:46"

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
	CLEARD : OUT std_logic;
	b_out : OUT std_logic_vector(7 DOWNTO 0);
	display_out1 : OUT std_logic_vector(6 DOWNTO 0);
	display_out2 : OUT std_logic_vector(6 DOWNTO 0);
	display_out3 : OUT std_logic_vector(6 DOWNTO 0);
	display_out4 : OUT std_logic_vector(6 DOWNTO 0);
	display_reg1 : OUT std_logic_vector(6 DOWNTO 0);
	RgTO : OUT std_logic_vector(1 DOWNTO 0);
	RgIN : OUT std_logic_vector(1 DOWNTO 0);
	ULAop : OUT std_logic_vector(1 DOWNTO 0);
	display_reg2 : OUT std_logic_vector(6 DOWNTO 0);
	display_ula : OUT std_logic_vector(6 DOWNTO 0);
	MEM : OUT std_logic_vector(15 DOWNTO 0);
	REG_1 : OUT std_logic_vector(3 DOWNTO 0);
	REG_2 : OUT std_logic_vector(3 DOWNTO 0);
	RegEscolhido : OUT std_logic_vector(3 DOWNTO 0);
	saida_mux : OUT std_logic_vector(6 DOWNTO 0);
	SAIDA_ULA : OUT std_logic_vector(3 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- MasterCLEAR	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMP_UC	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResetREG	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLEARD	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out1[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out1[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out1[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out1[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out1[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out1[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out2[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out2[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out2[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out2[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out2[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out3[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out3[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out3[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out3[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out3[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out3[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out3[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out4[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out4[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out4[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out4[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out4[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out4[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out4[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg1[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg1[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg1[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg1[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg1[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg1[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg1[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RgTO[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RgTO[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RgIN[1]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RgIN[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAop[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAop[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg2[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg2[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg2[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg2[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg2[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg2[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_reg2[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ula[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ula[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ula[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ula[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ula[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ula[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_ula[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[12]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[11]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[10]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[8]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[7]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[6]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[5]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[4]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[3]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM[0]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_1[3]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_1[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_1[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_1[0]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_2[3]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_2[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_2[1]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_2[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEscolhido[3]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEscolhido[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEscolhido[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegEscolhido[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_ULA[3]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_ULA[2]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_ULA[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_ULA[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_CLEARD : std_logic;
SIGNAL ww_b_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display_out1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_out2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_out3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_out4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_reg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_RgTO : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RgIN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ULAop : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_display_reg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_ula : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MEM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REG_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RegEscolhido : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida_mux : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SAIDA_ULA : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterCLEAR~output_o\ : std_logic;
SIGNAL \JUMP_UC~output_o\ : std_logic;
SIGNAL \ResetREG~output_o\ : std_logic;
SIGNAL \CLEARD~output_o\ : std_logic;
SIGNAL \b_out[7]~output_o\ : std_logic;
SIGNAL \b_out[6]~output_o\ : std_logic;
SIGNAL \b_out[5]~output_o\ : std_logic;
SIGNAL \b_out[4]~output_o\ : std_logic;
SIGNAL \b_out[3]~output_o\ : std_logic;
SIGNAL \b_out[2]~output_o\ : std_logic;
SIGNAL \b_out[1]~output_o\ : std_logic;
SIGNAL \b_out[0]~output_o\ : std_logic;
SIGNAL \display_out1[6]~output_o\ : std_logic;
SIGNAL \display_out1[5]~output_o\ : std_logic;
SIGNAL \display_out1[4]~output_o\ : std_logic;
SIGNAL \display_out1[3]~output_o\ : std_logic;
SIGNAL \display_out1[2]~output_o\ : std_logic;
SIGNAL \display_out1[1]~output_o\ : std_logic;
SIGNAL \display_out1[0]~output_o\ : std_logic;
SIGNAL \display_out2[6]~output_o\ : std_logic;
SIGNAL \display_out2[5]~output_o\ : std_logic;
SIGNAL \display_out2[4]~output_o\ : std_logic;
SIGNAL \display_out2[3]~output_o\ : std_logic;
SIGNAL \display_out2[2]~output_o\ : std_logic;
SIGNAL \display_out2[1]~output_o\ : std_logic;
SIGNAL \display_out2[0]~output_o\ : std_logic;
SIGNAL \display_out3[6]~output_o\ : std_logic;
SIGNAL \display_out3[5]~output_o\ : std_logic;
SIGNAL \display_out3[4]~output_o\ : std_logic;
SIGNAL \display_out3[3]~output_o\ : std_logic;
SIGNAL \display_out3[2]~output_o\ : std_logic;
SIGNAL \display_out3[1]~output_o\ : std_logic;
SIGNAL \display_out3[0]~output_o\ : std_logic;
SIGNAL \display_out4[6]~output_o\ : std_logic;
SIGNAL \display_out4[5]~output_o\ : std_logic;
SIGNAL \display_out4[4]~output_o\ : std_logic;
SIGNAL \display_out4[3]~output_o\ : std_logic;
SIGNAL \display_out4[2]~output_o\ : std_logic;
SIGNAL \display_out4[1]~output_o\ : std_logic;
SIGNAL \display_out4[0]~output_o\ : std_logic;
SIGNAL \display_reg1[6]~output_o\ : std_logic;
SIGNAL \display_reg1[5]~output_o\ : std_logic;
SIGNAL \display_reg1[4]~output_o\ : std_logic;
SIGNAL \display_reg1[3]~output_o\ : std_logic;
SIGNAL \display_reg1[2]~output_o\ : std_logic;
SIGNAL \display_reg1[1]~output_o\ : std_logic;
SIGNAL \display_reg1[0]~output_o\ : std_logic;
SIGNAL \RgTO[1]~output_o\ : std_logic;
SIGNAL \RgTO[0]~output_o\ : std_logic;
SIGNAL \RgIN[1]~output_o\ : std_logic;
SIGNAL \RgIN[0]~output_o\ : std_logic;
SIGNAL \ULAop[1]~output_o\ : std_logic;
SIGNAL \ULAop[0]~output_o\ : std_logic;
SIGNAL \display_reg2[6]~output_o\ : std_logic;
SIGNAL \display_reg2[5]~output_o\ : std_logic;
SIGNAL \display_reg2[4]~output_o\ : std_logic;
SIGNAL \display_reg2[3]~output_o\ : std_logic;
SIGNAL \display_reg2[2]~output_o\ : std_logic;
SIGNAL \display_reg2[1]~output_o\ : std_logic;
SIGNAL \display_reg2[0]~output_o\ : std_logic;
SIGNAL \display_ula[6]~output_o\ : std_logic;
SIGNAL \display_ula[5]~output_o\ : std_logic;
SIGNAL \display_ula[4]~output_o\ : std_logic;
SIGNAL \display_ula[3]~output_o\ : std_logic;
SIGNAL \display_ula[2]~output_o\ : std_logic;
SIGNAL \display_ula[1]~output_o\ : std_logic;
SIGNAL \display_ula[0]~output_o\ : std_logic;
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
SIGNAL \REG_1[3]~output_o\ : std_logic;
SIGNAL \REG_1[2]~output_o\ : std_logic;
SIGNAL \REG_1[1]~output_o\ : std_logic;
SIGNAL \REG_1[0]~output_o\ : std_logic;
SIGNAL \REG_2[3]~output_o\ : std_logic;
SIGNAL \REG_2[2]~output_o\ : std_logic;
SIGNAL \REG_2[1]~output_o\ : std_logic;
SIGNAL \REG_2[0]~output_o\ : std_logic;
SIGNAL \RegEscolhido[3]~output_o\ : std_logic;
SIGNAL \RegEscolhido[2]~output_o\ : std_logic;
SIGNAL \RegEscolhido[1]~output_o\ : std_logic;
SIGNAL \RegEscolhido[0]~output_o\ : std_logic;
SIGNAL \saida_mux[6]~output_o\ : std_logic;
SIGNAL \saida_mux[5]~output_o\ : std_logic;
SIGNAL \saida_mux[4]~output_o\ : std_logic;
SIGNAL \saida_mux[3]~output_o\ : std_logic;
SIGNAL \saida_mux[2]~output_o\ : std_logic;
SIGNAL \saida_mux[1]~output_o\ : std_logic;
SIGNAL \saida_mux[0]~output_o\ : std_logic;
SIGNAL \SAIDA_ULA[3]~output_o\ : std_logic;
SIGNAL \SAIDA_ULA[2]~output_o\ : std_logic;
SIGNAL \SAIDA_ULA[1]~output_o\ : std_logic;
SIGNAL \SAIDA_ULA[0]~output_o\ : std_logic;
SIGNAL \MCLEAR~input_o\ : std_logic;
SIGNAL \CLK_in~input_o\ : std_logic;
SIGNAL \CLK_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11~feeder_combout\ : std_logic;
SIGNAL \inst10|inst19~combout\ : std_logic;
SIGNAL \inst10|inst30~0_combout\ : std_logic;
SIGNAL \inst10|inst53~combout\ : std_logic;
SIGNAL \inst10|inst30~q\ : std_logic;
SIGNAL \inst10|inst31~0_combout\ : std_logic;
SIGNAL \inst10|inst31~1_combout\ : std_logic;
SIGNAL \inst10|inst31~q\ : std_logic;
SIGNAL \inst10|inst40~combout\ : std_logic;
SIGNAL \inst10|inst32~0_combout\ : std_logic;
SIGNAL \inst10|inst32~q\ : std_logic;
SIGNAL \inst10|inst33~0_combout\ : std_logic;
SIGNAL \inst10|inst33~q\ : std_logic;
SIGNAL \inst10|inst25~combout\ : std_logic;
SIGNAL \inst|inst2|inst48~0_combout\ : std_logic;
SIGNAL \inst10|inst44~combout\ : std_logic;
SIGNAL \inst10|inst11~1_combout\ : std_logic;
SIGNAL \inst10|inst11~3_combout\ : std_logic;
SIGNAL \inst10|inst11~0_combout\ : std_logic;
SIGNAL \inst10|inst11~_emulated_q\ : std_logic;
SIGNAL \inst10|inst11~2_combout\ : std_logic;
SIGNAL \inst10|inst24~combout\ : std_logic;
SIGNAL \inst10|inst18~combout\ : std_logic;
SIGNAL \inst10|inst10~1_combout\ : std_logic;
SIGNAL \inst10|inst10~3_combout\ : std_logic;
SIGNAL \inst10|inst10~0_combout\ : std_logic;
SIGNAL \inst10|inst10~_emulated_q\ : std_logic;
SIGNAL \inst10|inst10~2_combout\ : std_logic;
SIGNAL \inst10|inst23~2_combout\ : std_logic;
SIGNAL \inst10|inst23~combout\ : std_logic;
SIGNAL \inst10|inst48~combout\ : std_logic;
SIGNAL \inst10|inst9~1_combout\ : std_logic;
SIGNAL \inst10|inst9~3_combout\ : std_logic;
SIGNAL \inst10|inst9~0_combout\ : std_logic;
SIGNAL \inst10|inst9~_emulated_q\ : std_logic;
SIGNAL \inst10|inst9~2_combout\ : std_logic;
SIGNAL \inst10|inst4~combout\ : std_logic;
SIGNAL \inst10|inst6~combout\ : std_logic;
SIGNAL \inst10|inst47~1_combout\ : std_logic;
SIGNAL \inst10|inst47~3_combout\ : std_logic;
SIGNAL \inst10|inst47~0_combout\ : std_logic;
SIGNAL \inst10|inst47~_emulated_q\ : std_logic;
SIGNAL \inst10|inst47~2_combout\ : std_logic;
SIGNAL \inst|inst2|inst48~1_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst12~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|inst48~2_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \inst|inst4|inst51~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst44~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst37~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst31~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst23~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst51~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst44~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst37~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst31~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst23~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst51~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst44~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst37~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst31~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst23~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst51~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst44~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst37~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst31~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst23~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst9~0_combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst1~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst7~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst102|inst~q\ : std_logic;
SIGNAL \inst101|inst~q\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst14|inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ : std_logic;
SIGNAL \inst101|inst2~0_combout\ : std_logic;
SIGNAL \inst101|inst2~q\ : std_logic;
SIGNAL \inst102|inst2~0_combout\ : std_logic;
SIGNAL \inst102|inst2~q\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst1~0_combout\ : std_logic;
SIGNAL \inst102|inst4~q\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ : std_logic;
SIGNAL \inst102|inst3~0_combout\ : std_logic;
SIGNAL \inst102|inst3~q\ : std_logic;
SIGNAL \inst101|inst3~0_combout\ : std_logic;
SIGNAL \inst101|inst3~q\ : std_logic;
SIGNAL \inst2|inst2|inst3|inst2~combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst3|inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst3|inst1~1_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst101|inst4~q\ : std_logic;
SIGNAL \inst115|inst51~0_combout\ : std_logic;
SIGNAL \inst115|inst44~0_combout\ : std_logic;
SIGNAL \inst115|inst37~0_combout\ : std_logic;
SIGNAL \inst115|inst31~0_combout\ : std_logic;
SIGNAL \inst115|inst23~0_combout\ : std_logic;
SIGNAL \inst115|inst17~0_combout\ : std_logic;
SIGNAL \inst115|inst9~0_combout\ : std_logic;
SIGNAL \inst114|inst51~0_combout\ : std_logic;
SIGNAL \inst114|inst44~0_combout\ : std_logic;
SIGNAL \inst114|inst37~0_combout\ : std_logic;
SIGNAL \inst114|inst31~0_combout\ : std_logic;
SIGNAL \inst114|inst23~0_combout\ : std_logic;
SIGNAL \inst114|inst17~0_combout\ : std_logic;
SIGNAL \inst114|inst9~0_combout\ : std_logic;
SIGNAL \inst6|inst51~0_combout\ : std_logic;
SIGNAL \inst6|inst44~0_combout\ : std_logic;
SIGNAL \inst6|inst37~0_combout\ : std_logic;
SIGNAL \inst6|inst31~0_combout\ : std_logic;
SIGNAL \inst6|inst23~0_combout\ : std_logic;
SIGNAL \inst6|inst17~0_combout\ : std_logic;
SIGNAL \inst6|inst9~0_combout\ : std_logic;
SIGNAL \inst85|inst51~0_combout\ : std_logic;
SIGNAL \inst85|inst44~0_combout\ : std_logic;
SIGNAL \inst85|inst37~0_combout\ : std_logic;
SIGNAL \inst85|inst31~0_combout\ : std_logic;
SIGNAL \inst85|inst23~0_combout\ : std_logic;
SIGNAL \inst85|inst17~0_combout\ : std_logic;
SIGNAL \inst85|inst9~0_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst1|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst48~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~combout\ : std_logic;
SIGNAL \ALT_INV_inst13~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst53~combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst10~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst11~0_combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst48~2_combout\ : std_logic;
SIGNAL \inst85|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst85|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst85|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst85|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst85|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst85|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst85|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|ALT_INV_result_node[1]~12_combout\ : std_logic;
SIGNAL \inst2|inst5|LPM_MUX_component|auto_generated|ALT_INV_result_node[2]~9_combout\ : std_logic;
SIGNAL \inst114|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst114|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst114|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst114|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst114|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst114|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst114|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst115|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst115|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst115|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \inst115|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst115|ALT_INV_inst37~0_combout\ : std_logic;
SIGNAL \inst115|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst115|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst|inst1|ALT_INV_inst23~0_combout\ : std_logic;
SIGNAL \ALT_INV_CLK_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLK_in~input_o\ : std_logic;

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
CLEARD <= ww_CLEARD;
b_out <= ww_b_out;
display_out1 <= ww_display_out1;
display_out2 <= ww_display_out2;
display_out3 <= ww_display_out3;
display_out4 <= ww_display_out4;
display_reg1 <= ww_display_reg1;
RgTO <= ww_RgTO;
RgIN <= ww_RgIN;
ULAop <= ww_ULAop;
display_reg2 <= ww_display_reg2;
display_ula <= ww_display_ula;
MEM <= ww_MEM;
REG_1 <= ww_REG_1;
REG_2 <= ww_REG_2;
RegEscolhido <= ww_RegEscolhido;
saida_mux <= ww_saida_mux;
SAIDA_ULA <= ww_SAIDA_ULA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst10|inst33~q\ & \inst10|inst32~q\ & \inst10|inst31~q\ & \inst10|inst30~q\ & \inst10|inst11~2_combout\ & \inst10|inst10~2_combout\ & \inst10|inst9~2_combout\ & 
\inst10|inst47~2_combout\);

\inst|inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|inst|altsyncram_component|auto_generated|q_a\(8) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|inst|altsyncram_component|auto_generated|q_a\(9) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|inst|altsyncram_component|auto_generated|q_a\(10) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|inst|altsyncram_component|auto_generated|q_a\(11) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|inst|altsyncram_component|auto_generated|q_a\(12) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|inst|altsyncram_component|auto_generated|q_a\(13) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\inst|inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst10|inst33~q\ & \inst10|inst32~q\ & \inst10|inst31~q\ & \inst10|inst30~q\ & \inst10|inst11~2_combout\ & \inst10|inst10~2_combout\ & \inst10|inst9~2_combout\ & 
\inst10|inst47~2_combout\);

\inst|inst|altsyncram_component|auto_generated|q_a\(14) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\inst|inst|altsyncram_component|auto_generated|q_a\(15) <= \inst|inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\CLK_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_in~input_o\);

\inst1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1~combout\);

\inst7~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7~combout\);
\inst|inst1|ALT_INV_inst31~0_combout\ <= NOT \inst|inst1|inst31~0_combout\;
\inst|inst1|ALT_INV_inst37~0_combout\ <= NOT \inst|inst1|inst37~0_combout\;
\inst|inst1|ALT_INV_inst44~0_combout\ <= NOT \inst|inst1|inst44~0_combout\;
\inst|inst1|ALT_INV_inst51~0_combout\ <= NOT \inst|inst1|inst51~0_combout\;
\inst|inst2|ALT_INV_inst9~0_combout\ <= NOT \inst|inst2|inst9~0_combout\;
\inst|inst2|ALT_INV_inst17~0_combout\ <= NOT \inst|inst2|inst17~0_combout\;
\inst|inst2|ALT_INV_inst23~0_combout\ <= NOT \inst|inst2|inst23~0_combout\;
\inst|inst2|ALT_INV_inst31~0_combout\ <= NOT \inst|inst2|inst31~0_combout\;
\inst|inst2|ALT_INV_inst37~0_combout\ <= NOT \inst|inst2|inst37~0_combout\;
\inst|inst2|ALT_INV_inst44~0_combout\ <= NOT \inst|inst2|inst44~0_combout\;
\inst|inst2|ALT_INV_inst51~0_combout\ <= NOT \inst|inst2|inst51~0_combout\;
\inst|inst3|ALT_INV_inst9~0_combout\ <= NOT \inst|inst3|inst9~0_combout\;
\inst|inst3|ALT_INV_inst17~0_combout\ <= NOT \inst|inst3|inst17~0_combout\;
\inst|inst3|ALT_INV_inst23~0_combout\ <= NOT \inst|inst3|inst23~0_combout\;
\inst|inst3|ALT_INV_inst31~0_combout\ <= NOT \inst|inst3|inst31~0_combout\;
\inst|inst3|ALT_INV_inst37~0_combout\ <= NOT \inst|inst3|inst37~0_combout\;
\inst|inst3|ALT_INV_inst44~0_combout\ <= NOT \inst|inst3|inst44~0_combout\;
\inst|inst3|ALT_INV_inst51~0_combout\ <= NOT \inst|inst3|inst51~0_combout\;
\inst|inst4|ALT_INV_inst9~0_combout\ <= NOT \inst|inst4|inst9~0_combout\;
\inst|inst4|ALT_INV_inst17~0_combout\ <= NOT \inst|inst4|inst17~0_combout\;
\inst|inst4|ALT_INV_inst23~0_combout\ <= NOT \inst|inst4|inst23~0_combout\;
\inst|inst4|ALT_INV_inst31~0_combout\ <= NOT \inst|inst4|inst31~0_combout\;
\inst|inst4|ALT_INV_inst37~0_combout\ <= NOT \inst|inst4|inst37~0_combout\;
\inst|inst4|ALT_INV_inst44~0_combout\ <= NOT \inst|inst4|inst44~0_combout\;
\inst|inst4|ALT_INV_inst51~0_combout\ <= NOT \inst|inst4|inst51~0_combout\;
\inst|inst2|ALT_INV_inst48~1_combout\ <= NOT \inst|inst2|inst48~1_combout\;
\ALT_INV_inst17~combout\ <= NOT \inst17~combout\;
\ALT_INV_inst13~0_combout\ <= NOT \inst13~0_combout\;
\inst10|ALT_INV_inst53~combout\ <= NOT \inst10|inst53~combout\;
\inst10|ALT_INV_inst47~0_combout\ <= NOT \inst10|inst47~0_combout\;
\inst10|ALT_INV_inst9~0_combout\ <= NOT \inst10|inst9~0_combout\;
\inst10|ALT_INV_inst10~0_combout\ <= NOT \inst10|inst10~0_combout\;
\inst10|ALT_INV_inst11~0_combout\ <= NOT \inst10|inst11~0_combout\;
\inst|inst2|ALT_INV_inst48~2_combout\ <= NOT \inst|inst2|inst48~2_combout\;
\inst85|ALT_INV_inst9~0_combout\ <= NOT \inst85|inst9~0_combout\;
\inst85|ALT_INV_inst17~0_combout\ <= NOT \inst85|inst17~0_combout\;
\inst85|ALT_INV_inst23~0_combout\ <= NOT \inst85|inst23~0_combout\;
\inst85|ALT_INV_inst31~0_combout\ <= NOT \inst85|inst31~0_combout\;
\inst85|ALT_INV_inst37~0_combout\ <= NOT \inst85|inst37~0_combout\;
\inst85|ALT_INV_inst44~0_combout\ <= NOT \inst85|inst44~0_combout\;
\inst85|ALT_INV_inst51~0_combout\ <= NOT \inst85|inst51~0_combout\;
\inst6|ALT_INV_inst9~0_combout\ <= NOT \inst6|inst9~0_combout\;
\inst6|ALT_INV_inst17~0_combout\ <= NOT \inst6|inst17~0_combout\;
\inst6|ALT_INV_inst23~0_combout\ <= NOT \inst6|inst23~0_combout\;
\inst6|ALT_INV_inst31~0_combout\ <= NOT \inst6|inst31~0_combout\;
\inst6|ALT_INV_inst37~0_combout\ <= NOT \inst6|inst37~0_combout\;
\inst6|ALT_INV_inst44~0_combout\ <= NOT \inst6|inst44~0_combout\;
\inst6|ALT_INV_inst51~0_combout\ <= NOT \inst6|inst51~0_combout\;
\inst2|inst5|LPM_MUX_component|auto_generated|ALT_INV_result_node[1]~12_combout\ <= NOT \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\;
\inst2|inst5|LPM_MUX_component|auto_generated|ALT_INV_result_node[2]~9_combout\ <= NOT \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\;
\inst114|ALT_INV_inst9~0_combout\ <= NOT \inst114|inst9~0_combout\;
\inst114|ALT_INV_inst17~0_combout\ <= NOT \inst114|inst17~0_combout\;
\inst114|ALT_INV_inst23~0_combout\ <= NOT \inst114|inst23~0_combout\;
\inst114|ALT_INV_inst31~0_combout\ <= NOT \inst114|inst31~0_combout\;
\inst114|ALT_INV_inst37~0_combout\ <= NOT \inst114|inst37~0_combout\;
\inst114|ALT_INV_inst44~0_combout\ <= NOT \inst114|inst44~0_combout\;
\inst114|ALT_INV_inst51~0_combout\ <= NOT \inst114|inst51~0_combout\;
\inst115|ALT_INV_inst9~0_combout\ <= NOT \inst115|inst9~0_combout\;
\inst115|ALT_INV_inst17~0_combout\ <= NOT \inst115|inst17~0_combout\;
\inst115|ALT_INV_inst23~0_combout\ <= NOT \inst115|inst23~0_combout\;
\inst115|ALT_INV_inst31~0_combout\ <= NOT \inst115|inst31~0_combout\;
\inst115|ALT_INV_inst37~0_combout\ <= NOT \inst115|inst37~0_combout\;
\inst115|ALT_INV_inst44~0_combout\ <= NOT \inst115|inst44~0_combout\;
\inst115|ALT_INV_inst51~0_combout\ <= NOT \inst115|inst51~0_combout\;
\inst|inst1|ALT_INV_inst9~0_combout\ <= NOT \inst|inst1|inst9~0_combout\;
\inst|inst1|ALT_INV_inst17~0_combout\ <= NOT \inst|inst1|inst17~0_combout\;
\inst|inst1|ALT_INV_inst23~0_combout\ <= NOT \inst|inst1|inst23~0_combout\;
\ALT_INV_CLK_in~inputclkctrl_outclk\ <= NOT \CLK_in~inputclkctrl_outclk\;
\ALT_INV_CLK_in~input_o\ <= NOT \CLK_in~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\MasterCLEAR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst13~0_combout\,
	devoe => ww_devoe,
	o => \MasterCLEAR~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\JUMP_UC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst48~0_combout\,
	devoe => ww_devoe,
	o => \JUMP_UC~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\ResetREG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~combout\,
	devoe => ww_devoe,
	o => \ResetREG~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\CLEARD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_inst48~1_combout\,
	devoe => ww_devoe,
	o => \CLEARD~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\b_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst33~q\,
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
	i => \inst10|inst32~q\,
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
	i => \inst10|inst31~q\,
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
	i => \inst10|inst30~q\,
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
	i => \inst10|inst11~2_combout\,
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
	i => \inst10|inst10~2_combout\,
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
	i => \inst10|inst9~2_combout\,
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
	i => \inst10|inst47~2_combout\,
	devoe => ww_devoe,
	o => \b_out[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\display_out1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \display_out1[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\display_out1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \display_out1[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\display_out1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \display_out1[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\display_out1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \display_out1[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\display_out1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \display_out1[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\display_out1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \display_out1[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\display_out1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \display_out1[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\display_out2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \display_out2[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\display_out2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \display_out2[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\display_out2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \display_out2[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\display_out2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \display_out2[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\display_out2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \display_out2[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\display_out2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \display_out2[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\display_out2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \display_out2[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\display_out3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \display_out3[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\display_out3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \display_out3[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\display_out3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \display_out3[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\display_out3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \display_out3[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\display_out3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \display_out3[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\display_out3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \display_out3[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\display_out3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \display_out3[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\display_out4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \display_out4[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\display_out4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \display_out4[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\display_out4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \display_out4[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\display_out4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \display_out4[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\display_out4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \display_out4[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\display_out4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \display_out4[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\display_out4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \display_out4[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\display_reg1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst115|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \display_reg1[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\display_reg1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst115|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \display_reg1[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\display_reg1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst115|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \display_reg1[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\display_reg1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst115|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \display_reg1[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\display_reg1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst115|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \display_reg1[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\display_reg1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst115|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \display_reg1[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\display_reg1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst115|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \display_reg1[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\RgTO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \RgTO[1]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\RgTO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \RgTO[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\RgIN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \RgIN[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\RgIN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \RgIN[0]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\ULAop[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst1~0_combout\,
	devoe => ww_devoe,
	o => \ULAop[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\ULAop[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst~0_combout\,
	devoe => ww_devoe,
	o => \ULAop[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\display_reg2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst114|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \display_reg2[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\display_reg2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst114|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \display_reg2[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\display_reg2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst114|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \display_reg2[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\display_reg2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst114|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \display_reg2[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\display_reg2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst114|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \display_reg2[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\display_reg2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst114|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \display_reg2[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\display_reg2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst114|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \display_reg2[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\display_ula[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \display_ula[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\display_ula[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \display_ula[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\display_ula[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \display_ula[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\display_ula[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \display_ula[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\display_ula[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \display_ula[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\display_ula[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \display_ula[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\display_ula[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \display_ula[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\MEM[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \MEM[15]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\MEM[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \MEM[14]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\MEM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \MEM[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\MEM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \MEM[12]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\MEM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \MEM[11]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\MEM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \MEM[10]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\MEM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \MEM[9]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\MEM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \MEM[8]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\MEM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \MEM[7]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\MEM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \MEM[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\MEM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \MEM[5]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\MEM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \MEM[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\MEM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \MEM[3]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\MEM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \MEM[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\MEM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \MEM[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\MEM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \MEM[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\REG_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|inst4~q\,
	devoe => ww_devoe,
	o => \REG_1[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\REG_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|inst3~q\,
	devoe => ww_devoe,
	o => \REG_1[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\REG_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|inst2~q\,
	devoe => ww_devoe,
	o => \REG_1[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\REG_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|inst~q\,
	devoe => ww_devoe,
	o => \REG_1[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\REG_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|inst4~q\,
	devoe => ww_devoe,
	o => \REG_2[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\REG_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|inst3~q\,
	devoe => ww_devoe,
	o => \REG_2[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\REG_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|inst2~q\,
	devoe => ww_devoe,
	o => \REG_2[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\REG_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|inst~q\,
	devoe => ww_devoe,
	o => \REG_2[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\RegEscolhido[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	devoe => ww_devoe,
	o => \RegEscolhido[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\RegEscolhido[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	devoe => ww_devoe,
	o => \RegEscolhido[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\RegEscolhido[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	devoe => ww_devoe,
	o => \RegEscolhido[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\RegEscolhido[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	devoe => ww_devoe,
	o => \RegEscolhido[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\saida_mux[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst85|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => \saida_mux[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\saida_mux[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst85|ALT_INV_inst44~0_combout\,
	devoe => ww_devoe,
	o => \saida_mux[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\saida_mux[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst85|ALT_INV_inst37~0_combout\,
	devoe => ww_devoe,
	o => \saida_mux[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\saida_mux[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst85|ALT_INV_inst31~0_combout\,
	devoe => ww_devoe,
	o => \saida_mux[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\saida_mux[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst85|ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \saida_mux[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\saida_mux[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst85|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \saida_mux[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\saida_mux[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst85|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \saida_mux[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\SAIDA_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	devoe => ww_devoe,
	o => \SAIDA_ULA[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\SAIDA_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|LPM_MUX_component|auto_generated|ALT_INV_result_node[2]~9_combout\,
	devoe => ww_devoe,
	o => \SAIDA_ULA[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\SAIDA_ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|LPM_MUX_component|auto_generated|ALT_INV_result_node[1]~12_combout\,
	devoe => ww_devoe,
	o => \SAIDA_ULA[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\SAIDA_ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	devoe => ww_devoe,
	o => \SAIDA_ULA[0]~output_o\);

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

-- Location: LCCOMB_X42_Y22_N24
\inst11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst11~feeder_combout\);

-- Location: LCCOMB_X33_Y22_N28
\inst10|inst19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst19~combout\ = (\inst10|inst9~2_combout\ & \inst10|inst47~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst9~2_combout\,
	datad => \inst10|inst47~2_combout\,
	combout => \inst10|inst19~combout\);

-- Location: LCCOMB_X33_Y22_N22
\inst10|inst30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst30~0_combout\ = \inst10|inst30~q\ $ (((\inst10|inst19~combout\ & (\inst10|inst10~2_combout\ & \inst10|inst11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst19~combout\,
	datab => \inst10|inst10~2_combout\,
	datac => \inst10|inst30~q\,
	datad => \inst10|inst11~2_combout\,
	combout => \inst10|inst30~0_combout\);

-- Location: LCCOMB_X33_Y22_N12
\inst10|inst53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst53~combout\ = ((!\CLK_in~input_o\ & (\inst|inst|altsyncram_component|auto_generated|q_a\(10) & \inst|inst|altsyncram_component|auto_generated|q_a\(11)))) # (!\inst13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~0_combout\,
	datab => \CLK_in~input_o\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst10|inst53~combout\);

-- Location: FF_X33_Y22_N23
\inst10|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst10|inst30~0_combout\,
	clrn => \inst10|ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst30~q\);

-- Location: LCCOMB_X32_Y22_N6
\inst10|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst31~0_combout\ = (!\inst10|inst11~2_combout\) # (!\inst10|inst30~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst30~q\,
	datad => \inst10|inst11~2_combout\,
	combout => \inst10|inst31~0_combout\);

-- Location: LCCOMB_X33_Y22_N0
\inst10|inst31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst31~1_combout\ = \inst10|inst31~q\ $ (((\inst10|inst19~combout\ & (\inst10|inst10~2_combout\ & !\inst10|inst31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst19~combout\,
	datab => \inst10|inst10~2_combout\,
	datac => \inst10|inst31~q\,
	datad => \inst10|inst31~0_combout\,
	combout => \inst10|inst31~1_combout\);

-- Location: FF_X33_Y22_N1
\inst10|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst10|inst31~1_combout\,
	clrn => \inst10|ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst31~q\);

-- Location: LCCOMB_X33_Y22_N26
\inst10|inst40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst40~combout\ = (\inst10|inst11~2_combout\ & (\inst10|inst30~q\ & (\inst10|inst10~2_combout\ & \inst10|inst19~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~2_combout\,
	datab => \inst10|inst30~q\,
	datac => \inst10|inst10~2_combout\,
	datad => \inst10|inst19~combout\,
	combout => \inst10|inst40~combout\);

-- Location: LCCOMB_X33_Y22_N10
\inst10|inst32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst32~0_combout\ = \inst10|inst32~q\ $ (((\inst10|inst31~q\ & \inst10|inst40~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst31~q\,
	datac => \inst10|inst32~q\,
	datad => \inst10|inst40~combout\,
	combout => \inst10|inst32~0_combout\);

-- Location: FF_X33_Y22_N11
\inst10|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst10|inst32~0_combout\,
	clrn => \inst10|ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst32~q\);

-- Location: LCCOMB_X33_Y22_N16
\inst10|inst33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst33~0_combout\ = \inst10|inst33~q\ $ (((\inst10|inst32~q\ & (\inst10|inst31~q\ & \inst10|inst40~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst32~q\,
	datab => \inst10|inst31~q\,
	datac => \inst10|inst33~q\,
	datad => \inst10|inst40~combout\,
	combout => \inst10|inst33~0_combout\);

-- Location: FF_X33_Y22_N17
\inst10|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst10|inst33~0_combout\,
	clrn => \inst10|ALT_INV_inst53~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33~q\);

-- Location: M9K_X37_Y22_N0
\inst|inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020002001088001302084082302040081001080040400000000000000000C0808C102202044042005",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Mem01.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem256x16:inst|rom01:inst|altsyncram:altsyncram_component|altsyncram_nnr3:auto_generated|ALTSYNCRAM",
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
	clk0 => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	portaaddr => \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y22_N30
\inst10|inst25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst25~combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|inst|altsyncram_component|auto_generated|q_a\(10) & (!\CLK_in~input_o\ & \inst|inst|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \CLK_in~input_o\,
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst10|inst25~combout\);

-- Location: LCCOMB_X32_Y22_N12
\inst|inst2|inst48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst48~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(11) & \inst|inst|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst|inst2|inst48~0_combout\);

-- Location: LCCOMB_X32_Y22_N4
\inst10|inst44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst44~combout\ = ((!\inst|inst|altsyncram_component|auto_generated|q_a\(3) & (!\CLK_in~input_o\ & \inst|inst2|inst48~0_combout\))) # (!\inst13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~0_combout\,
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \CLK_in~input_o\,
	datad => \inst|inst2|inst48~0_combout\,
	combout => \inst10|inst44~combout\);

-- Location: LCCOMB_X32_Y22_N10
\inst10|inst11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst11~1_combout\ = (!\inst10|inst44~combout\ & ((\inst10|inst25~combout\) # (\inst10|inst11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst25~combout\,
	datac => \inst10|inst44~combout\,
	datad => \inst10|inst11~1_combout\,
	combout => \inst10|inst11~1_combout\);

-- Location: LCCOMB_X31_Y22_N16
\inst10|inst11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst11~3_combout\ = \inst10|inst11~2_combout\ $ (\inst10|inst11~1_combout\ $ (((\inst10|inst19~combout\ & \inst10|inst10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst19~combout\,
	datab => \inst10|inst10~2_combout\,
	datac => \inst10|inst11~2_combout\,
	datad => \inst10|inst11~1_combout\,
	combout => \inst10|inst11~3_combout\);

-- Location: LCCOMB_X32_Y22_N24
\inst10|inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst11~0_combout\ = (\inst10|inst25~combout\) # (\inst10|inst44~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst25~combout\,
	datad => \inst10|inst44~combout\,
	combout => \inst10|inst11~0_combout\);

-- Location: FF_X31_Y22_N17
\inst10|inst11~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst10|inst11~3_combout\,
	clrn => \inst10|ALT_INV_inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst11~_emulated_q\);

-- Location: LCCOMB_X32_Y22_N8
\inst10|inst11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst11~2_combout\ = (!\inst10|inst44~combout\ & ((\inst10|inst25~combout\) # (\inst10|inst11~_emulated_q\ $ (\inst10|inst11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst25~combout\,
	datab => \inst10|inst44~combout\,
	datac => \inst10|inst11~_emulated_q\,
	datad => \inst10|inst11~1_combout\,
	combout => \inst10|inst11~2_combout\);

-- Location: LCCOMB_X32_Y22_N26
\inst10|inst24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst24~combout\ = ((!\inst|inst|altsyncram_component|auto_generated|q_a\(2) & (!\CLK_in~input_o\ & \inst|inst2|inst48~0_combout\))) # (!\inst13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \CLK_in~input_o\,
	datac => \inst13~0_combout\,
	datad => \inst|inst2|inst48~0_combout\,
	combout => \inst10|inst24~combout\);

-- Location: LCCOMB_X32_Y22_N28
\inst10|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst18~combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(10) & (!\CLK_in~input_o\ & (\inst|inst|altsyncram_component|auto_generated|q_a\(11) & \inst|inst|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \CLK_in~input_o\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst10|inst18~combout\);

-- Location: LCCOMB_X32_Y22_N0
\inst10|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst10~1_combout\ = (!\inst10|inst24~combout\ & ((\inst10|inst18~combout\) # (\inst10|inst10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst18~combout\,
	datac => \inst10|inst24~combout\,
	datad => \inst10|inst10~1_combout\,
	combout => \inst10|inst10~1_combout\);

-- Location: LCCOMB_X32_Y22_N22
\inst10|inst10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst10~3_combout\ = \inst10|inst10~1_combout\ $ (\inst10|inst10~2_combout\ $ (((\inst10|inst9~2_combout\ & \inst10|inst47~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst9~2_combout\,
	datab => \inst10|inst47~2_combout\,
	datac => \inst10|inst10~1_combout\,
	datad => \inst10|inst10~2_combout\,
	combout => \inst10|inst10~3_combout\);

-- Location: LCCOMB_X32_Y22_N2
\inst10|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst10~0_combout\ = (\inst10|inst24~combout\) # (\inst10|inst18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24~combout\,
	datad => \inst10|inst18~combout\,
	combout => \inst10|inst10~0_combout\);

-- Location: FF_X32_Y22_N23
\inst10|inst10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst10|inst10~3_combout\,
	clrn => \inst10|ALT_INV_inst10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst10~_emulated_q\);

-- Location: LCCOMB_X32_Y22_N16
\inst10|inst10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst10~2_combout\ = (!\inst10|inst24~combout\ & ((\inst10|inst18~combout\) # (\inst10|inst10~_emulated_q\ $ (\inst10|inst10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24~combout\,
	datab => \inst10|inst18~combout\,
	datac => \inst10|inst10~_emulated_q\,
	datad => \inst10|inst10~1_combout\,
	combout => \inst10|inst10~2_combout\);

-- Location: LCCOMB_X33_Y22_N6
\inst10|inst23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst23~2_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|inst|altsyncram_component|auto_generated|q_a\(10) & !\inst|inst|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst10|inst23~2_combout\);

-- Location: LCCOMB_X33_Y22_N2
\inst10|inst23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst23~combout\ = (\inst11~q\) # ((\MCLEAR~input_o\) # ((!\CLK_in~input_o\ & \inst10|inst23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \MCLEAR~input_o\,
	datac => \CLK_in~input_o\,
	datad => \inst10|inst23~2_combout\,
	combout => \inst10|inst23~combout\);

-- Location: LCCOMB_X33_Y22_N24
\inst10|inst48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst48~combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(1) & (\inst|inst|altsyncram_component|auto_generated|q_a\(10) & (!\CLK_in~input_o\ & \inst|inst|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \CLK_in~input_o\,
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst10|inst48~combout\);

-- Location: LCCOMB_X34_Y22_N24
\inst10|inst9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst9~1_combout\ = (!\inst10|inst23~combout\ & ((\inst10|inst48~combout\) # (\inst10|inst9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst23~combout\,
	datac => \inst10|inst48~combout\,
	datad => \inst10|inst9~1_combout\,
	combout => \inst10|inst9~1_combout\);

-- Location: LCCOMB_X33_Y22_N20
\inst10|inst9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst9~3_combout\ = \inst10|inst47~2_combout\ $ (\inst10|inst9~2_combout\ $ (\inst10|inst9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst47~2_combout\,
	datab => \inst10|inst9~2_combout\,
	datac => \inst10|inst9~1_combout\,
	combout => \inst10|inst9~3_combout\);

-- Location: LCCOMB_X33_Y22_N18
\inst10|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst9~0_combout\ = (\inst10|inst48~combout\) # (\inst10|inst23~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst48~combout\,
	datac => \inst10|inst23~combout\,
	combout => \inst10|inst9~0_combout\);

-- Location: FF_X33_Y22_N21
\inst10|inst9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst10|inst9~3_combout\,
	clrn => \inst10|ALT_INV_inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst9~_emulated_q\);

-- Location: LCCOMB_X33_Y22_N14
\inst10|inst9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst9~2_combout\ = (!\inst10|inst23~combout\ & ((\inst10|inst48~combout\) # (\inst10|inst9~1_combout\ $ (\inst10|inst9~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst9~1_combout\,
	datab => \inst10|inst48~combout\,
	datac => \inst10|inst23~combout\,
	datad => \inst10|inst9~_emulated_q\,
	combout => \inst10|inst9~2_combout\);

-- Location: LCCOMB_X33_Y22_N4
\inst10|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst4~combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|inst|altsyncram_component|auto_generated|q_a\(0) & (\inst|inst|altsyncram_component|auto_generated|q_a\(10) & !\CLK_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \CLK_in~input_o\,
	combout => \inst10|inst4~combout\);

-- Location: LCCOMB_X33_Y22_N30
\inst10|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst6~combout\ = ((!\inst|inst|altsyncram_component|auto_generated|q_a\(0) & (!\CLK_in~input_o\ & \inst|inst2|inst48~0_combout\))) # (!\inst13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~0_combout\,
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	datac => \CLK_in~input_o\,
	datad => \inst|inst2|inst48~0_combout\,
	combout => \inst10|inst6~combout\);

-- Location: LCCOMB_X32_Y22_N18
\inst10|inst47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst47~1_combout\ = (!\inst10|inst6~combout\ & ((\inst10|inst4~combout\) # (\inst10|inst47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4~combout\,
	datab => \inst10|inst6~combout\,
	datad => \inst10|inst47~1_combout\,
	combout => \inst10|inst47~1_combout\);

-- Location: LCCOMB_X32_Y22_N14
\inst10|inst47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst47~3_combout\ = \inst10|inst47~2_combout\ $ (!\inst10|inst47~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst47~2_combout\,
	datad => \inst10|inst47~1_combout\,
	combout => \inst10|inst47~3_combout\);

-- Location: LCCOMB_X32_Y22_N20
\inst10|inst47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst47~0_combout\ = (\inst10|inst6~combout\) # (\inst10|inst4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst6~combout\,
	datad => \inst10|inst4~combout\,
	combout => \inst10|inst47~0_combout\);

-- Location: FF_X32_Y22_N15
\inst10|inst47~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst10|inst47~3_combout\,
	clrn => \inst10|ALT_INV_inst47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst47~_emulated_q\);

-- Location: LCCOMB_X33_Y22_N8
\inst10|inst47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst47~2_combout\ = (!\inst10|inst6~combout\ & ((\inst10|inst4~combout\) # (\inst10|inst47~1_combout\ $ (\inst10|inst47~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst47~1_combout\,
	datab => \inst10|inst47~_emulated_q\,
	datac => \inst10|inst6~combout\,
	datad => \inst10|inst4~combout\,
	combout => \inst10|inst47~2_combout\);

-- Location: LCCOMB_X42_Y22_N28
\inst|inst2|inst48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst48~1_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(10)) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst|inst2|inst48~1_combout\);

-- Location: FF_X42_Y22_N25
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst11~feeder_combout\,
	clrn => \inst|inst2|ALT_INV_inst48~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: LCCOMB_X42_Y22_N26
\inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (!\MCLEAR~input_o\ & !\inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MCLEAR~input_o\,
	datad => \inst11~q\,
	combout => \inst13~0_combout\);

-- Location: LCCOMB_X42_Y22_N12
\inst12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst12~feeder_combout\);

-- Location: LCCOMB_X42_Y22_N16
\inst|inst2|inst48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst48~2_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(11)) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst|inst2|inst48~2_combout\);

-- Location: FF_X42_Y22_N13
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_in~inputclkctrl_outclk\,
	d => \inst12~feeder_combout\,
	clrn => \inst|inst2|ALT_INV_inst48~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: LCCOMB_X42_Y22_N2
inst17 : cycloneive_lcell_comb
-- Equation(s):
-- \inst17~combout\ = (\inst11~q\) # ((\MCLEAR~input_o\) # (\inst12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \MCLEAR~input_o\,
	datac => \inst12~q\,
	combout => \inst17~combout\);

-- Location: LCCOMB_X66_Y50_N16
\inst|inst4|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst51~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(0) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(3)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(2) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(1))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(0) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(1)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(2) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst4|inst51~0_combout\);

-- Location: LCCOMB_X66_Y50_N10
\inst|inst4|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst44~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(3) $ (!\inst|inst|altsyncram_component|auto_generated|q_a\(1))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(3)) # ((!\inst|inst|altsyncram_component|auto_generated|q_a\(1) & 
-- !\inst|inst|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst4|inst44~0_combout\);

-- Location: LCCOMB_X66_Y50_N12
\inst|inst4|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst37~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(1) & (((\inst|inst|altsyncram_component|auto_generated|q_a\(3)) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(2) & (\inst|inst|altsyncram_component|auto_generated|q_a\(3))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(2) & 
-- ((!\inst|inst|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst4|inst37~0_combout\);

-- Location: LCCOMB_X66_Y50_N6
\inst|inst4|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst31~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(2) & ((!\inst|inst|altsyncram_component|auto_generated|q_a\(0)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(0)) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(3)))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\inst|inst|altsyncram_component|auto_generated|q_a\(3)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(2) $ (!\inst|inst|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst4|inst31~0_combout\);

-- Location: LCCOMB_X66_Y50_N8
\inst|inst4|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst23~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(2) & (((!\inst|inst|altsyncram_component|auto_generated|q_a\(1) & \inst|inst|altsyncram_component|auto_generated|q_a\(0))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(3)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(3)) # ((\inst|inst|altsyncram_component|auto_generated|q_a\(0)) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst4|inst23~0_combout\);

-- Location: LCCOMB_X66_Y50_N26
\inst|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst17~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(3) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(0) & ((!\inst|inst|altsyncram_component|auto_generated|q_a\(1)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(0) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(2))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(3) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(1) $ 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(0))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst4|inst17~0_combout\);

-- Location: LCCOMB_X66_Y50_N24
\inst|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst9~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(1)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(3) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(0))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(3) $ (\inst|inst|altsyncram_component|auto_generated|q_a\(1))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|inst4|inst9~0_combout\);

-- Location: LCCOMB_X112_Y22_N12
\inst|inst3|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst51~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(4) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(7)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(5) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(6))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(4) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(5)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(7) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|inst3|inst51~0_combout\);

-- Location: LCCOMB_X112_Y22_N10
\inst|inst3|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst44~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(7)) # ((!\inst|inst|altsyncram_component|auto_generated|q_a\(4) & 
-- \inst|inst|altsyncram_component|auto_generated|q_a\(6))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(7) $ (\inst|inst|altsyncram_component|auto_generated|q_a\(6))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|inst3|inst44~0_combout\);

-- Location: LCCOMB_X112_Y22_N24
\inst|inst3|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst37~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(5) & (((\inst|inst|altsyncram_component|auto_generated|q_a\(7))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(4)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(6) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(7)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(6) & 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|inst3|inst37~0_combout\);

-- Location: LCCOMB_X112_Y22_N22
\inst|inst3|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst31~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(4) & ((!\inst|inst|altsyncram_component|auto_generated|q_a\(6)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(4) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(6)) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(7)))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(5) & 
-- ((\inst|inst|altsyncram_component|auto_generated|q_a\(7)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(4) $ (!\inst|inst|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|inst3|inst31~0_combout\);

-- Location: LCCOMB_X112_Y22_N28
\inst|inst3|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst23~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(7) & (((!\inst|inst|altsyncram_component|auto_generated|q_a\(5) & \inst|inst|altsyncram_component|auto_generated|q_a\(4))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(7) & (((\inst|inst|altsyncram_component|auto_generated|q_a\(4)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(6))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|inst3|inst23~0_combout\);

-- Location: LCCOMB_X112_Y22_N26
\inst|inst3|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst17~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(4) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(7))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(4) & ((!\inst|inst|altsyncram_component|auto_generated|q_a\(6)))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(4) $ 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(7))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|inst3|inst17~0_combout\);

-- Location: LCCOMB_X112_Y22_N16
\inst|inst3|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst9~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(7) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(5) $ (!\inst|inst|altsyncram_component|auto_generated|q_a\(6))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(7) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(5)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(4) $ 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|inst3|inst9~0_combout\);

-- Location: LCCOMB_X42_Y22_N18
\inst|inst2|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst51~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(8) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(11)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(10) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(9))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(8) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(9)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(10) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|inst2|inst51~0_combout\);

-- Location: LCCOMB_X42_Y22_N0
\inst|inst2|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst44~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(10) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(11) $ (!\inst|inst|altsyncram_component|auto_generated|q_a\(9))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(8)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(10) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(11)) # ((!\inst|inst|altsyncram_component|auto_generated|q_a\(9) & 
-- !\inst|inst|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|inst2|inst44~0_combout\);

-- Location: LCCOMB_X42_Y22_N10
\inst|inst2|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst37~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(9) & (((\inst|inst|altsyncram_component|auto_generated|q_a\(11)) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(8))))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(9) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(10) & (\inst|inst|altsyncram_component|auto_generated|q_a\(11))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(10) & 
-- ((!\inst|inst|altsyncram_component|auto_generated|q_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|inst2|inst37~0_combout\);

-- Location: LCCOMB_X42_Y22_N4
\inst|inst2|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst31~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(9) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(10) & ((!\inst|inst|altsyncram_component|auto_generated|q_a\(8)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(10) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(8)) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(11)))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(9) & 
-- ((\inst|inst|altsyncram_component|auto_generated|q_a\(11)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(10) $ (!\inst|inst|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|inst2|inst31~0_combout\);

-- Location: LCCOMB_X42_Y22_N30
\inst|inst2|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst23~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(10) & (((!\inst|inst|altsyncram_component|auto_generated|q_a\(9) & \inst|inst|altsyncram_component|auto_generated|q_a\(8))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(11)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(10) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(11)) # ((\inst|inst|altsyncram_component|auto_generated|q_a\(8)) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|inst2|inst23~0_combout\);

-- Location: LCCOMB_X38_Y14_N12
\inst|inst2|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst17~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(11) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(8) & ((!\inst|inst|altsyncram_component|auto_generated|q_a\(9)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(8) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(10))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(11) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(9) $ 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(8))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|inst2|inst17~0_combout\);

-- Location: LCCOMB_X38_Y14_N14
\inst|inst2|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst9~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(11) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(10) $ (!\inst|inst|altsyncram_component|auto_generated|q_a\(9))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(8)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(11) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(9)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(10) $ 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|inst2|inst9~0_combout\);

-- Location: M9K_X37_Y25_N0
\inst|inst|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000040002000040001000080002000040000000000000000000000000040001000080001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Mem01.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem256x16:inst|rom01:inst|altsyncram:altsyncram_component|altsyncram_nnr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
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
	clk0 => \ALT_INV_CLK_in~input_o\,
	portaaddr => \inst|inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X46_Y14_N30
\inst|inst1|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst51~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(12) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(15)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(14) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(13))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(12) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(13)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(14) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|inst1|inst51~0_combout\);

-- Location: LCCOMB_X46_Y14_N26
\inst|inst1|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst44~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|inst|altsyncram_component|auto_generated|q_a\(15) $ (((\inst|inst|altsyncram_component|auto_generated|q_a\(14) & 
-- !\inst|inst|altsyncram_component|auto_generated|q_a\(13)))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(12) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(14)) # ((\inst|inst|altsyncram_component|auto_generated|q_a\(15)) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|inst1|inst44~0_combout\);

-- Location: LCCOMB_X46_Y14_N8
\inst|inst1|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst37~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (((\inst|inst|altsyncram_component|auto_generated|q_a\(15))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(12)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(13) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(14) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(15)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(14) & 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|inst1|inst37~0_combout\);

-- Location: LCCOMB_X46_Y14_N24
\inst|inst1|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst31~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(13) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(14))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(12) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(14)) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(15)))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(13) & 
-- ((\inst|inst|altsyncram_component|auto_generated|q_a\(15)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(12) $ (!\inst|inst|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|inst1|inst31~0_combout\);

-- Location: LCCOMB_X46_Y14_N20
\inst|inst1|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst23~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(14) & (((\inst|inst|altsyncram_component|auto_generated|q_a\(12) & !\inst|inst|altsyncram_component|auto_generated|q_a\(13))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(15)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(14) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(12)) # ((\inst|inst|altsyncram_component|auto_generated|q_a\(15)) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|inst1|inst23~0_combout\);

-- Location: LCCOMB_X46_Y14_N10
\inst|inst1|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst17~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(13) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(12) & ((!\inst|inst|altsyncram_component|auto_generated|q_a\(15)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(14))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(13) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(12) $ 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(15))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|inst1|inst17~0_combout\);

-- Location: LCCOMB_X46_Y14_N4
\inst|inst1|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst9~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(14) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(13)) # (\inst|inst|altsyncram_component|auto_generated|q_a\(12) $ 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(15))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(14) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(13) $ (\inst|inst|altsyncram_component|auto_generated|q_a\(15))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|inst1|inst9~0_combout\);

-- Location: LCCOMB_X46_Y14_N22
inst1 : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~combout\ = LCELL((!\CLK_in~input_o\ & (\inst|inst|altsyncram_component|auto_generated|q_a\(14) & !\inst|inst|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_in~input_o\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst1~combout\);

-- Location: CLKCTRL_G17
\inst1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y14_N18
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ = (!\inst|inst|altsyncram_component|auto_generated|q_a\(11) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(10) & (\inst|inst|altsyncram_component|auto_generated|q_a\(9) & 
-- !\inst|inst|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X46_Y14_N12
inst7 : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~combout\ = LCELL((!\CLK_in~input_o\ & (!\inst|inst|altsyncram_component|auto_generated|q_a\(14) & \inst|inst|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_in~input_o\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst7~combout\);

-- Location: CLKCTRL_G15
\inst7~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y14_N30
\inst14|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst~0_combout\ = (!\inst|inst|altsyncram_component|auto_generated|q_a\(10) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(11) & \inst|inst|altsyncram_component|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst14|inst~0_combout\);

-- Location: LCCOMB_X46_Y14_N2
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ = (!\inst14|inst~0_combout\ & (\inst|inst|altsyncram_component|auto_generated|q_a\(0) $ (\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst14|inst~0_combout\,
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X47_Y14_N20
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~5_combout\) # ((\inst|inst|altsyncram_component|auto_generated|q_a\(1) & 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(9) & \inst14|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst14|inst~0_combout\,
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: FF_X47_Y14_N21
\inst102|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|inst~q\);

-- Location: FF_X47_Y14_N23
\inst101|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	asdata => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	clrn => \ALT_INV_inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst101|inst~q\);

-- Location: LCCOMB_X47_Y14_N22
\inst5|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (\inst102|inst~q\ & ((!\inst|inst|altsyncram_component|auto_generated|q_a\(12))))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (((\inst101|inst~q\ & \inst|inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \inst102|inst~q\,
	datac => \inst101|inst~q\,
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y14_N24
\inst14|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst1~0_combout\ = (!\inst|inst|altsyncram_component|auto_generated|q_a\(11) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(10) & \inst|inst|altsyncram_component|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst14|inst1~0_combout\);

-- Location: LCCOMB_X46_Y14_N18
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ = \inst14|inst1~0_combout\ $ (((!\inst14|inst~0_combout\ & \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst1~0_combout\,
	datac => \inst14|inst~0_combout\,
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X47_Y14_N6
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ = (\inst14|inst~0_combout\ & (\inst|inst|altsyncram_component|auto_generated|q_a\(2))) # (!\inst14|inst~0_combout\ & ((\inst|inst|altsyncram_component|auto_generated|q_a\(1) $ 
-- (\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datad => \inst14|inst~0_combout\,
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~11_combout\);

-- Location: LCCOMB_X46_Y14_N28
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ & (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ $ (((\inst14|inst~0_combout\) 
-- # (!\inst|inst|altsyncram_component|auto_generated|q_a\(0)))))) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ & ((\inst14|inst~0_combout\ & (!\inst|inst|altsyncram_component|auto_generated|q_a\(0))) # 
-- (!\inst14|inst~0_combout\ & ((!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~10_combout\,
	datac => \inst14|inst~0_combout\,
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~11_combout\,
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\);

-- Location: LCCOMB_X45_Y14_N16
\inst101|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst101|inst2~0_combout\ = !\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst101|inst2~0_combout\);

-- Location: FF_X45_Y14_N17
\inst101|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst101|inst2~0_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst101|inst2~q\);

-- Location: LCCOMB_X45_Y14_N6
\inst102|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst102|inst2~0_combout\ = !\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst102|inst2~0_combout\);

-- Location: FF_X45_Y14_N7
\inst102|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst102|inst2~0_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|inst2~q\);

-- Location: LCCOMB_X46_Y14_N6
\inst5|LPM_MUX_component|auto_generated|result_node[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (((\inst102|inst2~q\ & !\inst|inst|altsyncram_component|auto_generated|q_a\(12))))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (\inst101|inst2~q\ & ((\inst|inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|inst2~q\,
	datab => \inst102|inst2~q\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X46_Y14_N0
\inst2|inst2|inst1|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst1|inst1~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(1) & (((\inst|inst|altsyncram_component|auto_generated|q_a\(0) & !\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)) # 
-- (!\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(1) & (\inst|inst|altsyncram_component|auto_generated|q_a\(0) & 
-- (!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & !\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	combout => \inst2|inst2|inst1|inst1~0_combout\);

-- Location: FF_X47_Y14_N27
\inst102|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|inst4~q\);

-- Location: LCCOMB_X47_Y14_N4
\inst5|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(12) & ((\inst102|inst4~q\)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|inst|altsyncram_component|auto_generated|q_a\(12) & (\inst101|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst101|inst4~q\,
	datad => \inst102|inst4~q\,
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X47_Y14_N18
\inst2|inst2|inst3|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst3|inst2~0_combout\ = \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ $ (\inst|inst|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst2|inst2|inst3|inst2~0_combout\);

-- Location: LCCOMB_X46_Y14_N14
\inst2|inst|inst2|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst2|inst1~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\) # ((\inst|inst|altsyncram_component|auto_generated|q_a\(0) & 
-- \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(1) & (\inst|inst|altsyncram_component|auto_generated|q_a\(0) & (\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ 
-- & \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	combout => \inst2|inst|inst2|inst1~0_combout\);

-- Location: LCCOMB_X46_Y14_N16
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ = (\inst14|inst~0_combout\ & (\inst14|inst1~0_combout\)) # (!\inst14|inst~0_combout\ & ((\inst14|inst1~0_combout\ & ((\inst2|inst2|inst1|inst1~0_combout\))) # 
-- (!\inst14|inst1~0_combout\ & (\inst2|inst|inst2|inst1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst~0_combout\,
	datab => \inst14|inst1~0_combout\,
	datac => \inst2|inst|inst2|inst1~0_combout\,
	datad => \inst2|inst2|inst1|inst1~0_combout\,
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~8_combout\);

-- Location: LCCOMB_X47_Y14_N30
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ = (\inst14|inst~0_combout\ & (\inst|inst|altsyncram_component|auto_generated|q_a\(3))) # (!\inst14|inst~0_combout\ & ((\inst|inst|altsyncram_component|auto_generated|q_a\(2) $ 
-- (\inst5|LPM_MUX_component|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst14|inst~0_combout\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~7_combout\);

-- Location: LCCOMB_X47_Y14_N24
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ & (\inst14|inst~0_combout\ $ ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~7_combout\)))) # 
-- (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ & ((\inst14|inst~0_combout\ & ((!\inst|inst|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst14|inst~0_combout\ & 
-- (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~8_combout\,
	datab => \inst14|inst~0_combout\,
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~7_combout\,
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\);

-- Location: LCCOMB_X47_Y14_N10
\inst102|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst102|inst3~0_combout\ = !\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	combout => \inst102|inst3~0_combout\);

-- Location: FF_X47_Y14_N11
\inst102|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst102|inst3~0_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|inst3~q\);

-- Location: LCCOMB_X47_Y14_N28
\inst101|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst101|inst3~0_combout\ = !\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	combout => \inst101|inst3~0_combout\);

-- Location: FF_X47_Y14_N29
\inst101|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	d => \inst101|inst3~0_combout\,
	clrn => \ALT_INV_inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst101|inst3~q\);

-- Location: LCCOMB_X47_Y14_N12
\inst5|LPM_MUX_component|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node\(2) = (\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (\inst102|inst3~q\ & (!\inst|inst|altsyncram_component|auto_generated|q_a\(12)))) # 
-- (!\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (((\inst|inst|altsyncram_component|auto_generated|q_a\(12) & \inst101|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \inst102|inst3~q\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \inst101|inst3~q\,
	combout => \inst5|LPM_MUX_component|auto_generated|result_node\(2));

-- Location: LCCOMB_X47_Y14_N0
\inst2|inst2|inst3|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst3|inst2~combout\ = \inst2|inst2|inst3|inst2~0_combout\ $ (((\inst2|inst2|inst1|inst1~0_combout\ & ((\inst|inst|altsyncram_component|auto_generated|q_a\(2)) # (!\inst5|LPM_MUX_component|auto_generated|result_node\(2)))) # 
-- (!\inst2|inst2|inst1|inst1~0_combout\ & (\inst|inst|altsyncram_component|auto_generated|q_a\(2) & !\inst5|LPM_MUX_component|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst1|inst1~0_combout\,
	datab => \inst2|inst2|inst3|inst2~0_combout\,
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	combout => \inst2|inst2|inst3|inst2~combout\);

-- Location: LCCOMB_X38_Y14_N20
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (!\inst|inst|altsyncram_component|auto_generated|q_a\(11) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(10) & ((\inst|inst|altsyncram_component|auto_generated|q_a\(9)) # 
-- (\inst|inst|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X47_Y14_N16
\inst2|inst|inst3|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst3|inst1~0_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(13) & (((\inst102|inst3~q\ & !\inst|inst|altsyncram_component|auto_generated|q_a\(12))))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(13) & 
-- (\inst101|inst3~q\ & ((\inst|inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \inst101|inst3~q\,
	datac => \inst102|inst3~q\,
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst2|inst|inst3|inst1~0_combout\);

-- Location: LCCOMB_X47_Y14_N2
\inst2|inst|inst3|inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst3|inst1~1_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst2|inst|inst3|inst1~0_combout\) # (\inst2|inst|inst2|inst1~0_combout\))) # (!\inst|inst|altsyncram_component|auto_generated|q_a\(2) & 
-- (\inst2|inst|inst3|inst1~0_combout\ & \inst2|inst|inst2|inst1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst2|inst|inst3|inst1~0_combout\,
	datad => \inst2|inst|inst2|inst1~0_combout\,
	combout => \inst2|inst|inst3|inst1~1_combout\);

-- Location: LCCOMB_X47_Y14_N8
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ = (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ & (\inst2|inst|inst3|inst1~1_combout\ $ (\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ 
-- $ (\inst|inst|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datab => \inst2|inst|inst3|inst1~1_combout\,
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datad => \inst|inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X47_Y14_N14
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ = (\inst|inst|altsyncram_component|auto_generated|q_a\(2) & (!\inst|inst|altsyncram_component|auto_generated|q_a\(9) & \inst14|inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst|inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst14|inst~0_combout\,
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X47_Y14_N26
\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~1_combout\) # ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~2_combout\) # 
-- ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ & \inst2|inst2|inst3|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	datab => \inst2|inst2|inst3|inst2~combout\,
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~2_combout\,
	combout => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: FF_X47_Y14_N5
\inst101|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1~clkctrl_outclk\,
	asdata => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	clrn => \ALT_INV_inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst101|inst4~q\);

-- Location: LCCOMB_X75_Y1_N12
\inst115|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst115|inst51~0_combout\ = (\inst101|inst~q\ & ((\inst101|inst4~q\) # (\inst101|inst2~q\ $ (\inst101|inst3~q\)))) # (!\inst101|inst~q\ & ((\inst101|inst2~q\) # (\inst101|inst4~q\ $ (\inst101|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|inst4~q\,
	datab => \inst101|inst2~q\,
	datac => \inst101|inst~q\,
	datad => \inst101|inst3~q\,
	combout => \inst115|inst51~0_combout\);

-- Location: LCCOMB_X75_Y1_N26
\inst115|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst115|inst44~0_combout\ = (\inst101|inst2~q\ & ((\inst101|inst4~q\) # ((!\inst101|inst~q\ & \inst101|inst3~q\)))) # (!\inst101|inst2~q\ & ((\inst101|inst4~q\ $ (\inst101|inst3~q\)) # (!\inst101|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|inst4~q\,
	datab => \inst101|inst2~q\,
	datac => \inst101|inst~q\,
	datad => \inst101|inst3~q\,
	combout => \inst115|inst44~0_combout\);

-- Location: LCCOMB_X75_Y1_N20
\inst115|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst115|inst37~0_combout\ = (\inst101|inst2~q\ & ((\inst101|inst4~q\) # ((!\inst101|inst~q\)))) # (!\inst101|inst2~q\ & ((\inst101|inst3~q\ & (\inst101|inst4~q\)) # (!\inst101|inst3~q\ & ((!\inst101|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|inst4~q\,
	datab => \inst101|inst2~q\,
	datac => \inst101|inst~q\,
	datad => \inst101|inst3~q\,
	combout => \inst115|inst37~0_combout\);

-- Location: LCCOMB_X75_Y1_N30
\inst115|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst115|inst31~0_combout\ = (\inst101|inst2~q\ & ((\inst101|inst~q\ & ((!\inst101|inst3~q\))) # (!\inst101|inst~q\ & ((\inst101|inst3~q\) # (!\inst101|inst4~q\))))) # (!\inst101|inst2~q\ & ((\inst101|inst4~q\) # (\inst101|inst~q\ $ 
-- (!\inst101|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|inst4~q\,
	datab => \inst101|inst2~q\,
	datac => \inst101|inst~q\,
	datad => \inst101|inst3~q\,
	combout => \inst115|inst31~0_combout\);

-- Location: LCCOMB_X75_Y1_N24
\inst115|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst115|inst23~0_combout\ = (\inst101|inst4~q\ & (((!\inst101|inst2~q\ & \inst101|inst~q\)) # (!\inst101|inst3~q\))) # (!\inst101|inst4~q\ & (((\inst101|inst~q\) # (\inst101|inst3~q\)) # (!\inst101|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|inst4~q\,
	datab => \inst101|inst2~q\,
	datac => \inst101|inst~q\,
	datad => \inst101|inst3~q\,
	combout => \inst115|inst23~0_combout\);

-- Location: LCCOMB_X75_Y1_N6
\inst115|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst115|inst17~0_combout\ = (\inst101|inst4~q\ & ((\inst101|inst~q\ & (!\inst101|inst2~q\)) # (!\inst101|inst~q\ & ((!\inst101|inst3~q\))))) # (!\inst101|inst4~q\ & ((\inst101|inst2~q\ $ (!\inst101|inst~q\)) # (!\inst101|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|inst4~q\,
	datab => \inst101|inst2~q\,
	datac => \inst101|inst~q\,
	datad => \inst101|inst3~q\,
	combout => \inst115|inst17~0_combout\);

-- Location: LCCOMB_X75_Y1_N28
\inst115|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst115|inst9~0_combout\ = (\inst101|inst4~q\ & ((\inst101|inst2~q\ $ (!\inst101|inst3~q\)) # (!\inst101|inst~q\))) # (!\inst101|inst4~q\ & ((\inst101|inst2~q\) # (\inst101|inst~q\ $ (!\inst101|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|inst4~q\,
	datab => \inst101|inst2~q\,
	datac => \inst101|inst~q\,
	datad => \inst101|inst3~q\,
	combout => \inst115|inst9~0_combout\);

-- Location: LCCOMB_X72_Y1_N28
\inst114|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst114|inst51~0_combout\ = (\inst102|inst~q\ & ((\inst102|inst4~q\) # (\inst102|inst3~q\ $ (\inst102|inst2~q\)))) # (!\inst102|inst~q\ & ((\inst102|inst2~q\) # (\inst102|inst4~q\ $ (\inst102|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|inst4~q\,
	datab => \inst102|inst3~q\,
	datac => \inst102|inst~q\,
	datad => \inst102|inst2~q\,
	combout => \inst114|inst51~0_combout\);

-- Location: LCCOMB_X72_Y1_N30
\inst114|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst114|inst44~0_combout\ = (\inst102|inst3~q\ & ((\inst102|inst4~q\ $ (!\inst102|inst2~q\)) # (!\inst102|inst~q\))) # (!\inst102|inst3~q\ & ((\inst102|inst4~q\) # ((!\inst102|inst~q\ & !\inst102|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|inst4~q\,
	datab => \inst102|inst3~q\,
	datac => \inst102|inst~q\,
	datad => \inst102|inst2~q\,
	combout => \inst114|inst44~0_combout\);

-- Location: LCCOMB_X72_Y1_N20
\inst114|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst114|inst37~0_combout\ = (\inst102|inst2~q\ & ((\inst102|inst4~q\) # ((!\inst102|inst~q\)))) # (!\inst102|inst2~q\ & ((\inst102|inst3~q\ & (\inst102|inst4~q\)) # (!\inst102|inst3~q\ & ((!\inst102|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|inst4~q\,
	datab => \inst102|inst3~q\,
	datac => \inst102|inst~q\,
	datad => \inst102|inst2~q\,
	combout => \inst114|inst37~0_combout\);

-- Location: LCCOMB_X72_Y1_N26
\inst114|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst114|inst31~0_combout\ = (\inst102|inst2~q\ & ((\inst102|inst3~q\ & ((!\inst102|inst~q\))) # (!\inst102|inst3~q\ & ((\inst102|inst~q\) # (!\inst102|inst4~q\))))) # (!\inst102|inst2~q\ & ((\inst102|inst4~q\) # (\inst102|inst3~q\ $ 
-- (!\inst102|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|inst4~q\,
	datab => \inst102|inst3~q\,
	datac => \inst102|inst~q\,
	datad => \inst102|inst2~q\,
	combout => \inst114|inst31~0_combout\);

-- Location: LCCOMB_X72_Y1_N24
\inst114|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst114|inst23~0_combout\ = (\inst102|inst4~q\ & (((\inst102|inst~q\ & !\inst102|inst2~q\)) # (!\inst102|inst3~q\))) # (!\inst102|inst4~q\ & ((\inst102|inst3~q\) # ((\inst102|inst~q\) # (!\inst102|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|inst4~q\,
	datab => \inst102|inst3~q\,
	datac => \inst102|inst~q\,
	datad => \inst102|inst2~q\,
	combout => \inst114|inst23~0_combout\);

-- Location: LCCOMB_X72_Y1_N6
\inst114|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst114|inst17~0_combout\ = (\inst102|inst4~q\ & ((\inst102|inst~q\ & ((!\inst102|inst2~q\))) # (!\inst102|inst~q\ & (!\inst102|inst3~q\)))) # (!\inst102|inst4~q\ & ((\inst102|inst~q\ $ (!\inst102|inst2~q\)) # (!\inst102|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|inst4~q\,
	datab => \inst102|inst3~q\,
	datac => \inst102|inst~q\,
	datad => \inst102|inst2~q\,
	combout => \inst114|inst17~0_combout\);

-- Location: LCCOMB_X72_Y1_N12
\inst114|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst114|inst9~0_combout\ = (\inst102|inst4~q\ & ((\inst102|inst3~q\ $ (!\inst102|inst2~q\)) # (!\inst102|inst~q\))) # (!\inst102|inst4~q\ & ((\inst102|inst2~q\) # (\inst102|inst3~q\ $ (!\inst102|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|inst4~q\,
	datab => \inst102|inst3~q\,
	datac => \inst102|inst~q\,
	datad => \inst102|inst2~q\,
	combout => \inst114|inst9~0_combout\);

-- Location: LCCOMB_X55_Y8_N12
\inst6|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst51~0_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\) # (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ $ 
-- (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\)))) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ $ 
-- (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\)) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datab => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst6|inst51~0_combout\);

-- Location: LCCOMB_X55_Y8_N14
\inst6|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst44~0_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ $ (((!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & 
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\))))) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\) # 
-- ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datab => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst6|inst44~0_combout\);

-- Location: LCCOMB_X55_Y8_N24
\inst6|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst37~0_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & 
-- ((!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\))) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\)))) # 
-- (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\) # ((!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datab => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst6|inst37~0_combout\);

-- Location: LCCOMB_X55_Y8_N10
\inst6|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31~0_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\) # (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ $ 
-- (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\)))) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & 
-- ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\))) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & ((!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\) # 
-- (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datab => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst6|inst31~0_combout\);

-- Location: LCCOMB_X55_Y8_N16
\inst6|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst23~0_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\) # ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & 
-- \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\)))) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\) # 
-- ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datab => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst6|inst23~0_combout\);

-- Location: LCCOMB_X55_Y8_N18
\inst6|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst17~0_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\))) 
-- # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\)))) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & 
-- ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\) # (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ $ (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datab => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst6|inst17~0_combout\);

-- Location: LCCOMB_X55_Y8_N4
\inst6|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst9~0_combout\ = (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ $ (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\)) # 
-- (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\))) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & ((\inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ $ 
-- (\inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\)) # (!\inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datab => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst2|inst5|LPM_MUX_component|auto_generated|result_node[1]~12_combout\,
	combout => \inst6|inst9~0_combout\);

-- Location: LCCOMB_X62_Y1_N24
\inst85|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst85|inst51~0_combout\ = (\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\) # (\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ $ 
-- (\inst5|LPM_MUX_component|auto_generated|result_node\(2))))) # (!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\) # 
-- (\inst5|LPM_MUX_component|auto_generated|result_node\(2) $ (\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst85|inst51~0_combout\);

-- Location: LCCOMB_X62_Y1_N6
\inst85|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst85|inst44~0_combout\ = (\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & ((\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\) # ((\inst5|LPM_MUX_component|auto_generated|result_node\(2) & 
-- !\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))) # (!\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & ((\inst5|LPM_MUX_component|auto_generated|result_node\(2) $ 
-- (\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\)) # (!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst85|inst44~0_combout\);

-- Location: LCCOMB_X62_Y1_N12
\inst85|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst85|inst37~0_combout\ = (\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & (((\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\) # (!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))) # 
-- (!\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & ((\inst5|LPM_MUX_component|auto_generated|result_node\(2) & (\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\)) # 
-- (!\inst5|LPM_MUX_component|auto_generated|result_node\(2) & ((!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst85|inst37~0_combout\);

-- Location: LCCOMB_X62_Y1_N22
\inst85|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst85|inst31~0_combout\ = (\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & ((\inst5|LPM_MUX_component|auto_generated|result_node\(2) & ((!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\))) # 
-- (!\inst5|LPM_MUX_component|auto_generated|result_node\(2) & ((\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # (!\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\))))) # 
-- (!\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & ((\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\) # (\inst5|LPM_MUX_component|auto_generated|result_node\(2) $ 
-- (!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst85|inst31~0_combout\);

-- Location: LCCOMB_X62_Y1_N28
\inst85|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst85|inst23~0_combout\ = (\inst5|LPM_MUX_component|auto_generated|result_node\(2) & (((!\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)) # 
-- (!\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\))) # (!\inst5|LPM_MUX_component|auto_generated|result_node\(2) & (((\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\) # 
-- (\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)) # (!\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst85|inst23~0_combout\);

-- Location: LCCOMB_X62_Y1_N30
\inst85|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst85|inst17~0_combout\ = (\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & ((\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((!\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\))) # 
-- (!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (!\inst5|LPM_MUX_component|auto_generated|result_node\(2))))) # (!\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & 
-- ((\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ $ (!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)) # (!\inst5|LPM_MUX_component|auto_generated|result_node\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst85|inst17~0_combout\);

-- Location: LCCOMB_X62_Y1_N8
\inst85|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst85|inst9~0_combout\ = (\inst5|LPM_MUX_component|auto_generated|result_node\(2) & ((\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\) # (\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ $ 
-- (\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))) # (!\inst5|LPM_MUX_component|auto_generated|result_node\(2) & ((\inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ $ 
-- (\inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\)) # (!\inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \inst5|LPM_MUX_component|auto_generated|result_node\(2),
	datac => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datad => \inst5|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst85|inst9~0_combout\);

ww_MasterCLEAR <= \MasterCLEAR~output_o\;

ww_JUMP_UC <= \JUMP_UC~output_o\;

ww_ResetREG <= \ResetREG~output_o\;

ww_CLEARD <= \CLEARD~output_o\;

ww_b_out(7) <= \b_out[7]~output_o\;

ww_b_out(6) <= \b_out[6]~output_o\;

ww_b_out(5) <= \b_out[5]~output_o\;

ww_b_out(4) <= \b_out[4]~output_o\;

ww_b_out(3) <= \b_out[3]~output_o\;

ww_b_out(2) <= \b_out[2]~output_o\;

ww_b_out(1) <= \b_out[1]~output_o\;

ww_b_out(0) <= \b_out[0]~output_o\;

ww_display_out1(6) <= \display_out1[6]~output_o\;

ww_display_out1(5) <= \display_out1[5]~output_o\;

ww_display_out1(4) <= \display_out1[4]~output_o\;

ww_display_out1(3) <= \display_out1[3]~output_o\;

ww_display_out1(2) <= \display_out1[2]~output_o\;

ww_display_out1(1) <= \display_out1[1]~output_o\;

ww_display_out1(0) <= \display_out1[0]~output_o\;

ww_display_out2(6) <= \display_out2[6]~output_o\;

ww_display_out2(5) <= \display_out2[5]~output_o\;

ww_display_out2(4) <= \display_out2[4]~output_o\;

ww_display_out2(3) <= \display_out2[3]~output_o\;

ww_display_out2(2) <= \display_out2[2]~output_o\;

ww_display_out2(1) <= \display_out2[1]~output_o\;

ww_display_out2(0) <= \display_out2[0]~output_o\;

ww_display_out3(6) <= \display_out3[6]~output_o\;

ww_display_out3(5) <= \display_out3[5]~output_o\;

ww_display_out3(4) <= \display_out3[4]~output_o\;

ww_display_out3(3) <= \display_out3[3]~output_o\;

ww_display_out3(2) <= \display_out3[2]~output_o\;

ww_display_out3(1) <= \display_out3[1]~output_o\;

ww_display_out3(0) <= \display_out3[0]~output_o\;

ww_display_out4(6) <= \display_out4[6]~output_o\;

ww_display_out4(5) <= \display_out4[5]~output_o\;

ww_display_out4(4) <= \display_out4[4]~output_o\;

ww_display_out4(3) <= \display_out4[3]~output_o\;

ww_display_out4(2) <= \display_out4[2]~output_o\;

ww_display_out4(1) <= \display_out4[1]~output_o\;

ww_display_out4(0) <= \display_out4[0]~output_o\;

ww_display_reg1(6) <= \display_reg1[6]~output_o\;

ww_display_reg1(5) <= \display_reg1[5]~output_o\;

ww_display_reg1(4) <= \display_reg1[4]~output_o\;

ww_display_reg1(3) <= \display_reg1[3]~output_o\;

ww_display_reg1(2) <= \display_reg1[2]~output_o\;

ww_display_reg1(1) <= \display_reg1[1]~output_o\;

ww_display_reg1(0) <= \display_reg1[0]~output_o\;

ww_RgTO(1) <= \RgTO[1]~output_o\;

ww_RgTO(0) <= \RgTO[0]~output_o\;

ww_RgIN(1) <= \RgIN[1]~output_o\;

ww_RgIN(0) <= \RgIN[0]~output_o\;

ww_ULAop(1) <= \ULAop[1]~output_o\;

ww_ULAop(0) <= \ULAop[0]~output_o\;

ww_display_reg2(6) <= \display_reg2[6]~output_o\;

ww_display_reg2(5) <= \display_reg2[5]~output_o\;

ww_display_reg2(4) <= \display_reg2[4]~output_o\;

ww_display_reg2(3) <= \display_reg2[3]~output_o\;

ww_display_reg2(2) <= \display_reg2[2]~output_o\;

ww_display_reg2(1) <= \display_reg2[1]~output_o\;

ww_display_reg2(0) <= \display_reg2[0]~output_o\;

ww_display_ula(6) <= \display_ula[6]~output_o\;

ww_display_ula(5) <= \display_ula[5]~output_o\;

ww_display_ula(4) <= \display_ula[4]~output_o\;

ww_display_ula(3) <= \display_ula[3]~output_o\;

ww_display_ula(2) <= \display_ula[2]~output_o\;

ww_display_ula(1) <= \display_ula[1]~output_o\;

ww_display_ula(0) <= \display_ula[0]~output_o\;

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

ww_REG_1(3) <= \REG_1[3]~output_o\;

ww_REG_1(2) <= \REG_1[2]~output_o\;

ww_REG_1(1) <= \REG_1[1]~output_o\;

ww_REG_1(0) <= \REG_1[0]~output_o\;

ww_REG_2(3) <= \REG_2[3]~output_o\;

ww_REG_2(2) <= \REG_2[2]~output_o\;

ww_REG_2(1) <= \REG_2[1]~output_o\;

ww_REG_2(0) <= \REG_2[0]~output_o\;

ww_RegEscolhido(3) <= \RegEscolhido[3]~output_o\;

ww_RegEscolhido(2) <= \RegEscolhido[2]~output_o\;

ww_RegEscolhido(1) <= \RegEscolhido[1]~output_o\;

ww_RegEscolhido(0) <= \RegEscolhido[0]~output_o\;

ww_saida_mux(6) <= \saida_mux[6]~output_o\;

ww_saida_mux(5) <= \saida_mux[5]~output_o\;

ww_saida_mux(4) <= \saida_mux[4]~output_o\;

ww_saida_mux(3) <= \saida_mux[3]~output_o\;

ww_saida_mux(2) <= \saida_mux[2]~output_o\;

ww_saida_mux(1) <= \saida_mux[1]~output_o\;

ww_saida_mux(0) <= \saida_mux[0]~output_o\;

ww_SAIDA_ULA(3) <= \SAIDA_ULA[3]~output_o\;

ww_SAIDA_ULA(2) <= \SAIDA_ULA[2]~output_o\;

ww_SAIDA_ULA(1) <= \SAIDA_ULA[1]~output_o\;

ww_SAIDA_ULA(0) <= \SAIDA_ULA[0]~output_o\;
END structure;


