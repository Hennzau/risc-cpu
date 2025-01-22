-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "01/22/2025 21:53:00"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	MAX10_CLK1_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[7]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[7]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~56_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~57_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~59_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~58_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~61_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~60_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~62_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~63_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~97_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~64_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~65_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~66_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~67_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~69_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~68_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~75_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~74_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~71_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~73_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~72_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~79_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~78_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~94_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~76_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~77_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~95_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~82_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~83_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~85_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~84_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~86_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~87_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~96_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~88_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~102_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~89_combout\ : std_logic;
SIGNAL \b2v_inst6|Add7~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[71]~90_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~92_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Add7~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Add7~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Add7~3_combout\ : std_logic;
SIGNAL \b2v_inst6|Add7~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Add5~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Add5~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Add5~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Add5~3_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|Add3~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Add3~2_combout\ : std_logic;
SIGNAL \b2v_inst6|Add3~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst3|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst5|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\b2v_inst6|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\ <= NOT \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\;
\b2v_inst3|ALT_INV_Mux0~0_combout\ <= NOT \b2v_inst3|Mux0~0_combout\;
\b2v_inst4|ALT_INV_Mux0~0_combout\ <= NOT \b2v_inst4|Mux0~0_combout\;
\b2v_inst5|ALT_INV_Mux0~0_combout\ <= NOT \b2v_inst5|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N30
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[9]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|Div2|auto_generated|divider|divider|ALT_INV_add_sub_9_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X58_Y51_N16
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = \SW[7]~input_o\ $ (VCC)
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY(\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => VCC,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X58_Y51_N18
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\SW[8]~input_o\ & (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & VCC)) # (!\SW[8]~input_o\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\SW[8]~input_o\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X58_Y51_N20
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\SW[9]~input_o\ & (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ $ (GND))) # (!\SW[9]~input_o\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & VCC))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((\SW[9]~input_o\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X58_Y51_N22
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y51_N24
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X58_Y51_N30
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~56_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \SW[9]~input_o\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~56_combout\);

-- Location: LCCOMB_X58_Y51_N14
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~57_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~57_combout\);

-- Location: LCCOMB_X59_Y51_N4
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~59_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~59_combout\);

-- Location: LCCOMB_X58_Y51_N0
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~58_combout\ = (\SW[8]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~58_combout\);

-- Location: LCCOMB_X58_Y51_N26
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~61_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~61_combout\);

-- Location: LCCOMB_X58_Y51_N28
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~60_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \SW[7]~input_o\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~60_combout\);

-- Location: LCCOMB_X59_Y51_N2
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~62_combout\ = (\SW[6]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[6]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~62_combout\);

-- Location: LCCOMB_X59_Y51_N10
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~63_combout\ = (\SW[6]~input_o\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[6]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~63_combout\);

-- Location: LCCOMB_X58_Y51_N4
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~62_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~63_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~62_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~62_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datad => VCC,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X58_Y51_N6
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~61_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~60_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~61_combout\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~60_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~61_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~60_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~61_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[46]~60_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X58_Y51_N8
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~59_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~58_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~59_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~58_combout\)))))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~59_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~59_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[47]~58_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X58_Y51_N10
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~56_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~57_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~56_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[48]~57_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y51_N12
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X58_Y51_N2
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~97_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\SW[8]~input_o\)) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \SW[8]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~97_combout\);

-- Location: LCCOMB_X57_Y51_N14
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~64_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~64_combout\);

-- Location: LCCOMB_X57_Y51_N12
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\SW[7]~input_o\)) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98_combout\);

-- Location: LCCOMB_X57_Y51_N2
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~65_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~65_combout\);

-- Location: LCCOMB_X57_Y51_N6
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~66_combout\ = (\SW[6]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~66_combout\);

-- Location: LCCOMB_X57_Y51_N4
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~67_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~67_combout\);

-- Location: LCCOMB_X57_Y51_N10
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~69_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \SW[5]~input_o\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~69_combout\);

-- Location: LCCOMB_X57_Y51_N28
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~68_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \SW[5]~input_o\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~68_combout\);

