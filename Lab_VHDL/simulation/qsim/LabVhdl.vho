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

-- DATE "11/01/2018 13:09:40"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BancodeRegistradores IS
    PORT (
	INSTR2 : IN std_logic_vector(3 DOWNTO 0);
	INSTR3 : IN std_logic_vector(3 DOWNTO 0);
	INSTRD : IN std_logic_vector(3 DOWNTO 0);
	WRITEFLAG : IN std_logic;
	WRITEBACKDATA : IN std_logic_vector(15 DOWNTO 0);
	REGAUX : OUT std_logic_vector(15 DOWNTO 0);
	OUTREG1 : OUT std_logic_vector(15 DOWNTO 0);
	OUTREG2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END BancodeRegistradores;

ARCHITECTURE structure OF BancodeRegistradores IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INSTR2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INSTR3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INSTRD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WRITEFLAG : std_logic;
SIGNAL ww_WRITEBACKDATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REGAUX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OUTREG1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OUTREG2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \INSTR2[3]~input_o\ : std_logic;
SIGNAL \INSTR3[3]~input_o\ : std_logic;
SIGNAL \INSTRD[3]~input_o\ : std_logic;
SIGNAL \REGAUX[0]~output_o\ : std_logic;
SIGNAL \REGAUX[1]~output_o\ : std_logic;
SIGNAL \REGAUX[2]~output_o\ : std_logic;
SIGNAL \REGAUX[3]~output_o\ : std_logic;
SIGNAL \REGAUX[4]~output_o\ : std_logic;
SIGNAL \REGAUX[5]~output_o\ : std_logic;
SIGNAL \REGAUX[6]~output_o\ : std_logic;
SIGNAL \REGAUX[7]~output_o\ : std_logic;
SIGNAL \REGAUX[8]~output_o\ : std_logic;
SIGNAL \REGAUX[9]~output_o\ : std_logic;
SIGNAL \REGAUX[10]~output_o\ : std_logic;
SIGNAL \REGAUX[11]~output_o\ : std_logic;
SIGNAL \REGAUX[12]~output_o\ : std_logic;
SIGNAL \REGAUX[13]~output_o\ : std_logic;
SIGNAL \REGAUX[14]~output_o\ : std_logic;
SIGNAL \REGAUX[15]~output_o\ : std_logic;
SIGNAL \OUTREG1[0]~output_o\ : std_logic;
SIGNAL \OUTREG1[1]~output_o\ : std_logic;
SIGNAL \OUTREG1[2]~output_o\ : std_logic;
SIGNAL \OUTREG1[3]~output_o\ : std_logic;
SIGNAL \OUTREG1[4]~output_o\ : std_logic;
SIGNAL \OUTREG1[5]~output_o\ : std_logic;
SIGNAL \OUTREG1[6]~output_o\ : std_logic;
SIGNAL \OUTREG1[7]~output_o\ : std_logic;
SIGNAL \OUTREG1[8]~output_o\ : std_logic;
SIGNAL \OUTREG1[9]~output_o\ : std_logic;
SIGNAL \OUTREG1[10]~output_o\ : std_logic;
SIGNAL \OUTREG1[11]~output_o\ : std_logic;
SIGNAL \OUTREG1[12]~output_o\ : std_logic;
SIGNAL \OUTREG1[13]~output_o\ : std_logic;
SIGNAL \OUTREG1[14]~output_o\ : std_logic;
SIGNAL \OUTREG1[15]~output_o\ : std_logic;
SIGNAL \OUTREG2[0]~output_o\ : std_logic;
SIGNAL \OUTREG2[1]~output_o\ : std_logic;
SIGNAL \OUTREG2[2]~output_o\ : std_logic;
SIGNAL \OUTREG2[3]~output_o\ : std_logic;
SIGNAL \OUTREG2[4]~output_o\ : std_logic;
SIGNAL \OUTREG2[5]~output_o\ : std_logic;
SIGNAL \OUTREG2[6]~output_o\ : std_logic;
SIGNAL \OUTREG2[7]~output_o\ : std_logic;
SIGNAL \OUTREG2[8]~output_o\ : std_logic;
SIGNAL \OUTREG2[9]~output_o\ : std_logic;
SIGNAL \OUTREG2[10]~output_o\ : std_logic;
SIGNAL \OUTREG2[11]~output_o\ : std_logic;
SIGNAL \OUTREG2[12]~output_o\ : std_logic;
SIGNAL \OUTREG2[13]~output_o\ : std_logic;
SIGNAL \OUTREG2[14]~output_o\ : std_logic;
SIGNAL \OUTREG2[15]~output_o\ : std_logic;
SIGNAL \WRITEFLAG~input_o\ : std_logic;
SIGNAL \INSTRD[2]~input_o\ : std_logic;
SIGNAL \WRITEBACKDATA[0]~input_o\ : std_logic;
SIGNAL \INSTRD[0]~input_o\ : std_logic;
SIGNAL \INSTRD[1]~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \BANKREG[4][0]~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \BANKREG[5][0]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \BANKREG[6][0]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \BANKREG[7][0]~q\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \BANKREG[2][0]~q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \BANKREG[3][0]~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \BANKREG[1][0]~q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \BANKREG[0][0]~q\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \REGAUX[0]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[1]~input_o\ : std_logic;
SIGNAL \BANKREG[4][1]~q\ : std_logic;
SIGNAL \BANKREG[5][1]~q\ : std_logic;
SIGNAL \BANKREG[6][1]~q\ : std_logic;
SIGNAL \BANKREG[7][1]~q\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \BANKREG[2][1]~q\ : std_logic;
SIGNAL \BANKREG[3][1]~q\ : std_logic;
SIGNAL \BANKREG[1][1]~q\ : std_logic;
SIGNAL \BANKREG[0][1]~q\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \REGAUX[1]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[2]~input_o\ : std_logic;
SIGNAL \BANKREG[4][2]~q\ : std_logic;
SIGNAL \BANKREG[5][2]~q\ : std_logic;
SIGNAL \BANKREG[6][2]~q\ : std_logic;
SIGNAL \BANKREG[7][2]~q\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \BANKREG[2][2]~q\ : std_logic;
SIGNAL \BANKREG[3][2]~q\ : std_logic;
SIGNAL \BANKREG[1][2]~q\ : std_logic;
SIGNAL \BANKREG[0][2]~q\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \REGAUX[2]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[3]~input_o\ : std_logic;
SIGNAL \BANKREG[4][3]~q\ : std_logic;
SIGNAL \BANKREG[5][3]~q\ : std_logic;
SIGNAL \BANKREG[6][3]~q\ : std_logic;
SIGNAL \BANKREG[7][3]~q\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \BANKREG[2][3]~q\ : std_logic;
SIGNAL \BANKREG[3][3]~q\ : std_logic;
SIGNAL \BANKREG[1][3]~q\ : std_logic;
SIGNAL \BANKREG[0][3]~q\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \REGAUX[3]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[4]~input_o\ : std_logic;
SIGNAL \BANKREG[4][4]~q\ : std_logic;
SIGNAL \BANKREG[5][4]~q\ : std_logic;
SIGNAL \BANKREG[6][4]~q\ : std_logic;
SIGNAL \BANKREG[7][4]~q\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \BANKREG[2][4]~q\ : std_logic;
SIGNAL \BANKREG[3][4]~q\ : std_logic;
SIGNAL \BANKREG[1][4]~q\ : std_logic;
SIGNAL \BANKREG[0][4]~q\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \REGAUX[4]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[5]~input_o\ : std_logic;
SIGNAL \BANKREG[4][5]~q\ : std_logic;
SIGNAL \BANKREG[5][5]~q\ : std_logic;
SIGNAL \BANKREG[6][5]~q\ : std_logic;
SIGNAL \BANKREG[7][5]~q\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \BANKREG[2][5]~q\ : std_logic;
SIGNAL \BANKREG[3][5]~q\ : std_logic;
SIGNAL \BANKREG[1][5]~q\ : std_logic;
SIGNAL \BANKREG[0][5]~q\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \REGAUX[5]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[6]~input_o\ : std_logic;
SIGNAL \BANKREG[4][6]~q\ : std_logic;
SIGNAL \BANKREG[5][6]~q\ : std_logic;
SIGNAL \BANKREG[6][6]~q\ : std_logic;
SIGNAL \BANKREG[7][6]~q\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \BANKREG[2][6]~q\ : std_logic;
SIGNAL \BANKREG[3][6]~q\ : std_logic;
SIGNAL \BANKREG[1][6]~q\ : std_logic;
SIGNAL \BANKREG[0][6]~q\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \REGAUX[6]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[7]~input_o\ : std_logic;
SIGNAL \BANKREG[4][7]~q\ : std_logic;
SIGNAL \BANKREG[5][7]~q\ : std_logic;
SIGNAL \BANKREG[6][7]~q\ : std_logic;
SIGNAL \BANKREG[7][7]~q\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \BANKREG[2][7]~q\ : std_logic;
SIGNAL \BANKREG[3][7]~q\ : std_logic;
SIGNAL \BANKREG[1][7]~q\ : std_logic;
SIGNAL \BANKREG[0][7]~q\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \REGAUX[7]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[8]~input_o\ : std_logic;
SIGNAL \BANKREG[4][8]~q\ : std_logic;
SIGNAL \BANKREG[5][8]~q\ : std_logic;
SIGNAL \BANKREG[6][8]~q\ : std_logic;
SIGNAL \BANKREG[7][8]~q\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \BANKREG[2][8]~q\ : std_logic;
SIGNAL \BANKREG[3][8]~q\ : std_logic;
SIGNAL \BANKREG[1][8]~q\ : std_logic;
SIGNAL \BANKREG[0][8]~q\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \REGAUX[8]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[9]~input_o\ : std_logic;
SIGNAL \BANKREG[4][9]~q\ : std_logic;
SIGNAL \BANKREG[5][9]~q\ : std_logic;
SIGNAL \BANKREG[6][9]~q\ : std_logic;
SIGNAL \BANKREG[7][9]~q\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \BANKREG[2][9]~q\ : std_logic;
SIGNAL \BANKREG[3][9]~q\ : std_logic;
SIGNAL \BANKREG[1][9]~q\ : std_logic;
SIGNAL \BANKREG[0][9]~q\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \REGAUX[9]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[10]~input_o\ : std_logic;
SIGNAL \BANKREG[4][10]~q\ : std_logic;
SIGNAL \BANKREG[5][10]~q\ : std_logic;
SIGNAL \BANKREG[6][10]~q\ : std_logic;
SIGNAL \BANKREG[7][10]~q\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \BANKREG[2][10]~q\ : std_logic;
SIGNAL \BANKREG[3][10]~q\ : std_logic;
SIGNAL \BANKREG[1][10]~q\ : std_logic;
SIGNAL \BANKREG[0][10]~q\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \REGAUX[10]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[11]~input_o\ : std_logic;
SIGNAL \BANKREG[4][11]~q\ : std_logic;
SIGNAL \BANKREG[5][11]~q\ : std_logic;
SIGNAL \BANKREG[6][11]~q\ : std_logic;
SIGNAL \BANKREG[7][11]~q\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \BANKREG[2][11]~q\ : std_logic;
SIGNAL \BANKREG[3][11]~q\ : std_logic;
SIGNAL \BANKREG[1][11]~q\ : std_logic;
SIGNAL \BANKREG[0][11]~q\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \REGAUX[11]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[12]~input_o\ : std_logic;
SIGNAL \BANKREG[4][12]~q\ : std_logic;
SIGNAL \BANKREG[5][12]~q\ : std_logic;
SIGNAL \BANKREG[6][12]~q\ : std_logic;
SIGNAL \BANKREG[7][12]~q\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \BANKREG[2][12]~q\ : std_logic;
SIGNAL \BANKREG[3][12]~q\ : std_logic;
SIGNAL \BANKREG[1][12]~q\ : std_logic;
SIGNAL \BANKREG[0][12]~q\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \REGAUX[12]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[13]~input_o\ : std_logic;
SIGNAL \BANKREG[4][13]~q\ : std_logic;
SIGNAL \BANKREG[5][13]~q\ : std_logic;
SIGNAL \BANKREG[6][13]~q\ : std_logic;
SIGNAL \BANKREG[7][13]~q\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \BANKREG[2][13]~q\ : std_logic;
SIGNAL \BANKREG[3][13]~q\ : std_logic;
SIGNAL \BANKREG[1][13]~q\ : std_logic;
SIGNAL \BANKREG[0][13]~q\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \REGAUX[13]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[14]~input_o\ : std_logic;
SIGNAL \BANKREG[4][14]~q\ : std_logic;
SIGNAL \BANKREG[5][14]~q\ : std_logic;
SIGNAL \BANKREG[6][14]~q\ : std_logic;
SIGNAL \BANKREG[7][14]~q\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \BANKREG[2][14]~q\ : std_logic;
SIGNAL \BANKREG[3][14]~q\ : std_logic;
SIGNAL \BANKREG[1][14]~q\ : std_logic;
SIGNAL \BANKREG[0][14]~q\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \REGAUX[14]~reg0_q\ : std_logic;
SIGNAL \WRITEBACKDATA[15]~input_o\ : std_logic;
SIGNAL \BANKREG[4][15]~q\ : std_logic;
SIGNAL \BANKREG[5][15]~q\ : std_logic;
SIGNAL \BANKREG[6][15]~q\ : std_logic;
SIGNAL \BANKREG[7][15]~q\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \BANKREG[2][15]~q\ : std_logic;
SIGNAL \BANKREG[3][15]~q\ : std_logic;
SIGNAL \BANKREG[1][15]~q\ : std_logic;
SIGNAL \BANKREG[0][15]~q\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \REGAUX[15]~reg0_q\ : std_logic;
SIGNAL \INSTR2[2]~input_o\ : std_logic;
SIGNAL \INSTR2[0]~input_o\ : std_logic;
SIGNAL \INSTR2[1]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \INSTR3[2]~input_o\ : std_logic;
SIGNAL \INSTR3[0]~input_o\ : std_logic;
SIGNAL \INSTR3[1]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][9]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][8]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][8]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][8]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][15]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][15]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][15]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][15]~q\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][14]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][14]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][14]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][14]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][14]~q\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][13]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][13]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][13]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][13]~q\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][12]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][12]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][12]~q\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][11]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][11]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][11]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_BANKREG[7][10]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[6][10]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[5][10]~q\ : std_logic;
SIGNAL \ALT_INV_BANKREG[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_INSTRD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTRD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTRD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_INSTR2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~0_combout\ : std_logic;

BEGIN

ww_INSTR2 <= INSTR2;
ww_INSTR3 <= INSTR3;
ww_INSTRD <= INSTRD;
ww_WRITEFLAG <= WRITEFLAG;
ww_WRITEBACKDATA <= WRITEBACKDATA;
REGAUX <= ww_REGAUX;
OUTREG1 <= ww_OUTREG1;
OUTREG2 <= ww_OUTREG2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_BANKREG[0][9]~q\ <= NOT \BANKREG[0][9]~q\;
\ALT_INV_BANKREG[1][9]~q\ <= NOT \BANKREG[1][9]~q\;
\ALT_INV_BANKREG[3][9]~q\ <= NOT \BANKREG[3][9]~q\;
\ALT_INV_BANKREG[2][9]~q\ <= NOT \BANKREG[2][9]~q\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_BANKREG[7][9]~q\ <= NOT \BANKREG[7][9]~q\;
\ALT_INV_BANKREG[6][9]~q\ <= NOT \BANKREG[6][9]~q\;
\ALT_INV_BANKREG[5][9]~q\ <= NOT \BANKREG[5][9]~q\;
\ALT_INV_BANKREG[4][9]~q\ <= NOT \BANKREG[4][9]~q\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_BANKREG[0][8]~q\ <= NOT \BANKREG[0][8]~q\;
\ALT_INV_BANKREG[1][8]~q\ <= NOT \BANKREG[1][8]~q\;
\ALT_INV_BANKREG[3][8]~q\ <= NOT \BANKREG[3][8]~q\;
\ALT_INV_BANKREG[2][8]~q\ <= NOT \BANKREG[2][8]~q\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_BANKREG[7][8]~q\ <= NOT \BANKREG[7][8]~q\;
\ALT_INV_BANKREG[6][8]~q\ <= NOT \BANKREG[6][8]~q\;
\ALT_INV_BANKREG[5][8]~q\ <= NOT \BANKREG[5][8]~q\;
\ALT_INV_BANKREG[4][8]~q\ <= NOT \BANKREG[4][8]~q\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_BANKREG[0][7]~q\ <= NOT \BANKREG[0][7]~q\;
\ALT_INV_BANKREG[1][7]~q\ <= NOT \BANKREG[1][7]~q\;
\ALT_INV_BANKREG[3][7]~q\ <= NOT \BANKREG[3][7]~q\;
\ALT_INV_BANKREG[2][7]~q\ <= NOT \BANKREG[2][7]~q\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_BANKREG[7][7]~q\ <= NOT \BANKREG[7][7]~q\;
\ALT_INV_BANKREG[6][7]~q\ <= NOT \BANKREG[6][7]~q\;
\ALT_INV_BANKREG[5][7]~q\ <= NOT \BANKREG[5][7]~q\;
\ALT_INV_BANKREG[4][7]~q\ <= NOT \BANKREG[4][7]~q\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_BANKREG[0][6]~q\ <= NOT \BANKREG[0][6]~q\;
\ALT_INV_BANKREG[1][6]~q\ <= NOT \BANKREG[1][6]~q\;
\ALT_INV_BANKREG[3][6]~q\ <= NOT \BANKREG[3][6]~q\;
\ALT_INV_BANKREG[2][6]~q\ <= NOT \BANKREG[2][6]~q\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_BANKREG[7][6]~q\ <= NOT \BANKREG[7][6]~q\;
\ALT_INV_BANKREG[6][6]~q\ <= NOT \BANKREG[6][6]~q\;
\ALT_INV_BANKREG[5][6]~q\ <= NOT \BANKREG[5][6]~q\;
\ALT_INV_BANKREG[4][6]~q\ <= NOT \BANKREG[4][6]~q\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_BANKREG[0][5]~q\ <= NOT \BANKREG[0][5]~q\;
\ALT_INV_BANKREG[1][5]~q\ <= NOT \BANKREG[1][5]~q\;
\ALT_INV_BANKREG[3][5]~q\ <= NOT \BANKREG[3][5]~q\;
\ALT_INV_BANKREG[2][5]~q\ <= NOT \BANKREG[2][5]~q\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_BANKREG[7][5]~q\ <= NOT \BANKREG[7][5]~q\;
\ALT_INV_BANKREG[6][5]~q\ <= NOT \BANKREG[6][5]~q\;
\ALT_INV_BANKREG[5][5]~q\ <= NOT \BANKREG[5][5]~q\;
\ALT_INV_BANKREG[4][5]~q\ <= NOT \BANKREG[4][5]~q\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_BANKREG[0][4]~q\ <= NOT \BANKREG[0][4]~q\;
\ALT_INV_BANKREG[1][4]~q\ <= NOT \BANKREG[1][4]~q\;
\ALT_INV_BANKREG[3][4]~q\ <= NOT \BANKREG[3][4]~q\;
\ALT_INV_BANKREG[2][4]~q\ <= NOT \BANKREG[2][4]~q\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_BANKREG[7][4]~q\ <= NOT \BANKREG[7][4]~q\;
\ALT_INV_BANKREG[6][4]~q\ <= NOT \BANKREG[6][4]~q\;
\ALT_INV_BANKREG[5][4]~q\ <= NOT \BANKREG[5][4]~q\;
\ALT_INV_BANKREG[4][4]~q\ <= NOT \BANKREG[4][4]~q\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_BANKREG[0][3]~q\ <= NOT \BANKREG[0][3]~q\;
\ALT_INV_BANKREG[1][3]~q\ <= NOT \BANKREG[1][3]~q\;
\ALT_INV_BANKREG[3][3]~q\ <= NOT \BANKREG[3][3]~q\;
\ALT_INV_BANKREG[2][3]~q\ <= NOT \BANKREG[2][3]~q\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_BANKREG[7][3]~q\ <= NOT \BANKREG[7][3]~q\;
\ALT_INV_BANKREG[6][3]~q\ <= NOT \BANKREG[6][3]~q\;
\ALT_INV_BANKREG[5][3]~q\ <= NOT \BANKREG[5][3]~q\;
\ALT_INV_BANKREG[4][3]~q\ <= NOT \BANKREG[4][3]~q\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_BANKREG[0][2]~q\ <= NOT \BANKREG[0][2]~q\;
\ALT_INV_BANKREG[1][2]~q\ <= NOT \BANKREG[1][2]~q\;
\ALT_INV_BANKREG[3][2]~q\ <= NOT \BANKREG[3][2]~q\;
\ALT_INV_BANKREG[2][2]~q\ <= NOT \BANKREG[2][2]~q\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_BANKREG[7][2]~q\ <= NOT \BANKREG[7][2]~q\;
\ALT_INV_BANKREG[6][2]~q\ <= NOT \BANKREG[6][2]~q\;
\ALT_INV_BANKREG[5][2]~q\ <= NOT \BANKREG[5][2]~q\;
\ALT_INV_BANKREG[4][2]~q\ <= NOT \BANKREG[4][2]~q\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_BANKREG[0][1]~q\ <= NOT \BANKREG[0][1]~q\;
\ALT_INV_BANKREG[1][1]~q\ <= NOT \BANKREG[1][1]~q\;
\ALT_INV_BANKREG[3][1]~q\ <= NOT \BANKREG[3][1]~q\;
\ALT_INV_BANKREG[2][1]~q\ <= NOT \BANKREG[2][1]~q\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_BANKREG[7][1]~q\ <= NOT \BANKREG[7][1]~q\;
\ALT_INV_BANKREG[6][1]~q\ <= NOT \BANKREG[6][1]~q\;
\ALT_INV_BANKREG[5][1]~q\ <= NOT \BANKREG[5][1]~q\;
\ALT_INV_BANKREG[4][1]~q\ <= NOT \BANKREG[4][1]~q\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_BANKREG[0][0]~q\ <= NOT \BANKREG[0][0]~q\;
\ALT_INV_BANKREG[1][0]~q\ <= NOT \BANKREG[1][0]~q\;
\ALT_INV_BANKREG[3][0]~q\ <= NOT \BANKREG[3][0]~q\;
\ALT_INV_BANKREG[2][0]~q\ <= NOT \BANKREG[2][0]~q\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_BANKREG[7][0]~q\ <= NOT \BANKREG[7][0]~q\;
\ALT_INV_BANKREG[6][0]~q\ <= NOT \BANKREG[6][0]~q\;
\ALT_INV_BANKREG[5][0]~q\ <= NOT \BANKREG[5][0]~q\;
\ALT_INV_BANKREG[4][0]~q\ <= NOT \BANKREG[4][0]~q\;
\ALT_INV_Mux44~1_combout\ <= NOT \Mux44~1_combout\;
\ALT_INV_Mux44~0_combout\ <= NOT \Mux44~0_combout\;
\ALT_INV_Mux45~1_combout\ <= NOT \Mux45~1_combout\;
\ALT_INV_Mux45~0_combout\ <= NOT \Mux45~0_combout\;
\ALT_INV_Mux46~1_combout\ <= NOT \Mux46~1_combout\;
\ALT_INV_Mux46~0_combout\ <= NOT \Mux46~0_combout\;
\ALT_INV_Mux47~1_combout\ <= NOT \Mux47~1_combout\;
\ALT_INV_Mux47~0_combout\ <= NOT \Mux47~0_combout\;
\ALT_INV_Mux16~1_combout\ <= NOT \Mux16~1_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux31~1_combout\ <= NOT \Mux31~1_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_BANKREG[0][15]~q\ <= NOT \BANKREG[0][15]~q\;
\ALT_INV_BANKREG[1][15]~q\ <= NOT \BANKREG[1][15]~q\;
\ALT_INV_BANKREG[3][15]~q\ <= NOT \BANKREG[3][15]~q\;
\ALT_INV_BANKREG[2][15]~q\ <= NOT \BANKREG[2][15]~q\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_BANKREG[7][15]~q\ <= NOT \BANKREG[7][15]~q\;
\ALT_INV_BANKREG[6][15]~q\ <= NOT \BANKREG[6][15]~q\;
\ALT_INV_BANKREG[5][15]~q\ <= NOT \BANKREG[5][15]~q\;
\ALT_INV_BANKREG[4][15]~q\ <= NOT \BANKREG[4][15]~q\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_BANKREG[0][14]~q\ <= NOT \BANKREG[0][14]~q\;
\ALT_INV_BANKREG[1][14]~q\ <= NOT \BANKREG[1][14]~q\;
\ALT_INV_BANKREG[3][14]~q\ <= NOT \BANKREG[3][14]~q\;
\ALT_INV_BANKREG[2][14]~q\ <= NOT \BANKREG[2][14]~q\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_BANKREG[7][14]~q\ <= NOT \BANKREG[7][14]~q\;
\ALT_INV_BANKREG[6][14]~q\ <= NOT \BANKREG[6][14]~q\;
\ALT_INV_BANKREG[5][14]~q\ <= NOT \BANKREG[5][14]~q\;
\ALT_INV_BANKREG[4][14]~q\ <= NOT \BANKREG[4][14]~q\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_BANKREG[0][13]~q\ <= NOT \BANKREG[0][13]~q\;
\ALT_INV_BANKREG[1][13]~q\ <= NOT \BANKREG[1][13]~q\;
\ALT_INV_BANKREG[3][13]~q\ <= NOT \BANKREG[3][13]~q\;
\ALT_INV_BANKREG[2][13]~q\ <= NOT \BANKREG[2][13]~q\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_BANKREG[7][13]~q\ <= NOT \BANKREG[7][13]~q\;
\ALT_INV_BANKREG[6][13]~q\ <= NOT \BANKREG[6][13]~q\;
\ALT_INV_BANKREG[5][13]~q\ <= NOT \BANKREG[5][13]~q\;
\ALT_INV_BANKREG[4][13]~q\ <= NOT \BANKREG[4][13]~q\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_BANKREG[0][12]~q\ <= NOT \BANKREG[0][12]~q\;
\ALT_INV_BANKREG[1][12]~q\ <= NOT \BANKREG[1][12]~q\;
\ALT_INV_BANKREG[3][12]~q\ <= NOT \BANKREG[3][12]~q\;
\ALT_INV_BANKREG[2][12]~q\ <= NOT \BANKREG[2][12]~q\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_BANKREG[7][12]~q\ <= NOT \BANKREG[7][12]~q\;
\ALT_INV_BANKREG[6][12]~q\ <= NOT \BANKREG[6][12]~q\;
\ALT_INV_BANKREG[5][12]~q\ <= NOT \BANKREG[5][12]~q\;
\ALT_INV_BANKREG[4][12]~q\ <= NOT \BANKREG[4][12]~q\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_BANKREG[0][11]~q\ <= NOT \BANKREG[0][11]~q\;
\ALT_INV_BANKREG[1][11]~q\ <= NOT \BANKREG[1][11]~q\;
\ALT_INV_BANKREG[3][11]~q\ <= NOT \BANKREG[3][11]~q\;
\ALT_INV_BANKREG[2][11]~q\ <= NOT \BANKREG[2][11]~q\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_BANKREG[7][11]~q\ <= NOT \BANKREG[7][11]~q\;
\ALT_INV_BANKREG[6][11]~q\ <= NOT \BANKREG[6][11]~q\;
\ALT_INV_BANKREG[5][11]~q\ <= NOT \BANKREG[5][11]~q\;
\ALT_INV_BANKREG[4][11]~q\ <= NOT \BANKREG[4][11]~q\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_BANKREG[0][10]~q\ <= NOT \BANKREG[0][10]~q\;
\ALT_INV_BANKREG[1][10]~q\ <= NOT \BANKREG[1][10]~q\;
\ALT_INV_BANKREG[3][10]~q\ <= NOT \BANKREG[3][10]~q\;
\ALT_INV_BANKREG[2][10]~q\ <= NOT \BANKREG[2][10]~q\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_BANKREG[7][10]~q\ <= NOT \BANKREG[7][10]~q\;
\ALT_INV_BANKREG[6][10]~q\ <= NOT \BANKREG[6][10]~q\;
\ALT_INV_BANKREG[5][10]~q\ <= NOT \BANKREG[5][10]~q\;
\ALT_INV_BANKREG[4][10]~q\ <= NOT \BANKREG[4][10]~q\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_INSTRD[1]~input_o\ <= NOT \INSTRD[1]~input_o\;
\ALT_INV_INSTRD[0]~input_o\ <= NOT \INSTRD[0]~input_o\;
\ALT_INV_INSTRD[2]~input_o\ <= NOT \INSTRD[2]~input_o\;
\ALT_INV_INSTR3[1]~input_o\ <= NOT \INSTR3[1]~input_o\;
\ALT_INV_INSTR3[0]~input_o\ <= NOT \INSTR3[0]~input_o\;
\ALT_INV_INSTR3[2]~input_o\ <= NOT \INSTR3[2]~input_o\;
\ALT_INV_INSTR2[1]~input_o\ <= NOT \INSTR2[1]~input_o\;
\ALT_INV_INSTR2[0]~input_o\ <= NOT \INSTR2[0]~input_o\;
\ALT_INV_INSTR2[2]~input_o\ <= NOT \INSTR2[2]~input_o\;
\ALT_INV_Mux32~1_combout\ <= NOT \Mux32~1_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux33~1_combout\ <= NOT \Mux33~1_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\ALT_INV_Mux34~1_combout\ <= NOT \Mux34~1_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux35~1_combout\ <= NOT \Mux35~1_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux36~1_combout\ <= NOT \Mux36~1_combout\;
\ALT_INV_Mux36~0_combout\ <= NOT \Mux36~0_combout\;
\ALT_INV_Mux37~1_combout\ <= NOT \Mux37~1_combout\;
\ALT_INV_Mux37~0_combout\ <= NOT \Mux37~0_combout\;
\ALT_INV_Mux38~1_combout\ <= NOT \Mux38~1_combout\;
\ALT_INV_Mux38~0_combout\ <= NOT \Mux38~0_combout\;
\ALT_INV_Mux39~1_combout\ <= NOT \Mux39~1_combout\;
\ALT_INV_Mux39~0_combout\ <= NOT \Mux39~0_combout\;
\ALT_INV_Mux40~1_combout\ <= NOT \Mux40~1_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\ALT_INV_Mux41~1_combout\ <= NOT \Mux41~1_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\ALT_INV_Mux42~1_combout\ <= NOT \Mux42~1_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\ALT_INV_Mux43~1_combout\ <= NOT \Mux43~1_combout\;
\ALT_INV_Mux43~0_combout\ <= NOT \Mux43~0_combout\;

\REGAUX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[0]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[0]~output_o\);

