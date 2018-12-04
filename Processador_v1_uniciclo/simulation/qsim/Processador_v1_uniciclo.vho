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

-- DATE "12/04/2018 08:17:40"

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

ENTITY 	DataPath IS
    PORT (
	Clock_Sistema : IN std_logic;
	SomadorToPc_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	SaidaPc_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	SaidaRegA_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	SaidaRegB_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	multiplexador_to_writeRegister_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_multiplexador_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_Control_outWaveform : BUFFER std_logic_vector(3 DOWNTO 0);
	Instruction_to_register1_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_register2_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_controlULA_outWaveform : BUFFER std_logic_vector(2 DOWNTO 0);
	Instruction_to_extensorDeSinal_outWaveform : BUFFER std_logic_vector(5 DOWNTO 0);
	Instruction_to_Jump_outWaveform : BUFFER std_logic_vector(11 DOWNTO 0);
	out_Saida_OperacaoDaULA : BUFFER std_logic_vector(6 DOWNTO 0);
	Data_to_writeRegister_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Saida_mult_to_mult_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Saida_to_PC_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Saida_adress_to_RAM_outWaveform : BUFFER std_logic_vector(15 DOWNTO 0);
	Flag_regdest_OUT : BUFFER std_logic;
	Flag_origialu_OUT : BUFFER std_logic_vector(3 DOWNTO 0);
	Flag_memparareg_OUT : BUFFER std_logic;
	Flag_escrevereg_OUT : BUFFER std_logic;
	Flag_lemem_OUT : BUFFER std_logic;
	Flag_escrevemem_OUT : BUFFER std_logic;
	Flag_branch_OUT : BUFFER std_logic;
	Flag_aluSRC_OUT : BUFFER std_logic;
	Flag_jump_OUT : BUFFER std_logic
	);
END DataPath;

ARCHITECTURE structure OF DataPath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock_Sistema : std_logic;
SIGNAL ww_SomadorToPc_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SaidaPc_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SaidaRegA_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SaidaRegB_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_multiplexador_to_writeRegister_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_multiplexador_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_Control_outWaveform : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Instruction_to_register1_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_register2_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_controlULA_outWaveform : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Instruction_to_extensorDeSinal_outWaveform : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Instruction_to_Jump_outWaveform : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_out_Saida_OperacaoDaULA : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Data_to_writeRegister_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_mult_to_mult_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_to_PC_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida_adress_to_RAM_outWaveform : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Flag_regdest_OUT : std_logic;
SIGNAL ww_Flag_origialu_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Flag_memparareg_OUT : std_logic;
SIGNAL ww_Flag_escrevereg_OUT : std_logic;
SIGNAL ww_Flag_lemem_OUT : std_logic;
SIGNAL ww_Flag_escrevemem_OUT : std_logic;
SIGNAL ww_Flag_branch_OUT : std_logic;
SIGNAL ww_Flag_aluSRC_OUT : std_logic;
SIGNAL ww_Flag_jump_OUT : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \SomadorToPc_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SomadorToPc_outWaveform[15]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SaidaPc_outWaveform[15]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SaidaRegA_outWaveform[15]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[0]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[1]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[2]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[3]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[4]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[5]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[6]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[7]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[8]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[9]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[10]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[11]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[12]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[13]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[14]~output_o\ : std_logic;
SIGNAL \SaidaRegB_outWaveform[15]~output_o\ : std_logic;
SIGNAL \multiplexador_to_writeRegister_outWaveform[0]~output_o\ : std_logic;
SIGNAL \multiplexador_to_writeRegister_outWaveform[1]~output_o\ : std_logic;
SIGNAL \multiplexador_to_writeRegister_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_multiplexador_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_multiplexador_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_multiplexador_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Control_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_register1_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_register2_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_controlULA_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Instruction_to_extensorDeSinal_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Instruction_to_Jump_outWaveform[11]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[0]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[1]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[2]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[3]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[4]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[5]~output_o\ : std_logic;
SIGNAL \out_Saida_OperacaoDaULA[6]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Data_to_writeRegister_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Saida_mult_to_mult_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Saida_to_PC_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[0]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[1]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[2]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[3]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[4]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[5]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[6]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[7]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[8]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[9]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[10]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[11]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[12]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[13]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[14]~output_o\ : std_logic;
SIGNAL \Saida_adress_to_RAM_outWaveform[15]~output_o\ : std_logic;
SIGNAL \Flag_regdest_OUT~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[0]~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[1]~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[2]~output_o\ : std_logic;
SIGNAL \Flag_origialu_OUT[3]~output_o\ : std_logic;
SIGNAL \Flag_memparareg_OUT~output_o\ : std_logic;
SIGNAL \Flag_escrevereg_OUT~output_o\ : std_logic;
SIGNAL \Flag_lemem_OUT~output_o\ : std_logic;
SIGNAL \Flag_escrevemem_OUT~output_o\ : std_logic;
SIGNAL \Flag_branch_OUT~output_o\ : std_logic;
SIGNAL \Flag_aluSRC_OUT~output_o\ : std_logic;
SIGNAL \Flag_jump_OUT~output_o\ : std_logic;
SIGNAL \Clock_Sistema~input_o\ : std_logic;
SIGNAL \G2|saida[0]~0_combout\ : std_logic;
SIGNAL \G2|Add0~1_sumout\ : std_logic;
SIGNAL \G2|Add0~2\ : std_logic;
SIGNAL \G2|Add0~5_sumout\ : std_logic;
SIGNAL \G2|Add0~6\ : std_logic;
SIGNAL \G2|Add0~9_sumout\ : std_logic;
SIGNAL \G2|Add0~10\ : std_logic;
SIGNAL \G2|Add0~13_sumout\ : std_logic;
SIGNAL \G2|Add0~14\ : std_logic;
SIGNAL \G2|Add0~17_sumout\ : std_logic;
SIGNAL \G2|Add0~18\ : std_logic;
SIGNAL \G2|Add0~21_sumout\ : std_logic;
SIGNAL \G2|Add0~22\ : std_logic;
SIGNAL \G2|Add0~25_sumout\ : std_logic;
SIGNAL \G2|Add0~26\ : std_logic;
SIGNAL \G2|Add0~29_sumout\ : std_logic;
SIGNAL \G2|Add0~30\ : std_logic;
SIGNAL \G2|Add0~33_sumout\ : std_logic;
SIGNAL \G2|Add0~34\ : std_logic;
SIGNAL \G2|Add0~37_sumout\ : std_logic;
SIGNAL \G2|Add0~38\ : std_logic;
SIGNAL \G2|Add0~41_sumout\ : std_logic;
SIGNAL \G2|Add0~42\ : std_logic;
SIGNAL \G2|Add0~45_sumout\ : std_logic;
SIGNAL \G2|Add0~46\ : std_logic;
SIGNAL \G2|Add0~49_sumout\ : std_logic;
SIGNAL \G2|Add0~50\ : std_logic;
SIGNAL \G2|Add0~53_sumout\ : std_logic;
SIGNAL \G2|Add0~54\ : std_logic;
SIGNAL \G2|Add0~57_sumout\ : std_logic;
SIGNAL \G4|Mux0~0_combout\ : std_logic;
SIGNAL \G4|Mux0~1_combout\ : std_logic;
SIGNAL \G4|Mux0~2_combout\ : std_logic;
SIGNAL \G4|Mux0~3_combout\ : std_logic;
SIGNAL \G4|rs[2]~0_combout\ : std_logic;
SIGNAL \G16|Add0~1_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[9]~25_combout\ : std_logic;
SIGNAL \G16|Add0~2\ : std_logic;
SIGNAL \G16|Add0~6\ : std_logic;
SIGNAL \G16|Add0~10\ : std_logic;
SIGNAL \G16|Add0~14\ : std_logic;
SIGNAL \G16|Add0~18\ : std_logic;
SIGNAL \G16|Add0~22\ : std_logic;
SIGNAL \G16|Add0~26\ : std_logic;
SIGNAL \G16|Add0~30\ : std_logic;
SIGNAL \G16|Add0~34\ : std_logic;
SIGNAL \G16|Add0~37_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[8]~24_combout\ : std_logic;
SIGNAL \G16|Add0~33_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[7]~23_combout\ : std_logic;
SIGNAL \G16|Add0~29_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[6]~22_combout\ : std_logic;
SIGNAL \G16|Add0~25_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[5]~21_combout\ : std_logic;
SIGNAL \G16|Add0~21_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[4]~20_combout\ : std_logic;
SIGNAL \G16|Add0~17_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[3]~19_combout\ : std_logic;
SIGNAL \G16|Add0~13_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[2]~18_combout\ : std_logic;
SIGNAL \G16|Add0~9_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[1]~17_combout\ : std_logic;
SIGNAL \G16|Add0~5_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \G18|SAIDA[0]~16_combout\ : std_logic;
SIGNAL \G7|Reg[0][0]~16_combout\ : std_logic;
SIGNAL \G7|Reg[0][1]~17_combout\ : std_logic;
SIGNAL \G7|Reg[0][2]~18_combout\ : std_logic;
SIGNAL \G7|Reg[0][3]~19_combout\ : std_logic;
SIGNAL \G7|Reg[0][4]~20_combout\ : std_logic;
SIGNAL \G7|Reg[0][5]~21_combout\ : std_logic;
SIGNAL \G7|Reg[0][6]~22_combout\ : std_logic;
SIGNAL \G7|Reg[0][7]~23_combout\ : std_logic;
SIGNAL \G7|Reg[0][8]~24_combout\ : std_logic;
SIGNAL \G7|Reg[0][9]~25_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \G16|Add0~38\ : std_logic;
SIGNAL \G16|Add0~41_sumout\ : std_logic;
SIGNAL \G18|SAIDA[10]~26_combout\ : std_logic;
SIGNAL \G7|Reg[0][10]~26_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \G16|Add0~42\ : std_logic;
SIGNAL \G16|Add0~45_sumout\ : std_logic;
SIGNAL \G18|SAIDA[11]~27_combout\ : std_logic;
SIGNAL \G7|Reg[0][11]~27_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \G16|Add0~46\ : std_logic;
SIGNAL \G16|Add0~49_sumout\ : std_logic;
SIGNAL \G18|SAIDA[12]~28_combout\ : std_logic;
SIGNAL \G7|Reg[0][12]~28_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \G16|Add0~50\ : std_logic;
SIGNAL \G16|Add0~53_sumout\ : std_logic;
SIGNAL \G18|SAIDA[13]~29_combout\ : std_logic;
SIGNAL \G7|Reg[0][13]~29_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \G16|Add0~54\ : std_logic;
SIGNAL \G16|Add0~57_sumout\ : std_logic;
SIGNAL \G18|SAIDA[14]~30_combout\ : std_logic;
SIGNAL \G7|Reg[0][14]~30_combout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \G16|Add0~58\ : std_logic;
SIGNAL \G16|Add0~61_sumout\ : std_logic;
SIGNAL \G18|SAIDA[15]~31_combout\ : std_logic;
SIGNAL \G7|Reg[0][15]~31_combout\ : std_logic;
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ : std_logic;
SIGNAL \G16|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[15]~31_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[14]~30_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[13]~29_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[12]~28_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[11]~27_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[10]~26_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[9]~25_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[8]~24_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[7]~23_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[6]~22_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[5]~21_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[4]~20_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[3]~19_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[2]~18_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[1]~17_combout\ : std_logic;
SIGNAL \G18|ALT_INV_SAIDA[0]~16_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rs[2]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Clock_Sistema~input_o\ : std_logic;