-- Location: LCCOMB_X57_Y51_N18
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~69_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~68_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~69_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~69_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[50]~68_combout\,
	datad => VCC,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X57_Y51_N20
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~66_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~67_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~66_combout\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~67_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~66_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~67_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~66_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[51]~67_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X57_Y51_N22
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~65_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~65_combout\)))))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~65_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X57_Y51_N24
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~97_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~64_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~97_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[53]~64_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y51_N26
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\);

-- Location: LCCOMB_X57_Y53_N22
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~75_combout\ = (\SW[4]~input_o\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[4]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~75_combout\);

-- Location: LCCOMB_X56_Y53_N6
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~74_combout\ = (\SW[4]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[4]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~74_combout\);

-- Location: LCCOMB_X57_Y53_N10
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~75_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~74_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~75_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~75_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[55]~74_combout\,
	datad => VCC,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X57_Y51_N8
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\);

-- Location: LCCOMB_X57_Y51_N30
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- ((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~93_combout\);

-- Location: LCCOMB_X57_Y53_N26
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~71_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~71_combout\);

-- Location: LCCOMB_X57_Y51_N16
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- (\SW[6]~input_o\)) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99_combout\);

-- Location: LCCOMB_X57_Y53_N6
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~73_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~73_combout\);

-- Location: LCCOMB_X57_Y53_N20
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~72_combout\ = (\SW[5]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~72_combout\);

-- Location: LCCOMB_X57_Y53_N12
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~73_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~72_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~73_combout\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~72_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~73_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~72_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~73_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[56]~72_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X57_Y53_N14
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~71_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~71_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99_combout\)))))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~71_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~71_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X57_Y53_N16
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[58]~93_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y53_N18
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\);

-- Location: LCCOMB_X58_Y53_N10
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~79_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~79_combout\);

-- Location: LCCOMB_X58_Y53_N24
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~78_combout\ = (\SW[4]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[4]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~78_combout\);

-- Location: LCCOMB_X58_Y53_N22
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\ = (\SW[3]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\);

-- Location: LCCOMB_X58_Y53_N20
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\ = (\SW[3]~input_o\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\);

-- Location: LCCOMB_X58_Y53_N0
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~80_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\,
	datad => VCC,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X58_Y53_N2
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~79_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~78_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~79_combout\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~78_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~79_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~78_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~79_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[61]~78_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X57_Y53_N8
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~94_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99_combout\) # 
-- ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[57]~99_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~94_combout\);

-- Location: LCCOMB_X57_Y53_N4
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~76_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~76_combout\);

-- Location: LCCOMB_X58_Y53_N26
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~77_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~77_combout\);

-- Location: LCCOMB_X57_Y53_N24
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & 
-- (\SW[5]~input_o\)) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \SW[5]~input_o\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100_combout\);

-- Location: LCCOMB_X58_Y53_N4
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~77_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~77_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100_combout\)))))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~77_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~77_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X58_Y53_N6
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~94_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~76_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~94_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[63]~76_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y53_N8
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ = \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\);

-- Location: LCCOMB_X58_Y53_N28
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & 
-- (\SW[4]~input_o\)) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101_combout\);

-- Location: LCCOMB_X58_Y53_N14
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~95_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100_combout\) # 
-- ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[62]~100_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~95_combout\);

-- Location: LCCOMB_X59_Y53_N28
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~82_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~82_combout\);

-- Location: LCCOMB_X59_Y53_N30
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~83_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~83_combout\);

-- Location: LCCOMB_X59_Y53_N26
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~85_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~85_combout\);

-- Location: LCCOMB_X59_Y53_N0
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~84_combout\ = (\SW[3]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~84_combout\);

-- Location: LCCOMB_X59_Y53_N22
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~86_combout\ = (\SW[2]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~86_combout\);

-- Location: LCCOMB_X59_Y53_N24
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~87_combout\ = (\SW[2]~input_o\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~87_combout\);

-- Location: LCCOMB_X59_Y53_N6
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~86_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~87_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~86_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~86_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[65]~87_combout\,
	datad => VCC,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X59_Y53_N8
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~85_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~84_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~85_combout\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~84_combout\)))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~85_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~84_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~85_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[66]~84_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X59_Y53_N10
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & (((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~83_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~83_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101_combout\)))))
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~83_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~83_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X59_Y53_N12
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~95_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~82_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~95_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[68]~82_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y53_N14
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ = \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\);

