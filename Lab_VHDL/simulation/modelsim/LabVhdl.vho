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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/25/2018 14:59:59"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA16bits IS
    PORT (
	DADO1 : IN std_logic_vector(15 DOWNTO 0);
	DADO2 : IN std_logic_vector(15 DOWNTO 0);
	SEL : IN std_logic_vector(3 DOWNTO 0);
	SAIDA : OUT std_logic_vector(15 DOWNTO 0)
	);
END ULA16bits;

-- Design Ports Information
-- SAIDA[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[7]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[9]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[12]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[13]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[14]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA[15]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[8]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[9]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[9]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[10]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[10]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[11]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[12]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[12]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[13]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[13]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO2[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO1[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA16bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DADO1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DADO2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SAIDA : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \SEL[3]~input_o\ : std_logic;
SIGNAL \DADO1[0]~input_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \SEL[2]~input_o\ : std_logic;
SIGNAL \DADO2[0]~input_o\ : std_logic;
SIGNAL \G12|Add0~80_cout\ : std_logic;
SIGNAL \G12|Add0~3_sumout\ : std_logic;
SIGNAL \DADO1[2]~input_o\ : std_logic;
SIGNAL \DADO2[2]~input_o\ : std_logic;
SIGNAL \G12|Add0~1_combout\ : std_logic;
SIGNAL \G13|Mux16~4_combout\ : std_logic;
SIGNAL \G13|Mux16~0_combout\ : std_logic;
SIGNAL \G13|Mux0~0_combout\ : std_logic;
SIGNAL \DADO1[1]~input_o\ : std_logic;
SIGNAL \DADO2[1]~input_o\ : std_logic;
SIGNAL \DADO2[3]~input_o\ : std_logic;
SIGNAL \DADO1[3]~input_o\ : std_logic;
SIGNAL \G12|Add0~7_combout\ : std_logic;
SIGNAL \G12|Add0~4\ : std_logic;
SIGNAL \G12|Add0~9_sumout\ : std_logic;
SIGNAL \G13|Mux15~4_combout\ : std_logic;
SIGNAL \G13|Mux15~0_combout\ : std_logic;
SIGNAL \G12|Add0~0_combout\ : std_logic;
SIGNAL \G13|Mux14~0_combout\ : std_logic;
SIGNAL \G12|Add0~10\ : std_logic;
SIGNAL \G12|Add0~14_sumout\ : std_logic;
SIGNAL \DADO1[4]~input_o\ : std_logic;
SIGNAL \DADO2[4]~input_o\ : std_logic;
SIGNAL \G12|Add0~12_combout\ : std_logic;
SIGNAL \G13|Mux14~1_combout\ : std_logic;
SIGNAL \G12|Add0~15\ : std_logic;
SIGNAL \G12|Add0~19_sumout\ : std_logic;
SIGNAL \DADO2[5]~input_o\ : std_logic;
SIGNAL \DADO1[5]~input_o\ : std_logic;
SIGNAL \G12|Add0~17_combout\ : std_logic;
SIGNAL \G12|Add0~6_combout\ : std_logic;
SIGNAL \G13|Mux13~0_combout\ : std_logic;
SIGNAL \G13|Mux13~1_combout\ : std_logic;
SIGNAL \G13|Mux12~0_combout\ : std_logic;
SIGNAL \DADO1[6]~input_o\ : std_logic;
SIGNAL \DADO2[6]~input_o\ : std_logic;
SIGNAL \G12|Add0~22_combout\ : std_logic;
SIGNAL \G12|Add0~20\ : std_logic;
SIGNAL \G12|Add0~24_sumout\ : std_logic;
SIGNAL \G13|Mux12~1_combout\ : std_logic;
SIGNAL \G12|Add0~25\ : std_logic;
SIGNAL \G12|Add0~29_sumout\ : std_logic;
SIGNAL \DADO2[7]~input_o\ : std_logic;
SIGNAL \DADO1[7]~input_o\ : std_logic;
SIGNAL \G12|Add0~27_combout\ : std_logic;
SIGNAL \G13|Mux11~0_combout\ : std_logic;
SIGNAL \G13|Mux11~1_combout\ : std_logic;
SIGNAL \DADO2[8]~input_o\ : std_logic;
SIGNAL \DADO1[8]~input_o\ : std_logic;
SIGNAL \G12|Add0~32_combout\ : std_logic;
SIGNAL \G13|Mux10~0_combout\ : std_logic;
SIGNAL \G12|Add0~30\ : std_logic;
SIGNAL \G12|Add0~34_sumout\ : std_logic;
SIGNAL \G13|Mux10~1_combout\ : std_logic;
SIGNAL \G12|Add0~35\ : std_logic;
SIGNAL \G12|Add0~39_sumout\ : std_logic;
SIGNAL \DADO1[9]~input_o\ : std_logic;
SIGNAL \DADO2[9]~input_o\ : std_logic;
SIGNAL \G12|Add0~37_combout\ : std_logic;
SIGNAL \G13|Mux9~0_combout\ : std_logic;
SIGNAL \G13|Mux9~1_combout\ : std_logic;
SIGNAL \G13|Mux8~0_combout\ : std_logic;
SIGNAL \DADO2[10]~input_o\ : std_logic;
SIGNAL \DADO1[10]~input_o\ : std_logic;
SIGNAL \G12|Add0~42_combout\ : std_logic;
SIGNAL \G12|Add0~40\ : std_logic;
SIGNAL \G12|Add0~44_sumout\ : std_logic;
SIGNAL \G13|Mux8~1_combout\ : std_logic;
SIGNAL \DADO2[11]~input_o\ : std_logic;
SIGNAL \DADO1[11]~input_o\ : std_logic;
SIGNAL \G12|Add0~47_combout\ : std_logic;
SIGNAL \G13|Mux7~0_combout\ : std_logic;
SIGNAL \G12|Add0~45\ : std_logic;
SIGNAL \G12|Add0~49_sumout\ : std_logic;
SIGNAL \G13|Mux7~1_combout\ : std_logic;
SIGNAL \G12|Add0~50\ : std_logic;
SIGNAL \G12|Add0~54_sumout\ : std_logic;
SIGNAL \G13|Mux6~0_combout\ : std_logic;
SIGNAL \DADO1[12]~input_o\ : std_logic;
SIGNAL \DADO2[12]~input_o\ : std_logic;
SIGNAL \G12|Add0~52_combout\ : std_logic;
SIGNAL \G13|Mux6~1_combout\ : std_logic;
SIGNAL \G13|Mux5~0_combout\ : std_logic;
SIGNAL \DADO2[13]~input_o\ : std_logic;
SIGNAL \DADO1[13]~input_o\ : std_logic;
SIGNAL \G12|Add0~57_combout\ : std_logic;
SIGNAL \G12|Add0~55\ : std_logic;
SIGNAL \G12|Add0~59_sumout\ : std_logic;
SIGNAL \G13|Mux5~1_combout\ : std_logic;
SIGNAL \G12|Add0~60\ : std_logic;
SIGNAL \G12|Add0~63_sumout\ : std_logic;
SIGNAL \DADO1[14]~input_o\ : std_logic;
SIGNAL \DADO2[14]~input_o\ : std_logic;
SIGNAL \G13|Mux4~1_combout\ : std_logic;
SIGNAL \G13|Mux4~0_combout\ : std_logic;
SIGNAL \G13|Mux4~2_combout\ : std_logic;
SIGNAL \DADO2[15]~input_o\ : std_logic;
SIGNAL \DADO1[15]~input_o\ : std_logic;
SIGNAL \G13|Mux3~1_combout\ : std_logic;
SIGNAL \G13|Mux3~0_combout\ : std_logic;
SIGNAL \G12|Add0~64\ : std_logic;
SIGNAL \G12|Add0~67_sumout\ : std_logic;
SIGNAL \G13|Mux3~2_combout\ : std_logic;
SIGNAL \G12|Add0~68\ : std_logic;
SIGNAL \G12|Add0~71_sumout\ : std_logic;
SIGNAL \G13|Mux2~0_combout\ : std_logic;
SIGNAL \G13|Mux2~1_combout\ : std_logic;
SIGNAL \G13|Mux1~0_combout\ : std_logic;
SIGNAL \G12|Add0~72\ : std_logic;
SIGNAL \G12|Add0~75_sumout\ : std_logic;
SIGNAL \G13|Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_DADO1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DADO2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[2]~input_o\ : std_logic;
SIGNAL \G13|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~57_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~52_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~47_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~42_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~37_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~32_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~27_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~22_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~17_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~12_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~7_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~6_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux16~4_combout\ : std_logic;
SIGNAL \G13|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~75_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~71_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~67_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~63_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~59_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~54_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~44_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~39_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~34_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~24_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~19_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~14_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G12|ALT_INV_Add0~3_sumout\ : std_logic;

BEGIN

ww_DADO1 <= DADO1;
ww_DADO2 <= DADO2;
ww_SEL <= SEL;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_DADO1[15]~input_o\ <= NOT \DADO1[15]~input_o\;
\ALT_INV_DADO2[15]~input_o\ <= NOT \DADO2[15]~input_o\;
\ALT_INV_DADO1[14]~input_o\ <= NOT \DADO1[14]~input_o\;
\ALT_INV_DADO2[14]~input_o\ <= NOT \DADO2[14]~input_o\;
\ALT_INV_DADO1[13]~input_o\ <= NOT \DADO1[13]~input_o\;
\ALT_INV_DADO2[13]~input_o\ <= NOT \DADO2[13]~input_o\;
\ALT_INV_DADO1[12]~input_o\ <= NOT \DADO1[12]~input_o\;
\ALT_INV_DADO2[12]~input_o\ <= NOT \DADO2[12]~input_o\;
\ALT_INV_DADO1[11]~input_o\ <= NOT \DADO1[11]~input_o\;
\ALT_INV_DADO2[11]~input_o\ <= NOT \DADO2[11]~input_o\;
\ALT_INV_DADO1[10]~input_o\ <= NOT \DADO1[10]~input_o\;
\ALT_INV_DADO2[10]~input_o\ <= NOT \DADO2[10]~input_o\;
\ALT_INV_DADO1[9]~input_o\ <= NOT \DADO1[9]~input_o\;
\ALT_INV_DADO2[9]~input_o\ <= NOT \DADO2[9]~input_o\;
\ALT_INV_DADO1[8]~input_o\ <= NOT \DADO1[8]~input_o\;
\ALT_INV_DADO2[8]~input_o\ <= NOT \DADO2[8]~input_o\;
\ALT_INV_DADO1[7]~input_o\ <= NOT \DADO1[7]~input_o\;
\ALT_INV_DADO2[7]~input_o\ <= NOT \DADO2[7]~input_o\;
\ALT_INV_DADO1[6]~input_o\ <= NOT \DADO1[6]~input_o\;
\ALT_INV_DADO2[6]~input_o\ <= NOT \DADO2[6]~input_o\;
\ALT_INV_DADO1[5]~input_o\ <= NOT \DADO1[5]~input_o\;
\ALT_INV_DADO2[5]~input_o\ <= NOT \DADO2[5]~input_o\;
\ALT_INV_DADO1[4]~input_o\ <= NOT \DADO1[4]~input_o\;
\ALT_INV_DADO2[4]~input_o\ <= NOT \DADO2[4]~input_o\;
\ALT_INV_DADO1[3]~input_o\ <= NOT \DADO1[3]~input_o\;
\ALT_INV_DADO2[3]~input_o\ <= NOT \DADO2[3]~input_o\;
\ALT_INV_DADO1[1]~input_o\ <= NOT \DADO1[1]~input_o\;
\ALT_INV_DADO2[1]~input_o\ <= NOT \DADO2[1]~input_o\;
\ALT_INV_DADO1[2]~input_o\ <= NOT \DADO1[2]~input_o\;
\ALT_INV_DADO2[2]~input_o\ <= NOT \DADO2[2]~input_o\;
\ALT_INV_DADO1[0]~input_o\ <= NOT \DADO1[0]~input_o\;
\ALT_INV_SEL[0]~input_o\ <= NOT \SEL[0]~input_o\;
\ALT_INV_DADO2[0]~input_o\ <= NOT \DADO2[0]~input_o\;
\ALT_INV_SEL[3]~input_o\ <= NOT \SEL[3]~input_o\;
\ALT_INV_SEL[1]~input_o\ <= NOT \SEL[1]~input_o\;
\ALT_INV_SEL[2]~input_o\ <= NOT \SEL[2]~input_o\;
\G13|ALT_INV_Mux1~0_combout\ <= NOT \G13|Mux1~0_combout\;
\G13|ALT_INV_Mux2~0_combout\ <= NOT \G13|Mux2~0_combout\;
\G13|ALT_INV_Mux3~1_combout\ <= NOT \G13|Mux3~1_combout\;
\G13|ALT_INV_Mux3~0_combout\ <= NOT \G13|Mux3~0_combout\;
\G13|ALT_INV_Mux4~1_combout\ <= NOT \G13|Mux4~1_combout\;
\G13|ALT_INV_Mux4~0_combout\ <= NOT \G13|Mux4~0_combout\;
\G12|ALT_INV_Add0~57_combout\ <= NOT \G12|Add0~57_combout\;
\G13|ALT_INV_Mux5~0_combout\ <= NOT \G13|Mux5~0_combout\;
\G12|ALT_INV_Add0~52_combout\ <= NOT \G12|Add0~52_combout\;
\G13|ALT_INV_Mux6~0_combout\ <= NOT \G13|Mux6~0_combout\;
\G12|ALT_INV_Add0~47_combout\ <= NOT \G12|Add0~47_combout\;
\G13|ALT_INV_Mux7~0_combout\ <= NOT \G13|Mux7~0_combout\;
\G12|ALT_INV_Add0~42_combout\ <= NOT \G12|Add0~42_combout\;
\G13|ALT_INV_Mux8~0_combout\ <= NOT \G13|Mux8~0_combout\;
\G12|ALT_INV_Add0~37_combout\ <= NOT \G12|Add0~37_combout\;
\G13|ALT_INV_Mux9~0_combout\ <= NOT \G13|Mux9~0_combout\;
\G12|ALT_INV_Add0~32_combout\ <= NOT \G12|Add0~32_combout\;
\G13|ALT_INV_Mux10~0_combout\ <= NOT \G13|Mux10~0_combout\;
\G12|ALT_INV_Add0~27_combout\ <= NOT \G12|Add0~27_combout\;
\G13|ALT_INV_Mux11~0_combout\ <= NOT \G13|Mux11~0_combout\;
\G12|ALT_INV_Add0~22_combout\ <= NOT \G12|Add0~22_combout\;
\G13|ALT_INV_Mux12~0_combout\ <= NOT \G13|Mux12~0_combout\;
\G12|ALT_INV_Add0~17_combout\ <= NOT \G12|Add0~17_combout\;
\G13|ALT_INV_Mux13~0_combout\ <= NOT \G13|Mux13~0_combout\;
\G12|ALT_INV_Add0~12_combout\ <= NOT \G12|Add0~12_combout\;
\G13|ALT_INV_Mux14~0_combout\ <= NOT \G13|Mux14~0_combout\;
\G12|ALT_INV_Add0~7_combout\ <= NOT \G12|Add0~7_combout\;
\G12|ALT_INV_Add0~6_combout\ <= NOT \G12|Add0~6_combout\;
\G12|ALT_INV_Add0~1_combout\ <= NOT \G12|Add0~1_combout\;
\G12|ALT_INV_Add0~0_combout\ <= NOT \G12|Add0~0_combout\;
\G13|ALT_INV_Mux16~4_combout\ <= NOT \G13|Mux16~4_combout\;
\G13|ALT_INV_Mux15~4_combout\ <= NOT \G13|Mux15~4_combout\;
\G12|ALT_INV_Add0~75_sumout\ <= NOT \G12|Add0~75_sumout\;
\G12|ALT_INV_Add0~71_sumout\ <= NOT \G12|Add0~71_sumout\;
\G12|ALT_INV_Add0~67_sumout\ <= NOT \G12|Add0~67_sumout\;
\G12|ALT_INV_Add0~63_sumout\ <= NOT \G12|Add0~63_sumout\;
\G12|ALT_INV_Add0~59_sumout\ <= NOT \G12|Add0~59_sumout\;
\G12|ALT_INV_Add0~54_sumout\ <= NOT \G12|Add0~54_sumout\;
\G12|ALT_INV_Add0~49_sumout\ <= NOT \G12|Add0~49_sumout\;
\G12|ALT_INV_Add0~44_sumout\ <= NOT \G12|Add0~44_sumout\;
\G12|ALT_INV_Add0~39_sumout\ <= NOT \G12|Add0~39_sumout\;
\G12|ALT_INV_Add0~34_sumout\ <= NOT \G12|Add0~34_sumout\;
\G12|ALT_INV_Add0~29_sumout\ <= NOT \G12|Add0~29_sumout\;
\G12|ALT_INV_Add0~24_sumout\ <= NOT \G12|Add0~24_sumout\;
\G12|ALT_INV_Add0~19_sumout\ <= NOT \G12|Add0~19_sumout\;
\G12|ALT_INV_Add0~14_sumout\ <= NOT \G12|Add0~14_sumout\;
\G12|ALT_INV_Add0~9_sumout\ <= NOT \G12|Add0~9_sumout\;
\G12|ALT_INV_Add0~3_sumout\ <= NOT \G12|Add0~3_sumout\;

-- Location: IOOBUF_X62_Y0_N36
\SAIDA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux16~0_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(0));

-- Location: IOOBUF_X34_Y0_N42
\SAIDA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux15~0_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(1));

-- Location: IOOBUF_X38_Y0_N53
\SAIDA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux14~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(2));