\REGAUX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[1]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[1]~output_o\);

\REGAUX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[2]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[2]~output_o\);

\REGAUX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[3]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[3]~output_o\);

\REGAUX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[4]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[4]~output_o\);

\REGAUX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[5]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[5]~output_o\);

\REGAUX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[6]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[6]~output_o\);

\REGAUX[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[7]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[7]~output_o\);

\REGAUX[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[8]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[8]~output_o\);

\REGAUX[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[9]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[9]~output_o\);

\REGAUX[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[10]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[10]~output_o\);

\REGAUX[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[11]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[11]~output_o\);

\REGAUX[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[12]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[12]~output_o\);

\REGAUX[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[13]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[13]~output_o\);

\REGAUX[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[14]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[14]~output_o\);

\REGAUX[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGAUX[15]~reg0_q\,
	devoe => ww_devoe,
	o => \REGAUX[15]~output_o\);

\OUTREG1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[0]~output_o\);

\OUTREG1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[1]~output_o\);

\OUTREG1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[2]~output_o\);

\OUTREG1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[3]~output_o\);

\OUTREG1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[4]~output_o\);

\OUTREG1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[5]~output_o\);

\OUTREG1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[6]~output_o\);

\OUTREG1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[7]~output_o\);

\OUTREG1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[8]~output_o\);

