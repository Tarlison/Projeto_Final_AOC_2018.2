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
-- Generated on "10/25/2018 14:02:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ShiftEsquerda
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ShiftEsquerda_vhd_vec_tst IS
END ShiftEsquerda_vhd_vec_tst;
ARCHITECTURE ShiftEsquerda_arch OF ShiftEsquerda_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL SAIDA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL VALOR : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ShiftEsquerda
	PORT (
	SAIDA : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	VALOR : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ShiftEsquerda
	PORT MAP (
-- list connections between master ports and signals
	SAIDA => SAIDA,
	VALOR => VALOR
	);
-- VALOR[15]
t_prcs_VALOR_15: PROCESS
BEGIN
	VALOR(15) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_15;
-- VALOR[14]
t_prcs_VALOR_14: PROCESS
BEGIN
	VALOR(14) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_14;
-- VALOR[13]
t_prcs_VALOR_13: PROCESS
BEGIN
	VALOR(13) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_13;
-- VALOR[12]
t_prcs_VALOR_12: PROCESS
BEGIN
	VALOR(12) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_12;
-- VALOR[11]
t_prcs_VALOR_11: PROCESS
BEGIN
	VALOR(11) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_11;
-- VALOR[10]
t_prcs_VALOR_10: PROCESS
BEGIN
	VALOR(10) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_10;
-- VALOR[9]
t_prcs_VALOR_9: PROCESS
BEGIN
	VALOR(9) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_9;
-- VALOR[8]
t_prcs_VALOR_8: PROCESS
BEGIN
	VALOR(8) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_8;
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
	WAIT FOR 640000 ps;
	VALOR(6) <= '1';
WAIT;
END PROCESS t_prcs_VALOR_6;
-- VALOR[5]
t_prcs_VALOR_5: PROCESS
BEGIN
	VALOR(5) <= '0';
	WAIT FOR 320000 ps;
	VALOR(5) <= '1';
	WAIT FOR 320000 ps;
	VALOR(5) <= '0';
	WAIT FOR 320000 ps;
	VALOR(5) <= '1';
WAIT;
END PROCESS t_prcs_VALOR_5;
-- VALOR[4]
t_prcs_VALOR_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		VALOR(4) <= '0';
		WAIT FOR 160000 ps;
		VALOR(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	VALOR(4) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_4;
-- VALOR[3]
t_prcs_VALOR_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		VALOR(3) <= '0';
		WAIT FOR 80000 ps;
		VALOR(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	VALOR(3) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_3;
-- VALOR[2]
t_prcs_VALOR_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		VALOR(2) <= '0';
		WAIT FOR 40000 ps;
		VALOR(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	VALOR(2) <= '0';
WAIT;
END PROCESS t_prcs_VALOR_2;
-- VALOR[1]
t_prcs_VALOR_1: PROCESS
BEGIN
LOOP
	VALOR(1) <= '0';
	WAIT FOR 20000 ps;
	VALOR(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_VALOR_1;
-- VALOR[0]
t_prcs_VALOR_0: PROCESS
BEGIN
LOOP
	VALOR(0) <= '0';
	WAIT FOR 10000 ps;
	VALOR(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_VALOR_0;
END ShiftEsquerda_arch;