-- Location: IOOBUF_X60_Y0_N53
\SAIDA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux13~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(3));

-- Location: IOOBUF_X34_Y0_N93
\SAIDA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux12~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(4));

-- Location: IOOBUF_X62_Y0_N2
\SAIDA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux11~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(5));

-- Location: IOOBUF_X32_Y0_N2
\SAIDA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux10~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(6));

-- Location: IOOBUF_X60_Y0_N19
\SAIDA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux9~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(7));

-- Location: IOOBUF_X38_Y0_N36
\SAIDA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux8~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(8));

-- Location: IOOBUF_X36_Y0_N19
\SAIDA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux7~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(9));

-- Location: IOOBUF_X40_Y0_N19
\SAIDA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux6~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(10));

-- Location: IOOBUF_X32_Y0_N53
\SAIDA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux5~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(11));

-- Location: IOOBUF_X38_Y0_N19
\SAIDA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux4~2_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(12));

-- Location: IOOBUF_X34_Y0_N76
\SAIDA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux3~2_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(13));

-- Location: IOOBUF_X38_Y0_N2
\SAIDA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux2~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(14));

-- Location: IOOBUF_X62_Y0_N19
\SAIDA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|Mux1~1_combout\,
	oe => \G13|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA(15));