BEGIN

ww_Clock_Sistema <= Clock_Sistema;
SomadorToPc_outWaveform <= ww_SomadorToPc_outWaveform;
SaidaPc_outWaveform <= ww_SaidaPc_outWaveform;
SaidaRegA_outWaveform <= ww_SaidaRegA_outWaveform;
SaidaRegB_outWaveform <= ww_SaidaRegB_outWaveform;
multiplexador_to_writeRegister_outWaveform <= ww_multiplexador_to_writeRegister_outWaveform;
Instruction_to_multiplexador_outWaveform <= ww_Instruction_to_multiplexador_outWaveform;
Instruction_to_Control_outWaveform <= ww_Instruction_to_Control_outWaveform;
Instruction_to_register1_outWaveform <= ww_Instruction_to_register1_outWaveform;
Instruction_to_register2_outWaveform <= ww_Instruction_to_register2_outWaveform;
Instruction_to_controlULA_outWaveform <= ww_Instruction_to_controlULA_outWaveform;
Instruction_to_extensorDeSinal_outWaveform <= ww_Instruction_to_extensorDeSinal_outWaveform;
Instruction_to_Jump_outWaveform <= ww_Instruction_to_Jump_outWaveform;
out_Saida_OperacaoDaULA <= ww_out_Saida_OperacaoDaULA;
Data_to_writeRegister_outWaveform <= ww_Data_to_writeRegister_outWaveform;
Saida_mult_to_mult_outWaveform <= ww_Saida_mult_to_mult_outWaveform;
Saida_to_PC_outWaveform <= ww_Saida_to_PC_outWaveform;
Saida_adress_to_RAM_outWaveform <= ww_Saida_adress_to_RAM_outWaveform;
Flag_regdest_OUT <= ww_Flag_regdest_OUT;
Flag_origialu_OUT <= ww_Flag_origialu_OUT;
Flag_memparareg_OUT <= ww_Flag_memparareg_OUT;
Flag_escrevereg_OUT <= ww_Flag_escrevereg_OUT;
Flag_lemem_OUT <= ww_Flag_lemem_OUT;
Flag_escrevemem_OUT <= ww_Flag_escrevemem_OUT;
Flag_branch_OUT <= ww_Flag_branch_OUT;
Flag_aluSRC_OUT <= ww_Flag_aluSRC_OUT;
Flag_jump_OUT <= ww_Flag_jump_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\G16|Add0~37_sumout\ & \G16|Add0~33_sumout\ & \G16|Add0~29_sumout\ & \G16|Add0~25_sumout\ & \G16|Add0~21_sumout\ & \G16|Add0~17_sumout\ & \G16|Add0~13_sumout\ & \G16|Add0~9_sumout\ & 
\G16|Add0~5_sumout\ & \G16|Add0~1_sumout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a15~portadataout\ <= \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);
\G16|ALT_INV_Add0~61_sumout\ <= NOT \G16|Add0~61_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a15~portadataout\;
\G16|ALT_INV_Add0~57_sumout\ <= NOT \G16|Add0~57_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a14~portadataout\;
\G16|ALT_INV_Add0~53_sumout\ <= NOT \G16|Add0~53_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a13~portadataout\;
\G16|ALT_INV_Add0~49_sumout\ <= NOT \G16|Add0~49_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a12~portadataout\;
\G16|ALT_INV_Add0~45_sumout\ <= NOT \G16|Add0~45_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a11~portadataout\;
\G16|ALT_INV_Add0~41_sumout\ <= NOT \G16|Add0~41_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a10~portadataout\;
\G16|ALT_INV_Add0~37_sumout\ <= NOT \G16|Add0~37_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a9~portadataout\;
\G16|ALT_INV_Add0~33_sumout\ <= NOT \G16|Add0~33_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a8~portadataout\;
\G16|ALT_INV_Add0~29_sumout\ <= NOT \G16|Add0~29_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a7~portadataout\;
\G16|ALT_INV_Add0~25_sumout\ <= NOT \G16|Add0~25_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a6~portadataout\;
\G16|ALT_INV_Add0~21_sumout\ <= NOT \G16|Add0~21_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a5~portadataout\;
\G16|ALT_INV_Add0~17_sumout\ <= NOT \G16|Add0~17_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a4~portadataout\;
\G16|ALT_INV_Add0~13_sumout\ <= NOT \G16|Add0~13_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a3~portadataout\;
\G16|ALT_INV_Add0~9_sumout\ <= NOT \G16|Add0~9_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a2~portadataout\;
\G16|ALT_INV_Add0~5_sumout\ <= NOT \G16|Add0~5_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a1~portadataout\;
\G16|ALT_INV_Add0~1_sumout\ <= NOT \G16|Add0~1_sumout\;
\G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \G17|RAM_rtl_0|auto_generated|ram_block1a0~portadataout\;
\G18|ALT_INV_SAIDA[15]~31_combout\ <= NOT \G18|SAIDA[15]~31_combout\;
\G18|ALT_INV_SAIDA[14]~30_combout\ <= NOT \G18|SAIDA[14]~30_combout\;
\G18|ALT_INV_SAIDA[13]~29_combout\ <= NOT \G18|SAIDA[13]~29_combout\;
\G18|ALT_INV_SAIDA[12]~28_combout\ <= NOT \G18|SAIDA[12]~28_combout\;
\G18|ALT_INV_SAIDA[11]~27_combout\ <= NOT \G18|SAIDA[11]~27_combout\;
\G18|ALT_INV_SAIDA[10]~26_combout\ <= NOT \G18|SAIDA[10]~26_combout\;
\G18|ALT_INV_SAIDA[9]~25_combout\ <= NOT \G18|SAIDA[9]~25_combout\;
\G18|ALT_INV_SAIDA[8]~24_combout\ <= NOT \G18|SAIDA[8]~24_combout\;
\G18|ALT_INV_SAIDA[7]~23_combout\ <= NOT \G18|SAIDA[7]~23_combout\;
\G18|ALT_INV_SAIDA[6]~22_combout\ <= NOT \G18|SAIDA[6]~22_combout\;
\G18|ALT_INV_SAIDA[5]~21_combout\ <= NOT \G18|SAIDA[5]~21_combout\;
\G18|ALT_INV_SAIDA[4]~20_combout\ <= NOT \G18|SAIDA[4]~20_combout\;
\G18|ALT_INV_SAIDA[3]~19_combout\ <= NOT \G18|SAIDA[3]~19_combout\;
\G18|ALT_INV_SAIDA[2]~18_combout\ <= NOT \G18|SAIDA[2]~18_combout\;
\G18|ALT_INV_SAIDA[1]~17_combout\ <= NOT \G18|SAIDA[1]~17_combout\;
\G18|ALT_INV_SAIDA[0]~16_combout\ <= NOT \G18|SAIDA[0]~16_combout\;
\G4|ALT_INV_rs[2]~0_combout\ <= NOT \G4|rs[2]~0_combout\;
\G4|ALT_INV_Mux0~3_combout\ <= NOT \G4|Mux0~3_combout\;
\G4|ALT_INV_Mux0~2_combout\ <= NOT \G4|Mux0~2_combout\;
\G4|ALT_INV_Mux0~1_combout\ <= NOT \G4|Mux0~1_combout\;
\G4|ALT_INV_Mux0~0_combout\ <= NOT \G4|Mux0~0_combout\;
\G1|ALT_INV_pout\(15) <= NOT \G1|pout\(15);
\G1|ALT_INV_pout\(14) <= NOT \G1|pout\(14);
\G1|ALT_INV_pout\(13) <= NOT \G1|pout\(13);
\G1|ALT_INV_pout\(12) <= NOT \G1|pout\(12);
\G1|ALT_INV_pout\(11) <= NOT \G1|pout\(11);
\G1|ALT_INV_pout\(10) <= NOT \G1|pout\(10);
\G1|ALT_INV_pout\(9) <= NOT \G1|pout\(9);
\G1|ALT_INV_pout\(8) <= NOT \G1|pout\(8);
\G1|ALT_INV_pout\(7) <= NOT \G1|pout\(7);
\G1|ALT_INV_pout\(6) <= NOT \G1|pout\(6);
\G1|ALT_INV_pout\(5) <= NOT \G1|pout\(5);
\G1|ALT_INV_pout\(4) <= NOT \G1|pout\(4);
\G1|ALT_INV_pout\(3) <= NOT \G1|pout\(3);
\G1|ALT_INV_pout\(2) <= NOT \G1|pout\(2);
\G1|ALT_INV_pout\(1) <= NOT \G1|pout\(1);
\G1|ALT_INV_pout\(0) <= NOT \G1|pout\(0);
\ALT_INV_Clock_Sistema~input_o\ <= NOT \Clock_Sistema~input_o\;

