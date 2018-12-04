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

-- DATE "12/04/2018 04:25:54"

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
SIGNAL \G4|rd[0]~0_combout\ : std_logic;
SIGNAL \G7|Mux31~0_combout\ : std_logic;
SIGNAL \G16|Add2~26\ : std_logic;
SIGNAL \G16|Add2~13_sumout\ : std_logic;
SIGNAL \G16|Add2~25_sumout\ : std_logic;
SIGNAL \G16|Add3~30_cout\ : std_logic;
SIGNAL \G16|Add3~25_sumout\ : std_logic;
SIGNAL \G16|Prod~33_combout\ : std_logic;
SIGNAL \G16|Add5~21_sumout\ : std_logic;
SIGNAL \G16|Mux13~0_combout\ : std_logic;
SIGNAL \G16|Add2~14\ : std_logic;
SIGNAL \G16|Add2~17_sumout\ : std_logic;
SIGNAL \G16|Add3~26\ : std_logic;
SIGNAL \G16|Add3~17_sumout\ : std_logic;
SIGNAL \G16|Prod~34_combout\ : std_logic;
SIGNAL \G16|Add5~22\ : std_logic;
SIGNAL \G16|Add5~25_sumout\ : std_logic;
SIGNAL \G16|Mux12~0_combout\ : std_logic;
SIGNAL \G16|Add2~18\ : std_logic;
SIGNAL \G16|Add2~21_sumout\ : std_logic;
SIGNAL \G16|Add3~18\ : std_logic;
SIGNAL \G16|Add3~21_sumout\ : std_logic;
SIGNAL \G16|Prod~35_combout\ : std_logic;
SIGNAL \G16|Add5~26\ : std_logic;
SIGNAL \G16|Add5~29_sumout\ : std_logic;
SIGNAL \G16|Mux11~0_combout\ : std_logic;
SIGNAL \G16|Add2~22\ : std_logic;
SIGNAL \G16|Add2~9_sumout\ : std_logic;
SIGNAL \G16|Add3~22\ : std_logic;
SIGNAL \G16|Add3~13_sumout\ : std_logic;
SIGNAL \G16|Prod~32_combout\ : std_logic;
SIGNAL \G16|Add5~30\ : std_logic;
SIGNAL \G16|Add5~17_sumout\ : std_logic;
SIGNAL \G16|Prod~28_combout\ : std_logic;
SIGNAL \G16|Mux10~0_combout\ : std_logic;
SIGNAL \G7|Mux10~1_combout\ : std_logic;
SIGNAL \G16|Add2~10\ : std_logic;
SIGNAL \G16|Add2~1_sumout\ : std_logic;
SIGNAL \G16|Add3~14\ : std_logic;
SIGNAL \G16|Add3~1_sumout\ : std_logic;
SIGNAL \G16|Prod~29_combout\ : std_logic;
SIGNAL \G16|Add5~18\ : std_logic;
SIGNAL \G16|Add5~1_sumout\ : std_logic;
SIGNAL \G16|Prod~19_combout\ : std_logic;
SIGNAL \G16|Mux9~0_combout\ : std_logic;
SIGNAL \G16|Add2~2\ : std_logic;
SIGNAL \G16|Add2~5_sumout\ : std_logic;
SIGNAL \G16|Add3~2\ : std_logic;
SIGNAL \G16|Add3~5_sumout\ : std_logic;
SIGNAL \G16|Prod~30_combout\ : std_logic;
SIGNAL \G16|Add5~2\ : std_logic;
SIGNAL \G16|Add5~5_sumout\ : std_logic;
SIGNAL \G16|Mux8~0_combout\ : std_logic;
SIGNAL \G7|Mux8~1_combout\ : std_logic;
SIGNAL \G7|Mux7~0_combout\ : std_logic;
SIGNAL \G16|Add3~6\ : std_logic;
SIGNAL \G16|Add3~9_sumout\ : std_logic;
SIGNAL \G16|Prod~31_combout\ : std_logic;
SIGNAL \G16|Add5~6\ : std_logic;
SIGNAL \G16|Add5~9_sumout\ : std_logic;
SIGNAL \G16|Prod~21_combout\ : std_logic;
SIGNAL \G16|Prod~20_combout\ : std_logic;
SIGNAL \G16|Add12~34_cout\ : std_logic;
SIGNAL \G16|Add12~30_cout\ : std_logic;
SIGNAL \G16|Add12~2_cout\ : std_logic;
SIGNAL \G16|Add12~6_cout\ : std_logic;
SIGNAL \G16|Add12~9_sumout\ : std_logic;
SIGNAL \G16|Prod~22_combout\ : std_logic;
SIGNAL \G16|Mux7~0_combout\ : std_logic;
SIGNAL \G7|Mux6~0_combout\ : std_logic;
SIGNAL \G16|Add5~10\ : std_logic;
SIGNAL \G16|Add5~13_sumout\ : std_logic;
SIGNAL \G16|Prod~23_combout\ : std_logic;
SIGNAL \G16|Add12~10\ : std_logic;
SIGNAL \G16|Add12~13_sumout\ : std_logic;
SIGNAL \G16|Prod~24_combout\ : std_logic;
SIGNAL \G16|Mux6~0_combout\ : std_logic;
SIGNAL \G16|Add12~14\ : std_logic;
SIGNAL \G16|Add12~17_sumout\ : std_logic;
SIGNAL \G16|Prod~25_combout\ : std_logic;
SIGNAL \G16|Mux5~0_combout\ : std_logic;
SIGNAL \G7|Mux5~0_combout\ : std_logic;
SIGNAL \G16|Add12~18\ : std_logic;
SIGNAL \G16|Add12~21_sumout\ : std_logic;
SIGNAL \G16|Prod~26_combout\ : std_logic;
SIGNAL \G16|Mux4~0_combout\ : std_logic;
SIGNAL \G7|Mux4~0_combout\ : std_logic;
SIGNAL \G16|Add12~22\ : std_logic;
SIGNAL \G16|Add12~25_sumout\ : std_logic;
SIGNAL \G16|Prod~27_combout\ : std_logic;
SIGNAL \G16|Mux3~0_combout\ : std_logic;
SIGNAL \G7|Mux3~0_combout\ : std_logic;
SIGNAL \G16|Mux6~1_combout\ : std_logic;
SIGNAL \G16|Mux2~1_combout\ : std_logic;
SIGNAL \G7|Mux2~0_combout\ : std_logic;
SIGNAL \G7|Mux0~1_combout\ : std_logic;
SIGNAL \G16|Mux5~1_combout\ : std_logic;
SIGNAL \G16|Mux4~1_combout\ : std_logic;
SIGNAL \G16|Mux3~1_combout\ : std_logic;
SIGNAL \G16|Mux2~0_combout\ : std_logic;
SIGNAL \G2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G1|pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~24_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~23_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~22_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~21_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~20_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~19_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_rd[0]~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G1|ALT_INV_pout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \G16|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~35_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~34_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~33_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~32_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~31_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~30_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~29_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~28_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~27_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~26_combout\ : std_logic;
SIGNAL \G7|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G16|ALT_INV_Prod~25_combout\ : std_logic;
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
\G16|ALT_INV_Add5~5_sumout\ <= NOT \G16|Add5~5_sumout\;
\G16|ALT_INV_Add3~5_sumout\ <= NOT \G16|Add3~5_sumout\;
\G16|ALT_INV_Add5~1_sumout\ <= NOT \G16|Add5~1_sumout\;
\G16|ALT_INV_Add3~1_sumout\ <= NOT \G16|Add3~1_sumout\;
\G16|ALT_INV_Mux6~0_combout\ <= NOT \G16|Mux6~0_combout\;
\G16|ALT_INV_Prod~24_combout\ <= NOT \G16|Prod~24_combout\;
\G16|ALT_INV_Prod~23_combout\ <= NOT \G16|Prod~23_combout\;
\G16|ALT_INV_Mux7~0_combout\ <= NOT \G16|Mux7~0_combout\;
\G7|ALT_INV_Mux7~0_combout\ <= NOT \G7|Mux7~0_combout\;
\G16|ALT_INV_Prod~22_combout\ <= NOT \G16|Prod~22_combout\;
\G16|ALT_INV_Prod~21_combout\ <= NOT \G16|Prod~21_combout\;
\G7|ALT_INV_Mux8~1_combout\ <= NOT \G7|Mux8~1_combout\;
\G16|ALT_INV_Prod~20_combout\ <= NOT \G16|Prod~20_combout\;
\G7|ALT_INV_Mux31~0_combout\ <= NOT \G7|Mux31~0_combout\;
\G16|ALT_INV_Prod~19_combout\ <= NOT \G16|Prod~19_combout\;
\G7|ALT_INV_Mux10~1_combout\ <= NOT \G7|Mux10~1_combout\;
\G4|ALT_INV_rd[0]~0_combout\ <= NOT \G4|rd[0]~0_combout\;
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
\G16|ALT_INV_Add2~25_sumout\ <= NOT \G16|Add2~25_sumout\;
\G16|ALT_INV_Add2~21_sumout\ <= NOT \G16|Add2~21_sumout\;
\G16|ALT_INV_Add2~17_sumout\ <= NOT \G16|Add2~17_sumout\;
\G16|ALT_INV_Add2~13_sumout\ <= NOT \G16|Add2~13_sumout\;
\G16|ALT_INV_Add3~25_sumout\ <= NOT \G16|Add3~25_sumout\;
\G16|ALT_INV_Add2~9_sumout\ <= NOT \G16|Add2~9_sumout\;
\G16|ALT_INV_Add5~29_sumout\ <= NOT \G16|Add5~29_sumout\;
\G16|ALT_INV_Add3~21_sumout\ <= NOT \G16|Add3~21_sumout\;
\G16|ALT_INV_Add5~25_sumout\ <= NOT \G16|Add5~25_sumout\;
\G16|ALT_INV_Add3~17_sumout\ <= NOT \G16|Add3~17_sumout\;
\G16|ALT_INV_Add5~21_sumout\ <= NOT \G16|Add5~21_sumout\;
\G16|ALT_INV_Add2~5_sumout\ <= NOT \G16|Add2~5_sumout\;
\G16|ALT_INV_Add2~1_sumout\ <= NOT \G16|Add2~1_sumout\;
\G16|ALT_INV_Add5~17_sumout\ <= NOT \G16|Add5~17_sumout\;
\G16|ALT_INV_Add3~13_sumout\ <= NOT \G16|Add3~13_sumout\;
\G16|ALT_INV_Add12~25_sumout\ <= NOT \G16|Add12~25_sumout\;
\G16|ALT_INV_Add12~21_sumout\ <= NOT \G16|Add12~21_sumout\;
\G16|ALT_INV_Add12~17_sumout\ <= NOT \G16|Add12~17_sumout\;
\G16|ALT_INV_Add12~13_sumout\ <= NOT \G16|Add12~13_sumout\;
\G16|ALT_INV_Add5~13_sumout\ <= NOT \G16|Add5~13_sumout\;
\G16|ALT_INV_Add12~9_sumout\ <= NOT \G16|Add12~9_sumout\;
\G16|ALT_INV_Add5~9_sumout\ <= NOT \G16|Add5~9_sumout\;
\G16|ALT_INV_Add3~9_sumout\ <= NOT \G16|Add3~9_sumout\;
\G16|ALT_INV_Mux8~0_combout\ <= NOT \G16|Mux8~0_combout\;
\G16|ALT_INV_Mux2~1_combout\ <= NOT \G16|Mux2~1_combout\;
\G16|ALT_INV_Prod~35_combout\ <= NOT \G16|Prod~35_combout\;
\G16|ALT_INV_Prod~34_combout\ <= NOT \G16|Prod~34_combout\;
\G16|ALT_INV_Prod~33_combout\ <= NOT \G16|Prod~33_combout\;
\G16|ALT_INV_Prod~32_combout\ <= NOT \G16|Prod~32_combout\;
\G16|ALT_INV_Mux11~0_combout\ <= NOT \G16|Mux11~0_combout\;
\G16|ALT_INV_Mux12~0_combout\ <= NOT \G16|Mux12~0_combout\;
\G16|ALT_INV_Mux13~0_combout\ <= NOT \G16|Mux13~0_combout\;
\G16|ALT_INV_Prod~31_combout\ <= NOT \G16|Prod~31_combout\;
\G16|ALT_INV_Prod~30_combout\ <= NOT \G16|Prod~30_combout\;
\G16|ALT_INV_Prod~29_combout\ <= NOT \G16|Prod~29_combout\;
\G16|ALT_INV_Mux10~0_combout\ <= NOT \G16|Mux10~0_combout\;
\G16|ALT_INV_Prod~28_combout\ <= NOT \G16|Prod~28_combout\;
\G16|ALT_INV_Mux9~0_combout\ <= NOT \G16|Mux9~0_combout\;
\G16|ALT_INV_Mux6~1_combout\ <= NOT \G16|Mux6~1_combout\;
\G16|ALT_INV_Mux3~0_combout\ <= NOT \G16|Mux3~0_combout\;
\G16|ALT_INV_Prod~27_combout\ <= NOT \G16|Prod~27_combout\;
\G16|ALT_INV_Mux4~0_combout\ <= NOT \G16|Mux4~0_combout\;
\G16|ALT_INV_Prod~26_combout\ <= NOT \G16|Prod~26_combout\;
\G7|ALT_INV_Mux5~0_combout\ <= NOT \G7|Mux5~0_combout\;
\G16|ALT_INV_Mux5~0_combout\ <= NOT \G16|Mux5~0_combout\;
\G16|ALT_INV_Prod~25_combout\ <= NOT \G16|Prod~25_combout\;
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
	i => \ALT_INV_Clock_Sistema~input_o\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \G7|Mux10~1_combout\,
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
	i => \G7|Mux10~1_combout\,
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
	i => \G7|Mux8~1_combout\,
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
	i => \G7|Mux7~0_combout\,
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
	i => \G7|Mux6~0_combout\,
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
	i => \G7|Mux5~0_combout\,
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
	i => \G7|Mux4~0_combout\,
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
	i => \G7|Mux3~0_combout\,
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
	i => \G7|Mux2~0_combout\,
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
	i => \G7|Mux2~0_combout\,
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
	i => \G7|Mux0~1_combout\,
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
	i => \G7|Mux31~0_combout\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \G7|Mux10~1_combout\,
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
	i => \G7|Mux10~1_combout\,
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
	i => \G7|Mux8~1_combout\,
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
	i => \G7|Mux7~0_combout\,
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
	i => \G7|Mux6~0_combout\,
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
	i => \G7|Mux5~0_combout\,
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
	i => \G7|Mux4~0_combout\,
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
	i => \G7|Mux3~0_combout\,
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
	i => \G7|Mux2~0_combout\,
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
	i => \G7|Mux2~0_combout\,
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
	i => \G7|Mux0~1_combout\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => \G4|rd[0]~0_combout\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => \G4|rd[0]~0_combout\,
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
	i => GND,
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
	i => \G4|rd[0]~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => \G7|Mux31~0_combout\,
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
	i => \G16|Mux13~0_combout\,
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
	i => \G16|Mux12~0_combout\,
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
	i => \G16|Mux11~0_combout\,
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
	i => \G16|Mux10~0_combout\,
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
	i => \G16|Mux9~0_combout\,
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
	i => \G16|Mux8~0_combout\,
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
	i => \G16|Mux7~0_combout\,
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
	i => \G16|Mux6~1_combout\,
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
	i => \G16|Mux5~1_combout\,
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
	i => \G16|Mux4~1_combout\,
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
	i => \G16|Mux3~1_combout\,
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
	i => \G16|Mux2~0_combout\,
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
	i => \G16|Mux2~0_combout\,
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
	i => \G16|Mux2~0_combout\,
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
	i => GND,
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
	i => \G7|Mux31~0_combout\,
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
	i => \G16|Mux13~0_combout\,
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
	i => \G16|Mux12~0_combout\,
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
	i => \G16|Mux11~0_combout\,
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
	i => \G16|Mux10~0_combout\,
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
	i => \G16|Mux9~0_combout\,
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
	i => \G16|Mux8~0_combout\,
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
	i => \G16|Mux7~0_combout\,
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
	i => \G16|Mux6~1_combout\,
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
	i => \G16|Mux5~1_combout\,
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
	i => \G16|Mux4~1_combout\,
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
	i => \G16|Mux3~1_combout\,
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
	i => \G16|Mux2~0_combout\,
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
	i => \G16|Mux2~0_combout\,
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
	i => \G16|Mux2~0_combout\,
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
	i => VCC,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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

