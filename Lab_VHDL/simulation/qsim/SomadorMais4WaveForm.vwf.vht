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
-- Generated on "10/26/2018 19:42:33"
                                                             
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
SIGNAL ENTRADA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SAIDA : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT SomadorMais4
	PORT (
	ENTRADA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SomadorMais4
	PORT MAP (
-- list connections between master ports and signals
	ENTRADA => ENTRADA,
	SAIDA => SAIDA
	);
-- ENTRADA[15]
t_prcs_ENTRADA_15: PROCESS
BEGIN
	ENTRADA(15) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_15;
-- ENTRADA[14]
t_prcs_ENTRADA_14: PROCESS
BEGIN
	ENTRADA(14) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_14;
-- ENTRADA[13]
t_prcs_ENTRADA_13: PROCESS
BEGIN
	ENTRADA(13) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_13;
-- ENTRADA[12]
t_prcs_ENTRADA_12: PROCESS
BEGIN
	ENTRADA(12) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_12;
-- ENTRADA[11]
t_prcs_ENTRADA_11: PROCESS
BEGIN
	ENTRADA(11) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_11;
-- ENTRADA[10]
t_prcs_ENTRADA_10: PROCESS
BEGIN
	ENTRADA(10) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_10;
-- ENTRADA[9]
t_prcs_ENTRADA_9: PROCESS
BEGIN
	ENTRADA(9) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_9;
-- ENTRADA[8]
t_prcs_ENTRADA_8: PROCESS
BEGIN
	ENTRADA(8) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_8;
-- ENTRADA[7]
t_prcs_ENTRADA_7: PROCESS
BEGIN
	ENTRADA(7) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_7;
-- ENTRADA[6]
t_prcs_ENTRADA_6: PROCESS
BEGIN
	ENTRADA(6) <= '0';
	WAIT FOR 640000 ps;
	ENTRADA(6) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA_6;
-- ENTRADA[5]
t_prcs_ENTRADA_5: PROCESS
BEGIN
	ENTRADA(5) <= '0';
	WAIT FOR 320000 ps;
	ENTRADA(5) <= '1';
	WAIT FOR 320000 ps;
	ENTRADA(5) <= '0';
	WAIT FOR 320000 ps;
	ENTRADA(5) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA_5;
-- ENTRADA[4]
t_prcs_ENTRADA_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		ENTRADA(4) <= '0';
		WAIT FOR 160000 ps;
		ENTRADA(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	ENTRADA(4) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_4;
-- ENTRADA[3]
t_prcs_ENTRADA_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ENTRADA(3) <= '0';
		WAIT FOR 80000 ps;
		ENTRADA(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	ENTRADA(3) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_3;
-- ENTRADA[2]
t_prcs_ENTRADA_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ENTRADA(2) <= '0';
		WAIT FOR 40000 ps;
		ENTRADA(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ENTRADA(2) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_2;
-- ENTRADA[1]
t_prcs_ENTRADA_1: PROCESS
BEGIN
LOOP
	ENTRADA(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ENTRADA_1;
-- ENTRADA[0]
t_prcs_ENTRADA_0: PROCESS
BEGIN
LOOP
	ENTRADA(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ENTRADA_0;
END SomadorMais4_arch;