\SomadorToPc_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(0),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[0]~output_o\);

\SomadorToPc_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(1),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[1]~output_o\);

\SomadorToPc_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(2),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[2]~output_o\);

\SomadorToPc_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(3),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[3]~output_o\);

\SomadorToPc_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(4),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[4]~output_o\);

\SomadorToPc_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(5),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[5]~output_o\);

\SomadorToPc_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(6),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[6]~output_o\);

\SomadorToPc_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(7),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[7]~output_o\);

\SomadorToPc_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(8),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[8]~output_o\);

\SomadorToPc_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(9),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[9]~output_o\);

\SomadorToPc_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(10),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[10]~output_o\);

\SomadorToPc_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(11),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[11]~output_o\);

\SomadorToPc_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(12),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[12]~output_o\);

\SomadorToPc_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(13),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[13]~output_o\);

\SomadorToPc_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(14),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[14]~output_o\);

\SomadorToPc_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(15),
	devoe => ww_devoe,
	o => \SomadorToPc_outWaveform[15]~output_o\);

\SaidaPc_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(0),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[0]~output_o\);

\SaidaPc_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(1),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[1]~output_o\);

\SaidaPc_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(2),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[2]~output_o\);

\SaidaPc_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(3),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[3]~output_o\);

\SaidaPc_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(4),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[4]~output_o\);

\SaidaPc_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(5),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[5]~output_o\);

\SaidaPc_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(6),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[6]~output_o\);

\SaidaPc_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(7),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[7]~output_o\);

\SaidaPc_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(8),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[8]~output_o\);

\SaidaPc_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(9),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[9]~output_o\);

\SaidaPc_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(10),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[10]~output_o\);

\SaidaPc_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(11),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[11]~output_o\);

\SaidaPc_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(12),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[12]~output_o\);

\SaidaPc_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(13),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[13]~output_o\);

\SaidaPc_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(14),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[14]~output_o\);

\SaidaPc_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|pout\(15),
	devoe => ww_devoe,
	o => \SaidaPc_outWaveform[15]~output_o\);

\SaidaRegA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][0]~16_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[0]~output_o\);

\SaidaRegA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][1]~17_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[1]~output_o\);

\SaidaRegA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][2]~18_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[2]~output_o\);

\SaidaRegA_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][3]~19_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[3]~output_o\);

\SaidaRegA_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][4]~20_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[4]~output_o\);

\SaidaRegA_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][5]~21_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[5]~output_o\);

\SaidaRegA_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][6]~22_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[6]~output_o\);

\SaidaRegA_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][7]~23_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[7]~output_o\);

\SaidaRegA_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][8]~24_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[8]~output_o\);

\SaidaRegA_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][9]~25_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[9]~output_o\);

\SaidaRegA_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][10]~26_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[10]~output_o\);

\SaidaRegA_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][11]~27_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[11]~output_o\);

\SaidaRegA_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][12]~28_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[12]~output_o\);

\SaidaRegA_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][13]~29_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[13]~output_o\);

\SaidaRegA_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][14]~30_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[14]~output_o\);

\SaidaRegA_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][15]~31_combout\,
	devoe => ww_devoe,
	o => \SaidaRegA_outWaveform[15]~output_o\);

\SaidaRegB_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][0]~16_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[0]~output_o\);

\SaidaRegB_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][1]~17_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[1]~output_o\);

\SaidaRegB_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][2]~18_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[2]~output_o\);

\SaidaRegB_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][3]~19_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[3]~output_o\);

\SaidaRegB_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][4]~20_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[4]~output_o\);

\SaidaRegB_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][5]~21_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[5]~output_o\);

\SaidaRegB_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][6]~22_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[6]~output_o\);

\SaidaRegB_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][7]~23_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[7]~output_o\);

\SaidaRegB_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][8]~24_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[8]~output_o\);

\SaidaRegB_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][9]~25_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[9]~output_o\);

\SaidaRegB_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][10]~26_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[10]~output_o\);

\SaidaRegB_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][11]~27_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[11]~output_o\);

\SaidaRegB_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][12]~28_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[12]~output_o\);

\SaidaRegB_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][13]~29_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[13]~output_o\);

\SaidaRegB_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][14]~30_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[14]~output_o\);

\SaidaRegB_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|Reg[0][15]~31_combout\,
	devoe => ww_devoe,
	o => \SaidaRegB_outWaveform[15]~output_o\);

\multiplexador_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \multiplexador_to_writeRegister_outWaveform[0]~output_o\);

\multiplexador_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \multiplexador_to_writeRegister_outWaveform[1]~output_o\);

\multiplexador_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \multiplexador_to_writeRegister_outWaveform[2]~output_o\);

\Instruction_to_multiplexador_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_multiplexador_outWaveform[0]~output_o\);

\Instruction_to_multiplexador_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_multiplexador_outWaveform[1]~output_o\);

\Instruction_to_multiplexador_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_multiplexador_outWaveform[2]~output_o\);

\Instruction_to_Control_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[0]~output_o\);

\Instruction_to_Control_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[1]~output_o\);

\Instruction_to_Control_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[2]~output_o\);

\Instruction_to_Control_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Control_outWaveform[3]~output_o\);

\Instruction_to_register1_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register1_outWaveform[0]~output_o\);

\Instruction_to_register1_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register1_outWaveform[1]~output_o\);

\Instruction_to_register1_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register1_outWaveform[2]~output_o\);

\Instruction_to_register2_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register2_outWaveform[0]~output_o\);

\Instruction_to_register2_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register2_outWaveform[1]~output_o\);

\Instruction_to_register2_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_register2_outWaveform[2]~output_o\);

\Instruction_to_controlULA_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA_outWaveform[0]~output_o\);

\Instruction_to_controlULA_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA_outWaveform[1]~output_o\);

\Instruction_to_controlULA_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_controlULA_outWaveform[2]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~0_combout\,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[0]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[1]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[2]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[3]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[4]~output_o\);

\Instruction_to_extensorDeSinal_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_extensorDeSinal_outWaveform[5]~output_o\);

\Instruction_to_Jump_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[0]~output_o\);

\Instruction_to_Jump_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[1]~output_o\);

\Instruction_to_Jump_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[2]~output_o\);

\Instruction_to_Jump_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[3]~output_o\);

\Instruction_to_Jump_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[4]~output_o\);

\Instruction_to_Jump_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[5]~output_o\);

\Instruction_to_Jump_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[6]~output_o\);

\Instruction_to_Jump_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[7]~output_o\);

\Instruction_to_Jump_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[8]~output_o\);

\Instruction_to_Jump_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[9]~output_o\);

\Instruction_to_Jump_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[10]~output_o\);

\Instruction_to_Jump_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Instruction_to_Jump_outWaveform[11]~output_o\);

\out_Saida_OperacaoDaULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[0]~output_o\);

\out_Saida_OperacaoDaULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[1]~output_o\);

\out_Saida_OperacaoDaULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[2]~output_o\);

\out_Saida_OperacaoDaULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~0_combout\,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[3]~output_o\);

\out_Saida_OperacaoDaULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[4]~output_o\);

\out_Saida_OperacaoDaULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[5]~output_o\);

\out_Saida_OperacaoDaULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_Saida_OperacaoDaULA[6]~output_o\);

\Data_to_writeRegister_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[0]~16_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[0]~output_o\);