\G4|rd[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|rd[0]~0_combout\ = (\Clock_Sistema~input_o\ & \G4|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	combout => \G4|rd[0]~0_combout\);

\G7|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux31~0_combout\ = ( \G4|Mux0~1_combout\ & ( \G4|Mux0~2_combout\ & ( (!\Clock_Sistema~input_o\) # ((!\G1|pout\(5) & (!\G1|pout\(11) & \G4|Mux0~0_combout\))) ) ) ) # ( !\G4|Mux0~1_combout\ & ( \G4|Mux0~2_combout\ & ( !\Clock_Sistema~input_o\ ) ) ) # ( 
-- \G4|Mux0~1_combout\ & ( !\G4|Mux0~2_combout\ & ( !\Clock_Sistema~input_o\ ) ) ) # ( !\G4|Mux0~1_combout\ & ( !\G4|Mux0~2_combout\ & ( !\Clock_Sistema~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_pout\(5),
	datab => \G1|ALT_INV_pout\(11),
	datac => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G4|ALT_INV_Mux0~0_combout\,
	datae => \G4|ALT_INV_Mux0~1_combout\,
	dataf => \G4|ALT_INV_Mux0~2_combout\,
	combout => \G7|Mux31~0_combout\);

\G16|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~25_sumout\ = SUM(( \Clock_Sistema~input_o\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|Mux0~3_combout\ & !\G7|Mux31~0_combout\)) ) + ( !VCC ))
-- \G16|Add2~26\ = CARRY(( \Clock_Sistema~input_o\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|Mux0~3_combout\ & !\G7|Mux31~0_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	cin => GND,
	sumout => \G16|Add2~25_sumout\,
	cout => \G16|Add2~26\);

\G16|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~13_sumout\ = SUM(( ((!\Clock_Sistema~input_o\) # (!\G16|Mux13~0_combout\)) # (\G4|Mux0~3_combout\) ) + ( GND ) + ( \G16|Add2~26\ ))
-- \G16|Add2~14\ = CARRY(( ((!\Clock_Sistema~input_o\) # (!\G16|Mux13~0_combout\)) # (\G4|Mux0~3_combout\) ) + ( GND ) + ( \G16|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G16|ALT_INV_Mux13~0_combout\,
	cin => \G16|Add2~26\,
	sumout => \G16|Add2~13_sumout\,
	cout => \G16|Add2~14\);

\G16|Add3~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~30_cout\ = CARRY(( !\Clock_Sistema~input_o\ ) + ( (\G16|Add2~25_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110100010000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	dataf => \G16|ALT_INV_Add2~25_sumout\,
	cin => GND,
	cout => \G16|Add3~30_cout\);

\G16|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~25_sumout\ = SUM(( (\G16|Add2~13_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & ((\G7|Mux31~0_combout\) # (\G4|Mux0~3_combout\))) ) + ( \G16|Add3~30_cout\ ))
-- \G16|Add3~26\ = CARRY(( (\G16|Add2~13_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & ((\G7|Mux31~0_combout\) # (\G4|Mux0~3_combout\))) ) + ( \G16|Add3~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101010101000000000000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Add2~13_sumout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	cin => \G16|Add3~30_cout\,
	sumout => \G16|Add3~25_sumout\,
	cout => \G16|Add3~26\);

\G16|Prod~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~33_combout\ = (\G7|Mux31~0_combout\ & \G16|Add2~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Add2~13_sumout\,
	combout => \G16|Prod~33_combout\);

\G16|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~21_sumout\ = SUM(( !\Clock_Sistema~input_o\ ) + ( (!\Clock_Sistema~input_o\ & (\G16|Add3~25_sumout\)) # (\Clock_Sistema~input_o\ & ((\G16|Prod~33_combout\))) ) + ( !VCC ))
-- \G16|Add5~22\ = CARRY(( !\Clock_Sistema~input_o\ ) + ( (!\Clock_Sistema~input_o\ & (\G16|Add3~25_sumout\)) # (\Clock_Sistema~input_o\ & ((\G16|Prod~33_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011010000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G16|ALT_INV_Add3~25_sumout\,
	dataf => \G16|ALT_INV_Prod~33_combout\,
	cin => GND,
	sumout => \G16|Add5~21_sumout\,
	cout => \G16|Add5~22\);

\G16|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux13~0_combout\ = (\G4|rd[0]~0_combout\ & \G16|Add5~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G16|ALT_INV_Add5~21_sumout\,
	combout => \G16|Mux13~0_combout\);

\G16|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~17_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G16|Mux12~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( GND ) + ( \G16|Add2~14\ ))
-- \G16|Add2~18\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G16|Mux12~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( GND ) + ( \G16|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Mux12~0_combout\,
	cin => \G16|Add2~14\,
	sumout => \G16|Add2~17_sumout\,
	cout => \G16|Add2~18\);

\G16|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~17_sumout\ = SUM(( (\G16|Add2~17_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux13~0_combout\)) ) + ( \G16|Add3~26\ ))
-- \G16|Add3~18\ = CARRY(( (\G16|Add2~17_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux13~0_combout\)) ) + ( \G16|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Add2~17_sumout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	cin => \G16|Add3~26\,
	sumout => \G16|Add3~17_sumout\,
	cout => \G16|Add3~18\);

\G16|Prod~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~34_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~17_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & (\G16|Add2~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add2~17_sumout\,
	datad => \G16|ALT_INV_Add3~17_sumout\,
	combout => \G16|Prod~34_combout\);

\G16|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~25_sumout\ = SUM(( \G16|Prod~34_combout\ ) + ( (\Clock_Sistema~input_o\ & ((\G7|Mux31~0_combout\) # (\G4|Mux0~3_combout\))) ) + ( \G16|Add5~22\ ))
-- \G16|Add5~26\ = CARRY(( \G16|Prod~34_combout\ ) + ( (\Clock_Sistema~input_o\ & ((\G7|Mux31~0_combout\) # (\G4|Mux0~3_combout\))) ) + ( \G16|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~34_combout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	cin => \G16|Add5~22\,
	sumout => \G16|Add5~25_sumout\,
	cout => \G16|Add5~26\);

\G16|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux12~0_combout\ = (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & \G16|Add5~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Add5~25_sumout\,
	combout => \G16|Mux12~0_combout\);

\G16|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~21_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G16|Mux11~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( GND ) + ( \G16|Add2~18\ ))
-- \G16|Add2~22\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G16|Mux11~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( GND ) + ( \G16|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Mux11~0_combout\,
	cin => \G16|Add2~18\,
	sumout => \G16|Add2~21_sumout\,
	cout => \G16|Add2~22\);

\G16|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~21_sumout\ = SUM(( (\G16|Add2~21_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux12~0_combout\)) ) + ( \G16|Add3~18\ ))
-- \G16|Add3~22\ = CARRY(( (\G16|Add2~21_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux12~0_combout\)) ) + ( \G16|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Add2~21_sumout\,
	dataf => \G16|ALT_INV_Mux12~0_combout\,
	cin => \G16|Add3~18\,
	sumout => \G16|Add3~21_sumout\,
	cout => \G16|Add3~22\);

\G16|Prod~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~35_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~21_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & (\G16|Add2~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add2~21_sumout\,
	datad => \G16|ALT_INV_Add3~21_sumout\,
	combout => \G16|Prod~35_combout\);

\G16|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~29_sumout\ = SUM(( \G16|Prod~35_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux13~0_combout\)) ) + ( \G16|Add5~26\ ))
-- \G16|Add5~30\ = CARRY(( \G16|Prod~35_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux13~0_combout\)) ) + ( \G16|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~35_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	cin => \G16|Add5~26\,
	sumout => \G16|Add5~29_sumout\,
	cout => \G16|Add5~30\);

\G16|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux11~0_combout\ = (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & \G16|Add5~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Add5~29_sumout\,
	combout => \G16|Mux11~0_combout\);

\G16|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~9_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G16|Mux10~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( GND ) + ( \G16|Add2~22\ ))
-- \G16|Add2~10\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G16|Mux10~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( GND ) + ( \G16|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Mux10~0_combout\,
	cin => \G16|Add2~22\,
	sumout => \G16|Add2~9_sumout\,
	cout => \G16|Add2~10\);

\G16|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~13_sumout\ = SUM(( (\G16|Add2~9_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux11~0_combout\)) ) + ( \G16|Add3~22\ ))
-- \G16|Add3~14\ = CARRY(( (\G16|Add2~9_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux11~0_combout\)) ) + ( \G16|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Add2~9_sumout\,
	dataf => \G16|ALT_INV_Mux11~0_combout\,
	cin => \G16|Add3~22\,
	sumout => \G16|Add3~13_sumout\,
	cout => \G16|Add3~14\);

\G16|Prod~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~32_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~13_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & (\G16|Add2~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add2~9_sumout\,
	datad => \G16|ALT_INV_Add3~13_sumout\,
	combout => \G16|Prod~32_combout\);

\G16|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~17_sumout\ = SUM(( \G16|Prod~32_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux12~0_combout\)) ) + ( \G16|Add5~30\ ))
-- \G16|Add5~18\ = CARRY(( \G16|Prod~32_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux12~0_combout\)) ) + ( \G16|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~32_combout\,
	dataf => \G16|ALT_INV_Mux12~0_combout\,
	cin => \G16|Add5~30\,
	sumout => \G16|Add5~17_sumout\,
	cout => \G16|Add5~18\);

\G16|Prod~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~28_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~13_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & ((\G16|Add5~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101100001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add3~13_sumout\,
	datad => \G16|ALT_INV_Add5~17_sumout\,
	combout => \G16|Prod~28_combout\);

\G16|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux10~0_combout\ = (\G4|rd[0]~0_combout\ & (!\G7|Mux10~1_combout\ & \G16|Prod~28_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datab => \G7|ALT_INV_Mux10~1_combout\,
	datac => \G16|ALT_INV_Prod~28_combout\,
	combout => \G16|Mux10~0_combout\);

\G7|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux10~1_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Mux10~0_combout\,
	combout => \G7|Mux10~1_combout\);

\G16|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~1_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G16|Mux9~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( GND ) + ( \G16|Add2~10\ ))
-- \G16|Add2~2\ = CARRY(( (!\Clock_Sistema~input_o\) # ((!\G16|Mux9~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( GND ) + ( \G16|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Mux9~0_combout\,
	cin => \G16|Add2~10\,
	sumout => \G16|Add2~1_sumout\,
	cout => \G16|Add2~2\);

\G16|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~1_sumout\ = SUM(( (\G16|Add2~1_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux10~0_combout\)) ) + ( \G16|Add3~14\ ))
-- \G16|Add3~2\ = CARRY(( (\G16|Add2~1_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux10~0_combout\)) ) + ( \G16|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Add2~1_sumout\,
	dataf => \G16|ALT_INV_Mux10~0_combout\,
	cin => \G16|Add3~14\,
	sumout => \G16|Add3~1_sumout\,
	cout => \G16|Add3~2\);

\G16|Prod~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~29_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~1_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & (\G16|Add2~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add2~1_sumout\,
	datad => \G16|ALT_INV_Add3~1_sumout\,
	combout => \G16|Prod~29_combout\);

\G16|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~1_sumout\ = SUM(( \G16|Prod~29_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux11~0_combout\)) ) + ( \G16|Add5~18\ ))
-- \G16|Add5~2\ = CARRY(( \G16|Prod~29_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux11~0_combout\)) ) + ( \G16|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~29_combout\,
	dataf => \G16|ALT_INV_Mux11~0_combout\,
	cin => \G16|Add5~18\,
	sumout => \G16|Add5~1_sumout\,
	cout => \G16|Add5~2\);

\G16|Prod~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~19_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~1_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & ((\G16|Add5~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101100001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add3~1_sumout\,
	datad => \G16|ALT_INV_Add5~1_sumout\,
	combout => \G16|Prod~19_combout\);

\G16|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux9~0_combout\ = (\Clock_Sistema~input_o\ & ((!\G4|Mux0~3_combout\ & (\G16|Mux10~0_combout\)) # (\G4|Mux0~3_combout\ & ((\G16|Prod~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Mux10~0_combout\,
	datad => \G16|ALT_INV_Prod~19_combout\,
	combout => \G16|Mux9~0_combout\);

\G16|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add2~5_sumout\ = SUM(( (!\Clock_Sistema~input_o\) # ((!\G16|Mux8~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( GND ) + ( \G16|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Mux8~0_combout\,
	cin => \G16|Add2~2\,
	sumout => \G16|Add2~5_sumout\);

\G16|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~5_sumout\ = SUM(( (\G16|Add2~5_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux9~0_combout\)) ) + ( \G16|Add3~2\ ))
-- \G16|Add3~6\ = CARRY(( (\G16|Add2~5_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux9~0_combout\)) ) + ( \G16|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Add2~5_sumout\,
	dataf => \G16|ALT_INV_Mux9~0_combout\,
	cin => \G16|Add3~2\,
	sumout => \G16|Add3~5_sumout\,
	cout => \G16|Add3~6\);

\G16|Prod~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~30_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~5_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & (\G16|Add2~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add2~5_sumout\,
	datad => \G16|ALT_INV_Add3~5_sumout\,
	combout => \G16|Prod~30_combout\);

\G16|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~5_sumout\ = SUM(( \G16|Prod~30_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux10~0_combout\)) ) + ( \G16|Add5~2\ ))
-- \G16|Add5~6\ = CARRY(( \G16|Prod~30_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux10~0_combout\)) ) + ( \G16|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~30_combout\,
	dataf => \G16|ALT_INV_Mux10~0_combout\,
	cin => \G16|Add5~2\,
	sumout => \G16|Add5~5_sumout\,
	cout => \G16|Add5~6\);

\G16|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux8~0_combout\ = (\Clock_Sistema~input_o\ & ((!\G4|Mux0~3_combout\ & ((\G16|Mux10~0_combout\))) # (\G4|Mux0~3_combout\ & (\G16|Add5~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010100000000001101010000000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Add5~5_sumout\,
	datab => \G16|ALT_INV_Mux10~0_combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G16|Mux8~0_combout\);

\G7|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux8~1_combout\ = (!\G7|Mux31~0_combout\ & \G16|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Mux8~0_combout\,
	combout => \G7|Mux8~1_combout\);

\G7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux7~0_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G7|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G7|ALT_INV_Mux8~1_combout\,
	combout => \G7|Mux7~0_combout\);

\G16|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add3~9_sumout\ = SUM(( (\G16|Add2~5_sumout\ & ((!\Clock_Sistema~input_o\) # (\G4|Mux0~3_combout\))) ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux8~0_combout\)) ) + ( \G16|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Add2~5_sumout\,
	dataf => \G16|ALT_INV_Mux8~0_combout\,
	cin => \G16|Add3~6\,
	sumout => \G16|Add3~9_sumout\);

\G16|Prod~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~31_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~9_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & (\G16|Add2~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add2~5_sumout\,
	datad => \G16|ALT_INV_Add3~9_sumout\,
	combout => \G16|Prod~31_combout\);

\G16|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~9_sumout\ = SUM(( \G16|Prod~31_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux9~0_combout\)) ) + ( \G16|Add5~6\ ))
-- \G16|Add5~10\ = CARRY(( \G16|Prod~31_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux9~0_combout\)) ) + ( \G16|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~31_combout\,
	dataf => \G16|ALT_INV_Mux9~0_combout\,
	cin => \G16|Add5~6\,
	sumout => \G16|Add5~9_sumout\,
	cout => \G16|Add5~10\);

\G16|Prod~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~21_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~9_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & ((\G16|Add5~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101100001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add3~9_sumout\,
	datad => \G16|ALT_INV_Add5~9_sumout\,
	combout => \G16|Prod~21_combout\);

\G16|Prod~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~20_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~5_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & ((\G16|Add5~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101100001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add3~5_sumout\,
	datad => \G16|ALT_INV_Add5~5_sumout\,
	combout => \G16|Prod~20_combout\);

\G16|Add12~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \G16|Add12~34_cout\);

\G16|Add12~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~30_cout\ = CARRY(( \Clock_Sistema~input_o\ ) + ( \G16|Prod~28_combout\ ) + ( \G16|Add12~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datac => \G16|ALT_INV_Prod~28_combout\,
	cin => \G16|Add12~34_cout\,
	cout => \G16|Add12~30_cout\);

\G16|Add12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~2_cout\ = CARRY(( \G16|Prod~19_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G4|Mux0~3_combout\ & !\G7|Mux31~0_combout\)) ) + ( \G16|Add12~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G16|ALT_INV_Prod~19_combout\,
	dataf => \G7|ALT_INV_Mux31~0_combout\,
	cin => \G16|Add12~30_cout\,
	cout => \G16|Add12~2_cout\);

\G16|Add12~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~6_cout\ = CARRY(( \G16|Prod~20_combout\ ) + ( ((!\Clock_Sistema~input_o\) # (!\G16|Mux13~0_combout\)) # (\G4|Mux0~3_combout\) ) + ( \G16|Add12~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Clock_Sistema~input_o\,
	datad => \G16|ALT_INV_Prod~20_combout\,
	dataf => \G16|ALT_INV_Mux13~0_combout\,
	cin => \G16|Add12~2_cout\,
	cout => \G16|Add12~6_cout\);

\G16|Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~9_sumout\ = SUM(( \G16|Prod~21_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G16|Mux12~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add12~6_cout\ ))
-- \G16|Add12~10\ = CARRY(( \G16|Prod~21_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G16|Mux12~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add12~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~21_combout\,
	dataf => \G16|ALT_INV_Mux12~0_combout\,
	cin => \G16|Add12~6_cout\,
	sumout => \G16|Add12~9_sumout\,
	cout => \G16|Add12~10\);

\G16|Prod~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~22_combout\ = (!\G7|Mux10~1_combout\ & (\G16|Prod~21_combout\)) # (\G7|Mux10~1_combout\ & ((\G16|Add12~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux10~1_combout\,
	datab => \G16|ALT_INV_Prod~21_combout\,
	datac => \G16|ALT_INV_Add12~9_sumout\,
	combout => \G16|Prod~22_combout\);

\G16|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux7~0_combout\ = ((\G4|rd[0]~0_combout\ & \G16|Prod~22_combout\)) # (\G7|Mux8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Mux8~1_combout\,
	datad => \G16|ALT_INV_Prod~22_combout\,
	combout => \G16|Mux7~0_combout\);

\G7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux6~0_combout\ = (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Mux7~0_combout\,
	combout => \G7|Mux6~0_combout\);

\G16|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add5~13_sumout\ = SUM(( \G16|Prod~31_combout\ ) + ( (\Clock_Sistema~input_o\ & (!\G4|Mux0~3_combout\ & \G16|Mux8~0_combout\)) ) + ( \G16|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~31_combout\,
	dataf => \G16|ALT_INV_Mux8~0_combout\,
	cin => \G16|Add5~10\,
	sumout => \G16|Add5~13_sumout\);

\G16|Prod~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~23_combout\ = (!\Clock_Sistema~input_o\ & (((\G16|Add3~9_sumout\)))) # (\Clock_Sistema~input_o\ & (\G4|Mux0~3_combout\ & ((\G16|Add5~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101100001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \G16|ALT_INV_Add3~9_sumout\,
	datad => \G16|ALT_INV_Add5~13_sumout\,
	combout => \G16|Prod~23_combout\);

\G16|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~13_sumout\ = SUM(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G16|Mux11~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add12~10\ ))
-- \G16|Add12~14\ = CARRY(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G16|Mux11~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~23_combout\,
	dataf => \G16|ALT_INV_Mux11~0_combout\,
	cin => \G16|Add12~10\,
	sumout => \G16|Add12~13_sumout\,
	cout => \G16|Add12~14\);

\G16|Prod~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~24_combout\ = (!\G7|Mux10~1_combout\ & (\G16|Prod~23_combout\)) # (\G7|Mux10~1_combout\ & ((\G16|Add12~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux10~1_combout\,
	datab => \G16|ALT_INV_Prod~23_combout\,
	datac => \G16|ALT_INV_Add12~13_sumout\,
	combout => \G16|Prod~24_combout\);

\G16|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux6~0_combout\ = (\G4|rd[0]~0_combout\ & \G16|Prod~24_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G16|ALT_INV_Prod~24_combout\,
	combout => \G16|Mux6~0_combout\);

\G16|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~17_sumout\ = SUM(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G16|Mux10~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add12~14\ ))
-- \G16|Add12~18\ = CARRY(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G16|Mux10~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~23_combout\,
	dataf => \G16|ALT_INV_Mux10~0_combout\,
	cin => \G16|Add12~14\,
	sumout => \G16|Add12~17_sumout\,
	cout => \G16|Add12~18\);

\G16|Prod~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~25_combout\ = (!\G7|Mux10~1_combout\ & (\G16|Prod~23_combout\)) # (\G7|Mux10~1_combout\ & ((\G16|Add12~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux10~1_combout\,
	datab => \G16|ALT_INV_Prod~23_combout\,
	datac => \G16|ALT_INV_Add12~17_sumout\,
	combout => \G16|Prod~25_combout\);

\G16|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux5~0_combout\ = (\G4|rd[0]~0_combout\ & \G16|Prod~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G16|ALT_INV_Prod~25_combout\,
	combout => \G16|Mux5~0_combout\);

\G7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux5~0_combout\ = (!\G7|Mux31~0_combout\ & (((\G16|Mux5~0_combout\) # (\G16|Mux6~0_combout\)) # (\G16|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Mux7~0_combout\,
	datac => \G16|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Mux5~0_combout\,
	combout => \G7|Mux5~0_combout\);

\G16|Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~21_sumout\ = SUM(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G16|Mux9~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add12~18\ ))
-- \G16|Add12~22\ = CARRY(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G16|Mux9~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~23_combout\,
	dataf => \G16|ALT_INV_Mux9~0_combout\,
	cin => \G16|Add12~18\,
	sumout => \G16|Add12~21_sumout\,
	cout => \G16|Add12~22\);

\G16|Prod~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~26_combout\ = (!\G7|Mux10~1_combout\ & (\G16|Prod~23_combout\)) # (\G7|Mux10~1_combout\ & ((\G16|Add12~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux10~1_combout\,
	datab => \G16|ALT_INV_Prod~23_combout\,
	datac => \G16|ALT_INV_Add12~21_sumout\,
	combout => \G16|Prod~26_combout\);

\G16|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux4~0_combout\ = (\G4|rd[0]~0_combout\ & \G16|Prod~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G16|ALT_INV_Prod~26_combout\,
	combout => \G16|Mux4~0_combout\);

\G7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux4~0_combout\ = ( \G16|Mux4~0_combout\ & ( !\G7|Mux31~0_combout\ ) ) # ( !\G16|Mux4~0_combout\ & ( (!\G7|Mux31~0_combout\ & (((\G16|Mux5~0_combout\) # (\G16|Mux6~0_combout\)) # (\G16|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101000101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Mux7~0_combout\,
	datac => \G16|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Mux5~0_combout\,
	datae => \G16|ALT_INV_Mux4~0_combout\,
	combout => \G7|Mux4~0_combout\);

\G16|Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Add12~25_sumout\ = SUM(( \G16|Prod~23_combout\ ) + ( (!\Clock_Sistema~input_o\) # ((!\G16|Mux8~0_combout\) # (\G4|Mux0~3_combout\)) ) + ( \G16|Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Clock_Sistema~input_o\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datad => \G16|ALT_INV_Prod~23_combout\,
	dataf => \G16|ALT_INV_Mux8~0_combout\,
	cin => \G16|Add12~22\,
	sumout => \G16|Add12~25_sumout\);

\G16|Prod~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Prod~27_combout\ = (!\G7|Mux10~1_combout\ & (\G16|Prod~23_combout\)) # (\G7|Mux10~1_combout\ & ((\G16|Add12~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux10~1_combout\,
	datab => \G16|ALT_INV_Prod~23_combout\,
	datac => \G16|ALT_INV_Add12~25_sumout\,
	combout => \G16|Prod~27_combout\);

\G16|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux3~0_combout\ = (\G4|rd[0]~0_combout\ & \G16|Prod~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G16|ALT_INV_Prod~27_combout\,
	combout => \G16|Mux3~0_combout\);

\G7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux3~0_combout\ = ( \G16|Mux4~0_combout\ & ( \G16|Mux3~0_combout\ & ( !\G7|Mux31~0_combout\ ) ) ) # ( !\G16|Mux4~0_combout\ & ( \G16|Mux3~0_combout\ & ( !\G7|Mux31~0_combout\ ) ) ) # ( \G16|Mux4~0_combout\ & ( !\G16|Mux3~0_combout\ & ( 
-- !\G7|Mux31~0_combout\ ) ) ) # ( !\G16|Mux4~0_combout\ & ( !\G16|Mux3~0_combout\ & ( (!\G7|Mux31~0_combout\ & (((\G16|Mux5~0_combout\) # (\G16|Mux6~0_combout\)) # (\G16|Mux7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Mux7~0_combout\,
	datac => \G16|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Mux5~0_combout\,
	datae => \G16|ALT_INV_Mux4~0_combout\,
	dataf => \G16|ALT_INV_Mux3~0_combout\,
	combout => \G7|Mux3~0_combout\);

\G16|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux6~1_combout\ = ((\G4|rd[0]~0_combout\ & \G16|Prod~24_combout\)) # (\G7|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_rd[0]~0_combout\,
	datac => \G7|ALT_INV_Mux7~0_combout\,
	datad => \G16|ALT_INV_Prod~24_combout\,
	combout => \G16|Mux6~1_combout\);

\G16|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux2~1_combout\ = (\G16|Prod~23_combout\ & (\G4|Mux0~3_combout\ & \Clock_Sistema~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Prod~23_combout\,
	datab => \G4|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G16|Mux2~1_combout\);

\G7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux2~0_combout\ = ( \G16|Mux3~0_combout\ & ( \G16|Mux2~1_combout\ & ( !\G7|Mux31~0_combout\ ) ) ) # ( !\G16|Mux3~0_combout\ & ( \G16|Mux2~1_combout\ & ( !\G7|Mux31~0_combout\ ) ) ) # ( \G16|Mux3~0_combout\ & ( !\G16|Mux2~1_combout\ & ( 
-- !\G7|Mux31~0_combout\ ) ) ) # ( !\G16|Mux3~0_combout\ & ( !\G16|Mux2~1_combout\ & ( (!\G7|Mux31~0_combout\ & (((\G16|Mux4~0_combout\) # (\G16|Mux5~0_combout\)) # (\G16|Mux6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Mux6~1_combout\,
	datac => \G16|ALT_INV_Mux5~0_combout\,
	datad => \G16|ALT_INV_Mux4~0_combout\,
	datae => \G16|ALT_INV_Mux3~0_combout\,
	dataf => \G16|ALT_INV_Mux2~1_combout\,
	combout => \G7|Mux2~0_combout\);

