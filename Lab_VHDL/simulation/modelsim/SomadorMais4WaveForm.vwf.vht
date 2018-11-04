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
-- Generated on "10/21/2018 19:13:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SomadorMais4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SomadorMais4_vhd_vec_tst IS
END SomadorMais4_vhd_vec_tst;
ARCHITECTURE SomadorMais4_arch OF SomadorMais4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL RESULTADO : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL VALOR : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT SomadorMais4
	PORT (
	RESULTADO : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	VALOR : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SomadorMais4
	PORT MAP (
-- list connections between master ports and signals
	RESULTADO => RESULTADO,
	VALOR => VALOR
	);
-- VALOR[7]
t_prcs_VALOR_7: PROCESS
BEGIN
	VALOR(7) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_7;
-- VALOR[6]
t_prcs_VALOR_6: PROCESS
BEGIN
	VALOR(6) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_6;
-- VALOR[5]
t_prcs_VALOR_5: PROCESS
BEGIN
	VALOR(5) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_5;
-- VALOR[4]
t_prcs_VALOR_4: PROCESS
BEGIN
	VALOR(4) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_4;
-- VALOR[3]
t_prcs_VALOR_3: PROCESS
BEGIN
	VALOR(3) <= '1';
WAIT;
END PROCESS t_prcs_VALOR_3;
-- VALOR[2]
t_prcs_VALOR_2: PROCESS
BEGIN
	VALOR(2) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_2;
-- VALOR[1]
t_prcs_VALOR_1: PROCESS
BEGIN
	VALOR(1) <= '1';
WAIT;
END PROCESS t_prcs_VALOR_1;
-- VALOR[0]
t_prcs_VALOR_0: PROCESS
BEGIN
	VALOR(0) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_0;
END SomadorMais4_arch;
