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

-- DATE "11/20/2018 15:49:12"

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

ENTITY 	UnidadedeControle IS
    PORT (
	entrada : IN std_logic_vector(4 DOWNTO 0);
	regdest : BUFFER std_logic;
	origalu : BUFFER std_logic;
	memparareg : BUFFER std_logic;
	escrevereg : BUFFER std_logic;
	lemem : BUFFER std_logic;
	escrevemem : BUFFER std_logic;
	branch : BUFFER std_logic;
	aluop1 : BUFFER std_logic;
	aluop0 : BUFFER std_logic
	);
END UnidadedeControle;

-- Design Ports Information
-- regdest	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origalu	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memparareg	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- escrevereg	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lemem	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- escrevemem	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluop1	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluop0	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UnidadedeControle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_regdest : std_logic;
SIGNAL ww_origalu : std_logic;
SIGNAL ww_memparareg : std_logic;
SIGNAL ww_escrevereg : std_logic;
SIGNAL ww_lemem : std_logic;
SIGNAL ww_escrevemem : std_logic;
SIGNAL ww_branch : std_logic;
SIGNAL ww_aluop1 : std_logic;
SIGNAL ww_aluop0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \regdest~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \origalu~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \escrevemem~1_combout\ : std_logic;
SIGNAL \branch~1_combout\ : std_logic;
SIGNAL \ALT_INV_entrada[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
regdest <= ww_regdest;
origalu <= ww_origalu;
memparareg <= ww_memparareg;
escrevereg <= ww_escrevereg;
lemem <= ww_lemem;
escrevemem <= ww_escrevemem;
branch <= ww_branch;
aluop1 <= ww_aluop1;
aluop0 <= ww_aluop0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entrada[4]~input_o\ <= NOT \entrada[4]~input_o\;
\ALT_INV_entrada[3]~input_o\ <= NOT \entrada[3]~input_o\;
\ALT_INV_entrada[1]~input_o\ <= NOT \entrada[1]~input_o\;
\ALT_INV_entrada[0]~input_o\ <= NOT \entrada[0]~input_o\;
\ALT_INV_entrada[2]~input_o\ <= NOT \entrada[2]~input_o\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X89_Y36_N56
\regdest~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	oe => \regdest~1_combout\,
	devoe => ww_devoe,
	o => ww_regdest);

-- Location: IOOBUF_X89_Y37_N22
\origalu~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	oe => \origalu~1_combout\,
	devoe => ww_devoe,
	o => ww_origalu);

-- Location: IOOBUF_X89_Y36_N5
\memparareg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	oe => \regdest~1_combout\,
	devoe => ww_devoe,
	o => ww_memparareg);

-- Location: IOOBUF_X89_Y36_N22
\escrevereg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regdest~1_combout\,
	oe => \origalu~1_combout\,
	devoe => ww_devoe,
	o => ww_escrevereg);

-- Location: IOOBUF_X89_Y37_N39
\lemem~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~1_combout\,
	oe => \origalu~1_combout\,
	devoe => ww_devoe,
	o => ww_lemem);

-- Location: IOOBUF_X89_Y37_N5
\escrevemem~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \escrevemem~1_combout\,
	oe => \origalu~1_combout\,
	devoe => ww_devoe,
	o => ww_escrevemem);

-- Location: IOOBUF_X89_Y35_N96
\branch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \branch~1_combout\,
	oe => \origalu~1_combout\,
	devoe => ww_devoe,
	o => ww_branch);

-- Location: IOOBUF_X89_Y36_N39
\aluop1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	oe => \origalu~1_combout\,
	devoe => ww_devoe,
	o => ww_aluop1);

-- Location: IOOBUF_X89_Y35_N45
\aluop0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \branch~1_combout\,
	oe => \origalu~1_combout\,
	devoe => ww_devoe,
	o => ww_aluop0);