-- Location: IOIBUF_X50_Y0_N58
\SEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\SEL[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(3),
	o => \SEL[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\DADO1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(0),
	o => \DADO1[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\SEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\SEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(2),
	o => \SEL[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\DADO2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(0),
	o => \DADO2[0]~input_o\);

-- Location: MLABCELL_X52_Y1_N0
\G12|Add0~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~80_cout\ = CARRY(( \SEL[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	cin => GND,
	cout => \G12|Add0~80_cout\);

-- Location: MLABCELL_X52_Y1_N3
\G12|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~3_sumout\ = SUM(( \DADO1[0]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[0]~input_o\) ) + ( \G12|Add0~80_cout\ ))
-- \G12|Add0~4\ = CARRY(( \DADO1[0]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[0]~input_o\) ) + ( \G12|Add0~80_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[0]~input_o\,
	dataf => \ALT_INV_DADO2[0]~input_o\,
	cin => \G12|Add0~80_cout\,
	sumout => \G12|Add0~3_sumout\,
	cout => \G12|Add0~4\);

-- Location: IOIBUF_X54_Y0_N18
\DADO1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(2),
	o => \DADO1[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\DADO2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(2),
	o => \DADO2[2]~input_o\);

-- Location: LABCELL_X53_Y1_N30
\G12|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~1_combout\ = ( \DADO2[2]~input_o\ & ( (\SEL[0]~input_o\) # (\DADO1[2]~input_o\) ) ) # ( !\DADO2[2]~input_o\ & ( (\DADO1[2]~input_o\ & !\SEL[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DADO1[2]~input_o\,
	datac => \ALT_INV_SEL[0]~input_o\,
	dataf => \ALT_INV_DADO2[2]~input_o\,
	combout => \G12|Add0~1_combout\);

-- Location: LABCELL_X53_Y1_N18
\G13|Mux16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux16~4_combout\ = ( !\SEL[3]~input_o\ & ( ((!\DADO2[0]~input_o\ & ((!\DADO1[0]~input_o\ & ((\SEL[1]~input_o\))) # (\DADO1[0]~input_o\ & (\SEL[0]~input_o\)))) # (\DADO2[0]~input_o\ & (!\SEL[1]~input_o\ $ (((!\SEL[0]~input_o\ & 
-- !\DADO1[0]~input_o\)))))) ) ) # ( \SEL[3]~input_o\ & ( (((!\SEL[1]~input_o\ & ((\G12|Add0~1_combout\))) # (\SEL[1]~input_o\ & (\G12|Add0~3_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010101011111000011110000111111111010010100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datab => \G12|ALT_INV_Add0~3_sumout\,
	datac => \G12|ALT_INV_Add0~1_combout\,
	datad => \ALT_INV_DADO1[0]~input_o\,
	datae => \ALT_INV_SEL[3]~input_o\,
	dataf => \ALT_INV_SEL[1]~input_o\,
	datag => \ALT_INV_DADO2[0]~input_o\,
	combout => \G13|Mux16~4_combout\);

-- Location: LABCELL_X53_Y1_N12
\G13|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux16~0_combout\ = ( !\SEL[2]~input_o\ & ( (((\G13|Mux16~4_combout\))) ) ) # ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (!\SEL[1]~input_o\ & ((!\DADO1[0]~input_o\ & ((\DADO2[0]~input_o\) # (\SEL[0]~input_o\))) # (\DADO1[0]~input_o\ & 
-- ((!\DADO2[0]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111010011000000000000001111000011111100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \ALT_INV_DADO1[0]~input_o\,
	datad => \ALT_INV_SEL[1]~input_o\,
	datae => \ALT_INV_SEL[2]~input_o\,
	dataf => \ALT_INV_DADO2[0]~input_o\,
	datag => \G13|ALT_INV_Mux16~4_combout\,
	combout => \G13|Mux16~0_combout\);

-- Location: LABCELL_X51_Y1_N3
\G13|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux0~0_combout\ = ( \SEL[2]~input_o\ & ( !\SEL[3]~input_o\ ) ) # ( !\SEL[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux0~0_combout\);

-- Location: IOIBUF_X56_Y0_N18
\DADO1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(1),
	o => \DADO1[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\DADO2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(1),
	o => \DADO2[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\DADO2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(3),
	o => \DADO2[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\DADO1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(3),
	o => \DADO1[3]~input_o\);

-- Location: LABCELL_X53_Y1_N9
\G12|Add0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~7_combout\ = ( \DADO1[3]~input_o\ & ( (!\SEL[0]~input_o\) # (\DADO2[3]~input_o\) ) ) # ( !\DADO1[3]~input_o\ & ( (\SEL[0]~input_o\ & \DADO2[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_DADO2[3]~input_o\,
	dataf => \ALT_INV_DADO1[3]~input_o\,
	combout => \G12|Add0~7_combout\);

-- Location: MLABCELL_X52_Y1_N6
\G12|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~9_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[1]~input_o\) ) + ( \DADO1[1]~input_o\ ) + ( \G12|Add0~4\ ))
-- \G12|Add0~10\ = CARRY(( !\SEL[0]~input_o\ $ (!\DADO2[1]~input_o\) ) + ( \DADO1[1]~input_o\ ) + ( \G12|Add0~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO2[1]~input_o\,
	dataf => \ALT_INV_DADO1[1]~input_o\,
	cin => \G12|Add0~4\,
	sumout => \G12|Add0~9_sumout\,
	cout => \G12|Add0~10\);

-- Location: LABCELL_X53_Y1_N36
\G13|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux15~4_combout\ = ( !\SEL[3]~input_o\ & ( (!\DADO1[1]~input_o\ & ((!\SEL[1]~input_o\ $ (((!\DADO2[1]~input_o\) # (!\SEL[0]~input_o\)))))) # (\DADO1[1]~input_o\ & ((!\DADO2[1]~input_o\ & (\SEL[0]~input_o\)) # (\DADO2[1]~input_o\ & 
-- (((!\SEL[1]~input_o\)))))) ) ) # ( \SEL[3]~input_o\ & ( (((!\SEL[1]~input_o\ & (\G12|Add0~7_combout\)) # (\SEL[1]~input_o\ & ((\G12|Add0~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001011100010111000011110000111110101100101011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DADO1[1]~input_o\,
	datab => \ALT_INV_DADO2[1]~input_o\,
	datac => \G12|ALT_INV_Add0~7_combout\,
	datad => \G12|ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_SEL[3]~input_o\,
	dataf => \ALT_INV_SEL[1]~input_o\,
	datag => \ALT_INV_SEL[0]~input_o\,
	combout => \G13|Mux15~4_combout\);

-- Location: LABCELL_X53_Y1_N0
\G13|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux15~0_combout\ = ( !\SEL[2]~input_o\ & ( (((\G13|Mux15~4_combout\))) ) ) # ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (!\SEL[1]~input_o\ & ((!\DADO1[1]~input_o\ & ((\DADO2[1]~input_o\) # (\SEL[0]~input_o\))) # (\DADO1[1]~input_o\ & 
-- ((!\DADO2[1]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111010011001100000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \ALT_INV_DADO1[1]~input_o\,
	datad => \ALT_INV_DADO2[1]~input_o\,
	datae => \ALT_INV_SEL[2]~input_o\,
	dataf => \ALT_INV_SEL[1]~input_o\,
	datag => \G13|ALT_INV_Mux15~4_combout\,
	combout => \G13|Mux15~0_combout\);

-- Location: LABCELL_X53_Y1_N27
\G12|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~0_combout\ = ( \DADO2[0]~input_o\ & ( (\DADO1[0]~input_o\) # (\SEL[0]~input_o\) ) ) # ( !\DADO2[0]~input_o\ & ( (!\SEL[0]~input_o\ & \DADO1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[0]~input_o\,
	dataf => \ALT_INV_DADO2[0]~input_o\,
	combout => \G12|Add0~0_combout\);

-- Location: LABCELL_X53_Y1_N42
\G13|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux14~0_combout\ = ( \SEL[2]~input_o\ & ( \SEL[0]~input_o\ & ( (!\SEL[1]~input_o\ & (\DADO1[2]~input_o\ & ((\DADO2[2]~input_o\)))) # (\SEL[1]~input_o\ & (((!\G12|Add0~0_combout\)))) ) ) ) # ( !\SEL[2]~input_o\ & ( \SEL[0]~input_o\ & ( 
-- (!\SEL[1]~input_o\ & (!\DADO1[2]~input_o\ & !\DADO2[2]~input_o\)) # (\SEL[1]~input_o\ & ((\DADO2[2]~input_o\))) ) ) ) # ( \SEL[2]~input_o\ & ( !\SEL[0]~input_o\ & ( (!\SEL[1]~input_o\ & (!\DADO1[2]~input_o\ $ (((\DADO2[2]~input_o\))))) # (\SEL[1]~input_o\ 
-- & (((!\G12|Add0~0_combout\)))) ) ) ) # ( !\SEL[2]~input_o\ & ( !\SEL[0]~input_o\ & ( (!\DADO1[2]~input_o\ & (!\SEL[1]~input_o\)) # (\DADO1[2]~input_o\ & ((!\DADO2[2]~input_o\) # (\SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110110011001101110000111010010001000001100110011000001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DADO1[2]~input_o\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \G12|ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_DADO2[2]~input_o\,
	datae => \ALT_INV_SEL[2]~input_o\,
	dataf => \ALT_INV_SEL[0]~input_o\,
	combout => \G13|Mux14~0_combout\);

-- Location: MLABCELL_X52_Y1_N9
\G12|Add0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~14_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[2]~input_o\) ) + ( \DADO1[2]~input_o\ ) + ( \G12|Add0~10\ ))
-- \G12|Add0~15\ = CARRY(( !\SEL[0]~input_o\ $ (!\DADO2[2]~input_o\) ) + ( \DADO1[2]~input_o\ ) + ( \G12|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_DADO2[2]~input_o\,
	dataf => \ALT_INV_DADO1[2]~input_o\,
	cin => \G12|Add0~10\,
	sumout => \G12|Add0~14_sumout\,
	cout => \G12|Add0~15\);

-- Location: IOIBUF_X52_Y0_N1
\DADO1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(4),
	o => \DADO1[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\DADO2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(4),
	o => \DADO2[4]~input_o\);

-- Location: MLABCELL_X52_Y1_N54
\G12|Add0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~12_combout\ = ( \DADO2[4]~input_o\ & ( (\DADO1[4]~input_o\) # (\SEL[0]~input_o\) ) ) # ( !\DADO2[4]~input_o\ & ( (!\SEL[0]~input_o\ & \DADO1[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[4]~input_o\,
	dataf => \ALT_INV_DADO2[4]~input_o\,
	combout => \G12|Add0~12_combout\);

-- Location: LABCELL_X50_Y1_N0
\G13|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux14~1_combout\ = ( \SEL[1]~input_o\ & ( \SEL[2]~input_o\ & ( (!\G13|Mux14~0_combout\ & !\SEL[3]~input_o\) ) ) ) # ( !\SEL[1]~input_o\ & ( \SEL[2]~input_o\ & ( (!\G13|Mux14~0_combout\ & !\SEL[3]~input_o\) ) ) ) # ( \SEL[1]~input_o\ & ( 
-- !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (!\G13|Mux14~0_combout\)) # (\SEL[3]~input_o\ & ((\G12|Add0~14_sumout\))) ) ) ) # ( !\SEL[1]~input_o\ & ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (!\G13|Mux14~0_combout\)) # (\SEL[3]~input_o\ & 
-- ((\G12|Add0~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010111011100010111000101110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_Mux14~0_combout\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \G12|ALT_INV_Add0~14_sumout\,
	datad => \G12|ALT_INV_Add0~12_combout\,
	datae => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux14~1_combout\);

-- Location: MLABCELL_X52_Y1_N12
\G12|Add0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~19_sumout\ = SUM(( \DADO1[3]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[3]~input_o\) ) + ( \G12|Add0~15\ ))
-- \G12|Add0~20\ = CARRY(( \DADO1[3]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[3]~input_o\) ) + ( \G12|Add0~15\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_DADO1[3]~input_o\,
	dataf => \ALT_INV_DADO2[3]~input_o\,
	cin => \G12|Add0~15\,
	sumout => \G12|Add0~19_sumout\,
	cout => \G12|Add0~20\);

-- Location: IOIBUF_X60_Y0_N35
\DADO2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(5),
	o => \DADO2[5]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\DADO1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(5),
	o => \DADO1[5]~input_o\);

-- Location: LABCELL_X55_Y1_N0
\G12|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~17_combout\ = ( \DADO1[5]~input_o\ & ( (!\SEL[0]~input_o\) # (\DADO2[5]~input_o\) ) ) # ( !\DADO1[5]~input_o\ & ( (\SEL[0]~input_o\ & \DADO2[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO2[5]~input_o\,
	dataf => \ALT_INV_DADO1[5]~input_o\,
	combout => \G12|Add0~17_combout\);

-- Location: LABCELL_X53_Y1_N24
\G12|Add0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~6_combout\ = (!\SEL[0]~input_o\ & ((\DADO1[1]~input_o\))) # (\SEL[0]~input_o\ & (\DADO2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datab => \ALT_INV_DADO2[1]~input_o\,
	datac => \ALT_INV_DADO1[1]~input_o\,
	combout => \G12|Add0~6_combout\);

-- Location: LABCELL_X53_Y1_N48
\G13|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux13~0_combout\ = ( \SEL[2]~input_o\ & ( \DADO1[3]~input_o\ & ( (!\SEL[1]~input_o\ & ((\DADO2[3]~input_o\))) # (\SEL[1]~input_o\ & (!\G12|Add0~6_combout\)) ) ) ) # ( !\SEL[2]~input_o\ & ( \DADO1[3]~input_o\ & ( (!\DADO2[3]~input_o\ & 
-- ((!\SEL[0]~input_o\))) # (\DADO2[3]~input_o\ & (\SEL[1]~input_o\)) ) ) ) # ( \SEL[2]~input_o\ & ( !\DADO1[3]~input_o\ & ( (!\SEL[1]~input_o\ & (((!\DADO2[3]~input_o\ & !\SEL[0]~input_o\)))) # (\SEL[1]~input_o\ & (!\G12|Add0~6_combout\)) ) ) ) # ( 
-- !\SEL[2]~input_o\ & ( !\DADO1[3]~input_o\ & ( !\SEL[1]~input_o\ $ (((\DADO2[3]~input_o\ & \SEL[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000011111000100010001011110011000000110010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_Add0~6_combout\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \ALT_INV_DADO2[3]~input_o\,
	datad => \ALT_INV_SEL[0]~input_o\,
	datae => \ALT_INV_SEL[2]~input_o\,
	dataf => \ALT_INV_DADO1[3]~input_o\,
	combout => \G13|Mux13~0_combout\);

-- Location: LABCELL_X55_Y1_N36
\G13|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux13~1_combout\ = ( \G12|Add0~17_combout\ & ( \G13|Mux13~0_combout\ & ( (\SEL[3]~input_o\ & (!\SEL[2]~input_o\ & ((!\SEL[1]~input_o\) # (\G12|Add0~19_sumout\)))) ) ) ) # ( !\G12|Add0~17_combout\ & ( \G13|Mux13~0_combout\ & ( (\SEL[1]~input_o\ & 
-- (\SEL[3]~input_o\ & (\G12|Add0~19_sumout\ & !\SEL[2]~input_o\))) ) ) ) # ( \G12|Add0~17_combout\ & ( !\G13|Mux13~0_combout\ & ( (!\SEL[3]~input_o\) # ((!\SEL[2]~input_o\ & ((!\SEL[1]~input_o\) # (\G12|Add0~19_sumout\)))) ) ) ) # ( !\G12|Add0~17_combout\ & 
-- ( !\G13|Mux13~0_combout\ & ( (!\SEL[3]~input_o\) # ((\SEL[1]~input_o\ & (\G12|Add0~19_sumout\ & !\SEL[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001100111011111100110000000001000000000010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \G12|ALT_INV_Add0~19_sumout\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \G12|ALT_INV_Add0~17_combout\,
	dataf => \G13|ALT_INV_Mux13~0_combout\,
	combout => \G13|Mux13~1_combout\);

-- Location: LABCELL_X53_Y1_N54
\G13|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux12~0_combout\ = ( \DADO1[4]~input_o\ & ( \SEL[1]~input_o\ & ( (!\SEL[2]~input_o\ & (((!\SEL[0]~input_o\) # (\DADO2[4]~input_o\)))) # (\SEL[2]~input_o\ & (!\G12|Add0~1_combout\)) ) ) ) # ( !\DADO1[4]~input_o\ & ( \SEL[1]~input_o\ & ( 
-- (!\SEL[2]~input_o\ & (((\SEL[0]~input_o\ & \DADO2[4]~input_o\)))) # (\SEL[2]~input_o\ & (!\G12|Add0~1_combout\)) ) ) ) # ( \DADO1[4]~input_o\ & ( !\SEL[1]~input_o\ & ( (!\SEL[2]~input_o\ & (!\SEL[0]~input_o\ & !\DADO2[4]~input_o\)) # (\SEL[2]~input_o\ & 
-- ((\DADO2[4]~input_o\))) ) ) ) # ( !\DADO1[4]~input_o\ & ( !\SEL[1]~input_o\ & ( (!\SEL[2]~input_o\ & ((!\SEL[0]~input_o\) # (!\DADO2[4]~input_o\))) # (\SEL[2]~input_o\ & (!\SEL[0]~input_o\ & !\DADO2[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000101000000101010101000100010011101110010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[2]~input_o\,
	datab => \G12|ALT_INV_Add0~1_combout\,
	datac => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_DADO2[4]~input_o\,
	datae => \ALT_INV_DADO1[4]~input_o\,
	dataf => \ALT_INV_SEL[1]~input_o\,
	combout => \G13|Mux12~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\DADO1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(6),
	o => \DADO1[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\DADO2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(6),
	o => \DADO2[6]~input_o\);

-- Location: MLABCELL_X52_Y1_N57
\G12|Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~22_combout\ = (!\SEL[0]~input_o\ & (\DADO1[6]~input_o\)) # (\SEL[0]~input_o\ & ((\DADO2[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[6]~input_o\,
	datad => \ALT_INV_DADO2[6]~input_o\,
	combout => \G12|Add0~22_combout\);

-- Location: MLABCELL_X52_Y1_N15
\G12|Add0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~24_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[4]~input_o\) ) + ( \DADO1[4]~input_o\ ) + ( \G12|Add0~20\ ))
-- \G12|Add0~25\ = CARRY(( !\SEL[0]~input_o\ $ (!\DADO2[4]~input_o\) ) + ( \DADO1[4]~input_o\ ) + ( \G12|Add0~20\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO2[4]~input_o\,
	dataf => \ALT_INV_DADO1[4]~input_o\,
	cin => \G12|Add0~20\,
	sumout => \G12|Add0~24_sumout\,
	cout => \G12|Add0~25\);

-- Location: LABCELL_X51_Y1_N36
\G13|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux12~1_combout\ = ( \G12|Add0~24_sumout\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux12~0_combout\) ) ) ) # ( !\G12|Add0~24_sumout\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux12~0_combout\) ) ) ) # ( \G12|Add0~24_sumout\ & ( 
-- !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux12~0_combout\)))) # (\SEL[3]~input_o\ & (((\G12|Add0~22_combout\)) # (\SEL[1]~input_o\))) ) ) ) # ( !\G12|Add0~24_sumout\ & ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux12~0_combout\)))) # 
-- (\SEL[3]~input_o\ & (!\SEL[1]~input_o\ & ((\G12|Add0~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011100100101100011111010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \G13|ALT_INV_Mux12~0_combout\,
	datad => \G12|ALT_INV_Add0~22_combout\,
	datae => \G12|ALT_INV_Add0~24_sumout\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux12~1_combout\);

-- Location: MLABCELL_X52_Y1_N18
\G12|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~29_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[5]~input_o\) ) + ( \DADO1[5]~input_o\ ) + ( \G12|Add0~25\ ))
-- \G12|Add0~30\ = CARRY(( !\SEL[0]~input_o\ $ (!\DADO2[5]~input_o\) ) + ( \DADO1[5]~input_o\ ) + ( \G12|Add0~25\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[5]~input_o\,
	datad => \ALT_INV_DADO2[5]~input_o\,
	cin => \G12|Add0~25\,
	sumout => \G12|Add0~29_sumout\,
	cout => \G12|Add0~30\);

-- Location: IOIBUF_X58_Y0_N75
\DADO2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(7),
	o => \DADO2[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\DADO1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(7),
	o => \DADO1[7]~input_o\);

-- Location: LABCELL_X55_Y1_N21
\G12|Add0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~27_combout\ = ( \DADO2[7]~input_o\ & ( \DADO1[7]~input_o\ ) ) # ( !\DADO2[7]~input_o\ & ( \DADO1[7]~input_o\ & ( !\SEL[0]~input_o\ ) ) ) # ( \DADO2[7]~input_o\ & ( !\DADO1[7]~input_o\ & ( \SEL[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datae => \ALT_INV_DADO2[7]~input_o\,
	dataf => \ALT_INV_DADO1[7]~input_o\,
	combout => \G12|Add0~27_combout\);

-- Location: LABCELL_X55_Y1_N12
\G13|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux11~0_combout\ = ( \DADO2[5]~input_o\ & ( \DADO1[5]~input_o\ & ( (!\SEL[1]~input_o\ & ((\SEL[2]~input_o\))) # (\SEL[1]~input_o\ & ((!\G12|Add0~7_combout\) # (!\SEL[2]~input_o\))) ) ) ) # ( !\DADO2[5]~input_o\ & ( \DADO1[5]~input_o\ & ( 
-- (!\SEL[2]~input_o\ & (((!\SEL[0]~input_o\)))) # (\SEL[2]~input_o\ & (\SEL[1]~input_o\ & (!\G12|Add0~7_combout\))) ) ) ) # ( \DADO2[5]~input_o\ & ( !\DADO1[5]~input_o\ & ( (!\SEL[2]~input_o\ & (!\SEL[1]~input_o\ $ (((\SEL[0]~input_o\))))) # 
-- (\SEL[2]~input_o\ & (\SEL[1]~input_o\ & (!\G12|Add0~7_combout\))) ) ) ) # ( !\DADO2[5]~input_o\ & ( !\DADO1[5]~input_o\ & ( (!\SEL[1]~input_o\ & (((!\SEL[0]~input_o\) # (!\SEL[2]~input_o\)))) # (\SEL[1]~input_o\ & (!\G12|Add0~7_combout\ & 
-- ((\SEL[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011100100101001010100010011110000010001000101010111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \G12|ALT_INV_Add0~7_combout\,
	datac => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \ALT_INV_DADO2[5]~input_o\,
	dataf => \ALT_INV_DADO1[5]~input_o\,
	combout => \G13|Mux11~0_combout\);

-- Location: LABCELL_X55_Y1_N24
\G13|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux11~1_combout\ = ( \G12|Add0~27_combout\ & ( \G13|Mux11~0_combout\ & ( (\SEL[3]~input_o\ & (!\SEL[2]~input_o\ & ((!\SEL[1]~input_o\) # (\G12|Add0~29_sumout\)))) ) ) ) # ( !\G12|Add0~27_combout\ & ( \G13|Mux11~0_combout\ & ( (\SEL[1]~input_o\ & 
-- (\SEL[3]~input_o\ & (\G12|Add0~29_sumout\ & !\SEL[2]~input_o\))) ) ) ) # ( \G12|Add0~27_combout\ & ( !\G13|Mux11~0_combout\ & ( (!\SEL[3]~input_o\) # ((!\SEL[2]~input_o\ & ((!\SEL[1]~input_o\) # (\G12|Add0~29_sumout\)))) ) ) ) # ( !\G12|Add0~27_combout\ & 
-- ( !\G13|Mux11~0_combout\ & ( (!\SEL[3]~input_o\) # ((\SEL[1]~input_o\ & (\G12|Add0~29_sumout\ & !\SEL[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001100111011111100110000000001000000000010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \G12|ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \G12|ALT_INV_Add0~27_combout\,
	dataf => \G13|ALT_INV_Mux11~0_combout\,
	combout => \G13|Mux11~1_combout\);

-- Location: IOIBUF_X54_Y0_N52
\DADO2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(8),
	o => \DADO2[8]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\DADO1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(8),
	o => \DADO1[8]~input_o\);

-- Location: LABCELL_X53_Y1_N6
\G12|Add0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~32_combout\ = ( \DADO1[8]~input_o\ & ( (!\SEL[0]~input_o\) # (\DADO2[8]~input_o\) ) ) # ( !\DADO1[8]~input_o\ & ( (\SEL[0]~input_o\ & \DADO2[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_DADO2[8]~input_o\,
	dataf => \ALT_INV_DADO1[8]~input_o\,
	combout => \G12|Add0~32_combout\);

-- Location: LABCELL_X50_Y1_N36
\G13|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux10~0_combout\ = ( \SEL[1]~input_o\ & ( \SEL[0]~input_o\ & ( (!\SEL[2]~input_o\ & (\DADO2[6]~input_o\)) # (\SEL[2]~input_o\ & ((!\G12|Add0~12_combout\))) ) ) ) # ( !\SEL[1]~input_o\ & ( \SEL[0]~input_o\ & ( (!\DADO2[6]~input_o\ & 
-- (!\DADO1[6]~input_o\ & !\SEL[2]~input_o\)) # (\DADO2[6]~input_o\ & (\DADO1[6]~input_o\ & \SEL[2]~input_o\)) ) ) ) # ( \SEL[1]~input_o\ & ( !\SEL[0]~input_o\ & ( (!\SEL[2]~input_o\ & ((\DADO1[6]~input_o\))) # (\SEL[2]~input_o\ & (!\G12|Add0~12_combout\)) ) 
-- ) ) # ( !\SEL[1]~input_o\ & ( !\SEL[0]~input_o\ & ( (!\DADO2[6]~input_o\ & ((!\DADO1[6]~input_o\) # (!\SEL[2]~input_o\))) # (\DADO2[6]~input_o\ & (!\DADO1[6]~input_o\ $ (\SEL[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100101000011111100110010100000000001010101010111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DADO2[6]~input_o\,
	datab => \G12|ALT_INV_Add0~12_combout\,
	datac => \ALT_INV_DADO1[6]~input_o\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_SEL[0]~input_o\,
	combout => \G13|Mux10~0_combout\);

-- Location: MLABCELL_X52_Y1_N21
\G12|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~34_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[6]~input_o\) ) + ( \DADO1[6]~input_o\ ) + ( \G12|Add0~30\ ))
-- \G12|Add0~35\ = CARRY(( !\SEL[0]~input_o\ $ (!\DADO2[6]~input_o\) ) + ( \DADO1[6]~input_o\ ) + ( \G12|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[6]~input_o\,
	datad => \ALT_INV_DADO2[6]~input_o\,
	cin => \G12|Add0~30\,
	sumout => \G12|Add0~34_sumout\,
	cout => \G12|Add0~35\);

-- Location: LABCELL_X50_Y1_N12
\G13|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux10~1_combout\ = ( \SEL[1]~input_o\ & ( \G12|Add0~34_sumout\ & ( (!\SEL[3]~input_o\ & (!\G13|Mux10~0_combout\)) # (\SEL[3]~input_o\ & ((!\SEL[2]~input_o\))) ) ) ) # ( !\SEL[1]~input_o\ & ( \G12|Add0~34_sumout\ & ( (!\SEL[3]~input_o\ & 
-- (((!\G13|Mux10~0_combout\)))) # (\SEL[3]~input_o\ & (\G12|Add0~32_combout\ & ((!\SEL[2]~input_o\)))) ) ) ) # ( \SEL[1]~input_o\ & ( !\G12|Add0~34_sumout\ & ( (!\SEL[3]~input_o\ & !\G13|Mux10~0_combout\) ) ) ) # ( !\SEL[1]~input_o\ & ( 
-- !\G12|Add0~34_sumout\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux10~0_combout\)))) # (\SEL[3]~input_o\ & (\G12|Add0~32_combout\ & ((!\SEL[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111000000110000001100000011010001110000001111001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_Add0~32_combout\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \G13|ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \ALT_INV_SEL[1]~input_o\,
	dataf => \G12|ALT_INV_Add0~34_sumout\,
	combout => \G13|Mux10~1_combout\);

-- Location: MLABCELL_X52_Y1_N24
\G12|Add0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~39_sumout\ = SUM(( \DADO1[7]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[7]~input_o\) ) + ( \G12|Add0~35\ ))
-- \G12|Add0~40\ = CARRY(( \DADO1[7]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[7]~input_o\) ) + ( \G12|Add0~35\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[7]~input_o\,
	dataf => \ALT_INV_DADO2[7]~input_o\,
	cin => \G12|Add0~35\,
	sumout => \G12|Add0~39_sumout\,
	cout => \G12|Add0~40\);

-- Location: IOIBUF_X64_Y0_N1
\DADO1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(9),
	o => \DADO1[9]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\DADO2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(9),
	o => \DADO2[9]~input_o\);