\Data_to_writeRegister_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[1]~17_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[1]~output_o\);

\Data_to_writeRegister_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[2]~18_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[2]~output_o\);

\Data_to_writeRegister_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[3]~19_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[3]~output_o\);

\Data_to_writeRegister_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[4]~20_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[4]~output_o\);

\Data_to_writeRegister_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[5]~21_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[5]~output_o\);

\Data_to_writeRegister_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[6]~22_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[6]~output_o\);

\Data_to_writeRegister_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[7]~23_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[7]~output_o\);

\Data_to_writeRegister_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[8]~24_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[8]~output_o\);

\Data_to_writeRegister_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[9]~25_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[9]~output_o\);

\Data_to_writeRegister_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[10]~26_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[10]~output_o\);

\Data_to_writeRegister_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[11]~27_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[11]~output_o\);

\Data_to_writeRegister_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[12]~28_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[12]~output_o\);

\Data_to_writeRegister_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[13]~29_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[13]~output_o\);

\Data_to_writeRegister_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[14]~30_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[14]~output_o\);

\Data_to_writeRegister_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G18|SAIDA[15]~31_combout\,
	devoe => ww_devoe,
	o => \Data_to_writeRegister_outWaveform[15]~output_o\);

\Saida_mult_to_mult_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(0),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[0]~output_o\);

\Saida_mult_to_mult_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(1),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[1]~output_o\);

\Saida_mult_to_mult_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(2),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[2]~output_o\);

\Saida_mult_to_mult_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(3),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[3]~output_o\);

\Saida_mult_to_mult_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(4),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[4]~output_o\);

\Saida_mult_to_mult_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(5),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[5]~output_o\);

\Saida_mult_to_mult_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(6),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[6]~output_o\);

\Saida_mult_to_mult_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(7),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[7]~output_o\);

\Saida_mult_to_mult_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(8),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[8]~output_o\);

\Saida_mult_to_mult_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(9),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[9]~output_o\);

\Saida_mult_to_mult_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(10),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[10]~output_o\);

\Saida_mult_to_mult_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(11),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[11]~output_o\);

\Saida_mult_to_mult_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(12),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[12]~output_o\);

\Saida_mult_to_mult_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(13),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[13]~output_o\);

\Saida_mult_to_mult_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(14),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[14]~output_o\);

\Saida_mult_to_mult_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(15),
	devoe => ww_devoe,
	o => \Saida_mult_to_mult_outWaveform[15]~output_o\);

\Saida_to_PC_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(0),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[0]~output_o\);

\Saida_to_PC_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(1),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[1]~output_o\);

\Saida_to_PC_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(2),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[2]~output_o\);

\Saida_to_PC_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(3),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[3]~output_o\);

\Saida_to_PC_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(4),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[4]~output_o\);

\Saida_to_PC_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(5),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[5]~output_o\);

\Saida_to_PC_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(6),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[6]~output_o\);

\Saida_to_PC_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(7),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[7]~output_o\);

\Saida_to_PC_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(8),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[8]~output_o\);

\Saida_to_PC_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(9),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[9]~output_o\);

\Saida_to_PC_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(10),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[10]~output_o\);

\Saida_to_PC_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(11),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[11]~output_o\);

\Saida_to_PC_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(12),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[12]~output_o\);

\Saida_to_PC_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(13),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[13]~output_o\);

\Saida_to_PC_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(14),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[14]~output_o\);

\Saida_to_PC_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|saida\(15),
	devoe => ww_devoe,
	o => \Saida_to_PC_outWaveform[15]~output_o\);

\Saida_adress_to_RAM_outWaveform[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[0]~output_o\);

\Saida_adress_to_RAM_outWaveform[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[1]~output_o\);

\Saida_adress_to_RAM_outWaveform[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[2]~output_o\);

\Saida_adress_to_RAM_outWaveform[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[3]~output_o\);

\Saida_adress_to_RAM_outWaveform[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[4]~output_o\);

\Saida_adress_to_RAM_outWaveform[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[5]~output_o\);

\Saida_adress_to_RAM_outWaveform[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[6]~output_o\);

\Saida_adress_to_RAM_outWaveform[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[7]~output_o\);

\Saida_adress_to_RAM_outWaveform[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[8]~output_o\);

\Saida_adress_to_RAM_outWaveform[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[9]~output_o\);

\Saida_adress_to_RAM_outWaveform[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[10]~output_o\);

\Saida_adress_to_RAM_outWaveform[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[11]~output_o\);

\Saida_adress_to_RAM_outWaveform[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[12]~output_o\);

\Saida_adress_to_RAM_outWaveform[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[13]~output_o\);

\Saida_adress_to_RAM_outWaveform[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[14]~output_o\);

\Saida_adress_to_RAM_outWaveform[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G16|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \Saida_adress_to_RAM_outWaveform[15]~output_o\);

\Flag_regdest_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[2]~0_combout\,
	devoe => ww_devoe,
	o => \Flag_regdest_OUT~output_o\);

\Flag_origialu_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~0_combout\,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[0]~output_o\);

\Flag_origialu_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[1]~output_o\);

\Flag_origialu_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[2]~output_o\);

\Flag_origialu_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_origialu_OUT[3]~output_o\);

\Flag_memparareg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_rs[2]~0_combout\,
	devoe => ww_devoe,
	o => \Flag_memparareg_OUT~output_o\);

\Flag_escrevereg_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Flag_escrevereg_OUT~output_o\);

\Flag_lemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~0_combout\,
	devoe => ww_devoe,
	o => \Flag_lemem_OUT~output_o\);

\Flag_escrevemem_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_escrevemem_OUT~output_o\);

\Flag_branch_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_branch_OUT~output_o\);

\Flag_aluSRC_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|rs[2]~0_combout\,
	devoe => ww_devoe,
	o => \Flag_aluSRC_OUT~output_o\);

\Flag_jump_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_jump_OUT~output_o\);

\Clock_Sistema~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_Sistema,
	o => \Clock_Sistema~input_o\);

\G1|pout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(0));

\G2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|saida[0]~0_combout\ = !\G1|pout\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	combout => \G2|saida[0]~0_combout\);

\G2|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(0));

\G1|pout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(1));

\G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~1_sumout\ = SUM(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))
-- \G2|Add0~2\ = CARRY(( \G1|pout\(1) ) + ( \G1|pout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(1),
	dataf => \G1|ALT_INV_pout\(0),
	cin => GND,
	sumout => \G2|Add0~1_sumout\,
	cout => \G2|Add0~2\);

\G2|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(1));

\G1|pout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(2));

\G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~5_sumout\ = SUM(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))
-- \G2|Add0~6\ = CARRY(( \G1|pout\(2) ) + ( GND ) + ( \G2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(2),
	cin => \G2|Add0~2\,
	sumout => \G2|Add0~5_sumout\,
	cout => \G2|Add0~6\);

\G2|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(2));

\G1|pout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(3));

\G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~9_sumout\ = SUM(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))
-- \G2|Add0~10\ = CARRY(( \G1|pout\(3) ) + ( GND ) + ( \G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(3),
	cin => \G2|Add0~6\,
	sumout => \G2|Add0~9_sumout\,
	cout => \G2|Add0~10\);

\G2|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(3));

\G1|pout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(4));

\G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~13_sumout\ = SUM(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))
-- \G2|Add0~14\ = CARRY(( \G1|pout\(4) ) + ( GND ) + ( \G2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(4),
	cin => \G2|Add0~10\,
	sumout => \G2|Add0~13_sumout\,
	cout => \G2|Add0~14\);

\G2|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(4));

\G1|pout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(5));

\G2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~17_sumout\ = SUM(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))
-- \G2|Add0~18\ = CARRY(( \G1|pout\(5) ) + ( GND ) + ( \G2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(5),
	cin => \G2|Add0~14\,
	sumout => \G2|Add0~17_sumout\,
	cout => \G2|Add0~18\);

\G2|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(5));

\G1|pout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(6));

\G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~21_sumout\ = SUM(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))
-- \G2|Add0~22\ = CARRY(( \G1|pout\(6) ) + ( GND ) + ( \G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(6),
	cin => \G2|Add0~18\,
	sumout => \G2|Add0~21_sumout\,
	cout => \G2|Add0~22\);

\G2|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(6));

\G1|pout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(7));

\G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~25_sumout\ = SUM(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))
-- \G2|Add0~26\ = CARRY(( \G1|pout\(7) ) + ( GND ) + ( \G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(7),
	cin => \G2|Add0~22\,
	sumout => \G2|Add0~25_sumout\,
	cout => \G2|Add0~26\);

\G2|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(7));

\G1|pout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(8));

\G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~29_sumout\ = SUM(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))
-- \G2|Add0~30\ = CARRY(( \G1|pout\(8) ) + ( GND ) + ( \G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(8),
	cin => \G2|Add0~26\,
	sumout => \G2|Add0~29_sumout\,
	cout => \G2|Add0~30\);

\G2|saida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(8));

\G1|pout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(9));

\G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~33_sumout\ = SUM(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))
-- \G2|Add0~34\ = CARRY(( \G1|pout\(9) ) + ( GND ) + ( \G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(9),
	cin => \G2|Add0~30\,
	sumout => \G2|Add0~33_sumout\,
	cout => \G2|Add0~34\);

\G2|saida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(9));

