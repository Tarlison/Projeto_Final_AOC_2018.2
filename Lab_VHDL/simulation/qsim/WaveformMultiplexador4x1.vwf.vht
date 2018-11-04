-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/21/2018 17:37:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Multiplexador4x1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Multiplexador4x1_vhd_vec_tst IS
END Multiplexador4x1_vhd_vec_tst;
ARCHITECTURE Multiplexador4x1_arch OF Multiplexador4x1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL B : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL C : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL D : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL S : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL SAIDA : STD_LOGIC_VECTOR(0 TO 1);
COMPONENT Multiplexador4x1
	PORT (
	A : IN STD_LOGIC_VECTOR(0 TO 1);
	B : IN STD_LOGIC_VECTOR(0 TO 1);
	C : IN STD_LOGIC_VECTOR(0 TO 1);
	D : IN STD_LOGIC_VECTOR(0 TO 1);
	S : IN STD_LOGIC_VECTOR(0 TO 1);
	SAIDA : BUFFER STD_LOGIC_VECTOR(0 TO 1)
	);
END COMPONENT;
BEGIN
	i1 : Multiplexador4x1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	S => S,
	SAIDA => SAIDA
	);
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
-- C[1]
t_prcs_C_1: PROCESS
BEGIN
	C(1) <= '0';
WAIT;
END PROCESS t_prcs_C_1;
-- C[0]
t_prcs_C_0: PROCESS
BEGIN
	C(0) <= '0';
WAIT;
END PROCESS t_prcs_C_0;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	S(1) <= '0';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	S(0) <= '0';
WAIT;
END PROCESS t_prcs_S_0;
END Multiplexador4x1_arch;