\OUTREG1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[9]~output_o\);

\OUTREG1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[10]~output_o\);

\OUTREG1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[11]~output_o\);

\OUTREG1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[12]~output_o\);

\OUTREG1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[13]~output_o\);

\OUTREG1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[14]~output_o\);

\OUTREG1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG1[15]~output_o\);

\OUTREG2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[0]~output_o\);

\OUTREG2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[1]~output_o\);

\OUTREG2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[2]~output_o\);

\OUTREG2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[3]~output_o\);

\OUTREG2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[4]~output_o\);

\OUTREG2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[5]~output_o\);

\OUTREG2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[6]~output_o\);

\OUTREG2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[7]~output_o\);

\OUTREG2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[8]~output_o\);

\OUTREG2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[9]~output_o\);

\OUTREG2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[10]~output_o\);

\OUTREG2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[11]~output_o\);

\OUTREG2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[12]~output_o\);

\OUTREG2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[13]~output_o\);

\OUTREG2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[14]~output_o\);

\OUTREG2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \OUTREG2[15]~output_o\);

\WRITEFLAG~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEFLAG,
	o => \WRITEFLAG~input_o\);

\INSTRD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRD(2),
	o => \INSTRD[2]~input_o\);

\WRITEBACKDATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(0),
	o => \WRITEBACKDATA[0]~input_o\);

\INSTRD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRD(0),
	o => \INSTRD[0]~input_o\);

\INSTRD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRD(1),
	o => \INSTRD[1]~input_o\);

\Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\INSTRD[2]~input_o\ & (!\INSTRD[0]~input_o\ & !\INSTRD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_INSTRD[0]~input_o\,
	datac => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Decoder0~0_combout\);

\BANKREG[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][0]~q\);

\Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\INSTRD[2]~input_o\ & (\INSTRD[0]~input_o\ & !\INSTRD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_INSTRD[0]~input_o\,
	datac => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Decoder0~1_combout\);

\BANKREG[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][0]~q\);

\Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\INSTRD[2]~input_o\ & (!\INSTRD[0]~input_o\ & \INSTRD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_INSTRD[0]~input_o\,
	datac => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Decoder0~2_combout\);

\BANKREG[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][0]~q\);

\Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\INSTRD[2]~input_o\ & (\INSTRD[0]~input_o\ & \INSTRD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_INSTRD[0]~input_o\,
	datac => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Decoder0~3_combout\);

\BANKREG[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][0]~q\);

\Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][0]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][0]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][0]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][0]~q\,
	datab => \ALT_INV_BANKREG[5][0]~q\,
	datac => \ALT_INV_BANKREG[6][0]~q\,
	datad => \ALT_INV_BANKREG[7][0]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux47~0_combout\);

\Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\INSTRD[2]~input_o\ & (!\INSTRD[0]~input_o\ & \INSTRD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_INSTRD[0]~input_o\,
	datac => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Decoder0~4_combout\);

\BANKREG[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][0]~q\);

\Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\INSTRD[2]~input_o\ & (\INSTRD[0]~input_o\ & \INSTRD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_INSTRD[0]~input_o\,
	datac => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Decoder0~5_combout\);

\BANKREG[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][0]~q\);

\Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\INSTRD[2]~input_o\ & (\INSTRD[0]~input_o\ & !\INSTRD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_INSTRD[0]~input_o\,
	datac => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Decoder0~6_combout\);

\BANKREG[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][0]~q\);

\Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\INSTRD[2]~input_o\ & (!\INSTRD[0]~input_o\ & !\INSTRD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_INSTRD[0]~input_o\,
	datac => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Decoder0~7_combout\);

\BANKREG[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[0]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][0]~q\);

\Mux47~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][0]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][0]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][0]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][0]~q\,
	datab => \ALT_INV_BANKREG[3][0]~q\,
	datac => \ALT_INV_BANKREG[1][0]~q\,
	datad => \ALT_INV_BANKREG[0][0]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux47~1_combout\);

\Mux47~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux47~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux47~0_combout\,
	datac => \ALT_INV_Mux47~1_combout\,
	combout => \Mux47~2_combout\);

\REGAUX[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux47~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[0]~reg0_q\);

\WRITEBACKDATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(1),
	o => \WRITEBACKDATA[1]~input_o\);

\BANKREG[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][1]~q\);

\BANKREG[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][1]~q\);

\BANKREG[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][1]~q\);

\BANKREG[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][1]~q\);

\Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][1]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][1]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][1]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][1]~q\,
	datab => \ALT_INV_BANKREG[5][1]~q\,
	datac => \ALT_INV_BANKREG[6][1]~q\,
	datad => \ALT_INV_BANKREG[7][1]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux46~0_combout\);

\BANKREG[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][1]~q\);

\BANKREG[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][1]~q\);

\BANKREG[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][1]~q\);

\BANKREG[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[1]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][1]~q\);

\Mux46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][1]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][1]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][1]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][1]~q\,
	datab => \ALT_INV_BANKREG[3][1]~q\,
	datac => \ALT_INV_BANKREG[1][1]~q\,
	datad => \ALT_INV_BANKREG[0][1]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux46~1_combout\);

\Mux46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux46~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux46~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux46~0_combout\,
	datac => \ALT_INV_Mux46~1_combout\,
	combout => \Mux46~2_combout\);

\REGAUX[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux46~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[1]~reg0_q\);

\WRITEBACKDATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(2),
	o => \WRITEBACKDATA[2]~input_o\);

\BANKREG[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][2]~q\);

\BANKREG[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][2]~q\);

\BANKREG[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][2]~q\);

\BANKREG[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][2]~q\);

\Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][2]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][2]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][2]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][2]~q\,
	datab => \ALT_INV_BANKREG[5][2]~q\,
	datac => \ALT_INV_BANKREG[6][2]~q\,
	datad => \ALT_INV_BANKREG[7][2]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux45~0_combout\);

\BANKREG[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][2]~q\);

\BANKREG[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][2]~q\);

\BANKREG[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][2]~q\);

\BANKREG[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[2]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][2]~q\);

\Mux45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][2]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][2]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][2]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][2]~q\,
	datab => \ALT_INV_BANKREG[3][2]~q\,
	datac => \ALT_INV_BANKREG[1][2]~q\,
	datad => \ALT_INV_BANKREG[0][2]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux45~1_combout\);

\Mux45~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux45~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux45~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux45~0_combout\,
	datac => \ALT_INV_Mux45~1_combout\,
	combout => \Mux45~2_combout\);

\REGAUX[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux45~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[2]~reg0_q\);

\WRITEBACKDATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(3),
	o => \WRITEBACKDATA[3]~input_o\);

\BANKREG[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][3]~q\);

\BANKREG[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][3]~q\);

\BANKREG[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][3]~q\);

\BANKREG[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][3]~q\);

\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][3]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][3]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][3]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][3]~q\,
	datab => \ALT_INV_BANKREG[5][3]~q\,
	datac => \ALT_INV_BANKREG[6][3]~q\,
	datad => \ALT_INV_BANKREG[7][3]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux44~0_combout\);

\BANKREG[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][3]~q\);

\BANKREG[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][3]~q\);

\BANKREG[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][3]~q\);

\BANKREG[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[3]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][3]~q\);

\Mux44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][3]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][3]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][3]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][3]~q\,
	datab => \ALT_INV_BANKREG[3][3]~q\,
	datac => \ALT_INV_BANKREG[1][3]~q\,
	datad => \ALT_INV_BANKREG[0][3]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux44~1_combout\);

\Mux44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux44~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux44~0_combout\,
	datac => \ALT_INV_Mux44~1_combout\,
	combout => \Mux44~2_combout\);

\REGAUX[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux44~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[3]~reg0_q\);

\WRITEBACKDATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(4),
	o => \WRITEBACKDATA[4]~input_o\);

\BANKREG[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][4]~q\);

\BANKREG[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][4]~q\);

\BANKREG[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][4]~q\);

\BANKREG[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][4]~q\);

\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][4]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][4]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][4]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][4]~q\,
	datab => \ALT_INV_BANKREG[5][4]~q\,
	datac => \ALT_INV_BANKREG[6][4]~q\,
	datad => \ALT_INV_BANKREG[7][4]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux43~0_combout\);

\BANKREG[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][4]~q\);

\BANKREG[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][4]~q\);

\BANKREG[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][4]~q\);

\BANKREG[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[4]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][4]~q\);

\Mux43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][4]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][4]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][4]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][4]~q\,
	datab => \ALT_INV_BANKREG[3][4]~q\,
	datac => \ALT_INV_BANKREG[1][4]~q\,
	datad => \ALT_INV_BANKREG[0][4]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux43~1_combout\);

\Mux43~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux43~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux43~0_combout\,
	datac => \ALT_INV_Mux43~1_combout\,
	combout => \Mux43~2_combout\);

\REGAUX[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux43~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[4]~reg0_q\);

\WRITEBACKDATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(5),
	o => \WRITEBACKDATA[5]~input_o\);

\BANKREG[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][5]~q\);

\BANKREG[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][5]~q\);

\BANKREG[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][5]~q\);

\BANKREG[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][5]~q\);

\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][5]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][5]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][5]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][5]~q\,
	datab => \ALT_INV_BANKREG[5][5]~q\,
	datac => \ALT_INV_BANKREG[6][5]~q\,
	datad => \ALT_INV_BANKREG[7][5]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux42~0_combout\);

\BANKREG[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][5]~q\);

\BANKREG[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][5]~q\);

\BANKREG[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][5]~q\);

\BANKREG[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[5]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][5]~q\);

\Mux42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][5]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][5]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][5]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][5]~q\,
	datab => \ALT_INV_BANKREG[3][5]~q\,
	datac => \ALT_INV_BANKREG[1][5]~q\,
	datad => \ALT_INV_BANKREG[0][5]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux42~1_combout\);

\Mux42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux42~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux42~0_combout\,
	datac => \ALT_INV_Mux42~1_combout\,
	combout => \Mux42~2_combout\);

\REGAUX[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux42~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[5]~reg0_q\);

\WRITEBACKDATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(6),
	o => \WRITEBACKDATA[6]~input_o\);

\BANKREG[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][6]~q\);

\BANKREG[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][6]~q\);

\BANKREG[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][6]~q\);

\BANKREG[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][6]~q\);

\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][6]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][6]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][6]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][6]~q\,
	datab => \ALT_INV_BANKREG[5][6]~q\,
	datac => \ALT_INV_BANKREG[6][6]~q\,
	datad => \ALT_INV_BANKREG[7][6]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux41~0_combout\);

\BANKREG[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][6]~q\);

\BANKREG[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][6]~q\);

\BANKREG[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][6]~q\);

\BANKREG[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[6]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][6]~q\);

\Mux41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][6]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][6]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][6]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][6]~q\,
	datab => \ALT_INV_BANKREG[3][6]~q\,
	datac => \ALT_INV_BANKREG[1][6]~q\,
	datad => \ALT_INV_BANKREG[0][6]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux41~1_combout\);

\Mux41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux41~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux41~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux41~0_combout\,
	datac => \ALT_INV_Mux41~1_combout\,
	combout => \Mux41~2_combout\);

\REGAUX[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux41~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[6]~reg0_q\);

\WRITEBACKDATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(7),
	o => \WRITEBACKDATA[7]~input_o\);

\BANKREG[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][7]~q\);

\BANKREG[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][7]~q\);

\BANKREG[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][7]~q\);

\BANKREG[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][7]~q\);

\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][7]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][7]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][7]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][7]~q\,
	datab => \ALT_INV_BANKREG[5][7]~q\,
	datac => \ALT_INV_BANKREG[6][7]~q\,
	datad => \ALT_INV_BANKREG[7][7]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux40~0_combout\);

\BANKREG[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][7]~q\);

\BANKREG[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][7]~q\);

\BANKREG[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][7]~q\);

\BANKREG[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[7]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][7]~q\);

\Mux40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][7]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][7]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][7]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][7]~q\,
	datab => \ALT_INV_BANKREG[3][7]~q\,
	datac => \ALT_INV_BANKREG[1][7]~q\,
	datad => \ALT_INV_BANKREG[0][7]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux40~1_combout\);

\Mux40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux40~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux40~0_combout\,
	datac => \ALT_INV_Mux40~1_combout\,
	combout => \Mux40~2_combout\);

\REGAUX[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[7]~reg0_q\);

\WRITEBACKDATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(8),
	o => \WRITEBACKDATA[8]~input_o\);

\BANKREG[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][8]~q\);

\BANKREG[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][8]~q\);

\BANKREG[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][8]~q\);

\BANKREG[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][8]~q\);