-- Location: LCCOMB_X59_Y53_N2
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~96_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101_combout\) # 
-- ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[67]~101_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~96_combout\);

-- Location: LCCOMB_X59_Y53_N18
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~88_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~88_combout\);

-- Location: LCCOMB_X59_Y53_N16
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~102_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & 
-- (\SW[3]~input_o\)) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~102_combout\);

-- Location: LCCOMB_X59_Y53_N4
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~89_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~89_combout\);

-- Location: LCCOMB_X60_Y53_N22
\b2v_inst6|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add7~0_combout\ = (\SW[2]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add7~0_combout\);

-- Location: LCCOMB_X59_Y53_N20
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[71]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[71]~90_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[71]~90_combout\);

-- Location: LCCOMB_X60_Y53_N10
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~92_combout\ = (\SW[1]~input_o\ & !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~92_combout\);

-- Location: LCCOMB_X60_Y53_N4
\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\ = (\SW[1]~input_o\ & \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\);

-- Location: LCCOMB_X60_Y53_N12
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ = CARRY((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~92_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~92_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\,
	datad => VCC,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\);

-- Location: LCCOMB_X60_Y53_N14
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ = CARRY((!\b2v_inst6|Add7~0_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[71]~90_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add7~0_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[71]~90_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\);

-- Location: LCCOMB_X60_Y53_N16
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~102_combout\) # 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~102_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[72]~89_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\);

-- Location: LCCOMB_X60_Y53_N18
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~96_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~88_combout\ & 
-- !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~96_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|StageOut[73]~88_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\,
	cout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y53_N20
\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ = \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\);

-- Location: LCCOMB_X60_Y53_N24
\b2v_inst6|Add7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add7~1_combout\ = \SW[1]~input_o\ $ (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add7~1_combout\);