\G1|pout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(10));

\G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~37_sumout\ = SUM(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))
-- \G2|Add0~38\ = CARRY(( \G1|pout\(10) ) + ( GND ) + ( \G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(10),
	cin => \G2|Add0~34\,
	sumout => \G2|Add0~37_sumout\,
	cout => \G2|Add0~38\);

\G2|saida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(10));

\G1|pout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(11));

\G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~41_sumout\ = SUM(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))
-- \G2|Add0~42\ = CARRY(( \G1|pout\(11) ) + ( GND ) + ( \G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(11),
	cin => \G2|Add0~38\,
	sumout => \G2|Add0~41_sumout\,
	cout => \G2|Add0~42\);

\G2|saida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(11));

\G1|pout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(12));

\G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~45_sumout\ = SUM(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))
-- \G2|Add0~46\ = CARRY(( \G1|pout\(12) ) + ( GND ) + ( \G2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(12),
	cin => \G2|Add0~42\,
	sumout => \G2|Add0~45_sumout\,
	cout => \G2|Add0~46\);

\G2|saida[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(12));

\G1|pout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(13));

\G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~49_sumout\ = SUM(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))
-- \G2|Add0~50\ = CARRY(( \G1|pout\(13) ) + ( GND ) + ( \G2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(13),
	cin => \G2|Add0~46\,
	sumout => \G2|Add0~49_sumout\,
	cout => \G2|Add0~50\);

\G2|saida[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(13));

\G1|pout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(14));

\G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~53_sumout\ = SUM(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))
-- \G2|Add0~54\ = CARRY(( \G1|pout\(14) ) + ( GND ) + ( \G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(14),
	cin => \G2|Add0~50\,
	sumout => \G2|Add0~53_sumout\,
	cout => \G2|Add0~54\);

\G2|saida[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(14));

\G1|pout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|saida\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|pout\(15));

\G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Add0~57_sumout\ = SUM(( \G1|pout\(15) ) + ( GND ) + ( \G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|ALT_INV_pout\(15),
	cin => \G2|Add0~54\,
	sumout => \G2|Add0~57_sumout\);

\G2|saida[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Sistema~input_o\,
	d => \G2|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|saida\(15));

\G4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~0_combout\ = (!\G1|pout\(12) & (!\G1|pout\(13) & (!\G1|pout\(14) & !\G1|pout\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(12),
	datab => \G1|ALT_INV_pout\(13),
	datac => \G1|ALT_INV_pout\(14),
	datad => \G1|ALT_INV_pout\(15),
	combout => \G4|Mux0~0_combout\);

\G4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~1_combout\ = ( !\G1|pout\(4) & ( (!\G1|pout\(0) & (!\G1|pout\(1) & (!\G1|pout\(2) & !\G1|pout\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(0),
	datab => \G1|ALT_INV_pout\(1),
	datac => \G1|ALT_INV_pout\(2),
	datad => \G1|ALT_INV_pout\(3),
	datae => \G1|ALT_INV_pout\(4),
	combout => \G4|Mux0~1_combout\);

\G4|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~2_combout\ = ( !\G1|pout\(10) & ( (!\G1|pout\(6) & (!\G1|pout\(7) & (!\G1|pout\(8) & !\G1|pout\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(6),
	datab => \G1|ALT_INV_pout\(7),
	datac => \G1|ALT_INV_pout\(8),
	datad => \G1|ALT_INV_pout\(9),
	datae => \G1|ALT_INV_pout\(10),
	combout => \G4|Mux0~2_combout\);

\G4|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Mux0~3_combout\ = ( \G4|Mux0~2_combout\ & ( (!\G1|pout\(5) & (!\G1|pout\(11) & (\G4|Mux0~0_combout\ & \G4|Mux0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(5),
	datab => \G1|ALT_INV_pout\(11),
	datac => \G4|ALT_INV_Mux0~0_combout\,
	datad => \G4|ALT_INV_Mux0~1_combout\,
	datae => \G4|ALT_INV_Mux0~2_combout\,
	combout => \G4|Mux0~3_combout\);

\G4|rs[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rs[2]~0_combout\ = (\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G4|rs[2]~0_combout\);

\G16|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~1_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((\G4|Mux0~3_combout\) # (\G18|SAIDA[0]~16_combout\)) ) + ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA[0]~16_combout\) ) + ( !VCC ))
-- \G16|Add0~2\ = CARRY(( (!\Clock_Sistema~input_o\) # ((\G4|Mux0~3_combout\) # (\G18|SAIDA[0]~16_combout\)) ) + ( (!\Clock_Sistema~input_o\) # (\G18|SAIDA[0]~16_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[0]~16_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => GND,
	sumout => \G16|Add0~1_sumout\,
	cout => \G16|Add0~2\);

\G17|RAM_rtl_0|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

\G18|SAIDA[9]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[9]~25_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~37_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a9~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\,
	datac => \G16|ALT_INV_Add0~37_sumout\,
	combout => \G18|SAIDA[9]~25_combout\);

\G16|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~5_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[1]~17_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[1]~17_combout\) ) + ( \G16|Add0~2\ ))
-- \G16|Add0~6\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[1]~17_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[1]~17_combout\) ) + ( \G16|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[1]~17_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~2\,
	sumout => \G16|Add0~5_sumout\,
	cout => \G16|Add0~6\);

\G16|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~9_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[2]~18_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[2]~18_combout\) ) + ( \G16|Add0~6\ ))
-- \G16|Add0~10\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[2]~18_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[2]~18_combout\) ) + ( \G16|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[2]~18_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~6\,
	sumout => \G16|Add0~9_sumout\,
	cout => \G16|Add0~10\);

\G16|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~13_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[3]~19_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[3]~19_combout\) ) + ( \G16|Add0~10\ ))
-- \G16|Add0~14\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[3]~19_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[3]~19_combout\) ) + ( \G16|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[3]~19_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~10\,
	sumout => \G16|Add0~13_sumout\,
	cout => \G16|Add0~14\);

\G16|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~17_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[4]~20_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[4]~20_combout\) ) + ( \G16|Add0~14\ ))
-- \G16|Add0~18\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[4]~20_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[4]~20_combout\) ) + ( \G16|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[4]~20_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~14\,
	sumout => \G16|Add0~17_sumout\,
	cout => \G16|Add0~18\);

\G16|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~21_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[5]~21_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[5]~21_combout\) ) + ( \G16|Add0~18\ ))
-- \G16|Add0~22\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[5]~21_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[5]~21_combout\) ) + ( \G16|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[5]~21_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~18\,
	sumout => \G16|Add0~21_sumout\,
	cout => \G16|Add0~22\);

\G16|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~25_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[6]~22_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[6]~22_combout\) ) + ( \G16|Add0~22\ ))
-- \G16|Add0~26\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[6]~22_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[6]~22_combout\) ) + ( \G16|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[6]~22_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~22\,
	sumout => \G16|Add0~25_sumout\,
	cout => \G16|Add0~26\);

\G16|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~29_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[7]~23_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[7]~23_combout\) ) + ( \G16|Add0~26\ ))
-- \G16|Add0~30\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[7]~23_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[7]~23_combout\) ) + ( \G16|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[7]~23_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~26\,
	sumout => \G16|Add0~29_sumout\,
	cout => \G16|Add0~30\);

\G16|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~33_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[8]~24_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[8]~24_combout\) ) + ( \G16|Add0~30\ ))
-- \G16|Add0~34\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[8]~24_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[8]~24_combout\) ) + ( \G16|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[8]~24_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~30\,
	sumout => \G16|Add0~33_sumout\,
	cout => \G16|Add0~34\);

\G16|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~37_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[9]~25_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[9]~25_combout\) ) + ( \G16|Add0~34\ ))
-- \G16|Add0~38\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[9]~25_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[9]~25_combout\) ) + ( \G16|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[9]~25_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~34\,
	sumout => \G16|Add0~37_sumout\,
	cout => \G16|Add0~38\);