\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][8]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][8]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][8]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][8]~q\,
	datab => \ALT_INV_BANKREG[5][8]~q\,
	datac => \ALT_INV_BANKREG[6][8]~q\,
	datad => \ALT_INV_BANKREG[7][8]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux39~0_combout\);

\BANKREG[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][8]~q\);

\BANKREG[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][8]~q\);

\BANKREG[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][8]~q\);

\BANKREG[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[8]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][8]~q\);

\Mux39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][8]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][8]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][8]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][8]~q\,
	datab => \ALT_INV_BANKREG[3][8]~q\,
	datac => \ALT_INV_BANKREG[1][8]~q\,
	datad => \ALT_INV_BANKREG[0][8]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux39~1_combout\);

\Mux39~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux39~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux39~0_combout\,
	datac => \ALT_INV_Mux39~1_combout\,
	combout => \Mux39~2_combout\);

\REGAUX[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux39~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[8]~reg0_q\);

\WRITEBACKDATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(9),
	o => \WRITEBACKDATA[9]~input_o\);

\BANKREG[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][9]~q\);

\BANKREG[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][9]~q\);

\BANKREG[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][9]~q\);

\BANKREG[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][9]~q\);

\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][9]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][9]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][9]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][9]~q\,
	datab => \ALT_INV_BANKREG[5][9]~q\,
	datac => \ALT_INV_BANKREG[6][9]~q\,
	datad => \ALT_INV_BANKREG[7][9]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux38~0_combout\);

\BANKREG[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][9]~q\);

\BANKREG[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][9]~q\);

\BANKREG[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][9]~q\);

\BANKREG[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[9]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][9]~q\);

\Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][9]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][9]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][9]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][9]~q\,
	datab => \ALT_INV_BANKREG[3][9]~q\,
	datac => \ALT_INV_BANKREG[1][9]~q\,
	datad => \ALT_INV_BANKREG[0][9]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux38~1_combout\);

\Mux38~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux38~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux38~0_combout\,
	datac => \ALT_INV_Mux38~1_combout\,
	combout => \Mux38~2_combout\);

\REGAUX[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux38~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[9]~reg0_q\);

\WRITEBACKDATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(10),
	o => \WRITEBACKDATA[10]~input_o\);

\BANKREG[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][10]~q\);

\BANKREG[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][10]~q\);

\BANKREG[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][10]~q\);

\BANKREG[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][10]~q\);

\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][10]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][10]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][10]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][10]~q\,
	datab => \ALT_INV_BANKREG[5][10]~q\,
	datac => \ALT_INV_BANKREG[6][10]~q\,
	datad => \ALT_INV_BANKREG[7][10]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux37~0_combout\);

\BANKREG[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][10]~q\);

\BANKREG[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][10]~q\);

\BANKREG[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][10]~q\);

\BANKREG[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[10]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][10]~q\);

\Mux37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][10]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][10]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][10]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][10]~q\,
	datab => \ALT_INV_BANKREG[3][10]~q\,
	datac => \ALT_INV_BANKREG[1][10]~q\,
	datad => \ALT_INV_BANKREG[0][10]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux37~1_combout\);

\Mux37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux37~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux37~0_combout\,
	datac => \ALT_INV_Mux37~1_combout\,
	combout => \Mux37~2_combout\);

\REGAUX[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux37~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[10]~reg0_q\);

\WRITEBACKDATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(11),
	o => \WRITEBACKDATA[11]~input_o\);

\BANKREG[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][11]~q\);

\BANKREG[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][11]~q\);

\BANKREG[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][11]~q\);

\BANKREG[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][11]~q\);

\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][11]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][11]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][11]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][11]~q\,
	datab => \ALT_INV_BANKREG[5][11]~q\,
	datac => \ALT_INV_BANKREG[6][11]~q\,
	datad => \ALT_INV_BANKREG[7][11]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux36~0_combout\);

\BANKREG[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][11]~q\);

\BANKREG[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][11]~q\);

\BANKREG[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][11]~q\);

\BANKREG[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[11]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][11]~q\);

\Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][11]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][11]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][11]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][11]~q\,
	datab => \ALT_INV_BANKREG[3][11]~q\,
	datac => \ALT_INV_BANKREG[1][11]~q\,
	datad => \ALT_INV_BANKREG[0][11]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux36~1_combout\);

\Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux36~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux36~0_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	combout => \Mux36~2_combout\);

\REGAUX[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux36~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[11]~reg0_q\);

\WRITEBACKDATA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(12),
	o => \WRITEBACKDATA[12]~input_o\);

\BANKREG[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][12]~q\);

\BANKREG[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][12]~q\);

\BANKREG[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][12]~q\);

\BANKREG[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][12]~q\);

\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][12]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][12]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][12]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][12]~q\,
	datab => \ALT_INV_BANKREG[5][12]~q\,
	datac => \ALT_INV_BANKREG[6][12]~q\,
	datad => \ALT_INV_BANKREG[7][12]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux35~0_combout\);

\BANKREG[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][12]~q\);

\BANKREG[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][12]~q\);

\BANKREG[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][12]~q\);

\BANKREG[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[12]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][12]~q\);

\Mux35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][12]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][12]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][12]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][12]~q\,
	datab => \ALT_INV_BANKREG[3][12]~q\,
	datac => \ALT_INV_BANKREG[1][12]~q\,
	datad => \ALT_INV_BANKREG[0][12]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux35~1_combout\);

\Mux35~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux35~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux35~0_combout\,
	datac => \ALT_INV_Mux35~1_combout\,
	combout => \Mux35~2_combout\);

\REGAUX[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[12]~reg0_q\);

\WRITEBACKDATA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(13),
	o => \WRITEBACKDATA[13]~input_o\);

\BANKREG[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][13]~q\);

\BANKREG[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][13]~q\);

\BANKREG[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][13]~q\);

\BANKREG[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][13]~q\);

\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][13]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][13]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][13]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][13]~q\,
	datab => \ALT_INV_BANKREG[5][13]~q\,
	datac => \ALT_INV_BANKREG[6][13]~q\,
	datad => \ALT_INV_BANKREG[7][13]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux34~0_combout\);

\BANKREG[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][13]~q\);

\BANKREG[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][13]~q\);

\BANKREG[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][13]~q\);

\BANKREG[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[13]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][13]~q\);

\Mux34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][13]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][13]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][13]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][13]~q\,
	datab => \ALT_INV_BANKREG[3][13]~q\,
	datac => \ALT_INV_BANKREG[1][13]~q\,
	datad => \ALT_INV_BANKREG[0][13]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux34~1_combout\);

\Mux34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux34~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux34~0_combout\,
	datac => \ALT_INV_Mux34~1_combout\,
	combout => \Mux34~2_combout\);

\REGAUX[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[13]~reg0_q\);

\WRITEBACKDATA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(14),
	o => \WRITEBACKDATA[14]~input_o\);

\BANKREG[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][14]~q\);

\BANKREG[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][14]~q\);

\BANKREG[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][14]~q\);

\BANKREG[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][14]~q\);

\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][14]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][14]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][14]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][14]~q\,
	datab => \ALT_INV_BANKREG[5][14]~q\,
	datac => \ALT_INV_BANKREG[6][14]~q\,
	datad => \ALT_INV_BANKREG[7][14]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux33~0_combout\);

\BANKREG[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][14]~q\);

\BANKREG[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][14]~q\);

\BANKREG[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][14]~q\);

\BANKREG[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[14]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][14]~q\);

\Mux33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][14]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][14]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][14]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][14]~q\,
	datab => \ALT_INV_BANKREG[3][14]~q\,
	datac => \ALT_INV_BANKREG[1][14]~q\,
	datad => \ALT_INV_BANKREG[0][14]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux33~1_combout\);

\Mux33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux33~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux33~0_combout\,
	datac => \ALT_INV_Mux33~1_combout\,
	combout => \Mux33~2_combout\);

\REGAUX[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux33~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[14]~reg0_q\);

\WRITEBACKDATA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITEBACKDATA(15),
	o => \WRITEBACKDATA[15]~input_o\);

\BANKREG[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[4][15]~q\);

\BANKREG[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[5][15]~q\);

\BANKREG[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[6][15]~q\);

\BANKREG[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[7][15]~q\);

\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[7][15]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[6][15]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[5][15]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[4][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][15]~q\,
	datab => \ALT_INV_BANKREG[5][15]~q\,
	datac => \ALT_INV_BANKREG[6][15]~q\,
	datad => \ALT_INV_BANKREG[7][15]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux32~0_combout\);

\BANKREG[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[2][15]~q\);

\BANKREG[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[3][15]~q\);

\BANKREG[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[1][15]~q\);

\BANKREG[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \WRITEBACKDATA[15]~input_o\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANKREG[0][15]~q\);

\Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = ( \INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[3][15]~q\ ) ) ) # ( !\INSTRD[0]~input_o\ & ( \INSTRD[1]~input_o\ & ( \BANKREG[2][15]~q\ ) ) ) # ( \INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[1][15]~q\ ) ) ) # ( 
-- !\INSTRD[0]~input_o\ & ( !\INSTRD[1]~input_o\ & ( \BANKREG[0][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][15]~q\,
	datab => \ALT_INV_BANKREG[3][15]~q\,
	datac => \ALT_INV_BANKREG[1][15]~q\,
	datad => \ALT_INV_BANKREG[0][15]~q\,
	datae => \ALT_INV_INSTRD[0]~input_o\,
	dataf => \ALT_INV_INSTRD[1]~input_o\,
	combout => \Mux32~1_combout\);

\Mux32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (!\INSTRD[2]~input_o\ & ((\Mux32~1_combout\))) # (\INSTRD[2]~input_o\ & (\Mux32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTRD[2]~input_o\,
	datab => \ALT_INV_Mux32~0_combout\,
	datac => \ALT_INV_Mux32~1_combout\,
	combout => \Mux32~2_combout\);

\REGAUX[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \WRITEFLAG~input_o\,
	d => \Mux32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGAUX[15]~reg0_q\);

\INSTR2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR2(2),
	o => \INSTR2[2]~input_o\);

\INSTR2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR2(0),
	o => \INSTR2[0]~input_o\);

\INSTR2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR2(1),
	o => \INSTR2[1]~input_o\);

\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][0]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][0]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][0]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][0]~q\,
	datab => \ALT_INV_BANKREG[5][0]~q\,
	datac => \ALT_INV_BANKREG[6][0]~q\,
	datad => \ALT_INV_BANKREG[7][0]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux15~0_combout\);

\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \BANKREG[1][0]~q\ & ( \BANKREG[0][0]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][0]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][0]~q\)))) ) ) ) # ( !\BANKREG[1][0]~q\ & ( \BANKREG[0][0]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][0]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][0]~q\)))) ) ) ) # ( \BANKREG[1][0]~q\ & ( !\BANKREG[0][0]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][0]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][0]~q\)))) ) ) ) # ( !\BANKREG[1][0]~q\ & ( !\BANKREG[0][0]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][0]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][0]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][0]~q\,
	datad => \ALT_INV_BANKREG[3][0]~q\,
	datae => \ALT_INV_BANKREG[1][0]~q\,
	dataf => \ALT_INV_BANKREG[0][0]~q\,
	combout => \Mux15~1_combout\);

\Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux15~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux15~1_combout\,
	combout => \Mux15~2_combout\);