-- Location: LCCOMB_X60_Y53_N6
\b2v_inst6|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add7~2_combout\ = \SW[2]~input_o\ $ (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ $ (((\SW[1]~input_o\) # (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \SW[2]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add7~2_combout\);

-- Location: LCCOMB_X60_Y53_N26
\b2v_inst6|Add7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add7~3_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\) # ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)))) # 
-- (!\SW[2]~input_o\ & (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\SW[1]~input_o\) # (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \SW[2]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add7~3_combout\);

-- Location: LCCOMB_X60_Y53_N28
\b2v_inst6|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add7~4_combout\ = \b2v_inst6|Add7~3_combout\ $ (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ $ (\SW[3]~input_o\ $ (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add7~3_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datac => \SW[3]~input_o\,
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add7~4_combout\);

-- Location: LCCOMB_X61_Y53_N0
\b2v_inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux6~0_combout\ = (\b2v_inst6|Add7~2_combout\ & (\b2v_inst6|Add7~1_combout\ & (\SW[0]~input_o\ $ (\b2v_inst6|Add7~4_combout\)))) # (!\b2v_inst6|Add7~2_combout\ & (\SW[0]~input_o\ & (\b2v_inst6|Add7~1_combout\ $ (!\b2v_inst6|Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \b2v_inst6|Add7~1_combout\,
	datac => \b2v_inst6|Add7~2_combout\,
	datad => \b2v_inst6|Add7~4_combout\,
	combout => \b2v_inst5|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y53_N6
\b2v_inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux5~0_combout\ = (\b2v_inst6|Add7~1_combout\ & (\b2v_inst6|Add7~2_combout\ & (\SW[0]~input_o\ $ (!\b2v_inst6|Add7~4_combout\)))) # (!\b2v_inst6|Add7~1_combout\ & ((\SW[0]~input_o\ & ((!\b2v_inst6|Add7~4_combout\))) # (!\SW[0]~input_o\ & 
-- (\b2v_inst6|Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \b2v_inst6|Add7~1_combout\,
	datac => \b2v_inst6|Add7~2_combout\,
	datad => \b2v_inst6|Add7~4_combout\,
	combout => \b2v_inst5|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y53_N28
\b2v_inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux4~0_combout\ = (\b2v_inst6|Add7~2_combout\ & (!\b2v_inst6|Add7~4_combout\ & ((!\b2v_inst6|Add7~1_combout\) # (!\SW[0]~input_o\)))) # (!\b2v_inst6|Add7~2_combout\ & (!\SW[0]~input_o\ & (!\b2v_inst6|Add7~1_combout\ & 
-- \b2v_inst6|Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \b2v_inst6|Add7~1_combout\,
	datac => \b2v_inst6|Add7~2_combout\,
	datad => \b2v_inst6|Add7~4_combout\,
	combout => \b2v_inst5|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y53_N10
\b2v_inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux3~0_combout\ = (\SW[0]~input_o\ & (\b2v_inst6|Add7~1_combout\ $ ((\b2v_inst6|Add7~2_combout\)))) # (!\SW[0]~input_o\ & ((\b2v_inst6|Add7~1_combout\ & (\b2v_inst6|Add7~2_combout\ & \b2v_inst6|Add7~4_combout\)) # (!\b2v_inst6|Add7~1_combout\ & 
-- (!\b2v_inst6|Add7~2_combout\ & !\b2v_inst6|Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \b2v_inst6|Add7~1_combout\,
	datac => \b2v_inst6|Add7~2_combout\,
	datad => \b2v_inst6|Add7~4_combout\,
	combout => \b2v_inst5|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y53_N12
\b2v_inst5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux2~0_combout\ = (\b2v_inst6|Add7~1_combout\ & ((\b2v_inst6|Add7~2_combout\ & ((\b2v_inst6|Add7~4_combout\))) # (!\b2v_inst6|Add7~2_combout\ & (\SW[0]~input_o\)))) # (!\b2v_inst6|Add7~1_combout\ & (\SW[0]~input_o\ & 
-- ((\b2v_inst6|Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \b2v_inst6|Add7~1_combout\,
	datac => \b2v_inst6|Add7~2_combout\,
	datad => \b2v_inst6|Add7~4_combout\,
	combout => \b2v_inst5|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y53_N22
\b2v_inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux1~0_combout\ = (\SW[0]~input_o\ & (\b2v_inst6|Add7~4_combout\ $ (((\b2v_inst6|Add7~1_combout\ & \b2v_inst6|Add7~2_combout\))))) # (!\SW[0]~input_o\ & (!\b2v_inst6|Add7~1_combout\ & (!\b2v_inst6|Add7~2_combout\ & \b2v_inst6|Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \b2v_inst6|Add7~1_combout\,
	datac => \b2v_inst6|Add7~2_combout\,
	datad => \b2v_inst6|Add7~4_combout\,
	combout => \b2v_inst5|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y53_N14
\b2v_inst5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux0~0_combout\ = (\SW[0]~input_o\ & ((\b2v_inst6|Add7~1_combout\ $ (!\b2v_inst6|Add7~2_combout\)) # (!\b2v_inst6|Add7~4_combout\))) # (!\SW[0]~input_o\ & ((\b2v_inst6|Add7~2_combout\ $ (!\b2v_inst6|Add7~4_combout\)) # 
-- (!\b2v_inst6|Add7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \b2v_inst6|Add7~1_combout\,
	datac => \b2v_inst6|Add7~2_combout\,
	datad => \b2v_inst6|Add7~4_combout\,
	combout => \b2v_inst5|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y50_N20
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ $ (GND)
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY(!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => VCC,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X60_Y50_N22
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)) # 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & VCC))
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X60_Y50_N24
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & VCC)) # 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ $ (GND)))
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X60_Y50_N26
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y50_N28
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X61_Y50_N26
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\);

-- Location: LCCOMB_X60_Y50_N6
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\);

-- Location: LCCOMB_X61_Y50_N30
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\);

-- Location: LCCOMB_X61_Y50_N20
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\ = (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\);

-- Location: LCCOMB_X61_Y50_N22
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\);

-- Location: LCCOMB_X61_Y50_N28
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\ = (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\);

-- Location: LCCOMB_X63_Y50_N28
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ = !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\);

-- Location: LCCOMB_X61_Y50_N6
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\ = (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\);

-- Location: LCCOMB_X61_Y50_N8
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\);

-- Location: LCCOMB_X61_Y50_N10
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\) # (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\)))
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\) # (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~43_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[45]~42_combout\,
	datad => VCC,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X61_Y50_N12
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\) # 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\)))) # (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\ & 
-- (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\)))
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\ & 
-- !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~40_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[46]~41_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X61_Y50_N14
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\) # 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\)))) # (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\) # 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\)))))
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\) # 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~38_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[47]~39_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X61_Y50_N16
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\ & 
-- !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~36_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[48]~37_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y50_N18
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X61_Y50_N2
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)) # (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\);