\G17|RAM_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\G18|SAIDA[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[8]~24_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~33_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a8~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	datac => \G16|ALT_INV_Add0~33_sumout\,
	combout => \G18|SAIDA[8]~24_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\G18|SAIDA[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[7]~23_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~29_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\,
	datac => \G16|ALT_INV_Add0~29_sumout\,
	combout => \G18|SAIDA[7]~23_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\G18|SAIDA[6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[6]~22_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~25_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a6~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	datac => \G16|ALT_INV_Add0~25_sumout\,
	combout => \G18|SAIDA[6]~22_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\G18|SAIDA[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[5]~21_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~21_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a5~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datac => \G16|ALT_INV_Add0~21_sumout\,
	combout => \G18|SAIDA[5]~21_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\G18|SAIDA[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[4]~20_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~17_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a4~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datac => \G16|ALT_INV_Add0~17_sumout\,
	combout => \G18|SAIDA[4]~20_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\G18|SAIDA[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[3]~19_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~13_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a3~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datac => \G16|ALT_INV_Add0~13_sumout\,
	combout => \G18|SAIDA[3]~19_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\G18|SAIDA[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[2]~18_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~9_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a2~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datac => \G16|ALT_INV_Add0~9_sumout\,
	combout => \G18|SAIDA[2]~18_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\G18|SAIDA[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[1]~17_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~5_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a1~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datac => \G16|ALT_INV_Add0~5_sumout\,
	combout => \G18|SAIDA[1]~17_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\G18|SAIDA[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[0]~16_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~1_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datac => \G16|ALT_INV_Add0~1_sumout\,
	combout => \G18|SAIDA[0]~16_combout\);

\G7|Reg[0][0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][0]~16_combout\ = (!\Clock_Sistema~input_o\) # (\G18|SAIDA[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[0]~16_combout\,
	combout => \G7|Reg[0][0]~16_combout\);

\G7|Reg[0][1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][1]~17_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[1]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[1]~17_combout\,
	combout => \G7|Reg[0][1]~17_combout\);

\G7|Reg[0][2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][2]~18_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[2]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[2]~18_combout\,
	combout => \G7|Reg[0][2]~18_combout\);

\G7|Reg[0][3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][3]~19_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[3]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[3]~19_combout\,
	combout => \G7|Reg[0][3]~19_combout\);

\G7|Reg[0][4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][4]~20_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[4]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[4]~20_combout\,
	combout => \G7|Reg[0][4]~20_combout\);

\G7|Reg[0][5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][5]~21_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[5]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[5]~21_combout\,
	combout => \G7|Reg[0][5]~21_combout\);

\G7|Reg[0][6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][6]~22_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[6]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[6]~22_combout\,
	combout => \G7|Reg[0][6]~22_combout\);

\G7|Reg[0][7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][7]~23_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[7]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[7]~23_combout\,
	combout => \G7|Reg[0][7]~23_combout\);

\G7|Reg[0][8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][8]~24_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[8]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[8]~24_combout\,
	combout => \G7|Reg[0][8]~24_combout\);

\G7|Reg[0][9]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][9]~25_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[9]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[9]~25_combout\,
	combout => \G7|Reg[0][9]~25_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\G16|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~41_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[10]~26_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[10]~26_combout\) ) + ( \G16|Add0~38\ ))
-- \G16|Add0~42\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[10]~26_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[10]~26_combout\) ) + ( \G16|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[10]~26_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~38\,
	sumout => \G16|Add0~41_sumout\,
	cout => \G16|Add0~42\);

\G18|SAIDA[10]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[10]~26_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~41_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a10~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\,
	datac => \G16|ALT_INV_Add0~41_sumout\,
	combout => \G18|SAIDA[10]~26_combout\);

\G7|Reg[0][10]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][10]~26_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[10]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[10]~26_combout\,
	combout => \G7|Reg[0][10]~26_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

\G16|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~45_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[11]~27_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[11]~27_combout\) ) + ( \G16|Add0~42\ ))
-- \G16|Add0~46\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[11]~27_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[11]~27_combout\) ) + ( \G16|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[11]~27_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~42\,
	sumout => \G16|Add0~45_sumout\,
	cout => \G16|Add0~46\);

\G18|SAIDA[11]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[11]~27_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~45_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a11~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\,
	datac => \G16|ALT_INV_Add0~45_sumout\,
	combout => \G18|SAIDA[11]~27_combout\);

\G7|Reg[0][11]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][11]~27_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[11]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[11]~27_combout\,
	combout => \G7|Reg[0][11]~27_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\G16|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~49_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[12]~28_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[12]~28_combout\) ) + ( \G16|Add0~46\ ))
-- \G16|Add0~50\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[12]~28_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[12]~28_combout\) ) + ( \G16|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[12]~28_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~46\,
	sumout => \G16|Add0~49_sumout\,
	cout => \G16|Add0~50\);

\G18|SAIDA[12]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[12]~28_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~49_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a12~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\,
	datac => \G16|ALT_INV_Add0~49_sumout\,
	combout => \G18|SAIDA[12]~28_combout\);

\G7|Reg[0][12]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][12]~28_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[12]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[12]~28_combout\,
	combout => \G7|Reg[0][12]~28_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

\G16|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~53_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[13]~29_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[13]~29_combout\) ) + ( \G16|Add0~50\ ))
-- \G16|Add0~54\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[13]~29_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[13]~29_combout\) ) + ( \G16|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[13]~29_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~50\,
	sumout => \G16|Add0~53_sumout\,
	cout => \G16|Add0~54\);

\G18|SAIDA[13]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[13]~29_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~53_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a13~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portadataout\,
	datac => \G16|ALT_INV_Add0~53_sumout\,
	combout => \G18|SAIDA[13]~29_combout\);

\G7|Reg[0][13]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][13]~29_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[13]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[13]~29_combout\,
	combout => \G7|Reg[0][13]~29_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\G16|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~57_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[14]~30_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[14]~30_combout\) ) + ( \G16|Add0~54\ ))
-- \G16|Add0~58\ = CARRY(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[14]~30_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[14]~30_combout\) ) + ( \G16|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[14]~30_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~54\,
	sumout => \G16|Add0~57_sumout\,
	cout => \G16|Add0~58\);

\G18|SAIDA[14]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[14]~30_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~57_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a14~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\,
	datac => \G16|ALT_INV_Add0~57_sumout\,
	combout => \G18|SAIDA[14]~30_combout\);

\G7|Reg[0][14]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][14]~30_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[14]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[14]~30_combout\,
	combout => \G7|Reg[0][14]~30_combout\);

\G17|RAM_rtl_0|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processador_v1_uniciclo.ram0_memram_e416e912.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memram:G17|altsyncram:RAM_rtl_0|altsyncram_jne1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 1000,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \Clock_Sistema~input_o\,
	portaaddr => \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G17|RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

\G16|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add0~61_sumout\ = SUM(( (\Clock_Sistema~input_o\ & (\G18|SAIDA[15]~31_combout\ & !\G4|Mux0~3_combout\)) ) + ( (\Clock_Sistema~input_o\ & \G18|SAIDA[15]~31_combout\) ) + ( \G16|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G18|ALT_INV_SAIDA[15]~31_combout\,
	datad => \G4|ALT_INV_Mux0~3_combout\,
	cin => \G16|Add0~58\,
	sumout => \G16|Add0~61_sumout\);

\G18|SAIDA[15]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G18|SAIDA[15]~31_combout\ = (!\G4|rs[2]~0_combout\ & ((\G16|Add0~61_sumout\))) # (\G4|rs[2]~0_combout\ & (\G17|RAM_rtl_0|auto_generated|ram_block1a15~portadataout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rs[2]~0_combout\,
	datab => \G17|RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portadataout\,
	datac => \G16|ALT_INV_Add0~61_sumout\,
	combout => \G18|SAIDA[15]~31_combout\);

\G7|Reg[0][15]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Reg[0][15]~31_combout\ = (\Clock_Sistema~input_o\ & \G18|SAIDA[15]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G18|ALT_INV_SAIDA[15]~31_combout\,
	combout => \G7|Reg[0][15]~31_combout\);

ww_SomadorToPc_outWaveform(0) <= \SomadorToPc_outWaveform[0]~output_o\;

ww_SomadorToPc_outWaveform(1) <= \SomadorToPc_outWaveform[1]~output_o\;

ww_SomadorToPc_outWaveform(2) <= \SomadorToPc_outWaveform[2]~output_o\;

ww_SomadorToPc_outWaveform(3) <= \SomadorToPc_outWaveform[3]~output_o\;

ww_SomadorToPc_outWaveform(4) <= \SomadorToPc_outWaveform[4]~output_o\;

ww_SomadorToPc_outWaveform(5) <= \SomadorToPc_outWaveform[5]~output_o\;

ww_SomadorToPc_outWaveform(6) <= \SomadorToPc_outWaveform[6]~output_o\;

ww_SomadorToPc_outWaveform(7) <= \SomadorToPc_outWaveform[7]~output_o\;

ww_SomadorToPc_outWaveform(8) <= \SomadorToPc_outWaveform[8]~output_o\;

ww_SomadorToPc_outWaveform(9) <= \SomadorToPc_outWaveform[9]~output_o\;

ww_SomadorToPc_outWaveform(10) <= \SomadorToPc_outWaveform[10]~output_o\;

ww_SomadorToPc_outWaveform(11) <= \SomadorToPc_outWaveform[11]~output_o\;

ww_SomadorToPc_outWaveform(12) <= \SomadorToPc_outWaveform[12]~output_o\;

ww_SomadorToPc_outWaveform(13) <= \SomadorToPc_outWaveform[13]~output_o\;

ww_SomadorToPc_outWaveform(14) <= \SomadorToPc_outWaveform[14]~output_o\;

ww_SomadorToPc_outWaveform(15) <= \SomadorToPc_outWaveform[15]~output_o\;

ww_SaidaPc_outWaveform(0) <= \SaidaPc_outWaveform[0]~output_o\;

ww_SaidaPc_outWaveform(1) <= \SaidaPc_outWaveform[1]~output_o\;

ww_SaidaPc_outWaveform(2) <= \SaidaPc_outWaveform[2]~output_o\;

ww_SaidaPc_outWaveform(3) <= \SaidaPc_outWaveform[3]~output_o\;

ww_SaidaPc_outWaveform(4) <= \SaidaPc_outWaveform[4]~output_o\;

