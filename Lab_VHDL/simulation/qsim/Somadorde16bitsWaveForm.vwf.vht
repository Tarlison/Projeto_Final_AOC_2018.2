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
-- Generated on "10/26/2018 22:02:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Somadorde16bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Somadorde16bits_vhd_vec_tst IS
END Somadorde16bits_vhd_vec_tst;
ARCHITECTURE Somadorde16bits_arch OF Somadorde16bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ENTRADA1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ENTRADA2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SAIDA : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Somadorde16bits
	PORT (
	ENTRADA1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ENTRADA2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Somadorde16bits
	PORT MAP (
-- list connections between master ports and signals
	ENTRADA1 => ENTRADA1,
	ENTRADA2 => ENTRADA2,
	SAIDA => SAIDA
	);
-- ENTRADA1[15]
t_prcs_ENTRADA1_15: PROCESS
BEGIN
	ENTRADA1(15) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA1_15;
-- ENTRADA1[14]
t_prcs_ENTRADA1_14: PROCESS
BEGIN
	ENTRADA1(14) <= '0';
	WAIT FOR 512000 ps;
	ENTRADA1(14) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA1_14;
-- ENTRADA1[13]
t_prcs_ENTRADA1_13: PROCESS
BEGIN
	ENTRADA1(13) <= '0';
	WAIT FOR 256000 ps;
	ENTRADA1(13) <= '1';
	WAIT FOR 256000 ps;
	ENTRADA1(13) <= '0';
	WAIT FOR 256000 ps;
	ENTRADA1(13) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA1_13;
-- ENTRADA1[12]
t_prcs_ENTRADA1_12: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		ENTRADA1(12) <= '0';
		WAIT FOR 128000 ps;
		ENTRADA1(12) <= '1';
		WAIT FOR 128000 ps;
	END LOOP;
	ENTRADA1(12) <= '0';
	WAIT FOR 128000 ps;
	ENTRADA1(12) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA1_12;
-- ENTRADA1[11]
t_prcs_ENTRADA1_11: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		ENTRADA1(11) <= '0';
		WAIT FOR 64000 ps;
		ENTRADA1(11) <= '1';
		WAIT FOR 64000 ps;
	END LOOP;
	ENTRADA1(11) <= '0';
	WAIT FOR 64000 ps;
	ENTRADA1(11) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA1_11;
-- ENTRADA1[10]
t_prcs_ENTRADA1_10: PROCESS
BEGIN
	FOR i IN 1 TO 15
	LOOP
		ENTRADA1(10) <= '0';
		WAIT FOR 32000 ps;
		ENTRADA1(10) <= '1';
		WAIT FOR 32000 ps;
	END LOOP;
	ENTRADA1(10) <= '0';
	WAIT FOR 32000 ps;
	ENTRADA1(10) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA1_10;
-- ENTRADA1[9]
t_prcs_ENTRADA1_9: PROCESS
BEGIN
	FOR i IN 1 TO 31
	LOOP
		ENTRADA1(9) <= '0';
		WAIT FOR 16000 ps;
		ENTRADA1(9) <= '1';
		WAIT FOR 16000 ps;
	END LOOP;
	ENTRADA1(9) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA1_9;
-- ENTRADA1[8]
t_prcs_ENTRADA1_8: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		ENTRADA1(8) <= '0';
		WAIT FOR 8000 ps;
		ENTRADA1(8) <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
	ENTRADA1(8) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA1_8;
-- ENTRADA1[7]
t_prcs_ENTRADA1_7: PROCESS
BEGIN
LOOP
	ENTRADA1(7) <= '0';
	WAIT FOR 4000 ps;
	ENTRADA1(7) <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ENTRADA1_7;
-- ENTRADA1[6]
t_prcs_ENTRADA1_6: PROCESS
BEGIN
LOOP
	ENTRADA1(6) <= '0';
	WAIT FOR 2000 ps;
	ENTRADA1(6) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ENTRADA1_6;
-- ENTRADA1[5]
t_prcs_ENTRADA1_5: PROCESS
BEGIN
LOOP
	ENTRADA1(5) <= '0';
	WAIT FOR 1000 ps;
	ENTRADA1(5) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ENTRADA1_5;
-- ENTRADA1[4]
t_prcs_ENTRADA1_4: PROCESS
BEGIN
	ENTRADA1(4) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA1_4;
-- ENTRADA1[3]
t_prcs_ENTRADA1_3: PROCESS
BEGIN
	ENTRADA1(3) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA1_3;
-- ENTRADA1[2]
t_prcs_ENTRADA1_2: PROCESS
BEGIN
	ENTRADA1(2) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA1_2;
-- ENTRADA1[1]
t_prcs_ENTRADA1_1: PROCESS
BEGIN
	ENTRADA1(1) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA1_1;
-- ENTRADA1[0]
t_prcs_ENTRADA1_0: PROCESS
BEGIN
	ENTRADA1(0) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA1_0;
-- ENTRADA2[15]
t_prcs_ENTRADA2_15: PROCESS
BEGIN
	ENTRADA2(15) <= '1';
	WAIT FOR 1000 ps;
	ENTRADA2(15) <= '0';
	WAIT FOR 512000 ps;
	ENTRADA2(15) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_15;
-- ENTRADA2[14]
t_prcs_ENTRADA2_14: PROCESS
BEGIN
	ENTRADA2(14) <= '1';
	WAIT FOR 1000 ps;
	ENTRADA2(14) <= '0';
	WAIT FOR 256000 ps;
	ENTRADA2(14) <= '1';
	WAIT FOR 256000 ps;
	ENTRADA2(14) <= '0';
	WAIT FOR 256000 ps;
	ENTRADA2(14) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_14;
-- ENTRADA2[13]
t_prcs_ENTRADA2_13: PROCESS
BEGIN
	ENTRADA2(13) <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 3
	LOOP
		ENTRADA2(13) <= '0';
		WAIT FOR 128000 ps;
		ENTRADA2(13) <= '1';
		WAIT FOR 128000 ps;
	END LOOP;
	ENTRADA2(13) <= '0';
	WAIT FOR 128000 ps;
	ENTRADA2(13) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_13;
-- ENTRADA2[12]
t_prcs_ENTRADA2_12: PROCESS
BEGIN
	ENTRADA2(12) <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 7
	LOOP
		ENTRADA2(12) <= '0';
		WAIT FOR 64000 ps;
		ENTRADA2(12) <= '1';
		WAIT FOR 64000 ps;
	END LOOP;
	ENTRADA2(12) <= '0';
	WAIT FOR 64000 ps;
	ENTRADA2(12) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_12;
-- ENTRADA2[11]
t_prcs_ENTRADA2_11: PROCESS
BEGIN
	ENTRADA2(11) <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 15
	LOOP
		ENTRADA2(11) <= '0';
		WAIT FOR 32000 ps;
		ENTRADA2(11) <= '1';
		WAIT FOR 32000 ps;
	END LOOP;
	ENTRADA2(11) <= '0';
	WAIT FOR 32000 ps;
	ENTRADA2(11) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_11;
-- ENTRADA2[10]
t_prcs_ENTRADA2_10: PROCESS
BEGIN
	ENTRADA2(10) <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 31
	LOOP
		ENTRADA2(10) <= '0';
		WAIT FOR 16000 ps;
		ENTRADA2(10) <= '1';
		WAIT FOR 16000 ps;
	END LOOP;
	ENTRADA2(10) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA2_10;
-- ENTRADA2[9]
t_prcs_ENTRADA2_9: PROCESS
BEGIN
	ENTRADA2(9) <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 62
	LOOP
		ENTRADA2(9) <= '0';
		WAIT FOR 8000 ps;
		ENTRADA2(9) <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
	ENTRADA2(9) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA2_9;
-- ENTRADA2[8]
t_prcs_ENTRADA2_8: PROCESS
BEGIN
	ENTRADA2(8) <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 124
	LOOP
		ENTRADA2(8) <= '0';
		WAIT FOR 4000 ps;
		ENTRADA2(8) <= '1';
		WAIT FOR 4000 ps;
	END LOOP;
	ENTRADA2(8) <= '0';
	WAIT FOR 4000 ps;
	ENTRADA2(8) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_8;
-- ENTRADA2[7]
t_prcs_ENTRADA2_7: PROCESS
BEGIN
	ENTRADA2(7) <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 249
	LOOP
		ENTRADA2(7) <= '0';
		WAIT FOR 2000 ps;
		ENTRADA2(7) <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	ENTRADA2(7) <= '0';
	WAIT FOR 2000 ps;
	ENTRADA2(7) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_7;
-- ENTRADA2[6]
t_prcs_ENTRADA2_6: PROCESS
BEGIN
LOOP
	ENTRADA2(6) <= '1';
	WAIT FOR 1000 ps;
	ENTRADA2(6) <= '0';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ENTRADA2_6;
-- ENTRADA2[5]
t_prcs_ENTRADA2_5: PROCESS
BEGIN
	ENTRADA2(5) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_5;
-- ENTRADA2[4]
t_prcs_ENTRADA2_4: PROCESS
BEGIN
	ENTRADA2(4) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_4;
-- ENTRADA2[3]
t_prcs_ENTRADA2_3: PROCESS
BEGIN
	ENTRADA2(3) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_3;
-- ENTRADA2[2]
t_prcs_ENTRADA2_2: PROCESS
BEGIN
	ENTRADA2(2) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_2;
-- ENTRADA2[1]
t_prcs_ENTRADA2_1: PROCESS
BEGIN
	ENTRADA2(1) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_1;
-- ENTRADA2[0]
t_prcs_ENTRADA2_0: PROCESS
BEGIN
	ENTRADA2(0) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA2_0;
END Somadorde16bits_arch;