-- Location: LABCELL_X55_Y1_N3
\G12|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~37_combout\ = ( \DADO2[9]~input_o\ & ( (\DADO1[9]~input_o\) # (\SEL[0]~input_o\) ) ) # ( !\DADO2[9]~input_o\ & ( (!\SEL[0]~input_o\ & \DADO1[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[9]~input_o\,
	dataf => \ALT_INV_DADO2[9]~input_o\,
	combout => \G12|Add0~37_combout\);

-- Location: LABCELL_X55_Y1_N30
\G13|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux9~0_combout\ = ( \G12|Add0~17_combout\ & ( \DADO1[7]~input_o\ & ( (!\DADO2[7]~input_o\ & (((!\SEL[2]~input_o\ & !\SEL[0]~input_o\)))) # (\DADO2[7]~input_o\ & (!\SEL[1]~input_o\ $ ((!\SEL[2]~input_o\)))) ) ) ) # ( !\G12|Add0~17_combout\ & ( 
-- \DADO1[7]~input_o\ & ( (!\SEL[2]~input_o\ & ((!\DADO2[7]~input_o\ & ((!\SEL[0]~input_o\))) # (\DADO2[7]~input_o\ & (\SEL[1]~input_o\)))) # (\SEL[2]~input_o\ & (((\DADO2[7]~input_o\)) # (\SEL[1]~input_o\))) ) ) ) # ( \G12|Add0~17_combout\ & ( 
-- !\DADO1[7]~input_o\ & ( (!\SEL[2]~input_o\ & (!\SEL[1]~input_o\ $ (((\SEL[0]~input_o\ & \DADO2[7]~input_o\))))) # (\SEL[2]~input_o\ & (!\SEL[1]~input_o\ & (!\SEL[0]~input_o\ & !\DADO2[7]~input_o\))) ) ) ) # ( !\G12|Add0~17_combout\ & ( !\DADO1[7]~input_o\ 
-- & ( (!\SEL[2]~input_o\ & (!\SEL[1]~input_o\ $ (((\SEL[0]~input_o\ & \DADO2[7]~input_o\))))) # (\SEL[2]~input_o\ & (((!\SEL[0]~input_o\ & !\DADO2[7]~input_o\)) # (\SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100110010101101010001000010011010001011101111100000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[2]~input_o\,
	datac => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_DADO2[7]~input_o\,
	datae => \G12|ALT_INV_Add0~17_combout\,
	dataf => \ALT_INV_DADO1[7]~input_o\,
	combout => \G13|Mux9~0_combout\);

-- Location: LABCELL_X55_Y1_N6
\G13|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux9~1_combout\ = ( \G12|Add0~37_combout\ & ( \G13|Mux9~0_combout\ & ( (\SEL[3]~input_o\ & (!\SEL[2]~input_o\ & ((!\SEL[1]~input_o\) # (\G12|Add0~39_sumout\)))) ) ) ) # ( !\G12|Add0~37_combout\ & ( \G13|Mux9~0_combout\ & ( (\SEL[1]~input_o\ & 
-- (\SEL[3]~input_o\ & (\G12|Add0~39_sumout\ & !\SEL[2]~input_o\))) ) ) ) # ( \G12|Add0~37_combout\ & ( !\G13|Mux9~0_combout\ & ( (!\SEL[3]~input_o\) # ((!\SEL[2]~input_o\ & ((!\SEL[1]~input_o\) # (\G12|Add0~39_sumout\)))) ) ) ) # ( !\G12|Add0~37_combout\ & 
-- ( !\G13|Mux9~0_combout\ & ( (!\SEL[3]~input_o\) # ((\SEL[1]~input_o\ & (\G12|Add0~39_sumout\ & !\SEL[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001100111011111100110000000001000000000010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \G12|ALT_INV_Add0~39_sumout\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \G12|ALT_INV_Add0~37_combout\,
	dataf => \G13|ALT_INV_Mux9~0_combout\,
	combout => \G13|Mux9~1_combout\);

-- Location: LABCELL_X51_Y1_N12
\G13|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux8~0_combout\ = ( \G12|Add0~22_combout\ & ( \SEL[2]~input_o\ & ( (!\SEL[1]~input_o\ & ((!\DADO1[8]~input_o\ & (!\DADO2[8]~input_o\ & !\SEL[0]~input_o\)) # (\DADO1[8]~input_o\ & (\DADO2[8]~input_o\)))) ) ) ) # ( !\G12|Add0~22_combout\ & ( 
-- \SEL[2]~input_o\ & ( ((!\DADO1[8]~input_o\ & (!\DADO2[8]~input_o\ & !\SEL[0]~input_o\)) # (\DADO1[8]~input_o\ & (\DADO2[8]~input_o\))) # (\SEL[1]~input_o\) ) ) ) # ( \G12|Add0~22_combout\ & ( !\SEL[2]~input_o\ & ( (!\DADO1[8]~input_o\ & (!\SEL[1]~input_o\ 
-- $ (((\DADO2[8]~input_o\ & \SEL[0]~input_o\))))) # (\DADO1[8]~input_o\ & ((!\DADO2[8]~input_o\ & (!\SEL[0]~input_o\)) # (\DADO2[8]~input_o\ & ((\SEL[1]~input_o\))))) ) ) ) # ( !\G12|Add0~22_combout\ & ( !\SEL[2]~input_o\ & ( (!\DADO1[8]~input_o\ & 
-- (!\SEL[1]~input_o\ $ (((\DADO2[8]~input_o\ & \SEL[0]~input_o\))))) # (\DADO1[8]~input_o\ & ((!\DADO2[8]~input_o\ & (!\SEL[0]~input_o\)) # (\DADO2[8]~input_o\ & ((\SEL[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100001010011111010000101001110010001111111111001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DADO1[8]~input_o\,
	datab => \ALT_INV_DADO2[8]~input_o\,
	datac => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_SEL[1]~input_o\,
	datae => \G12|ALT_INV_Add0~22_combout\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux8~0_combout\);

-- Location: IOIBUF_X36_Y0_N35
\DADO2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(10),
	o => \DADO2[10]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\DADO1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(10),
	o => \DADO1[10]~input_o\);

-- Location: LABCELL_X50_Y1_N18
\G12|Add0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~42_combout\ = ( \DADO1[10]~input_o\ & ( (!\SEL[0]~input_o\) # (\DADO2[10]~input_o\) ) ) # ( !\DADO1[10]~input_o\ & ( (\SEL[0]~input_o\ & \DADO2[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO2[10]~input_o\,
	dataf => \ALT_INV_DADO1[10]~input_o\,
	combout => \G12|Add0~42_combout\);

-- Location: MLABCELL_X52_Y1_N27
\G12|Add0~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~44_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[8]~input_o\) ) + ( \DADO1[8]~input_o\ ) + ( \G12|Add0~40\ ))
-- \G12|Add0~45\ = CARRY(( !\SEL[0]~input_o\ $ (!\DADO2[8]~input_o\) ) + ( \DADO1[8]~input_o\ ) + ( \G12|Add0~40\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[8]~input_o\,
	datad => \ALT_INV_DADO2[8]~input_o\,
	cin => \G12|Add0~40\,
	sumout => \G12|Add0~44_sumout\,
	cout => \G12|Add0~45\);

-- Location: LABCELL_X51_Y1_N48
\G13|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux8~1_combout\ = ( \G12|Add0~44_sumout\ & ( \SEL[2]~input_o\ & ( (!\G13|Mux8~0_combout\ & !\SEL[3]~input_o\) ) ) ) # ( !\G12|Add0~44_sumout\ & ( \SEL[2]~input_o\ & ( (!\G13|Mux8~0_combout\ & !\SEL[3]~input_o\) ) ) ) # ( \G12|Add0~44_sumout\ & ( 
-- !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (!\G13|Mux8~0_combout\)) # (\SEL[3]~input_o\ & (((\G12|Add0~42_combout\) # (\SEL[1]~input_o\)))) ) ) ) # ( !\G12|Add0~44_sumout\ & ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (!\G13|Mux8~0_combout\)) # 
-- (\SEL[3]~input_o\ & (((!\SEL[1]~input_o\ & \G12|Add0~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101100101000111010111110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G13|ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \ALT_INV_SEL[3]~input_o\,
	datad => \G12|ALT_INV_Add0~42_combout\,
	datae => \G12|ALT_INV_Add0~44_sumout\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux8~1_combout\);

-- Location: IOIBUF_X58_Y0_N41
\DADO2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(11),
	o => \DADO2[11]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\DADO1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(11),
	o => \DADO1[11]~input_o\);

-- Location: LABCELL_X55_Y1_N51
\G12|Add0~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~47_combout\ = ( \DADO2[11]~input_o\ & ( \DADO1[11]~input_o\ ) ) # ( !\DADO2[11]~input_o\ & ( \DADO1[11]~input_o\ & ( !\SEL[0]~input_o\ ) ) ) # ( \DADO2[11]~input_o\ & ( !\DADO1[11]~input_o\ & ( \SEL[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datae => \ALT_INV_DADO2[11]~input_o\,
	dataf => \ALT_INV_DADO1[11]~input_o\,
	combout => \G12|Add0~47_combout\);

-- Location: LABCELL_X55_Y1_N42
\G13|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux7~0_combout\ = ( \G12|Add0~27_combout\ & ( \DADO2[9]~input_o\ & ( (!\SEL[2]~input_o\ & (!\SEL[1]~input_o\ $ (((\DADO1[9]~input_o\) # (\SEL[0]~input_o\))))) # (\SEL[2]~input_o\ & (!\SEL[1]~input_o\ & ((\DADO1[9]~input_o\)))) ) ) ) # ( 
-- !\G12|Add0~27_combout\ & ( \DADO2[9]~input_o\ & ( (!\SEL[2]~input_o\ & (!\SEL[1]~input_o\ $ (((\DADO1[9]~input_o\) # (\SEL[0]~input_o\))))) # (\SEL[2]~input_o\ & (((\DADO1[9]~input_o\)) # (\SEL[1]~input_o\))) ) ) ) # ( \G12|Add0~27_combout\ & ( 
-- !\DADO2[9]~input_o\ & ( (!\DADO1[9]~input_o\ & (!\SEL[1]~input_o\ & ((!\SEL[2]~input_o\) # (!\SEL[0]~input_o\)))) # (\DADO1[9]~input_o\ & (((!\SEL[2]~input_o\ & !\SEL[0]~input_o\)))) ) ) ) # ( !\G12|Add0~27_combout\ & ( !\DADO2[9]~input_o\ & ( 
-- (!\SEL[2]~input_o\ & ((!\DADO1[9]~input_o\ & (!\SEL[1]~input_o\)) # (\DADO1[9]~input_o\ & ((!\SEL[0]~input_o\))))) # (\SEL[2]~input_o\ & (((!\SEL[0]~input_o\ & !\DADO1[9]~input_o\)) # (\SEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100111010001101010001100000010010101011101111000010001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[2]~input_o\,
	datac => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_DADO1[9]~input_o\,
	datae => \G12|ALT_INV_Add0~27_combout\,
	dataf => \ALT_INV_DADO2[9]~input_o\,
	combout => \G13|Mux7~0_combout\);

-- Location: MLABCELL_X52_Y1_N30
\G12|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~49_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[9]~input_o\) ) + ( \DADO1[9]~input_o\ ) + ( \G12|Add0~45\ ))
-- \G12|Add0~50\ = CARRY(( !\SEL[0]~input_o\ $ (!\DADO2[9]~input_o\) ) + ( \DADO1[9]~input_o\ ) + ( \G12|Add0~45\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[9]~input_o\,
	datad => \ALT_INV_DADO2[9]~input_o\,
	cin => \G12|Add0~45\,
	sumout => \G12|Add0~49_sumout\,
	cout => \G12|Add0~50\);

-- Location: LABCELL_X51_Y1_N24
\G13|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux7~1_combout\ = ( \G12|Add0~49_sumout\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux7~0_combout\) ) ) ) # ( !\G12|Add0~49_sumout\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux7~0_combout\) ) ) ) # ( \G12|Add0~49_sumout\ & ( 
-- !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux7~0_combout\)))) # (\SEL[3]~input_o\ & (((\SEL[1]~input_o\)) # (\G12|Add0~47_combout\))) ) ) ) # ( !\G12|Add0~49_sumout\ & ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux7~0_combout\)))) # 
-- (\SEL[3]~input_o\ & (\G12|Add0~47_combout\ & ((!\SEL[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111000000110100011111001111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_Add0~47_combout\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \G13|ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_SEL[1]~input_o\,
	datae => \G12|ALT_INV_Add0~49_sumout\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux7~1_combout\);

-- Location: MLABCELL_X52_Y1_N33
\G12|Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~54_sumout\ = SUM(( \DADO1[10]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[10]~input_o\) ) + ( \G12|Add0~50\ ))
-- \G12|Add0~55\ = CARRY(( \DADO1[10]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[10]~input_o\) ) + ( \G12|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO2[10]~input_o\,
	datad => \ALT_INV_DADO1[10]~input_o\,
	cin => \G12|Add0~50\,
	sumout => \G12|Add0~54_sumout\,
	cout => \G12|Add0~55\);

-- Location: LABCELL_X50_Y1_N24
\G13|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux6~0_combout\ = ( \SEL[1]~input_o\ & ( \SEL[0]~input_o\ & ( (!\SEL[2]~input_o\ & ((\DADO2[10]~input_o\))) # (\SEL[2]~input_o\ & (!\G12|Add0~32_combout\)) ) ) ) # ( !\SEL[1]~input_o\ & ( \SEL[0]~input_o\ & ( (!\DADO1[10]~input_o\ & 
-- (!\DADO2[10]~input_o\ & !\SEL[2]~input_o\)) # (\DADO1[10]~input_o\ & (\DADO2[10]~input_o\ & \SEL[2]~input_o\)) ) ) ) # ( \SEL[1]~input_o\ & ( !\SEL[0]~input_o\ & ( (!\SEL[2]~input_o\ & ((\DADO1[10]~input_o\))) # (\SEL[2]~input_o\ & 
-- (!\G12|Add0~32_combout\)) ) ) ) # ( !\SEL[1]~input_o\ & ( !\SEL[0]~input_o\ & ( (!\DADO1[10]~input_o\ & ((!\DADO2[10]~input_o\) # (!\SEL[2]~input_o\))) # (\DADO1[10]~input_o\ & (!\DADO2[10]~input_o\ $ (\SEL[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000011001100111010101011000000000000110000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_Add0~32_combout\,
	datab => \ALT_INV_DADO1[10]~input_o\,
	datac => \ALT_INV_DADO2[10]~input_o\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_SEL[0]~input_o\,
	combout => \G13|Mux6~0_combout\);

-- Location: IOIBUF_X32_Y0_N35
\DADO1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(12),
	o => \DADO1[12]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\DADO2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(12),
	o => \DADO2[12]~input_o\);

-- Location: LABCELL_X50_Y1_N30
\G12|Add0~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~52_combout\ = ( \DADO2[12]~input_o\ & ( (\SEL[0]~input_o\) # (\DADO1[12]~input_o\) ) ) # ( !\DADO2[12]~input_o\ & ( (\DADO1[12]~input_o\ & !\SEL[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DADO1[12]~input_o\,
	datad => \ALT_INV_SEL[0]~input_o\,
	dataf => \ALT_INV_DADO2[12]~input_o\,
	combout => \G12|Add0~52_combout\);

-- Location: LABCELL_X50_Y1_N6
\G13|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux6~1_combout\ = ( \SEL[1]~input_o\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux6~0_combout\) ) ) ) # ( !\SEL[1]~input_o\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux6~0_combout\) ) ) ) # ( \SEL[1]~input_o\ & ( 
-- !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & ((!\G13|Mux6~0_combout\))) # (\SEL[3]~input_o\ & (\G12|Add0~54_sumout\)) ) ) ) # ( !\SEL[1]~input_o\ & ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (!\G13|Mux6~0_combout\)) # (\SEL[3]~input_o\ & 
-- ((\G12|Add0~52_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110011110100011101000111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_Add0~54_sumout\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \G13|ALT_INV_Mux6~0_combout\,
	datad => \G12|ALT_INV_Add0~52_combout\,
	datae => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux6~1_combout\);

-- Location: LABCELL_X55_Y1_N54
\G13|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux5~0_combout\ = ( \DADO2[11]~input_o\ & ( \DADO1[11]~input_o\ & ( (!\SEL[1]~input_o\ & (\SEL[2]~input_o\)) # (\SEL[1]~input_o\ & ((!\SEL[2]~input_o\) # (!\G12|Add0~37_combout\))) ) ) ) # ( !\DADO2[11]~input_o\ & ( \DADO1[11]~input_o\ & ( 
-- (!\SEL[2]~input_o\ & (((!\SEL[0]~input_o\)))) # (\SEL[2]~input_o\ & (\SEL[1]~input_o\ & (!\G12|Add0~37_combout\))) ) ) ) # ( \DADO2[11]~input_o\ & ( !\DADO1[11]~input_o\ & ( (!\SEL[2]~input_o\ & (!\SEL[1]~input_o\ $ (((\SEL[0]~input_o\))))) # 
-- (\SEL[2]~input_o\ & (\SEL[1]~input_o\ & (!\G12|Add0~37_combout\))) ) ) ) # ( !\DADO2[11]~input_o\ & ( !\DADO1[11]~input_o\ & ( (!\SEL[1]~input_o\ & ((!\SEL[2]~input_o\) # ((!\SEL[0]~input_o\)))) # (\SEL[1]~input_o\ & (\SEL[2]~input_o\ & 
-- (!\G12|Add0~37_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010011000100110000101010011011100000100000111011001110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[2]~input_o\,
	datac => \G12|ALT_INV_Add0~37_combout\,
	datad => \ALT_INV_SEL[0]~input_o\,
	datae => \ALT_INV_DADO2[11]~input_o\,
	dataf => \ALT_INV_DADO1[11]~input_o\,
	combout => \G13|Mux5~0_combout\);

-- Location: IOIBUF_X36_Y0_N52
\DADO2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(13),
	o => \DADO2[13]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\DADO1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(13),
	o => \DADO1[13]~input_o\);

-- Location: LABCELL_X51_Y1_N30
\G12|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~57_combout\ = ( \DADO1[13]~input_o\ & ( (!\SEL[0]~input_o\) # (\DADO2[13]~input_o\) ) ) # ( !\DADO1[13]~input_o\ & ( (\SEL[0]~input_o\ & \DADO2[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO2[13]~input_o\,
	dataf => \ALT_INV_DADO1[13]~input_o\,
	combout => \G12|Add0~57_combout\);

-- Location: MLABCELL_X52_Y1_N36
\G12|Add0~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~59_sumout\ = SUM(( \DADO1[11]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[11]~input_o\) ) + ( \G12|Add0~55\ ))
-- \G12|Add0~60\ = CARRY(( \DADO1[11]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[11]~input_o\) ) + ( \G12|Add0~55\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO2[11]~input_o\,
	datad => \ALT_INV_DADO1[11]~input_o\,
	cin => \G12|Add0~55\,
	sumout => \G12|Add0~59_sumout\,
	cout => \G12|Add0~60\);

-- Location: LABCELL_X51_Y1_N6
\G13|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux5~1_combout\ = ( \G12|Add0~59_sumout\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux5~0_combout\) ) ) ) # ( !\G12|Add0~59_sumout\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux5~0_combout\) ) ) ) # ( \G12|Add0~59_sumout\ & ( 
-- !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux5~0_combout\)))) # (\SEL[3]~input_o\ & (((\G12|Add0~57_combout\)) # (\SEL[1]~input_o\))) ) ) ) # ( !\G12|Add0~59_sumout\ & ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux5~0_combout\)))) # 
-- (\SEL[3]~input_o\ & (!\SEL[1]~input_o\ & ((\G12|Add0~57_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011100100101100011111010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \G13|ALT_INV_Mux5~0_combout\,
	datad => \G12|ALT_INV_Add0~57_combout\,
	datae => \G12|ALT_INV_Add0~59_sumout\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux5~1_combout\);

-- Location: MLABCELL_X52_Y1_N39
\G12|Add0~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~63_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[12]~input_o\) ) + ( \DADO1[12]~input_o\ ) + ( \G12|Add0~60\ ))
-- \G12|Add0~64\ = CARRY(( !\SEL[0]~input_o\ $ (!\DADO2[12]~input_o\) ) + ( \DADO1[12]~input_o\ ) + ( \G12|Add0~60\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO2[12]~input_o\,
	dataf => \ALT_INV_DADO1[12]~input_o\,
	cin => \G12|Add0~60\,
	sumout => \G12|Add0~63_sumout\,
	cout => \G12|Add0~64\);

-- Location: IOIBUF_X50_Y0_N92
\DADO1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(14),
	o => \DADO1[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\DADO2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(14),
	o => \DADO2[14]~input_o\);

-- Location: LABCELL_X50_Y1_N21
\G13|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux4~1_combout\ = ( \DADO2[14]~input_o\ & ( (\DADO1[14]~input_o\) # (\SEL[0]~input_o\) ) ) # ( !\DADO2[14]~input_o\ & ( (!\SEL[0]~input_o\ & \DADO1[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_DADO1[14]~input_o\,
	dataf => \ALT_INV_DADO2[14]~input_o\,
	combout => \G13|Mux4~1_combout\);

-- Location: LABCELL_X50_Y1_N42
\G13|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux4~0_combout\ = ( \SEL[1]~input_o\ & ( \DADO1[12]~input_o\ & ( (!\SEL[2]~input_o\ & ((!\SEL[0]~input_o\) # ((\DADO2[12]~input_o\)))) # (\SEL[2]~input_o\ & (((!\G12|Add0~42_combout\)))) ) ) ) # ( !\SEL[1]~input_o\ & ( \DADO1[12]~input_o\ & ( 
-- (!\DADO2[12]~input_o\ & (!\SEL[0]~input_o\ & !\SEL[2]~input_o\)) # (\DADO2[12]~input_o\ & ((\SEL[2]~input_o\))) ) ) ) # ( \SEL[1]~input_o\ & ( !\DADO1[12]~input_o\ & ( (!\SEL[2]~input_o\ & (\SEL[0]~input_o\ & (\DADO2[12]~input_o\))) # (\SEL[2]~input_o\ & 
-- (((!\G12|Add0~42_combout\)))) ) ) ) # ( !\SEL[1]~input_o\ & ( !\DADO1[12]~input_o\ & ( (!\SEL[0]~input_o\ & ((!\DADO2[12]~input_o\) # (!\SEL[2]~input_o\))) # (\SEL[0]~input_o\ & (!\DADO2[12]~input_o\ & !\SEL[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000000100011111000010001000001100111011101111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datab => \ALT_INV_DADO2[12]~input_o\,
	datac => \G12|ALT_INV_Add0~42_combout\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_DADO1[12]~input_o\,
	combout => \G13|Mux4~0_combout\);

-- Location: LABCELL_X50_Y1_N48
\G13|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux4~2_combout\ = ( \SEL[1]~input_o\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux4~0_combout\) ) ) ) # ( !\SEL[1]~input_o\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux4~0_combout\) ) ) ) # ( \SEL[1]~input_o\ & ( 
-- !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & ((!\G13|Mux4~0_combout\))) # (\SEL[3]~input_o\ & (\G12|Add0~63_sumout\)) ) ) ) # ( !\SEL[1]~input_o\ & ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & ((!\G13|Mux4~0_combout\))) # (\SEL[3]~input_o\ & 
-- (\G13|Mux4~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011110111010001000111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_Add0~63_sumout\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \G13|ALT_INV_Mux4~1_combout\,
	datad => \G13|ALT_INV_Mux4~0_combout\,
	datae => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux4~2_combout\);

-- Location: IOIBUF_X40_Y0_N1
\DADO2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO2(15),
	o => \DADO2[15]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\DADO1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DADO1(15),
	o => \DADO1[15]~input_o\);

-- Location: LABCELL_X51_Y1_N33
\G13|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux3~1_combout\ = ( \DADO1[15]~input_o\ & ( (!\SEL[0]~input_o\) # (\DADO2[15]~input_o\) ) ) # ( !\DADO1[15]~input_o\ & ( (\SEL[0]~input_o\ & \DADO2[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO2[15]~input_o\,
	dataf => \ALT_INV_DADO1[15]~input_o\,
	combout => \G13|Mux3~1_combout\);

-- Location: LABCELL_X51_Y1_N42
\G13|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux3~0_combout\ = ( \SEL[0]~input_o\ & ( \DADO1[13]~input_o\ & ( (!\SEL[1]~input_o\ & (((\DADO2[13]~input_o\ & \SEL[2]~input_o\)))) # (\SEL[1]~input_o\ & ((!\SEL[2]~input_o\ & ((\DADO2[13]~input_o\))) # (\SEL[2]~input_o\ & (!\G12|Add0~47_combout\)))) 
-- ) ) ) # ( !\SEL[0]~input_o\ & ( \DADO1[13]~input_o\ & ( (!\SEL[1]~input_o\ & ((!\DADO2[13]~input_o\ $ (\SEL[2]~input_o\)))) # (\SEL[1]~input_o\ & ((!\G12|Add0~47_combout\) # ((!\SEL[2]~input_o\)))) ) ) ) # ( \SEL[0]~input_o\ & ( !\DADO1[13]~input_o\ & ( 
-- (!\SEL[2]~input_o\ & ((!\SEL[1]~input_o\ $ (\DADO2[13]~input_o\)))) # (\SEL[2]~input_o\ & (!\G12|Add0~47_combout\ & (\SEL[1]~input_o\))) ) ) ) # ( !\SEL[0]~input_o\ & ( !\DADO1[13]~input_o\ & ( (!\SEL[1]~input_o\ & (((!\DADO2[13]~input_o\) # 
-- (!\SEL[2]~input_o\)))) # (\SEL[1]~input_o\ & (!\G12|Add0~47_combout\ & ((\SEL[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011100010110000110010001011110011001011100000001100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G12|ALT_INV_Add0~47_combout\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \ALT_INV_DADO2[13]~input_o\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \ALT_INV_SEL[0]~input_o\,
	dataf => \ALT_INV_DADO1[13]~input_o\,
	combout => \G13|Mux3~0_combout\);

-- Location: MLABCELL_X52_Y1_N42
\G12|Add0~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~67_sumout\ = SUM(( \DADO1[13]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[13]~input_o\) ) + ( \G12|Add0~64\ ))
-- \G12|Add0~68\ = CARRY(( \DADO1[13]~input_o\ ) + ( !\SEL[0]~input_o\ $ (!\DADO2[13]~input_o\) ) + ( \G12|Add0~64\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[13]~input_o\,
	dataf => \ALT_INV_DADO2[13]~input_o\,
	cin => \G12|Add0~64\,
	sumout => \G12|Add0~67_sumout\,
	cout => \G12|Add0~68\);

-- Location: LABCELL_X51_Y1_N18
\G13|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux3~2_combout\ = ( \G12|Add0~67_sumout\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux3~0_combout\) ) ) ) # ( !\G12|Add0~67_sumout\ & ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux3~0_combout\) ) ) ) # ( \G12|Add0~67_sumout\ & ( 
-- !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux3~0_combout\)))) # (\SEL[3]~input_o\ & (((\G13|Mux3~1_combout\)) # (\SEL[1]~input_o\))) ) ) ) # ( !\G12|Add0~67_sumout\ & ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux3~0_combout\)))) # 
-- (\SEL[3]~input_o\ & (!\SEL[1]~input_o\ & (\G13|Mux3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111000000100101111110001010110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \G13|ALT_INV_Mux3~1_combout\,
	datad => \G13|ALT_INV_Mux3~0_combout\,
	datae => \G12|ALT_INV_Add0~67_sumout\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux3~2_combout\);

-- Location: MLABCELL_X52_Y1_N45
\G12|Add0~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~71_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[14]~input_o\) ) + ( \DADO1[14]~input_o\ ) + ( \G12|Add0~68\ ))
-- \G12|Add0~72\ = CARRY(( !\SEL[0]~input_o\ $ (!\DADO2[14]~input_o\) ) + ( \DADO1[14]~input_o\ ) + ( \G12|Add0~68\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_DADO1[14]~input_o\,
	datad => \ALT_INV_DADO2[14]~input_o\,
	cin => \G12|Add0~68\,
	sumout => \G12|Add0~71_sumout\,
	cout => \G12|Add0~72\);

-- Location: LABCELL_X50_Y1_N54
\G13|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux2~0_combout\ = ( \DADO1[14]~input_o\ & ( \DADO2[14]~input_o\ & ( (!\SEL[1]~input_o\ & ((\SEL[2]~input_o\))) # (\SEL[1]~input_o\ & ((!\G12|Add0~52_combout\) # (!\SEL[2]~input_o\))) ) ) ) # ( !\DADO1[14]~input_o\ & ( \DADO2[14]~input_o\ & ( 
-- (!\SEL[2]~input_o\ & (!\SEL[1]~input_o\ $ (((\SEL[0]~input_o\))))) # (\SEL[2]~input_o\ & (\SEL[1]~input_o\ & (!\G12|Add0~52_combout\))) ) ) ) # ( \DADO1[14]~input_o\ & ( !\DADO2[14]~input_o\ & ( (!\SEL[2]~input_o\ & (((!\SEL[0]~input_o\)))) # 
-- (\SEL[2]~input_o\ & (\SEL[1]~input_o\ & (!\G12|Add0~52_combout\))) ) ) ) # ( !\DADO1[14]~input_o\ & ( !\DADO2[14]~input_o\ & ( (!\SEL[1]~input_o\ & (((!\SEL[0]~input_o\) # (!\SEL[2]~input_o\)))) # (\SEL[1]~input_o\ & (!\G12|Add0~52_combout\ & 
-- ((\SEL[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011100100111100000100010010100101010001000101010111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \G12|ALT_INV_Add0~52_combout\,
	datac => \ALT_INV_SEL[0]~input_o\,
	datad => \ALT_INV_SEL[2]~input_o\,
	datae => \ALT_INV_DADO1[14]~input_o\,
	dataf => \ALT_INV_DADO2[14]~input_o\,
	combout => \G13|Mux2~0_combout\);

-- Location: LABCELL_X50_Y1_N33
\G13|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux2~1_combout\ = ( \SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux2~0_combout\) ) ) # ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux2~0_combout\)))) # (\SEL[3]~input_o\ & (\SEL[1]~input_o\ & (\G12|Add0~71_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110100000001110011010000000111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[3]~input_o\,
	datac => \G12|ALT_INV_Add0~71_sumout\,
	datad => \G13|ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux2~1_combout\);

