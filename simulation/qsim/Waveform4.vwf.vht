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
-- Generated on "10/21/2022 16:05:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          dmux4bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dmux4bits_vhd_vec_tst IS
END dmux4bits_vhd_vec_tst;
ARCHITECTURE dmux4bits_arch OF dmux4bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dmux_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dmux_out1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dmux_out2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dmux_out3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dmux_out4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT dmux4bits
	PORT (
	dmux_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dmux_out1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	dmux_out2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	dmux_out3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	dmux_out4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : dmux4bits
	PORT MAP (
-- list connections between master ports and signals
	dmux_in => dmux_in,
	dmux_out1 => dmux_out1,
	dmux_out2 => dmux_out2,
	dmux_out3 => dmux_out3,
	dmux_out4 => dmux_out4,
	sel => sel
	);
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
LOOP
	sel(1) <= '0';
	WAIT FOR 2000 ps;
	sel(1) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
LOOP
	sel(0) <= '0';
	WAIT FOR 1000 ps;
	sel(0) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_0;
END dmux4bits_arch;