\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][1]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][1]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][1]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][1]~q\,
	datab => \ALT_INV_BANKREG[5][1]~q\,
	datac => \ALT_INV_BANKREG[6][1]~q\,
	datad => \ALT_INV_BANKREG[7][1]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux14~0_combout\);

\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \BANKREG[1][1]~q\ & ( \BANKREG[0][1]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][1]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][1]~q\)))) ) ) ) # ( !\BANKREG[1][1]~q\ & ( \BANKREG[0][1]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][1]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][1]~q\)))) ) ) ) # ( \BANKREG[1][1]~q\ & ( !\BANKREG[0][1]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][1]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][1]~q\)))) ) ) ) # ( !\BANKREG[1][1]~q\ & ( !\BANKREG[0][1]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][1]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][1]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][1]~q\,
	datad => \ALT_INV_BANKREG[3][1]~q\,
	datae => \ALT_INV_BANKREG[1][1]~q\,
	dataf => \ALT_INV_BANKREG[0][1]~q\,
	combout => \Mux14~1_combout\);

\Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux14~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux14~0_combout\,
	datac => \ALT_INV_Mux14~1_combout\,
	combout => \Mux14~2_combout\);

\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][2]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][2]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][2]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][2]~q\,
	datab => \ALT_INV_BANKREG[5][2]~q\,
	datac => \ALT_INV_BANKREG[6][2]~q\,
	datad => \ALT_INV_BANKREG[7][2]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux13~0_combout\);

\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \BANKREG[1][2]~q\ & ( \BANKREG[0][2]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][2]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][2]~q\)))) ) ) ) # ( !\BANKREG[1][2]~q\ & ( \BANKREG[0][2]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][2]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][2]~q\)))) ) ) ) # ( \BANKREG[1][2]~q\ & ( !\BANKREG[0][2]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][2]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][2]~q\)))) ) ) ) # ( !\BANKREG[1][2]~q\ & ( !\BANKREG[0][2]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][2]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][2]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][2]~q\,
	datad => \ALT_INV_BANKREG[3][2]~q\,
	datae => \ALT_INV_BANKREG[1][2]~q\,
	dataf => \ALT_INV_BANKREG[0][2]~q\,
	combout => \Mux13~1_combout\);

\Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux13~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux13~0_combout\,
	datac => \ALT_INV_Mux13~1_combout\,
	combout => \Mux13~2_combout\);

\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][3]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][3]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][3]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][3]~q\,
	datab => \ALT_INV_BANKREG[5][3]~q\,
	datac => \ALT_INV_BANKREG[6][3]~q\,
	datad => \ALT_INV_BANKREG[7][3]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux12~0_combout\);

\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \BANKREG[1][3]~q\ & ( \BANKREG[0][3]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][3]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][3]~q\)))) ) ) ) # ( !\BANKREG[1][3]~q\ & ( \BANKREG[0][3]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][3]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][3]~q\)))) ) ) ) # ( \BANKREG[1][3]~q\ & ( !\BANKREG[0][3]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][3]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][3]~q\)))) ) ) ) # ( !\BANKREG[1][3]~q\ & ( !\BANKREG[0][3]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][3]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][3]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][3]~q\,
	datad => \ALT_INV_BANKREG[3][3]~q\,
	datae => \ALT_INV_BANKREG[1][3]~q\,
	dataf => \ALT_INV_BANKREG[0][3]~q\,
	combout => \Mux12~1_combout\);

\Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux12~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_Mux12~1_combout\,
	combout => \Mux12~2_combout\);

\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][4]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][4]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][4]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][4]~q\,
	datab => \ALT_INV_BANKREG[5][4]~q\,
	datac => \ALT_INV_BANKREG[6][4]~q\,
	datad => \ALT_INV_BANKREG[7][4]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux11~0_combout\);

\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \BANKREG[1][4]~q\ & ( \BANKREG[0][4]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][4]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][4]~q\)))) ) ) ) # ( !\BANKREG[1][4]~q\ & ( \BANKREG[0][4]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][4]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][4]~q\)))) ) ) ) # ( \BANKREG[1][4]~q\ & ( !\BANKREG[0][4]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][4]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][4]~q\)))) ) ) ) # ( !\BANKREG[1][4]~q\ & ( !\BANKREG[0][4]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][4]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][4]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][4]~q\,
	datad => \ALT_INV_BANKREG[3][4]~q\,
	datae => \ALT_INV_BANKREG[1][4]~q\,
	dataf => \ALT_INV_BANKREG[0][4]~q\,
	combout => \Mux11~1_combout\);

\Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux11~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_Mux11~1_combout\,
	combout => \Mux11~2_combout\);

\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][5]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][5]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][5]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][5]~q\,
	datab => \ALT_INV_BANKREG[5][5]~q\,
	datac => \ALT_INV_BANKREG[6][5]~q\,
	datad => \ALT_INV_BANKREG[7][5]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux10~0_combout\);

\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \BANKREG[1][5]~q\ & ( \BANKREG[0][5]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][5]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][5]~q\)))) ) ) ) # ( !\BANKREG[1][5]~q\ & ( \BANKREG[0][5]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][5]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][5]~q\)))) ) ) ) # ( \BANKREG[1][5]~q\ & ( !\BANKREG[0][5]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][5]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][5]~q\)))) ) ) ) # ( !\BANKREG[1][5]~q\ & ( !\BANKREG[0][5]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][5]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][5]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][5]~q\,
	datad => \ALT_INV_BANKREG[3][5]~q\,
	datae => \ALT_INV_BANKREG[1][5]~q\,
	dataf => \ALT_INV_BANKREG[0][5]~q\,
	combout => \Mux10~1_combout\);

\Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux10~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_Mux10~1_combout\,
	combout => \Mux10~2_combout\);

\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][6]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][6]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][6]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][6]~q\,
	datab => \ALT_INV_BANKREG[5][6]~q\,
	datac => \ALT_INV_BANKREG[6][6]~q\,
	datad => \ALT_INV_BANKREG[7][6]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux9~0_combout\);

\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \BANKREG[1][6]~q\ & ( \BANKREG[0][6]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][6]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][6]~q\)))) ) ) ) # ( !\BANKREG[1][6]~q\ & ( \BANKREG[0][6]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][6]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][6]~q\)))) ) ) ) # ( \BANKREG[1][6]~q\ & ( !\BANKREG[0][6]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][6]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][6]~q\)))) ) ) ) # ( !\BANKREG[1][6]~q\ & ( !\BANKREG[0][6]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][6]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][6]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][6]~q\,
	datad => \ALT_INV_BANKREG[3][6]~q\,
	datae => \ALT_INV_BANKREG[1][6]~q\,
	dataf => \ALT_INV_BANKREG[0][6]~q\,
	combout => \Mux9~1_combout\);

\Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux9~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	combout => \Mux9~2_combout\);

\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][7]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][7]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][7]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][7]~q\,
	datab => \ALT_INV_BANKREG[5][7]~q\,
	datac => \ALT_INV_BANKREG[6][7]~q\,
	datad => \ALT_INV_BANKREG[7][7]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux8~0_combout\);

\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \BANKREG[1][7]~q\ & ( \BANKREG[0][7]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][7]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][7]~q\)))) ) ) ) # ( !\BANKREG[1][7]~q\ & ( \BANKREG[0][7]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][7]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][7]~q\)))) ) ) ) # ( \BANKREG[1][7]~q\ & ( !\BANKREG[0][7]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][7]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][7]~q\)))) ) ) ) # ( !\BANKREG[1][7]~q\ & ( !\BANKREG[0][7]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][7]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][7]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][7]~q\,
	datad => \ALT_INV_BANKREG[3][7]~q\,
	datae => \ALT_INV_BANKREG[1][7]~q\,
	dataf => \ALT_INV_BANKREG[0][7]~q\,
	combout => \Mux8~1_combout\);

\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux8~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_Mux8~1_combout\,
	combout => \Mux8~2_combout\);

\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][8]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][8]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][8]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][8]~q\,
	datab => \ALT_INV_BANKREG[5][8]~q\,
	datac => \ALT_INV_BANKREG[6][8]~q\,
	datad => \ALT_INV_BANKREG[7][8]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux7~0_combout\);

\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \BANKREG[1][8]~q\ & ( \BANKREG[0][8]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][8]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][8]~q\)))) ) ) ) # ( !\BANKREG[1][8]~q\ & ( \BANKREG[0][8]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][8]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][8]~q\)))) ) ) ) # ( \BANKREG[1][8]~q\ & ( !\BANKREG[0][8]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][8]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][8]~q\)))) ) ) ) # ( !\BANKREG[1][8]~q\ & ( !\BANKREG[0][8]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][8]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][8]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][8]~q\,
	datad => \ALT_INV_BANKREG[3][8]~q\,
	datae => \ALT_INV_BANKREG[1][8]~q\,
	dataf => \ALT_INV_BANKREG[0][8]~q\,
	combout => \Mux7~1_combout\);

\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux7~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_Mux7~1_combout\,
	combout => \Mux7~2_combout\);

\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][9]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][9]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][9]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][9]~q\,
	datab => \ALT_INV_BANKREG[5][9]~q\,
	datac => \ALT_INV_BANKREG[6][9]~q\,
	datad => \ALT_INV_BANKREG[7][9]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \BANKREG[1][9]~q\ & ( \BANKREG[0][9]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][9]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][9]~q\)))) ) ) ) # ( !\BANKREG[1][9]~q\ & ( \BANKREG[0][9]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][9]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][9]~q\)))) ) ) ) # ( \BANKREG[1][9]~q\ & ( !\BANKREG[0][9]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][9]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][9]~q\)))) ) ) ) # ( !\BANKREG[1][9]~q\ & ( !\BANKREG[0][9]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][9]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][9]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][9]~q\,
	datad => \ALT_INV_BANKREG[3][9]~q\,
	datae => \ALT_INV_BANKREG[1][9]~q\,
	dataf => \ALT_INV_BANKREG[0][9]~q\,
	combout => \Mux6~1_combout\);

\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux6~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	combout => \Mux6~2_combout\);

\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][10]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][10]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][10]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][10]~q\,
	datab => \ALT_INV_BANKREG[5][10]~q\,
	datac => \ALT_INV_BANKREG[6][10]~q\,
	datad => \ALT_INV_BANKREG[7][10]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux5~0_combout\);

\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \BANKREG[1][10]~q\ & ( \BANKREG[0][10]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][10]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][10]~q\)))) ) ) ) # ( !\BANKREG[1][10]~q\ & ( \BANKREG[0][10]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][10]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][10]~q\)))) ) ) ) # ( \BANKREG[1][10]~q\ & ( !\BANKREG[0][10]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][10]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][10]~q\)))) ) ) ) # ( !\BANKREG[1][10]~q\ & ( !\BANKREG[0][10]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][10]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][10]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][10]~q\,
	datad => \ALT_INV_BANKREG[3][10]~q\,
	datae => \ALT_INV_BANKREG[1][10]~q\,
	dataf => \ALT_INV_BANKREG[0][10]~q\,
	combout => \Mux5~1_combout\);

\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux5~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux5~1_combout\,
	combout => \Mux5~2_combout\);

\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][11]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][11]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][11]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][11]~q\,
	datab => \ALT_INV_BANKREG[5][11]~q\,
	datac => \ALT_INV_BANKREG[6][11]~q\,
	datad => \ALT_INV_BANKREG[7][11]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux4~0_combout\);