ww_SaidaPc_outWaveform(5) <= \SaidaPc_outWaveform[5]~output_o\;

ww_SaidaPc_outWaveform(6) <= \SaidaPc_outWaveform[6]~output_o\;

ww_SaidaPc_outWaveform(7) <= \SaidaPc_outWaveform[7]~output_o\;

ww_SaidaPc_outWaveform(8) <= \SaidaPc_outWaveform[8]~output_o\;

ww_SaidaPc_outWaveform(9) <= \SaidaPc_outWaveform[9]~output_o\;

ww_SaidaPc_outWaveform(10) <= \SaidaPc_outWaveform[10]~output_o\;

ww_SaidaPc_outWaveform(11) <= \SaidaPc_outWaveform[11]~output_o\;

ww_SaidaPc_outWaveform(12) <= \SaidaPc_outWaveform[12]~output_o\;

ww_SaidaPc_outWaveform(13) <= \SaidaPc_outWaveform[13]~output_o\;

ww_SaidaPc_outWaveform(14) <= \SaidaPc_outWaveform[14]~output_o\;

ww_SaidaPc_outWaveform(15) <= \SaidaPc_outWaveform[15]~output_o\;

ww_SaidaRegA_outWaveform(0) <= \SaidaRegA_outWaveform[0]~output_o\;

ww_SaidaRegA_outWaveform(1) <= \SaidaRegA_outWaveform[1]~output_o\;

ww_SaidaRegA_outWaveform(2) <= \SaidaRegA_outWaveform[2]~output_o\;

ww_SaidaRegA_outWaveform(3) <= \SaidaRegA_outWaveform[3]~output_o\;

ww_SaidaRegA_outWaveform(4) <= \SaidaRegA_outWaveform[4]~output_o\;

ww_SaidaRegA_outWaveform(5) <= \SaidaRegA_outWaveform[5]~output_o\;

ww_SaidaRegA_outWaveform(6) <= \SaidaRegA_outWaveform[6]~output_o\;

ww_SaidaRegA_outWaveform(7) <= \SaidaRegA_outWaveform[7]~output_o\;

ww_SaidaRegA_outWaveform(8) <= \SaidaRegA_outWaveform[8]~output_o\;

ww_SaidaRegA_outWaveform(9) <= \SaidaRegA_outWaveform[9]~output_o\;

ww_SaidaRegA_outWaveform(10) <= \SaidaRegA_outWaveform[10]~output_o\;

ww_SaidaRegA_outWaveform(11) <= \SaidaRegA_outWaveform[11]~output_o\;

ww_SaidaRegA_outWaveform(12) <= \SaidaRegA_outWaveform[12]~output_o\;

ww_SaidaRegA_outWaveform(13) <= \SaidaRegA_outWaveform[13]~output_o\;

ww_SaidaRegA_outWaveform(14) <= \SaidaRegA_outWaveform[14]~output_o\;

ww_SaidaRegA_outWaveform(15) <= \SaidaRegA_outWaveform[15]~output_o\;

ww_SaidaRegB_outWaveform(0) <= \SaidaRegB_outWaveform[0]~output_o\;

ww_SaidaRegB_outWaveform(1) <= \SaidaRegB_outWaveform[1]~output_o\;

ww_SaidaRegB_outWaveform(2) <= \SaidaRegB_outWaveform[2]~output_o\;

ww_SaidaRegB_outWaveform(3) <= \SaidaRegB_outWaveform[3]~output_o\;

ww_SaidaRegB_outWaveform(4) <= \SaidaRegB_outWaveform[4]~output_o\;

ww_SaidaRegB_outWaveform(5) <= \SaidaRegB_outWaveform[5]~output_o\;

ww_SaidaRegB_outWaveform(6) <= \SaidaRegB_outWaveform[6]~output_o\;

ww_SaidaRegB_outWaveform(7) <= \SaidaRegB_outWaveform[7]~output_o\;

ww_SaidaRegB_outWaveform(8) <= \SaidaRegB_outWaveform[8]~output_o\;

ww_SaidaRegB_outWaveform(9) <= \SaidaRegB_outWaveform[9]~output_o\;

ww_SaidaRegB_outWaveform(10) <= \SaidaRegB_outWaveform[10]~output_o\;

ww_SaidaRegB_outWaveform(11) <= \SaidaRegB_outWaveform[11]~output_o\;

ww_SaidaRegB_outWaveform(12) <= \SaidaRegB_outWaveform[12]~output_o\;

ww_SaidaRegB_outWaveform(13) <= \SaidaRegB_outWaveform[13]~output_o\;

ww_SaidaRegB_outWaveform(14) <= \SaidaRegB_outWaveform[14]~output_o\;

ww_SaidaRegB_outWaveform(15) <= \SaidaRegB_outWaveform[15]~output_o\;

ww_multiplexador_to_writeRegister_outWaveform(0) <= \multiplexador_to_writeRegister_outWaveform[0]~output_o\;

ww_multiplexador_to_writeRegister_outWaveform(1) <= \multiplexador_to_writeRegister_outWaveform[1]~output_o\;

ww_multiplexador_to_writeRegister_outWaveform(2) <= \multiplexador_to_writeRegister_outWaveform[2]~output_o\;

ww_Instruction_to_multiplexador_outWaveform(0) <= \Instruction_to_multiplexador_outWaveform[0]~output_o\;

ww_Instruction_to_multiplexador_outWaveform(1) <= \Instruction_to_multiplexador_outWaveform[1]~output_o\;

ww_Instruction_to_multiplexador_outWaveform(2) <= \Instruction_to_multiplexador_outWaveform[2]~output_o\;

ww_Instruction_to_Control_outWaveform(0) <= \Instruction_to_Control_outWaveform[0]~output_o\;

ww_Instruction_to_Control_outWaveform(1) <= \Instruction_to_Control_outWaveform[1]~output_o\;

ww_Instruction_to_Control_outWaveform(2) <= \Instruction_to_Control_outWaveform[2]~output_o\;

ww_Instruction_to_Control_outWaveform(3) <= \Instruction_to_Control_outWaveform[3]~output_o\;

ww_Instruction_to_register1_outWaveform(0) <= \Instruction_to_register1_outWaveform[0]~output_o\;

ww_Instruction_to_register1_outWaveform(1) <= \Instruction_to_register1_outWaveform[1]~output_o\;

ww_Instruction_to_register1_outWaveform(2) <= \Instruction_to_register1_outWaveform[2]~output_o\;

ww_Instruction_to_register2_outWaveform(0) <= \Instruction_to_register2_outWaveform[0]~output_o\;

ww_Instruction_to_register2_outWaveform(1) <= \Instruction_to_register2_outWaveform[1]~output_o\;

ww_Instruction_to_register2_outWaveform(2) <= \Instruction_to_register2_outWaveform[2]~output_o\;

ww_Instruction_to_controlULA_outWaveform(0) <= \Instruction_to_controlULA_outWaveform[0]~output_o\;

ww_Instruction_to_controlULA_outWaveform(1) <= \Instruction_to_controlULA_outWaveform[1]~output_o\;

ww_Instruction_to_controlULA_outWaveform(2) <= \Instruction_to_controlULA_outWaveform[2]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(0) <= \Instruction_to_extensorDeSinal_outWaveform[0]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(1) <= \Instruction_to_extensorDeSinal_outWaveform[1]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(2) <= \Instruction_to_extensorDeSinal_outWaveform[2]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(3) <= \Instruction_to_extensorDeSinal_outWaveform[3]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(4) <= \Instruction_to_extensorDeSinal_outWaveform[4]~output_o\;

ww_Instruction_to_extensorDeSinal_outWaveform(5) <= \Instruction_to_extensorDeSinal_outWaveform[5]~output_o\;

ww_Instruction_to_Jump_outWaveform(0) <= \Instruction_to_Jump_outWaveform[0]~output_o\;

ww_Instruction_to_Jump_outWaveform(1) <= \Instruction_to_Jump_outWaveform[1]~output_o\;

ww_Instruction_to_Jump_outWaveform(2) <= \Instruction_to_Jump_outWaveform[2]~output_o\;

ww_Instruction_to_Jump_outWaveform(3) <= \Instruction_to_Jump_outWaveform[3]~output_o\;

ww_Instruction_to_Jump_outWaveform(4) <= \Instruction_to_Jump_outWaveform[4]~output_o\;

ww_Instruction_to_Jump_outWaveform(5) <= \Instruction_to_Jump_outWaveform[5]~output_o\;

ww_Instruction_to_Jump_outWaveform(6) <= \Instruction_to_Jump_outWaveform[6]~output_o\;

ww_Instruction_to_Jump_outWaveform(7) <= \Instruction_to_Jump_outWaveform[7]~output_o\;

ww_Instruction_to_Jump_outWaveform(8) <= \Instruction_to_Jump_outWaveform[8]~output_o\;

ww_Instruction_to_Jump_outWaveform(9) <= \Instruction_to_Jump_outWaveform[9]~output_o\;

ww_Instruction_to_Jump_outWaveform(10) <= \Instruction_to_Jump_outWaveform[10]~output_o\;