-- Location: IOIBUF_X89_Y38_N4
\entrada[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\entrada[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \entrada[2]~input_o\ & ( \entrada[0]~input_o\ ) ) # ( !\entrada[2]~input_o\ & ( \entrada[0]~input_o\ ) ) # ( \entrada[2]~input_o\ & ( !\entrada[0]~input_o\ ) ) # ( !\entrada[2]~input_o\ & ( !\entrada[0]~input_o\ & ( 
-- ((\entrada[3]~input_o\) # (\entrada[1]~input_o\)) # (\entrada[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[4]~input_o\,
	datac => \ALT_INV_entrada[1]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	datae => \ALT_INV_entrada[2]~input_o\,
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X88_Y37_N9
\regdest~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regdest~1_combout\ = ( !\entrada[2]~input_o\ & ( \entrada[0]~input_o\ & ( (!\entrada[1]~input_o\ & (\entrada[3]~input_o\ & \entrada[4]~input_o\)) ) ) ) # ( !\entrada[2]~input_o\ & ( !\entrada[0]~input_o\ & ( (!\entrada[1]~input_o\ & 
-- (!\entrada[3]~input_o\ & !\entrada[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[3]~input_o\,
	datac => \ALT_INV_entrada[4]~input_o\,
	datae => \ALT_INV_entrada[2]~input_o\,
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \regdest~1_combout\);

-- Location: LABCELL_X88_Y37_N42
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\entrada[2]~input_o\ & ( \entrada[0]~input_o\ & ( (\entrada[4]~input_o\ & \entrada[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[4]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	datae => \ALT_INV_entrada[2]~input_o\,
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X88_Y37_N51
\origalu~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \origalu~1_combout\ = ( !\entrada[2]~input_o\ & ( \entrada[0]~input_o\ & ( (\entrada[3]~input_o\ & \entrada[4]~input_o\) ) ) ) # ( \entrada[2]~input_o\ & ( !\entrada[0]~input_o\ & ( (!\entrada[1]~input_o\ & (!\entrada[3]~input_o\ & !\entrada[4]~input_o\)) 
-- ) ) ) # ( !\entrada[2]~input_o\ & ( !\entrada[0]~input_o\ & ( (!\entrada[1]~input_o\ & (!\entrada[3]~input_o\ & !\entrada[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[3]~input_o\,
	datac => \ALT_INV_entrada[4]~input_o\,
	datae => \ALT_INV_entrada[2]~input_o\,
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \origalu~1_combout\);

-- Location: LABCELL_X88_Y37_N54
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\entrada[2]~input_o\ & ( \entrada[0]~input_o\ & ( (\entrada[4]~input_o\ & (!\entrada[1]~input_o\ & \entrada[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[4]~input_o\,
	datac => \ALT_INV_entrada[1]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	datae => \ALT_INV_entrada[2]~input_o\,
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X88_Y37_N33
\escrevemem~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \escrevemem~1_combout\ = ( !\entrada[2]~input_o\ & ( \entrada[0]~input_o\ & ( (\entrada[1]~input_o\ & (\entrada[3]~input_o\ & \entrada[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datab => \ALT_INV_entrada[3]~input_o\,
	datac => \ALT_INV_entrada[4]~input_o\,
	datae => \ALT_INV_entrada[2]~input_o\,
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \escrevemem~1_combout\);

-- Location: LABCELL_X88_Y37_N36
\branch~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \branch~1_combout\ = ( \entrada[2]~input_o\ & ( \entrada[0]~input_o\ ) ) # ( !\entrada[2]~input_o\ & ( \entrada[0]~input_o\ & ( (!\entrada[4]~input_o\) # (!\entrada[3]~input_o\) ) ) ) # ( \entrada[2]~input_o\ & ( !\entrada[0]~input_o\ ) ) # ( 
-- !\entrada[2]~input_o\ & ( !\entrada[0]~input_o\ & ( ((\entrada[3]~input_o\) # (\entrada[1]~input_o\)) # (\entrada[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111111111111111111111111111110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entrada[4]~input_o\,
	datac => \ALT_INV_entrada[1]~input_o\,
	datad => \ALT_INV_entrada[3]~input_o\,
	datae => \ALT_INV_entrada[2]~input_o\,
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \branch~1_combout\);

-- Location: LABCELL_X13_Y33_N0
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