\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \BANKREG[1][11]~q\ & ( \BANKREG[0][11]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][11]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][11]~q\)))) ) ) ) # ( !\BANKREG[1][11]~q\ & ( \BANKREG[0][11]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][11]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][11]~q\)))) ) ) ) # ( \BANKREG[1][11]~q\ & ( !\BANKREG[0][11]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][11]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][11]~q\)))) ) ) ) # ( !\BANKREG[1][11]~q\ & ( !\BANKREG[0][11]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][11]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][11]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][11]~q\,
	datad => \ALT_INV_BANKREG[3][11]~q\,
	datae => \ALT_INV_BANKREG[1][11]~q\,
	dataf => \ALT_INV_BANKREG[0][11]~q\,
	combout => \Mux4~1_combout\);

\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux4~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux4~0_combout\,
	datac => \ALT_INV_Mux4~1_combout\,
	combout => \Mux4~2_combout\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][12]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][12]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][12]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][12]~q\,
	datab => \ALT_INV_BANKREG[5][12]~q\,
	datac => \ALT_INV_BANKREG[6][12]~q\,
	datad => \ALT_INV_BANKREG[7][12]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux3~0_combout\);

\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \BANKREG[1][12]~q\ & ( \BANKREG[0][12]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][12]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][12]~q\)))) ) ) ) # ( !\BANKREG[1][12]~q\ & ( \BANKREG[0][12]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][12]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][12]~q\)))) ) ) ) # ( \BANKREG[1][12]~q\ & ( !\BANKREG[0][12]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][12]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][12]~q\)))) ) ) ) # ( !\BANKREG[1][12]~q\ & ( !\BANKREG[0][12]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][12]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][12]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][12]~q\,
	datad => \ALT_INV_BANKREG[3][12]~q\,
	datae => \ALT_INV_BANKREG[1][12]~q\,
	dataf => \ALT_INV_BANKREG[0][12]~q\,
	combout => \Mux3~1_combout\);

\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux3~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux3~0_combout\,
	datac => \ALT_INV_Mux3~1_combout\,
	combout => \Mux3~2_combout\);

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][13]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][13]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][13]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][13]~q\,
	datab => \ALT_INV_BANKREG[5][13]~q\,
	datac => \ALT_INV_BANKREG[6][13]~q\,
	datad => \ALT_INV_BANKREG[7][13]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux2~0_combout\);

\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \BANKREG[1][13]~q\ & ( \BANKREG[0][13]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][13]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][13]~q\)))) ) ) ) # ( !\BANKREG[1][13]~q\ & ( \BANKREG[0][13]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][13]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][13]~q\)))) ) ) ) # ( \BANKREG[1][13]~q\ & ( !\BANKREG[0][13]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][13]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][13]~q\)))) ) ) ) # ( !\BANKREG[1][13]~q\ & ( !\BANKREG[0][13]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][13]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][13]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][13]~q\,
	datad => \ALT_INV_BANKREG[3][13]~q\,
	datae => \ALT_INV_BANKREG[1][13]~q\,
	dataf => \ALT_INV_BANKREG[0][13]~q\,
	combout => \Mux2~1_combout\);

\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux2~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux2~1_combout\,
	combout => \Mux2~2_combout\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][14]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][14]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][14]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][14]~q\,
	datab => \ALT_INV_BANKREG[5][14]~q\,
	datac => \ALT_INV_BANKREG[6][14]~q\,
	datad => \ALT_INV_BANKREG[7][14]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux1~0_combout\);

\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \BANKREG[1][14]~q\ & ( \BANKREG[0][14]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][14]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][14]~q\)))) ) ) ) # ( !\BANKREG[1][14]~q\ & ( \BANKREG[0][14]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][14]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][14]~q\)))) ) ) ) # ( \BANKREG[1][14]~q\ & ( !\BANKREG[0][14]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][14]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][14]~q\)))) ) ) ) # ( !\BANKREG[1][14]~q\ & ( !\BANKREG[0][14]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][14]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][14]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][14]~q\,
	datad => \ALT_INV_BANKREG[3][14]~q\,
	datae => \ALT_INV_BANKREG[1][14]~q\,
	dataf => \ALT_INV_BANKREG[0][14]~q\,
	combout => \Mux1~1_combout\);

\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux1~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_Mux1~1_combout\,
	combout => \Mux1~2_combout\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[7][15]~q\ ) ) ) # ( !\INSTR2[0]~input_o\ & ( \INSTR2[1]~input_o\ & ( \BANKREG[6][15]~q\ ) ) ) # ( \INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[5][15]~q\ ) ) ) # ( 
-- !\INSTR2[0]~input_o\ & ( !\INSTR2[1]~input_o\ & ( \BANKREG[4][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][15]~q\,
	datab => \ALT_INV_BANKREG[5][15]~q\,
	datac => \ALT_INV_BANKREG[6][15]~q\,
	datad => \ALT_INV_BANKREG[7][15]~q\,
	datae => \ALT_INV_INSTR2[0]~input_o\,
	dataf => \ALT_INV_INSTR2[1]~input_o\,
	combout => \Mux0~0_combout\);

\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \BANKREG[1][15]~q\ & ( \BANKREG[0][15]~q\ & ( (!\INSTR2[1]~input_o\) # ((!\INSTR2[0]~input_o\ & (\BANKREG[2][15]~q\)) # (\INSTR2[0]~input_o\ & ((\BANKREG[3][15]~q\)))) ) ) ) # ( !\BANKREG[1][15]~q\ & ( \BANKREG[0][15]~q\ & ( 
-- (!\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[2][15]~q\)))) # (\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & ((\BANKREG[3][15]~q\)))) ) ) ) # ( \BANKREG[1][15]~q\ & ( !\BANKREG[0][15]~q\ & ( (!\INSTR2[0]~input_o\ & (\INSTR2[1]~input_o\ & 
-- (\BANKREG[2][15]~q\))) # (\INSTR2[0]~input_o\ & ((!\INSTR2[1]~input_o\) # ((\BANKREG[3][15]~q\)))) ) ) ) # ( !\BANKREG[1][15]~q\ & ( !\BANKREG[0][15]~q\ & ( (\INSTR2[1]~input_o\ & ((!\INSTR2[0]~input_o\ & (\BANKREG[2][15]~q\)) # (\INSTR2[0]~input_o\ & 
-- ((\BANKREG[3][15]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[0]~input_o\,
	datab => \ALT_INV_INSTR2[1]~input_o\,
	datac => \ALT_INV_BANKREG[2][15]~q\,
	datad => \ALT_INV_BANKREG[3][15]~q\,
	datae => \ALT_INV_BANKREG[1][15]~q\,
	dataf => \ALT_INV_BANKREG[0][15]~q\,
	combout => \Mux0~1_combout\);

\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\INSTR2[2]~input_o\ & ((\Mux0~1_combout\))) # (\INSTR2[2]~input_o\ & (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR2[2]~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux0~1_combout\,
	combout => \Mux0~2_combout\);

\INSTR3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR3(2),
	o => \INSTR3[2]~input_o\);

\INSTR3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR3(0),
	o => \INSTR3[0]~input_o\);

\INSTR3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR3(1),
	o => \INSTR3[1]~input_o\);

\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][0]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][0]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][0]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][0]~q\,
	datab => \ALT_INV_BANKREG[5][0]~q\,
	datac => \ALT_INV_BANKREG[6][0]~q\,
	datad => \ALT_INV_BANKREG[7][0]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux31~0_combout\);

\Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][0]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][0]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][0]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][0]~q\,
	datab => \ALT_INV_BANKREG[3][0]~q\,
	datac => \ALT_INV_BANKREG[1][0]~q\,
	datad => \ALT_INV_BANKREG[0][0]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux31~1_combout\);

\Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux31~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux31~0_combout\,
	datac => \ALT_INV_Mux31~1_combout\,
	combout => \Mux31~2_combout\);

\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][1]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][1]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][1]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][1]~q\,
	datab => \ALT_INV_BANKREG[5][1]~q\,
	datac => \ALT_INV_BANKREG[6][1]~q\,
	datad => \ALT_INV_BANKREG[7][1]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux30~0_combout\);

\Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][1]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][1]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][1]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][1]~q\,
	datab => \ALT_INV_BANKREG[3][1]~q\,
	datac => \ALT_INV_BANKREG[1][1]~q\,
	datad => \ALT_INV_BANKREG[0][1]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux30~1_combout\);

\Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux30~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_Mux30~1_combout\,
	combout => \Mux30~2_combout\);

\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][2]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][2]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][2]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][2]~q\,
	datab => \ALT_INV_BANKREG[5][2]~q\,
	datac => \ALT_INV_BANKREG[6][2]~q\,
	datad => \ALT_INV_BANKREG[7][2]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux29~0_combout\);

\Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][2]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][2]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][2]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][2]~q\,
	datab => \ALT_INV_BANKREG[3][2]~q\,
	datac => \ALT_INV_BANKREG[1][2]~q\,
	datad => \ALT_INV_BANKREG[0][2]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux29~1_combout\);

\Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux29~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux29~0_combout\,
	datac => \ALT_INV_Mux29~1_combout\,
	combout => \Mux29~2_combout\);

\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][3]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][3]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][3]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][3]~q\,
	datab => \ALT_INV_BANKREG[5][3]~q\,
	datac => \ALT_INV_BANKREG[6][3]~q\,
	datad => \ALT_INV_BANKREG[7][3]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux28~0_combout\);

\Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][3]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][3]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][3]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][3]~q\,
	datab => \ALT_INV_BANKREG[3][3]~q\,
	datac => \ALT_INV_BANKREG[1][3]~q\,
	datad => \ALT_INV_BANKREG[0][3]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux28~1_combout\);

\Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux28~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux28~0_combout\,
	datac => \ALT_INV_Mux28~1_combout\,
	combout => \Mux28~2_combout\);

\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][4]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][4]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][4]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][4]~q\,
	datab => \ALT_INV_BANKREG[5][4]~q\,
	datac => \ALT_INV_BANKREG[6][4]~q\,
	datad => \ALT_INV_BANKREG[7][4]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux27~0_combout\);

\Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][4]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][4]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][4]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][4]~q\,
	datab => \ALT_INV_BANKREG[3][4]~q\,
	datac => \ALT_INV_BANKREG[1][4]~q\,
	datad => \ALT_INV_BANKREG[0][4]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux27~1_combout\);

\Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux27~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux27~0_combout\,
	datac => \ALT_INV_Mux27~1_combout\,
	combout => \Mux27~2_combout\);

\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][5]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][5]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][5]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][5]~q\,
	datab => \ALT_INV_BANKREG[5][5]~q\,
	datac => \ALT_INV_BANKREG[6][5]~q\,
	datad => \ALT_INV_BANKREG[7][5]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux26~0_combout\);

\Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][5]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][5]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][5]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][5]~q\,
	datab => \ALT_INV_BANKREG[3][5]~q\,
	datac => \ALT_INV_BANKREG[1][5]~q\,
	datad => \ALT_INV_BANKREG[0][5]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux26~1_combout\);

\Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux26~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux26~0_combout\,
	datac => \ALT_INV_Mux26~1_combout\,
	combout => \Mux26~2_combout\);