ww_Instruction_to_Jump_outWaveform(11) <= \Instruction_to_Jump_outWaveform[11]~output_o\;

ww_out_Saida_OperacaoDaULA(0) <= \out_Saida_OperacaoDaULA[0]~output_o\;

ww_out_Saida_OperacaoDaULA(1) <= \out_Saida_OperacaoDaULA[1]~output_o\;

ww_out_Saida_OperacaoDaULA(2) <= \out_Saida_OperacaoDaULA[2]~output_o\;

ww_out_Saida_OperacaoDaULA(3) <= \out_Saida_OperacaoDaULA[3]~output_o\;

ww_out_Saida_OperacaoDaULA(4) <= \out_Saida_OperacaoDaULA[4]~output_o\;

ww_out_Saida_OperacaoDaULA(5) <= \out_Saida_OperacaoDaULA[5]~output_o\;

ww_out_Saida_OperacaoDaULA(6) <= \out_Saida_OperacaoDaULA[6]~output_o\;

ww_Data_to_writeRegister_outWaveform(0) <= \Data_to_writeRegister_outWaveform[0]~output_o\;

ww_Data_to_writeRegister_outWaveform(1) <= \Data_to_writeRegister_outWaveform[1]~output_o\;

ww_Data_to_writeRegister_outWaveform(2) <= \Data_to_writeRegister_outWaveform[2]~output_o\;

ww_Data_to_writeRegister_outWaveform(3) <= \Data_to_writeRegister_outWaveform[3]~output_o\;

ww_Data_to_writeRegister_outWaveform(4) <= \Data_to_writeRegister_outWaveform[4]~output_o\;

ww_Data_to_writeRegister_outWaveform(5) <= \Data_to_writeRegister_outWaveform[5]~output_o\;

ww_Data_to_writeRegister_outWaveform(6) <= \Data_to_writeRegister_outWaveform[6]~output_o\;

ww_Data_to_writeRegister_outWaveform(7) <= \Data_to_writeRegister_outWaveform[7]~output_o\;

ww_Data_to_writeRegister_outWaveform(8) <= \Data_to_writeRegister_outWaveform[8]~output_o\;

ww_Data_to_writeRegister_outWaveform(9) <= \Data_to_writeRegister_outWaveform[9]~output_o\;

ww_Data_to_writeRegister_outWaveform(10) <= \Data_to_writeRegister_outWaveform[10]~output_o\;

ww_Data_to_writeRegister_outWaveform(11) <= \Data_to_writeRegister_outWaveform[11]~output_o\;

ww_Data_to_writeRegister_outWaveform(12) <= \Data_to_writeRegister_outWaveform[12]~output_o\;

ww_Data_to_writeRegister_outWaveform(13) <= \Data_to_writeRegister_outWaveform[13]~output_o\;

ww_Data_to_writeRegister_outWaveform(14) <= \Data_to_writeRegister_outWaveform[14]~output_o\;

ww_Data_to_writeRegister_outWaveform(15) <= \Data_to_writeRegister_outWaveform[15]~output_o\;

ww_Saida_mult_to_mult_outWaveform(0) <= \Saida_mult_to_mult_outWaveform[0]~output_o\;

ww_Saida_mult_to_mult_outWaveform(1) <= \Saida_mult_to_mult_outWaveform[1]~output_o\;

ww_Saida_mult_to_mult_outWaveform(2) <= \Saida_mult_to_mult_outWaveform[2]~output_o\;

ww_Saida_mult_to_mult_outWaveform(3) <= \Saida_mult_to_mult_outWaveform[3]~output_o\;

ww_Saida_mult_to_mult_outWaveform(4) <= \Saida_mult_to_mult_outWaveform[4]~output_o\;

ww_Saida_mult_to_mult_outWaveform(5) <= \Saida_mult_to_mult_outWaveform[5]~output_o\;

ww_Saida_mult_to_mult_outWaveform(6) <= \Saida_mult_to_mult_outWaveform[6]~output_o\;

ww_Saida_mult_to_mult_outWaveform(7) <= \Saida_mult_to_mult_outWaveform[7]~output_o\;

ww_Saida_mult_to_mult_outWaveform(8) <= \Saida_mult_to_mult_outWaveform[8]~output_o\;

ww_Saida_mult_to_mult_outWaveform(9) <= \Saida_mult_to_mult_outWaveform[9]~output_o\;

ww_Saida_mult_to_mult_outWaveform(10) <= \Saida_mult_to_mult_outWaveform[10]~output_o\;

ww_Saida_mult_to_mult_outWaveform(11) <= \Saida_mult_to_mult_outWaveform[11]~output_o\;

ww_Saida_mult_to_mult_outWaveform(12) <= \Saida_mult_to_mult_outWaveform[12]~output_o\;

ww_Saida_mult_to_mult_outWaveform(13) <= \Saida_mult_to_mult_outWaveform[13]~output_o\;

ww_Saida_mult_to_mult_outWaveform(14) <= \Saida_mult_to_mult_outWaveform[14]~output_o\;

ww_Saida_mult_to_mult_outWaveform(15) <= \Saida_mult_to_mult_outWaveform[15]~output_o\;

ww_Saida_to_PC_outWaveform(0) <= \Saida_to_PC_outWaveform[0]~output_o\;

ww_Saida_to_PC_outWaveform(1) <= \Saida_to_PC_outWaveform[1]~output_o\;

ww_Saida_to_PC_outWaveform(2) <= \Saida_to_PC_outWaveform[2]~output_o\;

ww_Saida_to_PC_outWaveform(3) <= \Saida_to_PC_outWaveform[3]~output_o\;

ww_Saida_to_PC_outWaveform(4) <= \Saida_to_PC_outWaveform[4]~output_o\;

ww_Saida_to_PC_outWaveform(5) <= \Saida_to_PC_outWaveform[5]~output_o\;

ww_Saida_to_PC_outWaveform(6) <= \Saida_to_PC_outWaveform[6]~output_o\;

ww_Saida_to_PC_outWaveform(7) <= \Saida_to_PC_outWaveform[7]~output_o\;

ww_Saida_to_PC_outWaveform(8) <= \Saida_to_PC_outWaveform[8]~output_o\;

ww_Saida_to_PC_outWaveform(9) <= \Saida_to_PC_outWaveform[9]~output_o\;

ww_Saida_to_PC_outWaveform(10) <= \Saida_to_PC_outWaveform[10]~output_o\;

ww_Saida_to_PC_outWaveform(11) <= \Saida_to_PC_outWaveform[11]~output_o\;

ww_Saida_to_PC_outWaveform(12) <= \Saida_to_PC_outWaveform[12]~output_o\;

ww_Saida_to_PC_outWaveform(13) <= \Saida_to_PC_outWaveform[13]~output_o\;

ww_Saida_to_PC_outWaveform(14) <= \Saida_to_PC_outWaveform[14]~output_o\;

ww_Saida_to_PC_outWaveform(15) <= \Saida_to_PC_outWaveform[15]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(0) <= \Saida_adress_to_RAM_outWaveform[0]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(1) <= \Saida_adress_to_RAM_outWaveform[1]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(2) <= \Saida_adress_to_RAM_outWaveform[2]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(3) <= \Saida_adress_to_RAM_outWaveform[3]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(4) <= \Saida_adress_to_RAM_outWaveform[4]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(5) <= \Saida_adress_to_RAM_outWaveform[5]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(6) <= \Saida_adress_to_RAM_outWaveform[6]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(7) <= \Saida_adress_to_RAM_outWaveform[7]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(8) <= \Saida_adress_to_RAM_outWaveform[8]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(9) <= \Saida_adress_to_RAM_outWaveform[9]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(10) <= \Saida_adress_to_RAM_outWaveform[10]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(11) <= \Saida_adress_to_RAM_outWaveform[11]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(12) <= \Saida_adress_to_RAM_outWaveform[12]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(13) <= \Saida_adress_to_RAM_outWaveform[13]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(14) <= \Saida_adress_to_RAM_outWaveform[14]~output_o\;

ww_Saida_adress_to_RAM_outWaveform(15) <= \Saida_adress_to_RAM_outWaveform[15]~output_o\;

ww_Flag_regdest_OUT <= \Flag_regdest_OUT~output_o\;

ww_Flag_origialu_OUT(0) <= \Flag_origialu_OUT[0]~output_o\;

ww_Flag_origialu_OUT(1) <= \Flag_origialu_OUT[1]~output_o\;

ww_Flag_origialu_OUT(2) <= \Flag_origialu_OUT[2]~output_o\;

ww_Flag_origialu_OUT(3) <= \Flag_origialu_OUT[3]~output_o\;

ww_Flag_memparareg_OUT <= \Flag_memparareg_OUT~output_o\;

ww_Flag_escrevereg_OUT <= \Flag_escrevereg_OUT~output_o\;

ww_Flag_lemem_OUT <= \Flag_lemem_OUT~output_o\;

ww_Flag_escrevemem_OUT <= \Flag_escrevemem_OUT~output_o\;

ww_Flag_branch_OUT <= \Flag_branch_OUT~output_o\;

ww_Flag_aluSRC_OUT <= \Flag_aluSRC_OUT~output_o\;

ww_Flag_jump_OUT <= \Flag_jump_OUT~output_o\;
END structure;


