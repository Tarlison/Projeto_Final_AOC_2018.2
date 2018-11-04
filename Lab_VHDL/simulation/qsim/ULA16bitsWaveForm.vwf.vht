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
-- Generated on "10/26/2018 20:41:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULA16bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULA16bits_vhd_vec_tst IS
END ULA16bits_vhd_vec_tst;
ARCHITECTURE ULA16bits_arch OF ULA16bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DADO1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DADO2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SAIDA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SEL : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ULA16bits
	PORT (
	DADO1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DADO2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	SEL : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ULA16bits
	PORT MAP (
-- list connections between master ports and signals
	DADO1 => DADO1,
	DADO2 => DADO2,
	SAIDA => SAIDA,
	SEL => SEL
	);
-- DADO1[15]
t_prcs_DADO1_15: PROCESS
BEGIN
	DADO1(15) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_15;
-- DADO1[14]
t_prcs_DADO1_14: PROCESS
BEGIN
	DADO1(14) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_14;
-- DADO1[13]
t_prcs_DADO1_13: PROCESS
BEGIN
	DADO1(13) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_13;
-- DADO1[12]
t_prcs_DADO1_12: PROCESS
BEGIN
	DADO1(12) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_12;
-- DADO1[11]
t_prcs_DADO1_11: PROCESS
BEGIN
	DADO1(11) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_11;
-- DADO1[10]
t_prcs_DADO1_10: PROCESS
BEGIN
	DADO1(10) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_10;
-- DADO1[9]
t_prcs_DADO1_9: PROCESS
BEGIN
	DADO1(9) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_9;
-- DADO1[8]
t_prcs_DADO1_8: PROCESS
BEGIN
	DADO1(8) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_8;
-- DADO1[7]
t_prcs_DADO1_7: PROCESS
BEGIN
	DADO1(7) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_7;
-- DADO1[6]
t_prcs_DADO1_6: PROCESS
BEGIN
	DADO1(6) <= '0';
	WAIT FOR 640000 ps;
	DADO1(6) <= '1';
WAIT;
END PROCESS t_prcs_DADO1_6;
-- DADO1[5]
t_prcs_DADO1_5: PROCESS
BEGIN
	DADO1(5) <= '0';
	WAIT FOR 320000 ps;
	DADO1(5) <= '1';
	WAIT FOR 320000 ps;
	DADO1(5) <= '0';
	WAIT FOR 320000 ps;
	DADO1(5) <= '1';
WAIT;
END PROCESS t_prcs_DADO1_5;
-- DADO1[4]
t_prcs_DADO1_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		DADO1(4) <= '0';
		WAIT FOR 160000 ps;
		DADO1(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	DADO1(4) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_4;
-- DADO1[3]
t_prcs_DADO1_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		DADO1(3) <= '0';
		WAIT FOR 80000 ps;
		DADO1(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	DADO1(3) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_3;
-- DADO1[2]
t_prcs_DADO1_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		DADO1(2) <= '0';
		WAIT FOR 40000 ps;
		DADO1(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	DADO1(2) <= '0';
WAIT;
END PROCESS t_prcs_DADO1_2;
-- DADO1[1]
t_prcs_DADO1_1: PROCESS
BEGIN
LOOP
	DADO1(1) <= '0';
	WAIT FOR 20000 ps;
	DADO1(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DADO1_1;
-- DADO1[0]
t_prcs_DADO1_0: PROCESS
BEGIN
LOOP
	DADO1(0) <= '0';
	WAIT FOR 10000 ps;
	DADO1(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DADO1_0;
-- DADO2[15]
t_prcs_DADO2_15: PROCESS
BEGIN
	DADO2(15) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_15;
-- DADO2[14]
t_prcs_DADO2_14: PROCESS
BEGIN
	DADO2(14) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_14;
-- DADO2[13]
t_prcs_DADO2_13: PROCESS
BEGIN
	DADO2(13) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_13;
-- DADO2[12]
t_prcs_DADO2_12: PROCESS
BEGIN
	DADO2(12) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_12;
-- DADO2[11]
t_prcs_DADO2_11: PROCESS
BEGIN
	DADO2(11) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_11;
-- DADO2[10]
t_prcs_DADO2_10: PROCESS
BEGIN
	DADO2(10) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_10;
-- DADO2[9]
t_prcs_DADO2_9: PROCESS
BEGIN
	DADO2(9) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_9;
-- DADO2[8]
t_prcs_DADO2_8: PROCESS
BEGIN
	DADO2(8) <= '0';
	WAIT FOR 768000 ps;
	DADO2(8) <= '1';
WAIT;
END PROCESS t_prcs_DADO2_8;
-- DADO2[7]
t_prcs_DADO2_7: PROCESS
BEGIN
	DADO2(7) <= '0';
	WAIT FOR 384000 ps;
	DADO2(7) <= '1';
	WAIT FOR 384000 ps;
	DADO2(7) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_7;
-- DADO2[6]
t_prcs_DADO2_6: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		DADO2(6) <= '0';
		WAIT FOR 192000 ps;
		DADO2(6) <= '1';
		WAIT FOR 192000 ps;
	END LOOP;
	DADO2(6) <= '0';
	WAIT FOR 192000 ps;
	DADO2(6) <= '1';
WAIT;
END PROCESS t_prcs_DADO2_6;
-- DADO2[5]
t_prcs_DADO2_5: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		DADO2(5) <= '0';
		WAIT FOR 96000 ps;
		DADO2(5) <= '1';
		WAIT FOR 96000 ps;
	END LOOP;
	DADO2(5) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_5;
-- DADO2[4]
t_prcs_DADO2_4: PROCESS
BEGIN
	FOR i IN 1 TO 10
	LOOP
		DADO2(4) <= '0';
		WAIT FOR 48000 ps;
		DADO2(4) <= '1';
		WAIT FOR 48000 ps;
	END LOOP;
	DADO2(4) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_4;
-- DADO2[3]
t_prcs_DADO2_3: PROCESS
BEGIN
	FOR i IN 1 TO 20
	LOOP
		DADO2(3) <= '0';
		WAIT FOR 24000 ps;
		DADO2(3) <= '1';
		WAIT FOR 24000 ps;
	END LOOP;
	DADO2(3) <= '0';
	WAIT FOR 24000 ps;
	DADO2(3) <= '1';
WAIT;
END PROCESS t_prcs_DADO2_3;
-- DADO2[2]
t_prcs_DADO2_2: PROCESS
BEGIN
	FOR i IN 1 TO 41
	LOOP
		DADO2(2) <= '0';
		WAIT FOR 12000 ps;
		DADO2(2) <= '1';
		WAIT FOR 12000 ps;
	END LOOP;
	DADO2(2) <= '0';
	WAIT FOR 12000 ps;
	DADO2(2) <= '1';
WAIT;
END PROCESS t_prcs_DADO2_2;
-- DADO2[1]
t_prcs_DADO2_1: PROCESS
BEGIN
	FOR i IN 1 TO 83
	LOOP
		DADO2(1) <= '0';
		WAIT FOR 6000 ps;
		DADO2(1) <= '1';
		WAIT FOR 6000 ps;
	END LOOP;
	DADO2(1) <= '0';
WAIT;
END PROCESS t_prcs_DADO2_1;
-- DADO2[0]
t_prcs_DADO2_0: PROCESS
BEGIN
	FOR i IN 1 TO 166
	LOOP
		DADO2(0) <= '0';
		WAIT FOR 3000 ps;
		DADO2(0) <= '1';
		WAIT FOR 3000 ps;
	END LOOP;
	DADO2(0) <= '0';
	WAIT FOR 3000 ps;
	DADO2(0) <= '1';
WAIT;
END PROCESS t_prcs_DADO2_0;
-- SEL[3]
t_prcs_SEL_3: PROCESS
BEGIN
	FOR i IN 1 TO 10
	LOOP
		SEL(3) <= '0';
		WAIT FOR 48000 ps;
		SEL(3) <= '1';
		WAIT FOR 48000 ps;
	END LOOP;
	SEL(3) <= '0';
WAIT;
END PROCESS t_prcs_SEL_3;
-- SEL[2]
t_prcs_SEL_2: PROCESS
BEGIN
	FOR i IN 1 TO 20
	LOOP
		SEL(2) <= '0';
		WAIT FOR 24000 ps;
		SEL(2) <= '1';
		WAIT FOR 24000 ps;
	END LOOP;
	SEL(2) <= '0';
	WAIT FOR 24000 ps;
	SEL(2) <= '1';
WAIT;
END PROCESS t_prcs_SEL_2;
-- SEL[1]
t_prcs_SEL_1: PROCESS
BEGIN
	FOR i IN 1 TO 41
	LOOP
		SEL(1) <= '0';
		WAIT FOR 12000 ps;
		SEL(1) <= '1';
		WAIT FOR 12000 ps;
	END LOOP;
	SEL(1) <= '0';
	WAIT FOR 12000 ps;
	SEL(1) <= '1';
WAIT;
END PROCESS t_prcs_SEL_1;
-- SEL[0]
t_prcs_SEL_0: PROCESS
BEGIN
	FOR i IN 1 TO 83
	LOOP
		SEL(0) <= '0';
		WAIT FOR 6000 ps;
		SEL(0) <= '1';
		WAIT FOR 6000 ps;
	END LOOP;
	SEL(0) <= '0';
WAIT;
END PROCESS t_prcs_SEL_0;
END ULA16bits_arch;
