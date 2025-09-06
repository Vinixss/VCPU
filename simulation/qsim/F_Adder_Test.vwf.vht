-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- Generated on "09/06/2025 16:05:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          F_Adder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY F_Adder_vhd_vec_tst IS
END F_Adder_vhd_vec_tst;
ARCHITECTURE F_Adder_arch OF F_Adder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C_IN : STD_LOGIC;
SIGNAL C_OUT : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT F_Adder
	PORT (
	C_IN : IN STD_LOGIC;
	C_OUT : OUT STD_LOGIC;
	S : OUT STD_LOGIC;
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : F_Adder
	PORT MAP (
-- list connections between master ports and signals
	C_IN => C_IN,
	C_OUT => C_OUT,
	S => S,
	X => X,
	Y => Y
	);

-- X
t_prcs_X: PROCESS
BEGIN
LOOP
	X <= '0';
	WAIT FOR 25000 ps;
	X <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
LOOP
	Y <= '0';
	WAIT FOR 50000 ps;
	Y <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Y;

-- C_IN
t_prcs_C_IN: PROCESS
BEGIN
LOOP
	C_IN <= '0';
	WAIT FOR 100000 ps;
	C_IN <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_C_IN;
END F_Adder_arch;
