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
-- Generated on "10/18/2022 19:14:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mem256x16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mem256x16_vhd_vec_tst IS
END mem256x16_vhd_vec_tst;
ARCHITECTURE mem256x16_arch OF mem256x16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a11 : STD_LOGIC;
SIGNAL a21 : STD_LOGIC;
SIGNAL a31 : STD_LOGIC;
SIGNAL a41 : STD_LOGIC;
SIGNAL b1 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL b3 : STD_LOGIC;
SIGNAL b4 : STD_LOGIC;
SIGNAL b_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b_s : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL c1 : STD_LOGIC;
SIGNAL c2 : STD_LOGIC;
SIGNAL c3 : STD_LOGIC;
SIGNAL c4 : STD_LOGIC;
SIGNAL CLKin : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL d3 : STD_LOGIC;
SIGNAL d4 : STD_LOGIC;
SIGNAL e1 : STD_LOGIC;
SIGNAL e2 : STD_LOGIC;
SIGNAL e3 : STD_LOGIC;
SIGNAL e4 : STD_LOGIC;
SIGNAL f1 : STD_LOGIC;
SIGNAL f2 : STD_LOGIC;
SIGNAL f3 : STD_LOGIC;
SIGNAL f4 : STD_LOGIC;
SIGNAL g1 : STD_LOGIC;
SIGNAL g2 : STD_LOGIC;
SIGNAL g3 : STD_LOGIC;
SIGNAL g4 : STD_LOGIC;
COMPONENT mem256x16
	PORT (
	a11 : OUT STD_LOGIC;
	a21 : OUT STD_LOGIC;
	a31 : OUT STD_LOGIC;
	a41 : OUT STD_LOGIC;
	b1 : OUT STD_LOGIC;
	b2 : OUT STD_LOGIC;
	b3 : OUT STD_LOGIC;
	b4 : OUT STD_LOGIC;
	b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b_s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	c1 : OUT STD_LOGIC;
	c2 : OUT STD_LOGIC;
	c3 : OUT STD_LOGIC;
	c4 : OUT STD_LOGIC;
	CLKin : IN STD_LOGIC;
	d1 : OUT STD_LOGIC;
	d2 : OUT STD_LOGIC;
	d3 : OUT STD_LOGIC;
	d4 : OUT STD_LOGIC;
	e1 : OUT STD_LOGIC;
	e2 : OUT STD_LOGIC;
	e3 : OUT STD_LOGIC;
	e4 : OUT STD_LOGIC;
	f1 : OUT STD_LOGIC;
	f2 : OUT STD_LOGIC;
	f3 : OUT STD_LOGIC;
	f4 : OUT STD_LOGIC;
	g1 : OUT STD_LOGIC;
	g2 : OUT STD_LOGIC;
	g3 : OUT STD_LOGIC;
	g4 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mem256x16
	PORT MAP (
-- list connections between master ports and signals
	a11 => a11,
	a21 => a21,
	a31 => a31,
	a41 => a41,
	b1 => b1,
	b2 => b2,
	b3 => b3,
	b4 => b4,
	b_in => b_in,
	b_s => b_s,
	c1 => c1,
	c2 => c2,
	c3 => c3,
	c4 => c4,
	CLKin => CLKin,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	e1 => e1,
	e2 => e2,
	e3 => e3,
	e4 => e4,
	f1 => f1,
	f2 => f2,
	f3 => f3,
	f4 => f4,
	g1 => g1,
	g2 => g2,
	g3 => g3,
	g4 => g4
	);
-- b_in[7]
t_prcs_b_in_7: PROCESS
BEGIN
	b_in(7) <= '0';
WAIT;
END PROCESS t_prcs_b_in_7;
-- b_in[6]
t_prcs_b_in_6: PROCESS
BEGIN
	b_in(6) <= '0';
WAIT;
END PROCESS t_prcs_b_in_6;
-- b_in[5]
t_prcs_b_in_5: PROCESS
BEGIN
	b_in(5) <= '0';
WAIT;
END PROCESS t_prcs_b_in_5;
-- b_in[4]
t_prcs_b_in_4: PROCESS
BEGIN
	b_in(4) <= '0';
WAIT;
END PROCESS t_prcs_b_in_4;
-- b_in[3]
t_prcs_b_in_3: PROCESS
BEGIN
	b_in(3) <= '0';
WAIT;
END PROCESS t_prcs_b_in_3;
-- b_in[2]
t_prcs_b_in_2: PROCESS
BEGIN
	b_in(2) <= '0';
WAIT;
END PROCESS t_prcs_b_in_2;
-- b_in[1]
t_prcs_b_in_1: PROCESS
BEGIN
	b_in(1) <= '0';
WAIT;
END PROCESS t_prcs_b_in_1;
-- b_in[0]
t_prcs_b_in_0: PROCESS
BEGIN
	b_in(0) <= '0';
WAIT;
END PROCESS t_prcs_b_in_0;

-- CLKin
t_prcs_CLKin: PROCESS
BEGIN
LOOP
	CLKin <= '0';
	WAIT FOR 500 ps;
	CLKin <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLKin;
END mem256x16_arch;
