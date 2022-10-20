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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/19/2022 22:47:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLEARD : STD_LOGIC;
SIGNAL CLK_in : STD_LOGIC;
SIGNAL contador : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL JUMP_UC : STD_LOGIC;
SIGNAL MasterCLEAR : STD_LOGIC;
SIGNAL MCLEAR : STD_LOGIC;
SIGNAL MEM : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL new_clock : STD_LOGIC;
SIGNAL ResetREG : STD_LOGIC;
SIGNAL RgIN : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RgTO : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ULA0 : STD_LOGIC;
SIGNAL ULA1 : STD_LOGIC;
COMPONENT CPU
	PORT (
	CLEARD : OUT STD_LOGIC;
	CLK_in : IN STD_LOGIC;
	contador : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	JUMP_UC : OUT STD_LOGIC;
	MasterCLEAR : OUT STD_LOGIC;
	MCLEAR : IN STD_LOGIC;
	MEM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	new_clock : IN STD_LOGIC;
	ResetREG : OUT STD_LOGIC;
	RgIN : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RgTO : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	ULA0 : OUT STD_LOGIC;
	ULA1 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	CLEARD => CLEARD,
	CLK_in => CLK_in,
	contador => contador,
	JUMP_UC => JUMP_UC,
	MasterCLEAR => MasterCLEAR,
	MCLEAR => MCLEAR,
	MEM => MEM,
	new_clock => new_clock,
	ResetREG => ResetREG,
	RgIN => RgIN,
	RgTO => RgTO,
	ULA0 => ULA0,
	ULA1 => ULA1
	);

-- CLK_in
t_prcs_CLK_in: PROCESS
BEGIN
LOOP
	CLK_in <= '0';
	WAIT FOR 500 ps;
	CLK_in <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_in;

-- MCLEAR
t_prcs_MCLEAR: PROCESS
BEGIN
	MCLEAR <= '1';
	WAIT FOR 2000 ps;
	FOR i IN 1 TO 3
	LOOP
		MCLEAR <= '0';
		WAIT FOR 150000 ps;
		MCLEAR <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	MCLEAR <= '0';
WAIT;
END PROCESS t_prcs_MCLEAR;
END CPU_arch;