-- Location: LABCELL_X51_Y1_N54
\G13|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux1~0_combout\ = ( \DADO2[15]~input_o\ & ( \SEL[2]~input_o\ & ( (!\SEL[1]~input_o\ & ((\DADO1[15]~input_o\))) # (\SEL[1]~input_o\ & (!\G12|Add0~57_combout\)) ) ) ) # ( !\DADO2[15]~input_o\ & ( \SEL[2]~input_o\ & ( (!\SEL[1]~input_o\ & 
-- (!\SEL[0]~input_o\ & ((!\DADO1[15]~input_o\)))) # (\SEL[1]~input_o\ & (((!\G12|Add0~57_combout\)))) ) ) ) # ( \DADO2[15]~input_o\ & ( !\SEL[2]~input_o\ & ( !\SEL[1]~input_o\ $ (((\DADO1[15]~input_o\) # (\SEL[0]~input_o\))) ) ) ) # ( !\DADO2[15]~input_o\ & 
-- ( !\SEL[2]~input_o\ & ( (!\DADO1[15]~input_o\ & ((!\SEL[1]~input_o\))) # (\DADO1[15]~input_o\ & (!\SEL[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000001010101000000101111110100000110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datab => \G12|ALT_INV_Add0~57_combout\,
	datac => \ALT_INV_DADO1[15]~input_o\,
	datad => \ALT_INV_SEL[1]~input_o\,
	datae => \ALT_INV_DADO2[15]~input_o\,
	dataf => \ALT_INV_SEL[2]~input_o\,
	combout => \G13|Mux1~0_combout\);

-- Location: MLABCELL_X52_Y1_N48
\G12|Add0~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|Add0~75_sumout\ = SUM(( !\SEL[0]~input_o\ $ (!\DADO2[15]~input_o\) ) + ( \DADO1[15]~input_o\ ) + ( \G12|Add0~72\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datab => \ALT_INV_DADO2[15]~input_o\,
	datac => \ALT_INV_DADO1[15]~input_o\,
	cin => \G12|Add0~72\,
	sumout => \G12|Add0~75_sumout\);

-- Location: LABCELL_X51_Y1_N0
\G13|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|Mux1~1_combout\ = ( \SEL[1]~input_o\ & ( (!\SEL[3]~input_o\ & (((!\G13|Mux1~0_combout\)))) # (\SEL[3]~input_o\ & (!\SEL[2]~input_o\ & ((\G12|Add0~75_sumout\)))) ) ) # ( !\SEL[1]~input_o\ & ( (!\SEL[3]~input_o\ & !\G13|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000111001001010000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[2]~input_o\,
	datac => \G13|ALT_INV_Mux1~0_combout\,
	datad => \G12|ALT_INV_Add0~75_sumout\,
	dataf => \ALT_INV_SEL[1]~input_o\,
	combout => \G13|Mux1~1_combout\);

-- Location: LABCELL_X9_Y54_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


