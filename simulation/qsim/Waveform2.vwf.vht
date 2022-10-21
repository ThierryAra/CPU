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
-- Generated on "10/19/2022 23:04:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Count8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Count8_vhd_vec_tst IS
END Count8_vhd_vec_tst;
ARCHITECTURE Count8_arch OF Count8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK_in : STD_LOGIC;
SIGNAL JUMP : STD_LOGIC;
SIGNAL MCLEAR : STD_LOGIC;
COMPONENT Count8
	PORT (
	b_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK_in : IN STD_LOGIC;
	JUMP : IN STD_LOGIC;
	MCLEAR : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Count8
	PORT MAP (
-- list connections between master ports and signals
	b_out => b_out,
	C => C,
	CLK_in => CLK_in,
	JUMP => JUMP,
	MCLEAR => MCLEAR
	);
-- C[3]
t_prcs_C_3: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		C(3) <= '0';
		WAIT FOR 8000 ps;
		C(3) <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
	C(3) <= '0';
WAIT;
END PROCESS t_prcs_C_3;
-- C[2]
t_prcs_C_2: PROCESS
BEGIN
LOOP
	C(2) <= '0';
	WAIT FOR 4000 ps;
	C(2) <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_C_2;
-- C[1]
t_prcs_C_1: PROCESS
BEGIN
LOOP
	C(1) <= '0';
	WAIT FOR 2000 ps;
	C(1) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_C_1;
-- C[0]
t_prcs_C_0: PROCESS
BEGIN
LOOP
	C(0) <= '0';
	WAIT FOR 1000 ps;
	C(0) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_C_0;

-- CLK_in
t_prcs_CLK_in: PROCESS
BEGIN
	CLK_in <= '0';
WAIT;
END PROCESS t_prcs_CLK_in;

-- JUMP
t_prcs_JUMP: PROCESS
BEGIN
LOOP
	JUMP <= '0';
	WAIT FOR 5000 ps;
	JUMP <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_JUMP;

-- MCLEAR
t_prcs_MCLEAR: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		MCLEAR <= '0';
		WAIT FOR 15000 ps;
		MCLEAR <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	MCLEAR <= '0';
WAIT;
END PROCESS t_prcs_MCLEAR;
END Count8_arch;