\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][6]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][6]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][6]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][6]~q\,
	datab => \ALT_INV_BANKREG[5][6]~q\,
	datac => \ALT_INV_BANKREG[6][6]~q\,
	datad => \ALT_INV_BANKREG[7][6]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux25~0_combout\);

\Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][6]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][6]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][6]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][6]~q\,
	datab => \ALT_INV_BANKREG[3][6]~q\,
	datac => \ALT_INV_BANKREG[1][6]~q\,
	datad => \ALT_INV_BANKREG[0][6]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux25~1_combout\);

\Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux25~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux25~0_combout\,
	datac => \ALT_INV_Mux25~1_combout\,
	combout => \Mux25~2_combout\);

\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][7]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][7]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][7]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][7]~q\,
	datab => \ALT_INV_BANKREG[5][7]~q\,
	datac => \ALT_INV_BANKREG[6][7]~q\,
	datad => \ALT_INV_BANKREG[7][7]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux24~0_combout\);

\Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][7]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][7]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][7]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][7]~q\,
	datab => \ALT_INV_BANKREG[3][7]~q\,
	datac => \ALT_INV_BANKREG[1][7]~q\,
	datad => \ALT_INV_BANKREG[0][7]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux24~1_combout\);

\Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux24~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux24~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	combout => \Mux24~2_combout\);

\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][8]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][8]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][8]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][8]~q\,
	datab => \ALT_INV_BANKREG[5][8]~q\,
	datac => \ALT_INV_BANKREG[6][8]~q\,
	datad => \ALT_INV_BANKREG[7][8]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux23~0_combout\);

\Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][8]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][8]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][8]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][8]~q\,
	datab => \ALT_INV_BANKREG[3][8]~q\,
	datac => \ALT_INV_BANKREG[1][8]~q\,
	datad => \ALT_INV_BANKREG[0][8]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux23~1_combout\);

\Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux23~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux23~0_combout\,
	datac => \ALT_INV_Mux23~1_combout\,
	combout => \Mux23~2_combout\);

\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][9]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][9]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][9]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][9]~q\,
	datab => \ALT_INV_BANKREG[5][9]~q\,
	datac => \ALT_INV_BANKREG[6][9]~q\,
	datad => \ALT_INV_BANKREG[7][9]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux22~0_combout\);

\Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][9]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][9]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][9]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][9]~q\,
	datab => \ALT_INV_BANKREG[3][9]~q\,
	datac => \ALT_INV_BANKREG[1][9]~q\,
	datad => \ALT_INV_BANKREG[0][9]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux22~1_combout\);

\Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux22~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux22~0_combout\,
	datac => \ALT_INV_Mux22~1_combout\,
	combout => \Mux22~2_combout\);

\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][10]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][10]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][10]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][10]~q\,
	datab => \ALT_INV_BANKREG[5][10]~q\,
	datac => \ALT_INV_BANKREG[6][10]~q\,
	datad => \ALT_INV_BANKREG[7][10]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux21~0_combout\);

\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][10]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][10]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][10]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][10]~q\,
	datab => \ALT_INV_BANKREG[3][10]~q\,
	datac => \ALT_INV_BANKREG[1][10]~q\,
	datad => \ALT_INV_BANKREG[0][10]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux21~1_combout\);

\Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux21~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux21~0_combout\,
	datac => \ALT_INV_Mux21~1_combout\,
	combout => \Mux21~2_combout\);

\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][11]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][11]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][11]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][11]~q\,
	datab => \ALT_INV_BANKREG[5][11]~q\,
	datac => \ALT_INV_BANKREG[6][11]~q\,
	datad => \ALT_INV_BANKREG[7][11]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux20~0_combout\);

\Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][11]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][11]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][11]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][11]~q\,
	datab => \ALT_INV_BANKREG[3][11]~q\,
	datac => \ALT_INV_BANKREG[1][11]~q\,
	datad => \ALT_INV_BANKREG[0][11]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux20~1_combout\);

\Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux20~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux20~0_combout\,
	datac => \ALT_INV_Mux20~1_combout\,
	combout => \Mux20~2_combout\);

\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][12]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][12]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][12]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][12]~q\,
	datab => \ALT_INV_BANKREG[5][12]~q\,
	datac => \ALT_INV_BANKREG[6][12]~q\,
	datad => \ALT_INV_BANKREG[7][12]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux19~0_combout\);

\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][12]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][12]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][12]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][12]~q\,
	datab => \ALT_INV_BANKREG[3][12]~q\,
	datac => \ALT_INV_BANKREG[1][12]~q\,
	datad => \ALT_INV_BANKREG[0][12]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux19~1_combout\);

\Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux19~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux19~0_combout\,
	datac => \ALT_INV_Mux19~1_combout\,
	combout => \Mux19~2_combout\);

\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][13]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][13]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][13]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][13]~q\,
	datab => \ALT_INV_BANKREG[5][13]~q\,
	datac => \ALT_INV_BANKREG[6][13]~q\,
	datad => \ALT_INV_BANKREG[7][13]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux18~0_combout\);

\Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][13]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][13]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][13]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][13]~q\,
	datab => \ALT_INV_BANKREG[3][13]~q\,
	datac => \ALT_INV_BANKREG[1][13]~q\,
	datad => \ALT_INV_BANKREG[0][13]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux18~1_combout\);

\Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux18~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_Mux18~1_combout\,
	combout => \Mux18~2_combout\);

\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][14]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][14]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][14]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][14]~q\,
	datab => \ALT_INV_BANKREG[5][14]~q\,
	datac => \ALT_INV_BANKREG[6][14]~q\,
	datad => \ALT_INV_BANKREG[7][14]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux17~0_combout\);

\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][14]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][14]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][14]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][14]~q\,
	datab => \ALT_INV_BANKREG[3][14]~q\,
	datac => \ALT_INV_BANKREG[1][14]~q\,
	datad => \ALT_INV_BANKREG[0][14]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux17~1_combout\);

\Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux17~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux17~0_combout\,
	datac => \ALT_INV_Mux17~1_combout\,
	combout => \Mux17~2_combout\);

\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[7][15]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[6][15]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[5][15]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[4][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[4][15]~q\,
	datab => \ALT_INV_BANKREG[5][15]~q\,
	datac => \ALT_INV_BANKREG[6][15]~q\,
	datad => \ALT_INV_BANKREG[7][15]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux16~0_combout\);

\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[3][15]~q\ ) ) ) # ( !\INSTR3[0]~input_o\ & ( \INSTR3[1]~input_o\ & ( \BANKREG[2][15]~q\ ) ) ) # ( \INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[1][15]~q\ ) ) ) # ( 
-- !\INSTR3[0]~input_o\ & ( !\INSTR3[1]~input_o\ & ( \BANKREG[0][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BANKREG[2][15]~q\,
	datab => \ALT_INV_BANKREG[3][15]~q\,
	datac => \ALT_INV_BANKREG[1][15]~q\,
	datad => \ALT_INV_BANKREG[0][15]~q\,
	datae => \ALT_INV_INSTR3[0]~input_o\,
	dataf => \ALT_INV_INSTR3[1]~input_o\,
	combout => \Mux16~1_combout\);

\Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (!\INSTR3[2]~input_o\ & ((\Mux16~1_combout\))) # (\INSTR3[2]~input_o\ & (\Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INSTR3[2]~input_o\,
	datab => \ALT_INV_Mux16~0_combout\,
	datac => \ALT_INV_Mux16~1_combout\,
	combout => \Mux16~2_combout\);

\INSTR2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR2(3),
	o => \INSTR2[3]~input_o\);

\INSTR3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTR3(3),
	o => \INSTR3[3]~input_o\);

\INSTRD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRD(3),
	o => \INSTRD[3]~input_o\);

ww_REGAUX(0) <= \REGAUX[0]~output_o\;

ww_REGAUX(1) <= \REGAUX[1]~output_o\;

ww_REGAUX(2) <= \REGAUX[2]~output_o\;

ww_REGAUX(3) <= \REGAUX[3]~output_o\;

ww_REGAUX(4) <= \REGAUX[4]~output_o\;

ww_REGAUX(5) <= \REGAUX[5]~output_o\;

ww_REGAUX(6) <= \REGAUX[6]~output_o\;

ww_REGAUX(7) <= \REGAUX[7]~output_o\;

ww_REGAUX(8) <= \REGAUX[8]~output_o\;

ww_REGAUX(9) <= \REGAUX[9]~output_o\;

ww_REGAUX(10) <= \REGAUX[10]~output_o\;

ww_REGAUX(11) <= \REGAUX[11]~output_o\;

ww_REGAUX(12) <= \REGAUX[12]~output_o\;

ww_REGAUX(13) <= \REGAUX[13]~output_o\;

ww_REGAUX(14) <= \REGAUX[14]~output_o\;

ww_REGAUX(15) <= \REGAUX[15]~output_o\;

ww_OUTREG1(0) <= \OUTREG1[0]~output_o\;

ww_OUTREG1(1) <= \OUTREG1[1]~output_o\;

ww_OUTREG1(2) <= \OUTREG1[2]~output_o\;

ww_OUTREG1(3) <= \OUTREG1[3]~output_o\;

ww_OUTREG1(4) <= \OUTREG1[4]~output_o\;

ww_OUTREG1(5) <= \OUTREG1[5]~output_o\;

ww_OUTREG1(6) <= \OUTREG1[6]~output_o\;

ww_OUTREG1(7) <= \OUTREG1[7]~output_o\;

ww_OUTREG1(8) <= \OUTREG1[8]~output_o\;

ww_OUTREG1(9) <= \OUTREG1[9]~output_o\;

ww_OUTREG1(10) <= \OUTREG1[10]~output_o\;

ww_OUTREG1(11) <= \OUTREG1[11]~output_o\;

ww_OUTREG1(12) <= \OUTREG1[12]~output_o\;

ww_OUTREG1(13) <= \OUTREG1[13]~output_o\;

ww_OUTREG1(14) <= \OUTREG1[14]~output_o\;

ww_OUTREG1(15) <= \OUTREG1[15]~output_o\;

ww_OUTREG2(0) <= \OUTREG2[0]~output_o\;

ww_OUTREG2(1) <= \OUTREG2[1]~output_o\;

ww_OUTREG2(2) <= \OUTREG2[2]~output_o\;

ww_OUTREG2(3) <= \OUTREG2[3]~output_o\;

ww_OUTREG2(4) <= \OUTREG2[4]~output_o\;

ww_OUTREG2(5) <= \OUTREG2[5]~output_o\;

ww_OUTREG2(6) <= \OUTREG2[6]~output_o\;

ww_OUTREG2(7) <= \OUTREG2[7]~output_o\;

ww_OUTREG2(8) <= \OUTREG2[8]~output_o\;

ww_OUTREG2(9) <= \OUTREG2[9]~output_o\;

ww_OUTREG2(10) <= \OUTREG2[10]~output_o\;

ww_OUTREG2(11) <= \OUTREG2[11]~output_o\;

ww_OUTREG2(12) <= \OUTREG2[12]~output_o\;

ww_OUTREG2(13) <= \OUTREG2[13]~output_o\;

ww_OUTREG2(14) <= \OUTREG2[14]~output_o\;

ww_OUTREG2(15) <= \OUTREG2[15]~output_o\;
END structure;