-- Location: LCCOMB_X61_Y50_N24
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\ = (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\);

-- Location: LCCOMB_X62_Y50_N26
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X61_Y50_N4
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)) # (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\);

-- Location: LCCOMB_X62_Y50_N10
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X63_Y50_N14
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- ((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\))) # (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\);

-- Location: LCCOMB_X62_Y50_N6
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\);

-- Location: LCCOMB_X62_Y50_N12
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\ = !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\);

-- Location: LCCOMB_X62_Y50_N8
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\ = (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: LCCOMB_X62_Y50_N16
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\) # (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\)))
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\) # (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~47_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datad => VCC,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X62_Y50_N18
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\)))) # (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\ & 
-- (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\)))
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\ & 
-- !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X62_Y50_N20
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\)))) # (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\)))))
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X62_Y50_N22
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\ & 
-- !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~56_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[53]~44_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X62_Y50_N24
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\);

-- Location: LCCOMB_X62_Y50_N0
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\);

-- Location: LCCOMB_X62_Y50_N28
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\) # 
-- ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[52]~57_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\);

-- Location: LCCOMB_X62_Y50_N14
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\);

-- Location: LCCOMB_X62_Y50_N4
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\) # 
-- ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[51]~58_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\);

-- Location: LCCOMB_X62_Y50_N2
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- ((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\))) # (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\);

-- Location: LCCOMB_X62_Y50_N30
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\);

-- Location: LCCOMB_X64_Y50_N18
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\ = !\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\);

-- Location: LCCOMB_X64_Y50_N2
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\ = (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\);

-- Location: LCCOMB_X63_Y50_N0
\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\ = (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\);

-- Location: LCCOMB_X63_Y50_N18
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ = CARRY((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\) # (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~53_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[55]~52_combout\,
	datad => VCC,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\);

-- Location: LCCOMB_X63_Y50_N20
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\ & 
-- !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~59_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[56]~51_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\);

-- Location: LCCOMB_X63_Y50_N22
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\) # 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~50_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[57]~55_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\);

-- Location: LCCOMB_X63_Y50_N24
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\ & 
-- !\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|StageOut[58]~54_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\,
	cout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y50_N26
\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\);