\G7|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G7|Mux0~1_combout\ = (!\G4|Mux0~3_combout\ & (\Clock_Sistema~input_o\ & ((\G7|Mux5~0_combout\) # (\G16|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000111000000000000011100000000000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G16|ALT_INV_Mux2~1_combout\,
	datab => \G7|ALT_INV_Mux5~0_combout\,
	datac => \G4|ALT_INV_Mux0~3_combout\,
	datad => \ALT_INV_Clock_Sistema~input_o\,
	combout => \G7|Mux0~1_combout\);

\G16|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux5~1_combout\ = ((!\G7|Mux31~0_combout\ & ((\G16|Mux6~0_combout\) # (\G16|Mux7~0_combout\)))) # (\G16|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101011111111001010101111111100101010111111110010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Mux7~0_combout\,
	datac => \G16|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Mux5~0_combout\,
	combout => \G16|Mux5~1_combout\);

\G16|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux4~1_combout\ = ( \G16|Mux4~0_combout\ ) # ( !\G16|Mux4~0_combout\ & ( (!\G7|Mux31~0_combout\ & (((\G16|Mux5~0_combout\) # (\G16|Mux6~0_combout\)) # (\G16|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010111111111111111100101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Mux7~0_combout\,
	datac => \G16|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Mux5~0_combout\,
	datae => \G16|ALT_INV_Mux4~0_combout\,
	combout => \G16|Mux4~1_combout\);

\G16|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux3~1_combout\ = ( \G16|Mux4~0_combout\ & ( \G16|Mux3~0_combout\ ) ) # ( !\G16|Mux4~0_combout\ & ( \G16|Mux3~0_combout\ ) ) # ( \G16|Mux4~0_combout\ & ( !\G16|Mux3~0_combout\ & ( !\G7|Mux31~0_combout\ ) ) ) # ( !\G16|Mux4~0_combout\ & ( 
-- !\G16|Mux3~0_combout\ & ( (!\G7|Mux31~0_combout\ & (((\G16|Mux5~0_combout\) # (\G16|Mux6~0_combout\)) # (\G16|Mux7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Mux7~0_combout\,
	datac => \G16|ALT_INV_Mux6~0_combout\,
	datad => \G16|ALT_INV_Mux5~0_combout\,
	datae => \G16|ALT_INV_Mux4~0_combout\,
	dataf => \G16|ALT_INV_Mux3~0_combout\,
	combout => \G16|Mux3~1_combout\);

\G16|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G16|Mux2~0_combout\ = ( \G16|Mux3~0_combout\ & ( \G16|Mux2~1_combout\ ) ) # ( !\G16|Mux3~0_combout\ & ( \G16|Mux2~1_combout\ ) ) # ( \G16|Mux3~0_combout\ & ( !\G16|Mux2~1_combout\ & ( !\G7|Mux31~0_combout\ ) ) ) # ( !\G16|Mux3~0_combout\ & ( 
-- !\G16|Mux2~1_combout\ & ( (!\G7|Mux31~0_combout\ & (((\G16|Mux4~0_combout\) # (\G16|Mux5~0_combout\)) # (\G16|Mux6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G7|ALT_INV_Mux31~0_combout\,
	datab => \G16|ALT_INV_Mux6~1_combout\,
	datac => \G16|ALT_INV_Mux5~0_combout\,
	datad => \G16|ALT_INV_Mux4~0_combout\,
	datae => \G16|ALT_INV_Mux3~0_combout\,
	dataf => \G16|ALT_INV_Mux2~1_combout\,
	combout => \G16|Mux2~0_combout\);

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