-- Location: LCCOMB_X65_Y50_N12
\b2v_inst6|Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add5~1_combout\ = \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ $ (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ $ 
-- (((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add5~1_combout\);

-- Location: LCCOMB_X65_Y50_N20
\b2v_inst6|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add5~0_combout\ = \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ $ (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add5~0_combout\);

-- Location: LCCOMB_X65_Y50_N22
\b2v_inst6|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add5~2_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\) # 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\))) # 
-- (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & 
-- ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add5~2_combout\);

-- Location: LCCOMB_X65_Y50_N10
\b2v_inst6|Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add5~3_combout\ = \b2v_inst6|Add5~2_combout\ $ (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ $ (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ $ 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add5~2_combout\,
	datab => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add5~3_combout\);

-- Location: LCCOMB_X65_Y50_N26
\b2v_inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux6~0_combout\ = (\b2v_inst6|Add5~1_combout\ & (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & (\b2v_inst6|Add5~0_combout\ $ (!\b2v_inst6|Add5~3_combout\)))) # (!\b2v_inst6|Add5~1_combout\ & 
-- (!\b2v_inst6|Add5~0_combout\ & (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ $ (\b2v_inst6|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add5~1_combout\,
	datab => \b2v_inst6|Add5~0_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \b2v_inst6|Add5~3_combout\,
	combout => \b2v_inst4|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y50_N18
\b2v_inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux5~0_combout\ = (\b2v_inst6|Add5~0_combout\ & ((\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & (!\b2v_inst6|Add5~1_combout\)) # 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & ((\b2v_inst6|Add5~3_combout\))))) # (!\b2v_inst6|Add5~0_combout\ & (!\b2v_inst6|Add5~1_combout\ & 
-- (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ $ (!\b2v_inst6|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add5~1_combout\,
	datab => \b2v_inst6|Add5~0_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \b2v_inst6|Add5~3_combout\,
	combout => \b2v_inst4|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y50_N30
\b2v_inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux4~0_combout\ = (\b2v_inst6|Add5~1_combout\ & (\b2v_inst6|Add5~0_combout\ & (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & !\b2v_inst6|Add5~3_combout\))) # (!\b2v_inst6|Add5~1_combout\ & 
-- (\b2v_inst6|Add5~3_combout\ & ((\b2v_inst6|Add5~0_combout\) # (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add5~1_combout\,
	datab => \b2v_inst6|Add5~0_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \b2v_inst6|Add5~3_combout\,
	combout => \b2v_inst4|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y50_N0
\b2v_inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux3~0_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & ((\b2v_inst6|Add5~1_combout\ & (\b2v_inst6|Add5~0_combout\ & \b2v_inst6|Add5~3_combout\)) # (!\b2v_inst6|Add5~1_combout\ & 
-- (!\b2v_inst6|Add5~0_combout\ & !\b2v_inst6|Add5~3_combout\)))) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & (\b2v_inst6|Add5~1_combout\ $ ((\b2v_inst6|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add5~1_combout\,
	datab => \b2v_inst6|Add5~0_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \b2v_inst6|Add5~3_combout\,
	combout => \b2v_inst4|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y50_N2
\b2v_inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux2~0_combout\ = (\b2v_inst6|Add5~0_combout\ & (((!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & !\b2v_inst6|Add5~3_combout\)))) # (!\b2v_inst6|Add5~0_combout\ & ((\b2v_inst6|Add5~1_combout\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\)) # (!\b2v_inst6|Add5~1_combout\ & ((!\b2v_inst6|Add5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add5~1_combout\,
	datab => \b2v_inst6|Add5~0_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \b2v_inst6|Add5~3_combout\,
	combout => \b2v_inst4|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y50_N24
\b2v_inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux1~0_combout\ = (\b2v_inst6|Add5~1_combout\ & (!\b2v_inst6|Add5~3_combout\ & ((\b2v_inst6|Add5~0_combout\) # (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\)))) # (!\b2v_inst6|Add5~1_combout\ & 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & (\b2v_inst6|Add5~0_combout\ $ (\b2v_inst6|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add5~1_combout\,
	datab => \b2v_inst6|Add5~0_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \b2v_inst6|Add5~3_combout\,
	combout => \b2v_inst4|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y50_N8
\b2v_inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~0_combout\ = (\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & ((\b2v_inst6|Add5~0_combout\) # (\b2v_inst6|Add5~1_combout\ $ (!\b2v_inst6|Add5~3_combout\)))) # 
-- (!\b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & ((\b2v_inst6|Add5~3_combout\) # (\b2v_inst6|Add5~1_combout\ $ (!\b2v_inst6|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add5~1_combout\,
	datab => \b2v_inst6|Add5~0_combout\,
	datac => \b2v_inst6|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \b2v_inst6|Add5~3_combout\,
	combout => \b2v_inst4|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y50_N4
\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY(!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => VCC,
	cout => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X63_Y50_N6
\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & !\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X63_Y50_N8
\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => VCC,
	cin => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X63_Y50_N10
\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y50_N12
\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X63_Y50_N2
\b2v_inst6|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add3~1_combout\ = \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ $ (((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & 
-- !\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add3~1_combout\);

-- Location: LCCOMB_X63_Y50_N16
\b2v_inst6|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add3~2_combout\ = \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ $ (((\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\) # 
-- ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add3~2_combout\);

-- Location: LCCOMB_X63_Y50_N30
\b2v_inst6|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add3~0_combout\ = \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ $ (\b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \b2v_inst6|Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \b2v_inst6|Add3~0_combout\);

-- Location: LCCOMB_X70_Y50_N14
\b2v_inst3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux6~0_combout\ = (\b2v_inst6|Add3~1_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\b2v_inst6|Add3~2_combout\ $ (!\b2v_inst6|Add3~0_combout\)))) # (!\b2v_inst6|Add3~1_combout\ & 
-- (!\b2v_inst6|Add3~0_combout\ & (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ $ (\b2v_inst6|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \b2v_inst6|Add3~1_combout\,
	datac => \b2v_inst6|Add3~2_combout\,
	datad => \b2v_inst6|Add3~0_combout\,
	combout => \b2v_inst3|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y50_N0
\b2v_inst3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux5~0_combout\ = (\b2v_inst6|Add3~2_combout\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (!\b2v_inst6|Add3~1_combout\)) # 
-- (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst6|Add3~0_combout\))))) # (!\b2v_inst6|Add3~2_combout\ & (!\b2v_inst6|Add3~1_combout\ & 
-- (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ $ (!\b2v_inst6|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \b2v_inst6|Add3~1_combout\,
	datac => \b2v_inst6|Add3~2_combout\,
	datad => \b2v_inst6|Add3~0_combout\,
	combout => \b2v_inst3|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y50_N10
\b2v_inst3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux4~0_combout\ = (\b2v_inst6|Add3~1_combout\ & (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (!\b2v_inst6|Add3~2_combout\ & \b2v_inst6|Add3~0_combout\))) # (!\b2v_inst6|Add3~1_combout\ & 
-- (\b2v_inst6|Add3~2_combout\ & ((\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\) # (\b2v_inst6|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \b2v_inst6|Add3~1_combout\,
	datac => \b2v_inst6|Add3~2_combout\,
	datad => \b2v_inst6|Add3~0_combout\,
	combout => \b2v_inst3|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y50_N2
\b2v_inst3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux3~0_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst6|Add3~1_combout\ & (\b2v_inst6|Add3~2_combout\ & \b2v_inst6|Add3~0_combout\)) # (!\b2v_inst6|Add3~1_combout\ & 
-- (!\b2v_inst6|Add3~2_combout\ & !\b2v_inst6|Add3~0_combout\)))) # (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\b2v_inst6|Add3~1_combout\ $ (((\b2v_inst6|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \b2v_inst6|Add3~1_combout\,
	datac => \b2v_inst6|Add3~2_combout\,
	datad => \b2v_inst6|Add3~0_combout\,
	combout => \b2v_inst3|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y50_N16
\b2v_inst3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux2~0_combout\ = (\b2v_inst6|Add3~0_combout\ & (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((!\b2v_inst6|Add3~2_combout\)))) # (!\b2v_inst6|Add3~0_combout\ & ((\b2v_inst6|Add3~1_combout\ & 
-- (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)) # (!\b2v_inst6|Add3~1_combout\ & ((!\b2v_inst6|Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \b2v_inst6|Add3~1_combout\,
	datac => \b2v_inst6|Add3~2_combout\,
	datad => \b2v_inst6|Add3~0_combout\,
	combout => \b2v_inst3|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y50_N22
\b2v_inst3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux1~0_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\b2v_inst6|Add3~1_combout\ & (!\b2v_inst6|Add3~2_combout\ & \b2v_inst6|Add3~0_combout\))) # 
-- (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\b2v_inst6|Add3~2_combout\ $ (((\b2v_inst6|Add3~1_combout\) # (\b2v_inst6|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \b2v_inst6|Add3~1_combout\,
	datac => \b2v_inst6|Add3~2_combout\,
	datad => \b2v_inst6|Add3~0_combout\,
	combout => \b2v_inst3|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y50_N12
\b2v_inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b2v_inst3|Mux0~0_combout\ = (\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst6|Add3~0_combout\) # (\b2v_inst6|Add3~1_combout\ $ (!\b2v_inst6|Add3~2_combout\)))) # 
-- (!\b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\b2v_inst6|Add3~2_combout\) # (\b2v_inst6|Add3~1_combout\ $ (!\b2v_inst6|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \b2v_inst6|Add3~1_combout\,
	datac => \b2v_inst6|Add3~2_combout\,
	datad => \b2v_inst6|Add3~0_combout\,
	combout => \b2v_inst3|Mux0~0_combout\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(7) <= \HEX4[7]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(7) <= \HEX5[7]~output_o\;
END structure;


