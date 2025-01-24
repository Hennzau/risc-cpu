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

-- DATE "01/23/2025 22:53:58"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
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
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~1\ : std_logic;
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
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[0]~0_combout\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[0]~q\ : std_logic;
SIGNAL \pipeline_inst|Mux4~1_combout\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[1]~q\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[2]~0_combout\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[2]~q\ : std_logic;
SIGNAL \pipeline_inst|Mux7~0_combout\ : std_logic;
SIGNAL \fetch_inst|address[0]~21_combout\ : std_logic;
SIGNAL \fetch_inst|address[1]~7_combout\ : std_logic;
SIGNAL \fetch_inst|address[1]~8\ : std_logic;
SIGNAL \fetch_inst|address[2]~9_combout\ : std_logic;
SIGNAL \fetch_inst|address[2]~10\ : std_logic;
SIGNAL \fetch_inst|address[3]~11_combout\ : std_logic;
SIGNAL \fetch_inst|address[3]~12\ : std_logic;
SIGNAL \fetch_inst|address[4]~13_combout\ : std_logic;
SIGNAL \fetch_inst|address[4]~14\ : std_logic;
SIGNAL \fetch_inst|address[5]~15_combout\ : std_logic;
SIGNAL \fetch_inst|address[5]~16\ : std_logic;
SIGNAL \fetch_inst|address[6]~17_combout\ : std_logic;
SIGNAL \fetch_inst|address[6]~18\ : std_logic;
SIGNAL \fetch_inst|address[7]~19_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~6_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux6~0_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux5~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~4_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~5_combout\ : std_logic;
SIGNAL \decoder_inst|B[0]~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~2_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~3_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~1_combout\ : std_logic;
SIGNAL \decoder_inst|format[0]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|reg_address_a[1]~0_combout\ : std_logic;
SIGNAL \decoder_inst|alu_sel[1]~2_combout\ : std_logic;
SIGNAL \decoder_inst|alu_sel[0]~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|reg[1]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|reg_address[1]~feeder_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux0~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux30~0_combout\ : std_logic;
SIGNAL \decoder_inst|reg_rw~q\ : std_logic;
SIGNAL \rom_inst|rom_data~7_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux4~0_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][6]~q\ : std_logic;
SIGNAL \reg_inst|data_out_a[0]~0_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[6]~6_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[6]_OTERM142\ : std_logic;
SIGNAL \decoder_inst|alu_b[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_inst|data_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][5]~q\ : std_logic;
SIGNAL \decoder_inst|alu_b[5]~5_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[5]_OTERM140\ : std_logic;
SIGNAL \decoder_inst|alu_b[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_inst|data_reg[2][4]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][4]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][4]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][4]~q\ : std_logic;
SIGNAL \reg_inst|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux6~0_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM3~feeder_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux2~0_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM3\ : std_logic;
SIGNAL \decoder_inst|alu_b[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][7]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][7]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[2][7]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][7]~q\ : std_logic;
SIGNAL \reg_inst|Mux0~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux3~0_combout\ : std_logic;
SIGNAL \alu_inst|Add1~13\ : std_logic;
SIGNAL \alu_inst|Add1~14_combout\ : std_logic;
SIGNAL \alu_inst|Add0~11\ : std_logic;
SIGNAL \alu_inst|Add0~13\ : std_logic;
SIGNAL \alu_inst|Add0~14_combout\ : std_logic;
SIGNAL \decoder_inst|alu_sel[0]~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~1_combout\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM21\ : std_logic;
SIGNAL \reg_inst|data_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][0]~q\ : std_logic;
SIGNAL \decoder_inst|Mux29~0_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[0]_OTERM67\ : std_logic;
SIGNAL \decoder_inst|alu_b[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add0~0_combout\ : std_logic;
SIGNAL \alu_inst|Add1~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux7~0_combout\ : std_logic;
SIGNAL \alu_inst|result[0]_OTERM61\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][2]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][2]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][2]~q\ : std_logic;
SIGNAL \reg_inst|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux8~0_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_inst|data_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][1]~q\ : std_logic;
SIGNAL \decoder_inst|alu_b[1]~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[1]_OTERM70\ : std_logic;
SIGNAL \decoder_inst|alu_b[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add1~1\ : std_logic;
SIGNAL \alu_inst|Add1~3\ : std_logic;
SIGNAL \alu_inst|Add1~4_combout\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM35\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM11\ : std_logic;
SIGNAL \reg_inst|data_reg[2][3]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][3]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][3]~q\ : std_logic;
SIGNAL \reg_inst|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux7~0_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~3_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_OTERM76\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_OTERM53\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_OTERM57\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_NEW_REG56_OTERM176\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0162_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_RTM0184_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_OTERM182\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM174\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0168_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM180\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_NEW_REG54_OTERM74\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_OTERM55\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_OTERM49\ : std_logic;
SIGNAL \decoder_inst|alu_a[3]~feeder_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM39_OTERM116\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM39_OTERM120\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM45_OTERM127\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~9_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM45_OTERM125_OTERM144\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|diff_signs~combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|diff_signs_RTM085~combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM7_OTERM84\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\ : std_logic;
SIGNAL \alu_inst|Add0~1\ : std_logic;
SIGNAL \alu_inst|Add0~3\ : std_logic;
SIGNAL \alu_inst|Add0~4_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \alu_inst|Mux5~0_combout\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM37\ : std_logic;
SIGNAL \alu_inst|Mux5~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][2]~q\ : std_logic;
SIGNAL \decoder_inst|alu_b[2]~2_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[2]_OTERM72\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM45_OTERM123\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Add0~2_combout\ : std_logic;
SIGNAL \alu_inst|Add1~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux6~0_combout\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM43\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM41\ : std_logic;
SIGNAL \alu_inst|Mux6~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][1]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[2][1]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][1]~q\ : std_logic;
SIGNAL \reg_inst|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux9~0_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \alu_inst|result[0]_OTERM59\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[0]~7_combout\ : std_logic;
SIGNAL \alu_inst|result[0]_OTERM63\ : std_logic;
SIGNAL \alu_inst|Mux7~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][0]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][0]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[2][0]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][0]~q\ : std_logic;
SIGNAL \reg_inst|Mux7~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux10~0_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[0]_OTERM170\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM17\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_RTM0151_combout\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM19_OTERM88_OTERM150\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM19_OTERM94\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM31_OTERM103_OTERM146\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM31_OTERM105\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM7_OTERM82\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM7_OTERM78\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM15_OTERM100\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM15_OTERM96\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM27_OTERM109\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM19_OTERM90\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM19_OTERM92\ : std_logic;
SIGNAL \alu_inst|Mux0~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~2_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][7]~q\ : std_logic;
SIGNAL \decoder_inst|alu_b[7]~0_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[7]_OTERM65\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM27_OTERM113\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM23\ : std_logic;
SIGNAL \alu_inst|Add0~5\ : std_logic;
SIGNAL \alu_inst|Add0~6_combout\ : std_logic;
SIGNAL \alu_inst|Add1~5\ : std_logic;
SIGNAL \alu_inst|Add1~6_combout\ : std_logic;
SIGNAL \alu_inst|Mux4~0_combout\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM25\ : std_logic;
SIGNAL \alu_inst|Mux4~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][3]~q\ : std_logic;
SIGNAL \decoder_inst|alu_b[3]~3_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[3]_OTERM136\ : std_logic;
SIGNAL \decoder_inst|alu_b[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add1~7\ : std_logic;
SIGNAL \alu_inst|Add1~8_combout\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM9\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\ : std_logic;
SIGNAL \alu_inst|Add0~7\ : std_logic;
SIGNAL \alu_inst|Add0~8_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \alu_inst|Mux3~0_combout\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM13\ : std_logic;
SIGNAL \alu_inst|Mux3~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][4]~q\ : std_logic;
SIGNAL \reg_inst|data_out_b[4]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[4]~4_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[4]_OTERM138\ : std_logic;
SIGNAL \decoder_inst|alu_b[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add0~9\ : std_logic;
SIGNAL \alu_inst|Add0~10_combout\ : std_logic;
SIGNAL \alu_inst|Add1~9\ : std_logic;
SIGNAL \alu_inst|Add1~10_combout\ : std_logic;
SIGNAL \alu_inst|Mux2~0_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM1\ : std_logic;
SIGNAL \alu_inst|Mux2~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][5]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][5]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][5]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][5]~q\ : std_logic;
SIGNAL \reg_inst|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux5~0_combout\ : std_logic;
SIGNAL \alu_inst|Add1~11\ : std_logic;
SIGNAL \alu_inst|Add1~12_combout\ : std_logic;
SIGNAL \alu_inst|Add0~12_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~1_combout\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM33\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM29\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_RTM0183_combout\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM31_OTERM107\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~2_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][6]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][6]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][6]~q\ : std_logic;
SIGNAL \reg_inst|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[0]~0_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[7]~feeder_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~9\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~11\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~13\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~14_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~12_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \screen_inst|seg7_0|Mux6~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_0|Mux5~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_0|Mux4~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_0|Mux3~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_0|Mux2~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_0|Mux1~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_0|Mux0~0_wirecell_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[1]~3_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[0]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[3]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[3]~7_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[2]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[2]~5_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux6~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux5~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux4~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux3~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux2~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux1~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux0~0_wirecell_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \screen_inst|seg7_2|Mux6~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_2|Mux5~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_2|Mux4~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_2|Mux2~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_2|Mux1~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_2|Mux0~0_wirecell_combout\ : std_logic;
SIGNAL \reg_inst|data_out_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \decoder_inst|alu_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|alu_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \decoder_inst|reg_address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \reg_inst|data_out_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|decoder_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|format\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fetch_inst|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|reg_address_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pipeline_inst|stage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|op\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \decoder_inst|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rom_inst|data\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \decoder_inst|ALT_INV_decoder_out\ : std_logic_vector(7 DOWNTO 7);

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

\alu_inst|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\alu_inst|Mult0|auto_generated|mac_mult1~dataout\ & \alu_inst|Mult0|auto_generated|mac_mult1~1\ & \alu_inst|Mult0|auto_generated|mac_mult1~0\);

\alu_inst|Mult0|auto_generated|mac_out2~0\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\alu_inst|Mult0|auto_generated|mac_out2~1\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\alu_inst|Mult0|auto_generated|mac_out2~dataout\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\alu_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\decoder_inst|alu_a\(7) & \decoder_inst|alu_a\(6) & \decoder_inst|alu_a\(5) & \decoder_inst|alu_a\(4) & \decoder_inst|alu_a\(3) & \decoder_inst|alu_a\(2) & \decoder_inst|alu_a\(1) & 
\decoder_inst|alu_a\(0) & gnd);

\alu_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\decoder_inst|alu_b[7]_OTERM65\ & \decoder_inst|alu_b[6]_OTERM142\ & \decoder_inst|alu_b[5]_OTERM140\ & \decoder_inst|alu_b[4]_OTERM138\ & \decoder_inst|alu_b[3]_OTERM136\ & 
\decoder_inst|alu_b[2]_OTERM72\ & \decoder_inst|alu_b[1]_OTERM70\ & \decoder_inst|alu_b[0]_OTERM67\ & gnd);

\alu_inst|Mult0|auto_generated|mac_mult1~0\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\alu_inst|Mult0|auto_generated|mac_mult1~1\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\alu_inst|Mult0|auto_generated|mac_mult1~dataout\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
\decoder_inst|ALT_INV_decoder_out\(7) <= NOT \decoder_inst|decoder_out\(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N30
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \screen_inst|seg7_0|Mux6~0_combout\,
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
	i => \screen_inst|seg7_0|Mux5~0_combout\,
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
	i => \screen_inst|seg7_0|Mux4~0_combout\,
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
	i => \screen_inst|seg7_0|Mux3~0_combout\,
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
	i => \screen_inst|seg7_0|Mux2~0_combout\,
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
	i => \screen_inst|seg7_0|Mux1~0_combout\,
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
	i => \screen_inst|seg7_0|Mux0~0_wirecell_combout\,
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
	i => VCC,
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
	i => \screen_inst|seg7_1|Mux6~0_combout\,
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
	i => \screen_inst|seg7_1|Mux5~0_combout\,
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
	i => \screen_inst|seg7_1|Mux4~0_combout\,
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
	i => \screen_inst|seg7_1|Mux3~0_combout\,
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
	i => \screen_inst|seg7_1|Mux2~0_combout\,
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
	i => \screen_inst|seg7_1|Mux1~0_combout\,
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
	i => \screen_inst|seg7_1|Mux0~0_wirecell_combout\,
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
	i => VCC,
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
	i => \screen_inst|seg7_2|Mux6~0_combout\,
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
	i => \screen_inst|seg7_2|Mux5~0_combout\,
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
	i => \screen_inst|seg7_2|Mux4~0_combout\,
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
	i => \screen_inst|seg7_2|Mux6~0_combout\,
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
	i => \screen_inst|seg7_2|Mux2~0_combout\,
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
	i => \screen_inst|seg7_2|Mux1~0_combout\,
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
	i => \screen_inst|seg7_2|Mux0~0_wirecell_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \decoder_inst|ALT_INV_decoder_out\(7),
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
	i => VCC,
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
	i => GND,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

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

-- Location: CLKCTRL_G19
\MAX10_CLK1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK1_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y34_N26
\pipeline_inst|pipeline:counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|pipeline:counter[0]~0_combout\ = !\pipeline_inst|pipeline:counter[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	combout => \pipeline_inst|pipeline:counter[0]~0_combout\);

-- Location: FF_X50_Y34_N27
\pipeline_inst|pipeline:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|pipeline:counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|pipeline:counter[0]~q\);

-- Location: LCCOMB_X50_Y34_N20
\pipeline_inst|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux4~1_combout\ = \pipeline_inst|pipeline:counter[0]~q\ $ (\pipeline_inst|pipeline:counter[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[0]~q\,
	datac => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|Mux4~1_combout\);

-- Location: FF_X50_Y34_N21
\pipeline_inst|pipeline:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|pipeline:counter[1]~q\);

-- Location: LCCOMB_X50_Y34_N22
\pipeline_inst|pipeline:counter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|pipeline:counter[2]~0_combout\ = \pipeline_inst|pipeline:counter[2]~q\ $ (((\pipeline_inst|pipeline:counter[0]~q\ & \pipeline_inst|pipeline:counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[0]~q\,
	datac => \pipeline_inst|pipeline:counter[2]~q\,
	datad => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|pipeline:counter[2]~0_combout\);

-- Location: FF_X50_Y34_N23
\pipeline_inst|pipeline:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|pipeline:counter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|pipeline:counter[2]~q\);

-- Location: LCCOMB_X50_Y34_N28
\pipeline_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux7~0_combout\ = (!\pipeline_inst|pipeline:counter[2]~q\ & (!\pipeline_inst|pipeline:counter[0]~q\ & !\pipeline_inst|pipeline:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[2]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|Mux7~0_combout\);

-- Location: FF_X50_Y34_N29
\pipeline_inst|stage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|stage\(0));

-- Location: LCCOMB_X49_Y34_N12
\fetch_inst|address[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[0]~21_combout\ = \fetch_inst|address\(0) $ (\pipeline_inst|stage\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fetch_inst|address\(0),
	datad => \pipeline_inst|stage\(0),
	combout => \fetch_inst|address[0]~21_combout\);

-- Location: FF_X49_Y34_N13
\fetch_inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(0));

-- Location: LCCOMB_X49_Y34_N14
\fetch_inst|address[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[1]~7_combout\ = (\fetch_inst|address\(0) & (\fetch_inst|address\(1) $ (VCC))) # (!\fetch_inst|address\(0) & (\fetch_inst|address\(1) & VCC))
-- \fetch_inst|address[1]~8\ = CARRY((\fetch_inst|address\(0) & \fetch_inst|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \fetch_inst|address\(1),
	datad => VCC,
	combout => \fetch_inst|address[1]~7_combout\,
	cout => \fetch_inst|address[1]~8\);

-- Location: FF_X49_Y34_N15
\fetch_inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[1]~7_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(1));

-- Location: LCCOMB_X49_Y34_N16
\fetch_inst|address[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[2]~9_combout\ = (\fetch_inst|address\(2) & (!\fetch_inst|address[1]~8\)) # (!\fetch_inst|address\(2) & ((\fetch_inst|address[1]~8\) # (GND)))
-- \fetch_inst|address[2]~10\ = CARRY((!\fetch_inst|address[1]~8\) # (!\fetch_inst|address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|address\(2),
	datad => VCC,
	cin => \fetch_inst|address[1]~8\,
	combout => \fetch_inst|address[2]~9_combout\,
	cout => \fetch_inst|address[2]~10\);

-- Location: FF_X49_Y34_N17
\fetch_inst|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[2]~9_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(2));

-- Location: LCCOMB_X49_Y34_N18
\fetch_inst|address[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[3]~11_combout\ = (\fetch_inst|address\(3) & (\fetch_inst|address[2]~10\ $ (GND))) # (!\fetch_inst|address\(3) & (!\fetch_inst|address[2]~10\ & VCC))
-- \fetch_inst|address[3]~12\ = CARRY((\fetch_inst|address\(3) & !\fetch_inst|address[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|address\(3),
	datad => VCC,
	cin => \fetch_inst|address[2]~10\,
	combout => \fetch_inst|address[3]~11_combout\,
	cout => \fetch_inst|address[3]~12\);

-- Location: FF_X49_Y34_N19
\fetch_inst|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[3]~11_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(3));

-- Location: LCCOMB_X49_Y34_N20
\fetch_inst|address[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[4]~13_combout\ = (\fetch_inst|address\(4) & (!\fetch_inst|address[3]~12\)) # (!\fetch_inst|address\(4) & ((\fetch_inst|address[3]~12\) # (GND)))
-- \fetch_inst|address[4]~14\ = CARRY((!\fetch_inst|address[3]~12\) # (!\fetch_inst|address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|address\(4),
	datad => VCC,
	cin => \fetch_inst|address[3]~12\,
	combout => \fetch_inst|address[4]~13_combout\,
	cout => \fetch_inst|address[4]~14\);

-- Location: FF_X49_Y34_N21
\fetch_inst|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[4]~13_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(4));

-- Location: LCCOMB_X49_Y34_N22
\fetch_inst|address[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[5]~15_combout\ = (\fetch_inst|address\(5) & (\fetch_inst|address[4]~14\ $ (GND))) # (!\fetch_inst|address\(5) & (!\fetch_inst|address[4]~14\ & VCC))
-- \fetch_inst|address[5]~16\ = CARRY((\fetch_inst|address\(5) & !\fetch_inst|address[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(5),
	datad => VCC,
	cin => \fetch_inst|address[4]~14\,
	combout => \fetch_inst|address[5]~15_combout\,
	cout => \fetch_inst|address[5]~16\);

-- Location: FF_X49_Y34_N23
\fetch_inst|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[5]~15_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(5));

-- Location: LCCOMB_X49_Y34_N24
\fetch_inst|address[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[6]~17_combout\ = (\fetch_inst|address\(6) & (!\fetch_inst|address[5]~16\)) # (!\fetch_inst|address\(6) & ((\fetch_inst|address[5]~16\) # (GND)))
-- \fetch_inst|address[6]~18\ = CARRY((!\fetch_inst|address[5]~16\) # (!\fetch_inst|address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|address\(6),
	datad => VCC,
	cin => \fetch_inst|address[5]~16\,
	combout => \fetch_inst|address[6]~17_combout\,
	cout => \fetch_inst|address[6]~18\);

-- Location: FF_X49_Y34_N25
\fetch_inst|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[6]~17_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(6));

-- Location: LCCOMB_X49_Y34_N26
\fetch_inst|address[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[7]~19_combout\ = \fetch_inst|address\(7) $ (!\fetch_inst|address[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(7),
	cin => \fetch_inst|address[6]~18\,
	combout => \fetch_inst|address[7]~19_combout\);

-- Location: FF_X49_Y34_N27
\fetch_inst|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[7]~19_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(7));

-- Location: LCCOMB_X49_Y34_N28
\rom_inst|rom_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~0_combout\ = (!\fetch_inst|address\(5) & (!\fetch_inst|address\(4) & (!\fetch_inst|address\(7) & !\fetch_inst|address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(5),
	datab => \fetch_inst|address\(4),
	datac => \fetch_inst|address\(7),
	datad => \fetch_inst|address\(6),
	combout => \rom_inst|rom_data~0_combout\);

-- Location: LCCOMB_X50_Y34_N16
\rom_inst|rom_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~6_combout\ = (\fetch_inst|address\(1) & (\rom_inst|rom_data~0_combout\ & (!\fetch_inst|address\(2) & !\fetch_inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(1),
	datab => \rom_inst|rom_data~0_combout\,
	datac => \fetch_inst|address\(2),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~6_combout\);

-- Location: LCCOMB_X50_Y34_N4
\pipeline_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux6~0_combout\ = (!\pipeline_inst|pipeline:counter[2]~q\ & (\pipeline_inst|pipeline:counter[0]~q\ & !\pipeline_inst|pipeline:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[2]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|Mux6~0_combout\);

-- Location: FF_X50_Y34_N5
\pipeline_inst|stage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|stage\(1));

-- Location: FF_X50_Y34_N17
\rom_inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~6_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(9));

-- Location: LCCOMB_X50_Y34_N8
\pipeline_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux5~0_combout\ = (\pipeline_inst|pipeline:counter[2]~q\ & (\pipeline_inst|pipeline:counter[0]~q\ & !\pipeline_inst|pipeline:counter[1]~q\)) # (!\pipeline_inst|pipeline:counter[2]~q\ & ((\pipeline_inst|pipeline:counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[2]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|Mux5~0_combout\);

-- Location: FF_X50_Y34_N9
\pipeline_inst|stage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|stage\(2));

-- Location: FF_X51_Y34_N1
\decoder_inst|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \rom_inst|data\(9),
	sload => VCC,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|A\(1));

-- Location: LCCOMB_X50_Y34_N24
\rom_inst|rom_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~4_combout\ = (!\fetch_inst|address\(0) & (\rom_inst|rom_data~0_combout\ & (!\fetch_inst|address\(2) & !\fetch_inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \rom_inst|rom_data~0_combout\,
	datac => \fetch_inst|address\(2),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~4_combout\);

-- Location: LCCOMB_X50_Y34_N18
\rom_inst|rom_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~5_combout\ = (!\rom_inst|rom_data~4_combout\) # (!\fetch_inst|address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(1),
	datad => \rom_inst|rom_data~4_combout\,
	combout => \rom_inst|rom_data~5_combout\);

-- Location: FF_X50_Y34_N19
\rom_inst|data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~5_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(23));

-- Location: LCCOMB_X51_Y34_N4
\decoder_inst|B[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|B[0]~0_combout\ = !\rom_inst|data\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(23),
	combout => \decoder_inst|B[0]~0_combout\);

-- Location: FF_X51_Y34_N5
\decoder_inst|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|B[0]~0_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|B\(0));

-- Location: LCCOMB_X50_Y34_N10
\rom_inst|rom_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~2_combout\ = (\fetch_inst|address\(3)) # ((\fetch_inst|address\(2)) # ((!\fetch_inst|address\(0) & \fetch_inst|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \fetch_inst|address\(3),
	datac => \fetch_inst|address\(2),
	datad => \fetch_inst|address\(1),
	combout => \rom_inst|rom_data~2_combout\);

-- Location: LCCOMB_X50_Y34_N0
\rom_inst|rom_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~3_combout\ = (\rom_inst|rom_data~0_combout\ & !\rom_inst|rom_data~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~2_combout\,
	combout => \rom_inst|rom_data~3_combout\);

-- Location: FF_X50_Y34_N1
\rom_inst|data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~3_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(19));

-- Location: FF_X51_Y34_N29
\decoder_inst|op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \rom_inst|data\(19),
	sload => VCC,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|op\(0));

-- Location: LCCOMB_X50_Y34_N12
\rom_inst|rom_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~1_combout\ = (!\fetch_inst|address\(1) & (\rom_inst|rom_data~0_combout\ & (!\fetch_inst|address\(2) & !\fetch_inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(1),
	datab => \rom_inst|rom_data~0_combout\,
	datac => \fetch_inst|address\(2),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~1_combout\);

-- Location: FF_X50_Y34_N13
\rom_inst|data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~1_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(24));

-- Location: LCCOMB_X51_Y34_N26
\decoder_inst|format[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|format[0]~feeder_combout\ = \rom_inst|data\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(24),
	combout => \decoder_inst|format[0]~feeder_combout\);

-- Location: FF_X51_Y34_N27
\decoder_inst|format[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|format[0]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|format\(0));

-- Location: LCCOMB_X51_Y34_N28
\decoder_inst|reg_address_a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg_address_a[1]~0_combout\ = (\pipeline_inst|stage\(2) & (!\decoder_inst|format\(0) & ((\decoder_inst|B\(0)) # (\decoder_inst|op\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|stage\(2),
	datab => \decoder_inst|B\(0),
	datac => \decoder_inst|op\(0),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|reg_address_a[1]~0_combout\);

-- Location: FF_X50_Y31_N11
\decoder_inst|reg_address_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|A\(1),
	sload => VCC,
	ena => \decoder_inst|reg_address_a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address_a\(1));

-- Location: LCCOMB_X49_Y31_N26
\decoder_inst|alu_sel[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_sel[1]~2_combout\ = !\decoder_inst|format\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_sel[1]~2_combout\);

-- Location: LCCOMB_X51_Y34_N2
\decoder_inst|alu_sel[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_sel[0]~0_combout\ = (\pipeline_inst|stage\(2) & ((\decoder_inst|B\(0)) # ((\decoder_inst|op\(0) & \decoder_inst|format\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|stage\(2),
	datab => \decoder_inst|op\(0),
	datac => \decoder_inst|B\(0),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_sel[0]~0_combout\);

-- Location: FF_X49_Y31_N27
\decoder_inst|alu_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_sel[1]~2_combout\,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_sel\(1));

-- Location: FF_X49_Y30_N1
\decoder_inst|alu_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux4~0_combout\,
	sload => VCC,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(6));

-- Location: LCCOMB_X47_Y30_N24
\reg_inst|data_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[1][6]~feeder_combout\ = \alu_inst|Mux1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux1~2_combout\,
	combout => \reg_inst|data_reg[1][6]~feeder_combout\);

-- Location: FF_X50_Y34_N25
\rom_inst|data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~4_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(17));

-- Location: LCCOMB_X51_Y34_N18
\decoder_inst|reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg[1]~feeder_combout\ = \rom_inst|data\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(17),
	combout => \decoder_inst|reg[1]~feeder_combout\);

-- Location: FF_X51_Y34_N19
\decoder_inst|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|reg[1]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg\(1));

-- Location: LCCOMB_X51_Y34_N6
\decoder_inst|reg_address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg_address[1]~feeder_combout\ = \decoder_inst|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|reg\(1),
	combout => \decoder_inst|reg_address[1]~feeder_combout\);

-- Location: FF_X51_Y34_N7
\decoder_inst|reg_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|reg_address[1]~feeder_combout\,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address\(1));

-- Location: LCCOMB_X50_Y34_N2
\pipeline_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux0~0_combout\ = (\pipeline_inst|pipeline:counter[2]~q\ & (\pipeline_inst|pipeline:counter[0]~q\ & \pipeline_inst|pipeline:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[2]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|Mux0~0_combout\);

-- Location: FF_X50_Y34_N3
\pipeline_inst|stage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|stage\(7));

-- Location: LCCOMB_X51_Y34_N20
\decoder_inst|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux30~0_combout\ = (\decoder_inst|B\(0)) # ((\decoder_inst|op\(0) & (\decoder_inst|format\(0))) # (!\decoder_inst|op\(0) & ((\decoder_inst|reg_rw~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datab => \decoder_inst|B\(0),
	datac => \decoder_inst|reg_rw~q\,
	datad => \decoder_inst|op\(0),
	combout => \decoder_inst|Mux30~0_combout\);

-- Location: FF_X51_Y34_N21
\decoder_inst|reg_rw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|Mux30~0_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_rw~q\);

-- Location: LCCOMB_X50_Y34_N6
\rom_inst|rom_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~7_combout\ = (\fetch_inst|address\(0) & \rom_inst|rom_data~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datad => \rom_inst|rom_data~1_combout\,
	combout => \rom_inst|rom_data~7_combout\);

-- Location: FF_X50_Y34_N7
\rom_inst|data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~7_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(16));

-- Location: FF_X51_Y34_N23
\decoder_inst|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \rom_inst|data\(16),
	sload => VCC,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg\(0));

-- Location: FF_X51_Y34_N9
\decoder_inst|reg_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|reg\(0),
	sload => VCC,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address\(0));

-- Location: LCCOMB_X50_Y34_N14
\pipeline_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux4~0_combout\ = (\pipeline_inst|pipeline:counter[2]~q\ & (\pipeline_inst|pipeline:counter[0]~q\ $ (!\pipeline_inst|pipeline:counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[2]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|Mux4~0_combout\);

-- Location: FF_X50_Y34_N15
\pipeline_inst|stage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|stage\(3));

-- Location: LCCOMB_X51_Y34_N8
\reg_inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~3_combout\ = (\pipeline_inst|stage\(7) & (\decoder_inst|reg_rw~q\ & (\decoder_inst|reg_address\(0) & \pipeline_inst|stage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|stage\(7),
	datab => \decoder_inst|reg_rw~q\,
	datac => \decoder_inst|reg_address\(0),
	datad => \pipeline_inst|stage\(3),
	combout => \reg_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X51_Y34_N22
\reg_inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~4_combout\ = (!\decoder_inst|reg_address\(1) & \reg_inst|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address\(1),
	datad => \reg_inst|Decoder0~3_combout\,
	combout => \reg_inst|Decoder0~4_combout\);

-- Location: FF_X47_Y30_N25
\reg_inst|data_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[1][6]~feeder_combout\,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][6]~q\);

-- Location: LCCOMB_X51_Y34_N10
\reg_inst|data_out_a[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_out_a[0]~0_combout\ = (\pipeline_inst|stage\(3) & ((!\decoder_inst|reg_rw~q\) # (!\pipeline_inst|stage\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|stage\(7),
	datab => \decoder_inst|reg_rw~q\,
	datad => \pipeline_inst|stage\(3),
	combout => \reg_inst|data_out_a[0]~0_combout\);

-- Location: FF_X50_Y31_N31
\reg_inst|data_out_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_reg[1][6]~q\,
	sload => VCC,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(6));

-- Location: LCCOMB_X50_Y31_N30
\decoder_inst|alu_b[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[6]~6_combout\ = (!\decoder_inst|format\(0) & (\reg_inst|data_out_b\(6) & \decoder_inst|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datac => \reg_inst|data_out_b\(6),
	datad => \decoder_inst|B\(0),
	combout => \decoder_inst|alu_b[6]~6_combout\);

-- Location: LCCOMB_X49_Y30_N26
\decoder_inst|alu_b[6]_NEW141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[6]_OTERM142\ = (\decoder_inst|alu_sel[0]~0_combout\ & ((\decoder_inst|alu_b[6]~6_combout\))) # (!\decoder_inst|alu_sel[0]~0_combout\ & (\decoder_inst|alu_b[6]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel[0]~0_combout\,
	datab => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[6]~6_combout\,
	combout => \decoder_inst|alu_b[6]_OTERM142\);

-- Location: FF_X49_Y30_N5
\decoder_inst|alu_b[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_b[6]_OTERM142\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X51_Y30_N10
\reg_inst|data_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[1][5]~feeder_combout\ = \alu_inst|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux2~1_combout\,
	combout => \reg_inst|data_reg[1][5]~feeder_combout\);

-- Location: FF_X51_Y30_N11
\reg_inst|data_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[1][5]~feeder_combout\,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][5]~q\);

-- Location: FF_X50_Y31_N9
\reg_inst|data_out_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_reg[1][5]~q\,
	sload => VCC,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(5));

-- Location: LCCOMB_X50_Y31_N10
\decoder_inst|alu_b[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[5]~5_combout\ = (!\decoder_inst|format\(0) & (\reg_inst|data_out_b\(5) & \decoder_inst|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datab => \reg_inst|data_out_b\(5),
	datad => \decoder_inst|B\(0),
	combout => \decoder_inst|alu_b[5]~5_combout\);

-- Location: LCCOMB_X49_Y30_N18
\decoder_inst|alu_b[5]_NEW139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[5]_OTERM140\ = (\decoder_inst|alu_sel[0]~0_combout\ & (\decoder_inst|alu_b[5]~5_combout\)) # (!\decoder_inst|alu_sel[0]~0_combout\ & ((\decoder_inst|alu_b[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel[0]~0_combout\,
	datab => \decoder_inst|alu_b[5]~5_combout\,
	datad => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	combout => \decoder_inst|alu_b[5]_OTERM140\);

-- Location: FF_X49_Y30_N31
\decoder_inst|alu_b[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_b[5]_OTERM140\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X51_Y31_N18
\reg_inst|data_reg[2][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[2][4]~feeder_combout\ = \alu_inst|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux3~1_combout\,
	combout => \reg_inst|data_reg[2][4]~feeder_combout\);

-- Location: LCCOMB_X51_Y34_N14
\reg_inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~0_combout\ = (\pipeline_inst|stage\(3) & (\decoder_inst|reg_rw~q\ & (!\decoder_inst|reg_address\(0) & \pipeline_inst|stage\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|stage\(3),
	datab => \decoder_inst|reg_rw~q\,
	datac => \decoder_inst|reg_address\(0),
	datad => \pipeline_inst|stage\(7),
	combout => \reg_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X51_Y34_N16
\reg_inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~1_combout\ = (\reg_inst|Decoder0~0_combout\ & \decoder_inst|reg_address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|Decoder0~0_combout\,
	datad => \decoder_inst|reg_address\(1),
	combout => \reg_inst|Decoder0~1_combout\);

-- Location: FF_X51_Y31_N19
\reg_inst|data_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[2][4]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][4]~q\);

-- Location: FF_X50_Y31_N1
\decoder_inst|reg_address_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|format\(0),
	sload => VCC,
	ena => \decoder_inst|reg_address_a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address_a\(2));

-- Location: LCCOMB_X51_Y31_N6
\reg_inst|data_reg[0][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[0][4]~feeder_combout\ = \alu_inst|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux3~1_combout\,
	combout => \reg_inst|data_reg[0][4]~feeder_combout\);

-- Location: LCCOMB_X51_Y34_N24
\reg_inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~2_combout\ = (\reg_inst|Decoder0~0_combout\ & !\decoder_inst|reg_address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|Decoder0~0_combout\,
	datad => \decoder_inst|reg_address\(1),
	combout => \reg_inst|Decoder0~2_combout\);

-- Location: FF_X51_Y31_N7
\reg_inst|data_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[0][4]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][4]~q\);

-- Location: LCCOMB_X50_Y31_N6
\reg_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux3~0_combout\ = (!\decoder_inst|reg_address_a\(2) & ((\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[2][4]~q\)) # (!\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[2][4]~q\,
	datab => \decoder_inst|reg_address_a\(2),
	datac => \reg_inst|data_reg[0][4]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux3~0_combout\);

-- Location: FF_X50_Y31_N7
\reg_inst|data_out_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux3~0_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(4));

-- Location: LCCOMB_X49_Y31_N6
\decoder_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux6~0_combout\ = (\reg_inst|data_out_a\(4) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_out_a\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|Mux6~0_combout\);

-- Location: FF_X49_Y31_N19
\decoder_inst|alu_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux6~0_combout\,
	sload => VCC,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(4));

-- Location: LCCOMB_X47_Y30_N14
\alu_inst|result[5]_OTERM3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|result[5]_OTERM3~feeder_combout\ = \decoder_inst|alu_sel\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|alu_sel\(1),
	combout => \alu_inst|result[5]_OTERM3~feeder_combout\);

-- Location: LCCOMB_X50_Y34_N30
\pipeline_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux2~0_combout\ = (\pipeline_inst|pipeline:counter[2]~q\ & (!\pipeline_inst|pipeline:counter[0]~q\ & \pipeline_inst|pipeline:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[2]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|Mux2~0_combout\);

-- Location: FF_X50_Y34_N31
\pipeline_inst|stage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|stage\(5));

-- Location: FF_X47_Y30_N15
\alu_inst|result[5]_NEW_REG2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|result[5]_OTERM3~feeder_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM3\);

-- Location: LCCOMB_X50_Y30_N28
\decoder_inst|alu_b[7]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[7]~_Duplicate_1feeder_combout\ = \decoder_inst|alu_b[7]_OTERM65\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|alu_b[7]_OTERM65\,
	combout => \decoder_inst|alu_b[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X50_Y30_N29
\decoder_inst|alu_b[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_b[7]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X51_Y31_N2
\reg_inst|data_reg[0][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[0][7]~feeder_combout\ = \alu_inst|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux0~2_combout\,
	combout => \reg_inst|data_reg[0][7]~feeder_combout\);

-- Location: FF_X51_Y31_N3
\reg_inst|data_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[0][7]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][7]~q\);

-- Location: LCCOMB_X51_Y31_N16
\reg_inst|data_reg[2][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[2][7]~feeder_combout\ = \alu_inst|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux0~2_combout\,
	combout => \reg_inst|data_reg[2][7]~feeder_combout\);

-- Location: FF_X51_Y31_N17
\reg_inst|data_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[2][7]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][7]~q\);

-- Location: LCCOMB_X50_Y31_N12
\reg_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux0~0_combout\ = (!\decoder_inst|reg_address_a\(2) & ((\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[2][7]~q\))) # (!\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][7]~q\,
	datab => \decoder_inst|reg_address_a\(2),
	datac => \decoder_inst|reg_address_a\(1),
	datad => \reg_inst|data_reg[2][7]~q\,
	combout => \reg_inst|Mux0~0_combout\);

-- Location: FF_X50_Y31_N13
\reg_inst|data_out_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux0~0_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(7));

-- Location: LCCOMB_X49_Y31_N20
\decoder_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux3~0_combout\ = (\reg_inst|data_out_a\(7) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(7),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|Mux3~0_combout\);

-- Location: FF_X49_Y31_N31
\decoder_inst|alu_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux3~0_combout\,
	sload => VCC,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(7));

-- Location: LCCOMB_X50_Y30_N16
\alu_inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~12_combout\ = ((\decoder_inst|alu_a\(6) $ (\decoder_inst|alu_b[6]~_Duplicate_1_q\ $ (\alu_inst|Add1~11\)))) # (GND)
-- \alu_inst|Add1~13\ = CARRY((\decoder_inst|alu_a\(6) & ((!\alu_inst|Add1~11\) # (!\decoder_inst|alu_b[6]~_Duplicate_1_q\))) # (!\decoder_inst|alu_a\(6) & (!\decoder_inst|alu_b[6]~_Duplicate_1_q\ & !\alu_inst|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(6),
	datab => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add1~11\,
	combout => \alu_inst|Add1~12_combout\,
	cout => \alu_inst|Add1~13\);

-- Location: LCCOMB_X50_Y30_N18
\alu_inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~14_combout\ = \decoder_inst|alu_b[7]~_Duplicate_1_q\ $ (\alu_inst|Add1~13\ $ (!\decoder_inst|alu_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_a\(7),
	cin => \alu_inst|Add1~13\,
	combout => \alu_inst|Add1~14_combout\);

-- Location: LCCOMB_X49_Y30_N10
\alu_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~10_combout\ = (\decoder_inst|alu_b[5]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(5) & (\alu_inst|Add0~9\ & VCC)) # (!\decoder_inst|alu_a\(5) & (!\alu_inst|Add0~9\)))) # (!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(5) & 
-- (!\alu_inst|Add0~9\)) # (!\decoder_inst|alu_a\(5) & ((\alu_inst|Add0~9\) # (GND)))))
-- \alu_inst|Add0~11\ = CARRY((\decoder_inst|alu_b[5]~_Duplicate_1_q\ & (!\decoder_inst|alu_a\(5) & !\alu_inst|Add0~9\)) # (!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & ((!\alu_inst|Add0~9\) # (!\decoder_inst|alu_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(5),
	datad => VCC,
	cin => \alu_inst|Add0~9\,
	combout => \alu_inst|Add0~10_combout\,
	cout => \alu_inst|Add0~11\);

-- Location: LCCOMB_X49_Y30_N12
\alu_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~12_combout\ = ((\decoder_inst|alu_a\(6) $ (\decoder_inst|alu_b[6]~_Duplicate_1_q\ $ (!\alu_inst|Add0~11\)))) # (GND)
-- \alu_inst|Add0~13\ = CARRY((\decoder_inst|alu_a\(6) & ((\decoder_inst|alu_b[6]~_Duplicate_1_q\) # (!\alu_inst|Add0~11\))) # (!\decoder_inst|alu_a\(6) & (\decoder_inst|alu_b[6]~_Duplicate_1_q\ & !\alu_inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(6),
	datab => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add0~11\,
	combout => \alu_inst|Add0~12_combout\,
	cout => \alu_inst|Add0~13\);

-- Location: LCCOMB_X49_Y30_N14
\alu_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~14_combout\ = \decoder_inst|alu_a\(7) $ (\alu_inst|Add0~13\ $ (\decoder_inst|alu_b[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(7),
	datad => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	cin => \alu_inst|Add0~13\,
	combout => \alu_inst|Add0~14_combout\);

-- Location: LCCOMB_X51_Y34_N12
\decoder_inst|alu_sel[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_sel[0]~1_combout\ = (\decoder_inst|op\(0) & \decoder_inst|B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|op\(0),
	datac => \decoder_inst|B\(0),
	combout => \decoder_inst|alu_sel[0]~1_combout\);

-- Location: FF_X51_Y34_N13
\decoder_inst|alu_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_sel[0]~1_combout\,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_sel\(0));

-- Location: LCCOMB_X47_Y30_N26
\alu_inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~1_combout\ = (\decoder_inst|alu_sel\(0) & ((\alu_inst|Add1~14_combout\) # ((\decoder_inst|alu_sel\(1))))) # (!\decoder_inst|alu_sel\(0) & (((\alu_inst|Add0~14_combout\ & !\decoder_inst|alu_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add1~14_combout\,
	datab => \alu_inst|Add0~14_combout\,
	datac => \decoder_inst|alu_sel\(0),
	datad => \decoder_inst|alu_sel\(1),
	combout => \alu_inst|Mux0~1_combout\);

-- Location: FF_X47_Y30_N27
\alu_inst|result[7]_NEW_REG20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux0~1_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM21\);

-- Location: LCCOMB_X47_Y30_N18
\reg_inst|data_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[1][0]~feeder_combout\ = \alu_inst|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux7~1_combout\,
	combout => \reg_inst|data_reg[1][0]~feeder_combout\);

-- Location: FF_X47_Y30_N19
\reg_inst|data_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[1][0]~feeder_combout\,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][0]~q\);

-- Location: FF_X47_Y31_N7
\reg_inst|data_out_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_reg[1][0]~q\,
	sload => VCC,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(0));

-- Location: LCCOMB_X47_Y31_N6
\decoder_inst|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux29~0_combout\ = (\decoder_inst|format\(0) & ((\decoder_inst|B\(0)))) # (!\decoder_inst|format\(0) & (\reg_inst|data_out_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|format\(0),
	datac => \reg_inst|data_out_b\(0),
	datad => \decoder_inst|B\(0),
	combout => \decoder_inst|Mux29~0_combout\);

-- Location: LCCOMB_X47_Y31_N8
\decoder_inst|alu_b[0]_NEW66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[0]_OTERM67\ = (\decoder_inst|alu_sel[0]~0_combout\ & (\decoder_inst|B\(0) & ((\decoder_inst|Mux29~0_combout\)))) # (!\decoder_inst|alu_sel[0]~0_combout\ & (((\decoder_inst|alu_b[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|B\(0),
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_sel[0]~0_combout\,
	datad => \decoder_inst|Mux29~0_combout\,
	combout => \decoder_inst|alu_b[0]_OTERM67\);

-- Location: FF_X47_Y31_N3
\decoder_inst|alu_b[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_b[0]_OTERM67\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X49_Y30_N0
\alu_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~0_combout\ = (\decoder_inst|alu_b[0]~_Duplicate_1_q\ & (\decoder_inst|alu_a\(0) $ (VCC))) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\ & (\decoder_inst|alu_a\(0) & VCC))
-- \alu_inst|Add0~1\ = CARRY((\decoder_inst|alu_b[0]~_Duplicate_1_q\ & \decoder_inst|alu_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(0),
	datad => VCC,
	combout => \alu_inst|Add0~0_combout\,
	cout => \alu_inst|Add0~1\);

-- Location: LCCOMB_X50_Y30_N4
\alu_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~0_combout\ = (\decoder_inst|alu_a\(0) & ((GND) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))) # (!\decoder_inst|alu_a\(0) & (\decoder_inst|alu_b[0]~_Duplicate_1_q\ $ (GND)))
-- \alu_inst|Add1~1\ = CARRY((\decoder_inst|alu_a\(0)) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(0),
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \alu_inst|Add1~0_combout\,
	cout => \alu_inst|Add1~1\);

-- Location: LCCOMB_X47_Y30_N12
\alu_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~0_combout\ = (\decoder_inst|alu_sel\(0) & (((\alu_inst|Add1~0_combout\) # (\decoder_inst|alu_sel\(1))))) # (!\decoder_inst|alu_sel\(0) & (\alu_inst|Add0~0_combout\ & ((!\decoder_inst|alu_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add0~0_combout\,
	datab => \alu_inst|Add1~0_combout\,
	datac => \decoder_inst|alu_sel\(0),
	datad => \decoder_inst|alu_sel\(1),
	combout => \alu_inst|Mux7~0_combout\);

-- Location: FF_X47_Y30_N13
\alu_inst|result[0]_NEW_REG60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux7~0_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[0]_OTERM61\);

-- Location: FF_X49_Y30_N27
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_NEW_REG153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\);

-- Location: LCCOMB_X49_Y30_N20
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\ $ (\decoder_inst|alu_b[5]~_Duplicate_1_q\ $ (\decoder_inst|alu_b[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\,
	datac => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\);

-- Location: LCCOMB_X51_Y31_N0
\reg_inst|data_reg[2][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[2][2]~feeder_combout\ = \alu_inst|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux5~1_combout\,
	combout => \reg_inst|data_reg[2][2]~feeder_combout\);

-- Location: FF_X51_Y31_N1
\reg_inst|data_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[2][2]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][2]~q\);

-- Location: FF_X51_Y31_N11
\reg_inst|data_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux5~1_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][2]~q\);

-- Location: LCCOMB_X50_Y31_N2
\reg_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux5~0_combout\ = (!\decoder_inst|reg_address_a\(2) & ((\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[2][2]~q\)) # (!\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[2][2]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[0][2]~q\,
	datad => \decoder_inst|reg_address_a\(2),
	combout => \reg_inst|Mux5~0_combout\);

-- Location: FF_X50_Y31_N3
\reg_inst|data_out_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux5~0_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(2));

-- Location: LCCOMB_X50_Y31_N0
\decoder_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux8~0_combout\ = (\decoder_inst|format\(0)) # (\reg_inst|data_out_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|format\(0),
	datad => \reg_inst|data_out_a\(2),
	combout => \decoder_inst|Mux8~0_combout\);

-- Location: FF_X49_Y30_N17
\decoder_inst|alu_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux8~0_combout\,
	sload => VCC,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(2));

-- Location: FF_X50_Y30_N3
\decoder_inst|alu_b[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_b[2]_OTERM72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X51_Y30_N8
\reg_inst|data_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[1][1]~feeder_combout\ = \alu_inst|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux6~1_combout\,
	combout => \reg_inst|data_reg[1][1]~feeder_combout\);

-- Location: FF_X51_Y30_N9
\reg_inst|data_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[1][1]~feeder_combout\,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][1]~q\);

-- Location: FF_X50_Y31_N29
\reg_inst|data_out_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_reg[1][1]~q\,
	sload => VCC,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(1));

-- Location: LCCOMB_X50_Y31_N28
\decoder_inst|alu_b[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[1]~1_combout\ = (!\decoder_inst|format\(0) & (\reg_inst|data_out_b\(1) & \decoder_inst|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datac => \reg_inst|data_out_b\(1),
	datad => \decoder_inst|B\(0),
	combout => \decoder_inst|alu_b[1]~1_combout\);

-- Location: LCCOMB_X50_Y30_N22
\decoder_inst|alu_b[1]_NEW69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[1]_OTERM70\ = (\decoder_inst|alu_sel[0]~0_combout\ & ((\decoder_inst|alu_b[1]~1_combout\))) # (!\decoder_inst|alu_sel[0]~0_combout\ & (\decoder_inst|alu_b[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_sel[0]~0_combout\,
	datac => \decoder_inst|alu_b[1]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[1]~1_combout\,
	combout => \decoder_inst|alu_b[1]_OTERM70\);

-- Location: FF_X50_Y30_N23
\decoder_inst|alu_b[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_b[1]_OTERM70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X50_Y30_N6
\alu_inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~2_combout\ = (\decoder_inst|alu_b[1]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(1) & (!\alu_inst|Add1~1\)) # (!\decoder_inst|alu_a\(1) & ((\alu_inst|Add1~1\) # (GND))))) # (!\decoder_inst|alu_b[1]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(1) & 
-- (\alu_inst|Add1~1\ & VCC)) # (!\decoder_inst|alu_a\(1) & (!\alu_inst|Add1~1\))))
-- \alu_inst|Add1~3\ = CARRY((\decoder_inst|alu_b[1]~_Duplicate_1_q\ & ((!\alu_inst|Add1~1\) # (!\decoder_inst|alu_a\(1)))) # (!\decoder_inst|alu_b[1]~_Duplicate_1_q\ & (!\decoder_inst|alu_a\(1) & !\alu_inst|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[1]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(1),
	datad => VCC,
	cin => \alu_inst|Add1~1\,
	combout => \alu_inst|Add1~2_combout\,
	cout => \alu_inst|Add1~3\);

-- Location: LCCOMB_X50_Y30_N8
\alu_inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~4_combout\ = ((\decoder_inst|alu_a\(2) $ (\decoder_inst|alu_b[2]~_Duplicate_1_q\ $ (\alu_inst|Add1~3\)))) # (GND)
-- \alu_inst|Add1~5\ = CARRY((\decoder_inst|alu_a\(2) & ((!\alu_inst|Add1~3\) # (!\decoder_inst|alu_b[2]~_Duplicate_1_q\))) # (!\decoder_inst|alu_a\(2) & (!\decoder_inst|alu_b[2]~_Duplicate_1_q\ & !\alu_inst|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(2),
	datab => \decoder_inst|alu_b[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add1~3\,
	combout => \alu_inst|Add1~4_combout\,
	cout => \alu_inst|Add1~5\);

-- Location: FF_X50_Y30_N9
\alu_inst|result[2]_NEW_REG34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Add1~4_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[2]_OTERM35\);

-- Location: FF_X51_Y30_N29
\alu_inst|result[4]_NEW_REG10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_sel\(0),
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[4]_OTERM11\);

-- Location: LCCOMB_X51_Y31_N14
\reg_inst|data_reg[2][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[2][3]~feeder_combout\ = \alu_inst|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux4~1_combout\,
	combout => \reg_inst|data_reg[2][3]~feeder_combout\);

-- Location: FF_X51_Y31_N15
\reg_inst|data_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[2][3]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][3]~q\);

-- Location: LCCOMB_X51_Y31_N8
\reg_inst|data_reg[0][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[0][3]~feeder_combout\ = \alu_inst|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux4~1_combout\,
	combout => \reg_inst|data_reg[0][3]~feeder_combout\);

-- Location: FF_X51_Y31_N9
\reg_inst|data_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[0][3]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][3]~q\);

-- Location: LCCOMB_X50_Y31_N4
\reg_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux4~0_combout\ = (!\decoder_inst|reg_address_a\(2) & ((\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[2][3]~q\)) # (!\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[2][3]~q\,
	datab => \decoder_inst|reg_address_a\(2),
	datac => \reg_inst|data_reg[0][3]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux4~0_combout\);

-- Location: FF_X50_Y31_N5
\reg_inst|data_out_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux4~0_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(3));

-- Location: LCCOMB_X49_Y31_N30
\decoder_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux7~0_combout\ = (\reg_inst|data_out_a\(3)) # (\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_out_a\(3),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|Mux7~0_combout\);

-- Location: LCCOMB_X52_Y34_N30
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ = (!\decoder_inst|Mux9~0_combout\ & (\decoder_inst|Mux3~0_combout\ & (!\decoder_inst|Mux8~0_combout\ & !\decoder_inst|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|Mux9~0_combout\,
	datab => \decoder_inst|Mux3~0_combout\,
	datac => \decoder_inst|Mux8~0_combout\,
	datad => \decoder_inst|Mux10~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\);

-- Location: LCCOMB_X49_Y31_N16
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~3_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\decoder_inst|Mux6~0_combout\ & (\decoder_inst|Mux7~0_combout\ & !\decoder_inst|Mux3~0_combout\)) # 
-- (!\decoder_inst|Mux6~0_combout\ & (!\decoder_inst|Mux7~0_combout\ & \decoder_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|Mux6~0_combout\,
	datab => \decoder_inst|Mux7~0_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datad => \decoder_inst|Mux3~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~3_combout\);

-- Location: LCCOMB_X49_Y31_N14
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\ = \decoder_inst|Mux4~0_combout\ $ (((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~3_combout\ & ((\decoder_inst|Mux5~0_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~3_combout\ & (\decoder_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|Mux4~0_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~3_combout\,
	datac => \decoder_inst|Mux3~0_combout\,
	datad => \decoder_inst|Mux5~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\);

-- Location: LCCOMB_X47_Y31_N22
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_NEW75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_OTERM76\ = (\decoder_inst|alu_sel[0]~0_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\))) # (!\decoder_inst|alu_sel[0]~0_combout\ & 
-- (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_OTERM53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_sel[0]~0_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_OTERM53\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_OTERM76\);

-- Location: FF_X47_Y31_N23
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_OTERM76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_OTERM53\);

-- Location: FF_X49_Y31_N11
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_NEW_REG56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_NEW_REG56_OTERM176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_OTERM57\);

-- Location: LCCOMB_X49_Y31_N0
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\ = (\decoder_inst|Mux6~0_combout\ & (\decoder_inst|Mux7~0_combout\ & (!\decoder_inst|Mux3~0_combout\ & \decoder_inst|Mux5~0_combout\))) # (!\decoder_inst|Mux6~0_combout\ & 
-- (!\decoder_inst|Mux7~0_combout\ & (\decoder_inst|Mux3~0_combout\ & !\decoder_inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|Mux6~0_combout\,
	datab => \decoder_inst|Mux7~0_combout\,
	datac => \decoder_inst|Mux3~0_combout\,
	datad => \decoder_inst|Mux5~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\);

-- Location: LCCOMB_X49_Y31_N28
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\ & (\decoder_inst|Mux4~0_combout\ $ 
-- (!\decoder_inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\,
	datac => \decoder_inst|Mux4~0_combout\,
	datad => \decoder_inst|Mux6~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\);

-- Location: LCCOMB_X49_Y31_N10
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_NEW_REG56_NEW175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_NEW_REG56_OTERM176\ = (\decoder_inst|alu_sel[0]~0_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\))) # (!\decoder_inst|alu_sel[0]~0_combout\ & 
-- (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_OTERM57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_sel[0]~0_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_OTERM57\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_NEW_REG56_OTERM176\);

-- Location: LCCOMB_X47_Y31_N26
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\ = \decoder_inst|alu_b[1]_OTERM70\ $ (((\decoder_inst|alu_b[0]_OTERM67\ & \decoder_inst|alu_b[7]_OTERM65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[1]_OTERM70\,
	datab => \decoder_inst|alu_b[0]_OTERM67\,
	datad => \decoder_inst|alu_b[7]_OTERM65\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\);

-- Location: LCCOMB_X50_Y30_N20
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ = \decoder_inst|alu_b[2]_OTERM72\ $ (((\decoder_inst|alu_b[7]_OTERM65\ & ((\decoder_inst|alu_b[0]_OTERM67\) # (\decoder_inst|alu_b[1]_OTERM70\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]_OTERM67\,
	datab => \decoder_inst|alu_b[2]_OTERM72\,
	datac => \decoder_inst|alu_b[7]_OTERM65\,
	datad => \decoder_inst|alu_b[1]_OTERM70\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\);

-- Location: LCCOMB_X47_Y31_N12
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ = \decoder_inst|alu_b[7]_OTERM65\ $ (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ $ (\decoder_inst|alu_b[3]_OTERM136\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[7]_OTERM65\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	datad => \decoder_inst|alu_b[3]_OTERM136\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\);

-- Location: LCCOMB_X47_Y31_N2
\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0162_combout\ = (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\ & (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ & (\decoder_inst|alu_b[0]_OTERM67\ 
-- & !\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datac => \decoder_inst|alu_b[0]_OTERM67\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0162_combout\);

-- Location: LCCOMB_X47_Y31_N28
\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_NEW_REG56_OTERM176\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\) # 
-- ((\alu_inst|Div0|auto_generated|divider|divider|sel\(4)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(4),
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_NEW_REG56_OTERM176\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0162_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\);

-- Location: LCCOMB_X47_Y31_N4
\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_RTM0184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_RTM0184_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\ & (\decoder_inst|alu_b[0]_OTERM67\ & 
-- (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\ & !\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_OTERM76\))) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\ & 
-- ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\) # ((\decoder_inst|alu_b[0]_OTERM67\ & !\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_OTERM76\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]_OTERM67\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_OTERM76\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_RTM0184_combout\);

-- Location: FF_X47_Y31_N5
\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_NEW_REG181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_RTM0184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_OTERM182\);

-- Location: LCCOMB_X47_Y31_N24
\alu_inst|Div0|auto_generated|divider|divider|sel[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\) # ((\decoder_inst|alu_b[7]_OTERM65\ & ((!\decoder_inst|alu_b[6]_OTERM142\) # (!\decoder_inst|alu_b[5]_OTERM140\))) # 
-- (!\decoder_inst|alu_b[7]_OTERM65\ & ((\decoder_inst|alu_b[5]_OTERM140\) # (\decoder_inst|alu_b[6]_OTERM142\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[7]_OTERM65\,
	datab => \decoder_inst|alu_b[5]_OTERM140\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datad => \decoder_inst|alu_b[6]_OTERM142\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\);

-- Location: LCCOMB_X47_Y31_N14
\alu_inst|Div0|auto_generated|divider|divider|sel[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(1) = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\) # ((\alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\) # 
-- ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\) # (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(1));

-- Location: FF_X47_Y31_N27
\alu_inst|Div0|auto_generated|divider|divider|sel[1]_NEW_REG173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|sel\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM174\);

-- Location: LCCOMB_X47_Y31_N20
\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_OTERM53\ $ (((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_OTERM182\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM174\ & \decoder_inst|alu_b[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_OTERM53\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_OTERM182\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM174\,
	datad => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\);

-- Location: FF_X46_Y31_N27
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_NEW_REG157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\);

-- Location: LCCOMB_X46_Y31_N4
\alu_inst|Div0|auto_generated|divider|divider|sel[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(2) = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\) # ((\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\) # 
-- (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(2));

-- Location: FF_X46_Y31_N29
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_NEW_REG131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\);

-- Location: LCCOMB_X47_Y31_N0
\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0168_combout\ = (\decoder_inst|alu_b[0]_OTERM67\ & !\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_OTERM76\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|alu_b[0]_OTERM67\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~4_NEW_REG52_OTERM76\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0168_combout\);

-- Location: LCCOMB_X47_Y31_N18
\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|sel\(1)) # 
-- (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\ $ (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0168_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|sel\(1),
	datad => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\);

-- Location: FF_X47_Y31_N19
\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_NEW_REG179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM180\);

-- Location: FF_X46_Y31_N5
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_NEW_REG133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\);

-- Location: LCCOMB_X49_Y31_N24
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_combout\ = \decoder_inst|Mux5~0_combout\ $ (\decoder_inst|Mux3~0_combout\ $ (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|Mux5~0_combout\,
	datab => \decoder_inst|Mux3~0_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~3_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_combout\);

-- Location: LCCOMB_X49_Y31_N18
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_NEW_REG54_NEW73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_NEW_REG54_OTERM74\ = (\decoder_inst|alu_sel[0]~0_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_combout\))) # (!\decoder_inst|alu_sel[0]~0_combout\ & 
-- (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_OTERM55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_OTERM55\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_combout\,
	datad => \decoder_inst|alu_sel[0]~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_NEW_REG54_OTERM74\);

-- Location: FF_X46_Y31_N23
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_NEW_REG54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_NEW_REG54_OTERM74\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_OTERM55\);

-- Location: LCCOMB_X46_Y31_N24
\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_OTERM55\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_OTERM55\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X46_Y31_N26
\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X46_Y31_N28
\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM180\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM180\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM180\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM180\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X46_Y31_N30
\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X46_Y31_N18
\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(2) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(2) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(2),
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X46_Y31_N2
\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(2) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM180\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(2) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM180\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM180\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(2),
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X46_Y31_N22
\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_OTERM55\ $ (((\decoder_inst|alu_b[0]~_Duplicate_1_q\ & (!\alu_inst|Div0|auto_generated|divider|divider|sel\(2) & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(2),
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~5_OTERM55\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: FF_X49_Y31_N5
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_NEW_REG48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	sload => VCC,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_OTERM49\);

-- Location: LCCOMB_X49_Y31_N22
\decoder_inst|alu_a[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[3]~feeder_combout\ = \decoder_inst|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|Mux7~0_combout\,
	combout => \decoder_inst|alu_a[3]~feeder_combout\);

-- Location: FF_X49_Y31_N23
\decoder_inst|alu_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[3]~feeder_combout\,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(3));

-- Location: LCCOMB_X49_Y31_N2
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~6_combout\ = \decoder_inst|alu_a\(4) $ (((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_OTERM49\ & ((\decoder_inst|alu_a\(3)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_OTERM49\ & (\decoder_inst|alu_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(7),
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_OTERM49\,
	datac => \decoder_inst|alu_a\(3),
	datad => \decoder_inst|alu_a\(4),
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~6_combout\);

-- Location: LCCOMB_X46_Y31_N6
\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~6_combout\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~6_combout\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X46_Y31_N8
\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X46_Y31_N10
\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X46_Y31_N12
\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X46_Y31_N14
\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X46_Y31_N20
\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\);

-- Location: LCCOMB_X46_Y31_N16
\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\);

-- Location: LCCOMB_X45_Y31_N22
\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~6_combout\ $ (((!\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & (\decoder_inst|alu_b[0]~_Duplicate_1_q\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~6_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\);

-- Location: LCCOMB_X49_Y31_N8
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ = \decoder_inst|alu_a\(7) $ (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_OTERM49\ $ (\decoder_inst|alu_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(7),
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_OTERM49\,
	datac => \decoder_inst|alu_a\(3),
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\);

-- Location: LCCOMB_X45_Y31_N6
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X45_Y31_N8
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X45_Y31_N10
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X45_Y31_N12
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X45_Y31_N14
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X45_Y31_N16
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X45_Y31_N18
\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LCCOMB_X45_Y31_N4
\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\);

-- Location: LCCOMB_X45_Y31_N2
\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\);

-- Location: LCCOMB_X45_Y31_N24
\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\ $ (((!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ & (\decoder_inst|alu_b[0]~_Duplicate_1_q\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~7_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\,
	datac => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\);

-- Location: LCCOMB_X49_Y30_N28
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\ = \decoder_inst|alu_a\(2) $ (((\decoder_inst|alu_a\(7) & ((\decoder_inst|alu_a\(1)) # (\decoder_inst|alu_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(2),
	datab => \decoder_inst|alu_a\(1),
	datac => \decoder_inst|alu_a\(7),
	datad => \decoder_inst|alu_a\(0),
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\);

-- Location: LCCOMB_X45_Y29_N0
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X45_Y29_N2
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X45_Y29_N4
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X45_Y29_N6
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X45_Y29_N8
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X45_Y29_N10
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X45_Y29_N12
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: FF_X45_Y29_N13
\alu_inst|result[2]_OTERM39_NEW_REG115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[2]_OTERM39_OTERM116\);

-- Location: LCCOMB_X49_Y30_N22
\alu_inst|Div0|auto_generated|divider|divider|sel[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(5) = (\decoder_inst|alu_b[7]~_Duplicate_1_q\ & (((!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\)) # 
-- (!\decoder_inst|alu_b[6]~_Duplicate_1_q\))) # (!\decoder_inst|alu_b[7]~_Duplicate_1_q\ & ((\decoder_inst|alu_b[6]~_Duplicate_1_q\) # ((\decoder_inst|alu_b[5]~_Duplicate_1_q\ & \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(5));

-- Location: FF_X46_Y30_N5
\alu_inst|result[2]_OTERM39_NEW_REG119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[2]_OTERM39_OTERM120\);

-- Location: LCCOMB_X49_Y30_N24
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\ & ((\decoder_inst|alu_b[5]~_Duplicate_1_q\ & (!\decoder_inst|alu_b[7]~_Duplicate_1_q\ & 
-- \decoder_inst|alu_b[6]~_Duplicate_1_q\)) # (!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & (\decoder_inst|alu_b[7]~_Duplicate_1_q\ & !\decoder_inst|alu_b[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\);

-- Location: FF_X46_Y30_N17
\alu_inst|result[1]_OTERM45_NEW_REG126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[1]_OTERM45_OTERM127\);

-- Location: LCCOMB_X49_Y30_N30
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ = \decoder_inst|alu_b[6]~_Duplicate_1_q\ $ (((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\ & ((\decoder_inst|alu_b[5]~_Duplicate_1_q\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\ & (\decoder_inst|alu_b[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM154\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\);

-- Location: LCCOMB_X45_Y29_N28
\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\);

-- Location: LCCOMB_X45_Y29_N16
\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datac => \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\);

-- Location: LCCOMB_X46_Y29_N22
\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\);

-- Location: LCCOMB_X45_Y29_N30
\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\);

-- Location: LCCOMB_X45_Y29_N14
\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\ $ (((!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (\decoder_inst|alu_b[0]~_Duplicate_1_q\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datac => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\);

-- Location: LCCOMB_X47_Y30_N22
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~9_combout\ = \decoder_inst|alu_a\(1) $ (((\decoder_inst|alu_a\(7) & \decoder_inst|alu_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(1),
	datac => \decoder_inst|alu_a\(7),
	datad => \decoder_inst|alu_a\(0),
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~9_combout\);

-- Location: LCCOMB_X46_Y29_N0
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~9_combout\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~9_combout\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X46_Y29_N2
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X46_Y29_N4
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X46_Y29_N6
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X46_Y29_N8
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ $ (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\))) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ & (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X46_Y29_N10
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X46_Y29_N12
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ $ (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\))) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ & (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X46_Y29_N20
\alu_inst|Div0|auto_generated|divider|divider|StageOut[54]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\);

-- Location: LCCOMB_X46_Y29_N30
\alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\);

-- Location: LCCOMB_X46_Y29_N18
\alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\);

-- Location: LCCOMB_X46_Y29_N28
\alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\);

-- Location: LCCOMB_X46_Y29_N26
\alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\);

-- Location: LCCOMB_X46_Y29_N24
\alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\);

-- Location: LCCOMB_X46_Y29_N16
\alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~9_combout\ $ (((!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & \decoder_inst|alu_b[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~9_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\);

-- Location: LCCOMB_X47_Y29_N8
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\decoder_inst|alu_a\(0)) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(0),
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

-- Location: LCCOMB_X47_Y29_N10
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM134\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X47_Y29_N12
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM132\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X47_Y29_N14
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM158\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X47_Y29_N16
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X47_Y29_N18
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X47_Y29_N20
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X47_Y29_N22
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X47_Y29_N24
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: FF_X47_Y29_N25
\alu_inst|result[1]_OTERM45_OTERM125_NEW_REG143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[1]_OTERM45_OTERM125_OTERM144\);

-- Location: LCCOMB_X46_Y30_N0
\alu_inst|Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~1\ = CARRY(\alu_inst|result[1]_OTERM45_OTERM125_OTERM144\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[1]_OTERM45_OTERM125_OTERM144\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X46_Y30_N2
\alu_inst|Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~2_combout\ = (\alu_inst|result[1]_OTERM45_OTERM123\ & (((!\alu_inst|Div0|auto_generated|divider|op_1~1\)))) # (!\alu_inst|result[1]_OTERM45_OTERM123\ & ((\alu_inst|result[1]_OTERM45_OTERM127\ & 
-- (!\alu_inst|Div0|auto_generated|divider|op_1~1\)) # (!\alu_inst|result[1]_OTERM45_OTERM127\ & ((\alu_inst|Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~3\ = CARRY(((!\alu_inst|result[1]_OTERM45_OTERM123\ & !\alu_inst|result[1]_OTERM45_OTERM127\)) # (!\alu_inst|Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[1]_OTERM45_OTERM123\,
	datab => \alu_inst|result[1]_OTERM45_OTERM127\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~1\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X46_Y30_N4
\alu_inst|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~4_combout\ = (\alu_inst|Div0|auto_generated|divider|op_1~3\ & (((\alu_inst|result[2]_OTERM39_OTERM116\) # (\alu_inst|result[2]_OTERM39_OTERM120\)))) # (!\alu_inst|Div0|auto_generated|divider|op_1~3\ & 
-- ((((\alu_inst|result[2]_OTERM39_OTERM116\) # (\alu_inst|result[2]_OTERM39_OTERM120\)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~5\ = CARRY((!\alu_inst|Div0|auto_generated|divider|op_1~3\ & ((\alu_inst|result[2]_OTERM39_OTERM116\) # (\alu_inst|result[2]_OTERM39_OTERM120\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[2]_OTERM39_OTERM116\,
	datab => \alu_inst|result[2]_OTERM39_OTERM120\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~3\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X47_Y30_N16
\alu_inst|Div0|auto_generated|divider|diff_signs\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|diff_signs~combout\ = \decoder_inst|alu_b[7]~_Duplicate_1_q\ $ (\decoder_inst|alu_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_a\(7),
	combout => \alu_inst|Div0|auto_generated|divider|diff_signs~combout\);

-- Location: LCCOMB_X46_Y30_N24
\alu_inst|Div0|auto_generated|divider|diff_signs_RTM085\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|diff_signs_RTM085~combout\ = !\alu_inst|Div0|auto_generated|divider|diff_signs~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \alu_inst|Div0|auto_generated|divider|diff_signs_RTM085~combout\);

-- Location: FF_X46_Y30_N25
\alu_inst|result[5]_OTERM7_NEW_REG83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|diff_signs_RTM085~combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM7_OTERM84\);

-- Location: LCCOMB_X46_Y30_N30
\alu_inst|Div0|auto_generated|divider|quotient[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\ = (\alu_inst|result[5]_OTERM7_OTERM84\ & (!\alu_inst|result[2]_OTERM39_OTERM116\ & ((!\alu_inst|result[2]_OTERM39_OTERM120\)))) # (!\alu_inst|result[5]_OTERM7_OTERM84\ & 
-- (((\alu_inst|Div0|auto_generated|divider|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[2]_OTERM39_OTERM116\,
	datab => \alu_inst|Div0|auto_generated|divider|op_1~4_combout\,
	datac => \alu_inst|result[2]_OTERM39_OTERM120\,
	datad => \alu_inst|result[5]_OTERM7_OTERM84\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\);

-- Location: LCCOMB_X49_Y30_N2
\alu_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~2_combout\ = (\decoder_inst|alu_b[1]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(1) & (\alu_inst|Add0~1\ & VCC)) # (!\decoder_inst|alu_a\(1) & (!\alu_inst|Add0~1\)))) # (!\decoder_inst|alu_b[1]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(1) & 
-- (!\alu_inst|Add0~1\)) # (!\decoder_inst|alu_a\(1) & ((\alu_inst|Add0~1\) # (GND)))))
-- \alu_inst|Add0~3\ = CARRY((\decoder_inst|alu_b[1]~_Duplicate_1_q\ & (!\decoder_inst|alu_a\(1) & !\alu_inst|Add0~1\)) # (!\decoder_inst|alu_b[1]~_Duplicate_1_q\ & ((!\alu_inst|Add0~1\) # (!\decoder_inst|alu_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[1]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(1),
	datad => VCC,
	cin => \alu_inst|Add0~1\,
	combout => \alu_inst|Add0~2_combout\,
	cout => \alu_inst|Add0~3\);

-- Location: LCCOMB_X49_Y30_N4
\alu_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~4_combout\ = ((\decoder_inst|alu_b[2]~_Duplicate_1_q\ $ (\decoder_inst|alu_a\(2) $ (!\alu_inst|Add0~3\)))) # (GND)
-- \alu_inst|Add0~5\ = CARRY((\decoder_inst|alu_b[2]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(2)) # (!\alu_inst|Add0~3\))) # (!\decoder_inst|alu_b[2]~_Duplicate_1_q\ & (\decoder_inst|alu_a\(2) & !\alu_inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[2]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(2),
	datad => VCC,
	cin => \alu_inst|Add0~3\,
	combout => \alu_inst|Add0~4_combout\,
	cout => \alu_inst|Add0~5\);

-- Location: DSPMULT_X48_Y30_N0
\alu_inst|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \alu_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \alu_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y30_N2
\alu_inst|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X51_Y30_N2
\alu_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~0_combout\ = (\decoder_inst|alu_sel\(1) & (((\decoder_inst|alu_sel\(0)) # (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\decoder_inst|alu_sel\(1) & (\alu_inst|Add0~4_combout\ & (!\decoder_inst|alu_sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(1),
	datab => \alu_inst|Add0~4_combout\,
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \alu_inst|Mux5~0_combout\);

-- Location: FF_X51_Y30_N3
\alu_inst|result[2]_NEW_REG36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux5~0_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[2]_OTERM37\);

-- Location: LCCOMB_X51_Y30_N16
\alu_inst|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~1_combout\ = (\alu_inst|result[4]_OTERM11\ & ((\alu_inst|result[2]_OTERM37\ & ((\alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\))) # (!\alu_inst|result[2]_OTERM37\ & (\alu_inst|result[2]_OTERM35\)))) # 
-- (!\alu_inst|result[4]_OTERM11\ & (((\alu_inst|result[2]_OTERM37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[2]_OTERM35\,
	datab => \alu_inst|result[4]_OTERM11\,
	datac => \alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\,
	datad => \alu_inst|result[2]_OTERM37\,
	combout => \alu_inst|Mux5~1_combout\);

-- Location: LCCOMB_X51_Y30_N22
\reg_inst|data_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[1][2]~feeder_combout\ = \alu_inst|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux5~1_combout\,
	combout => \reg_inst|data_reg[1][2]~feeder_combout\);

-- Location: FF_X51_Y30_N23
\reg_inst|data_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[1][2]~feeder_combout\,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][2]~q\);

-- Location: FF_X50_Y31_N23
\reg_inst|data_out_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_reg[1][2]~q\,
	sload => VCC,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(2));

-- Location: LCCOMB_X50_Y31_N22
\decoder_inst|alu_b[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[2]~2_combout\ = (!\decoder_inst|format\(0) & (\reg_inst|data_out_b\(2) & \decoder_inst|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datac => \reg_inst|data_out_b\(2),
	datad => \decoder_inst|B\(0),
	combout => \decoder_inst|alu_b[2]~2_combout\);

-- Location: LCCOMB_X50_Y30_N2
\decoder_inst|alu_b[2]_NEW71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[2]_OTERM72\ = (\decoder_inst|alu_sel[0]~0_combout\ & (\decoder_inst|alu_b[2]~2_combout\)) # (!\decoder_inst|alu_sel[0]~0_combout\ & ((\decoder_inst|alu_b[2]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[2]~2_combout\,
	datac => \decoder_inst|alu_b[2]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_sel[0]~0_combout\,
	combout => \decoder_inst|alu_b[2]_OTERM72\);

-- Location: LCCOMB_X50_Y30_N0
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ = (!\decoder_inst|alu_b[0]_OTERM67\ & (!\decoder_inst|alu_b[2]_OTERM72\ & (\decoder_inst|alu_b[7]_OTERM65\ & !\decoder_inst|alu_b[1]_OTERM70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]_OTERM67\,
	datab => \decoder_inst|alu_b[2]_OTERM72\,
	datac => \decoder_inst|alu_b[7]_OTERM65\,
	datad => \decoder_inst|alu_b[1]_OTERM70\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\);

-- Location: LCCOMB_X47_Y31_N10
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ = \decoder_inst|alu_b[4]_OTERM138\ $ (((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & ((\decoder_inst|alu_b[3]_OTERM136\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & (\decoder_inst|alu_b[7]_OTERM65\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[7]_OTERM65\,
	datab => \decoder_inst|alu_b[3]_OTERM136\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	datad => \decoder_inst|alu_b[4]_OTERM138\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\);

-- Location: FF_X46_Y31_N7
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_NEW_REG155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\);

-- Location: LCCOMB_X45_Y31_N26
\alu_inst|Div0|auto_generated|divider|divider|sel[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(3) = (\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\) # (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM156\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(3));

-- Location: LCCOMB_X46_Y31_N0
\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\);

-- Location: LCCOMB_X45_Y31_N30
\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\);

-- Location: LCCOMB_X45_Y29_N26
\alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datac => \alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\);

-- Location: LCCOMB_X46_Y29_N14
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: FF_X46_Y29_N15
\alu_inst|result[1]_OTERM45_NEW_REG122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[1]_OTERM45_OTERM123\);

-- Location: LCCOMB_X46_Y30_N16
\alu_inst|Div0|auto_generated|divider|quotient[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\ = (\alu_inst|result[5]_OTERM7_OTERM84\ & (!\alu_inst|result[1]_OTERM45_OTERM123\ & (!\alu_inst|result[1]_OTERM45_OTERM127\))) # (!\alu_inst|result[5]_OTERM7_OTERM84\ & 
-- (((\alu_inst|Div0|auto_generated|divider|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[1]_OTERM45_OTERM123\,
	datab => \alu_inst|result[5]_OTERM7_OTERM84\,
	datac => \alu_inst|result[1]_OTERM45_OTERM127\,
	datad => \alu_inst|Div0|auto_generated|divider|op_1~2_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\);

-- Location: LCCOMB_X51_Y30_N20
\alu_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~0_combout\ = (\decoder_inst|alu_sel\(1) & (((\decoder_inst|alu_sel\(0))))) # (!\decoder_inst|alu_sel\(1) & ((\decoder_inst|alu_sel\(0) & ((\alu_inst|Add1~2_combout\))) # (!\decoder_inst|alu_sel\(0) & (\alu_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(1),
	datab => \alu_inst|Add0~2_combout\,
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Add1~2_combout\,
	combout => \alu_inst|Mux6~0_combout\);

-- Location: FF_X51_Y30_N21
\alu_inst|result[1]_NEW_REG42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux6~0_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[1]_OTERM43\);

-- Location: FF_X51_Y30_N7
\alu_inst|result[1]_NEW_REG40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[1]_OTERM41\);

-- Location: LCCOMB_X51_Y30_N6
\alu_inst|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~1_combout\ = (\alu_inst|result[1]_OTERM43\ & ((\alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\) # ((!\alu_inst|result[5]_OTERM3\)))) # (!\alu_inst|result[1]_OTERM43\ & (((\alu_inst|result[1]_OTERM41\ & 
-- \alu_inst|result[5]_OTERM3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\,
	datab => \alu_inst|result[1]_OTERM43\,
	datac => \alu_inst|result[1]_OTERM41\,
	datad => \alu_inst|result[5]_OTERM3\,
	combout => \alu_inst|Mux6~1_combout\);

-- Location: LCCOMB_X51_Y31_N26
\reg_inst|data_reg[0][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[0][1]~feeder_combout\ = \alu_inst|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux6~1_combout\,
	combout => \reg_inst|data_reg[0][1]~feeder_combout\);

-- Location: FF_X51_Y31_N27
\reg_inst|data_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[0][1]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][1]~q\);

-- Location: LCCOMB_X51_Y31_N30
\reg_inst|data_reg[2][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[2][1]~feeder_combout\ = \alu_inst|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux6~1_combout\,
	combout => \reg_inst|data_reg[2][1]~feeder_combout\);

-- Location: FF_X51_Y31_N31
\reg_inst|data_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[2][1]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][1]~q\);

-- Location: LCCOMB_X50_Y31_N14
\reg_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux6~0_combout\ = (!\decoder_inst|reg_address_a\(2) & ((\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[2][1]~q\))) # (!\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(1),
	datab => \reg_inst|data_reg[0][1]~q\,
	datac => \reg_inst|data_reg[2][1]~q\,
	datad => \decoder_inst|reg_address_a\(2),
	combout => \reg_inst|Mux6~0_combout\);

-- Location: FF_X50_Y31_N15
\reg_inst|data_out_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux6~0_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(1));

-- Location: LCCOMB_X51_Y34_N0
\decoder_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux9~0_combout\ = (\decoder_inst|format\(0) & (\decoder_inst|A\(1))) # (!\decoder_inst|format\(0) & ((\reg_inst|data_out_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|format\(0),
	datac => \decoder_inst|A\(1),
	datad => \reg_inst|data_out_a\(1),
	combout => \decoder_inst|Mux9~0_combout\);

-- Location: FF_X49_Y30_N19
\decoder_inst|alu_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux9~0_combout\,
	sload => VCC,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(1));

-- Location: FF_X47_Y30_N1
\alu_inst|result[0]_NEW_REG58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mult0|auto_generated|mac_out2~dataout\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[0]_OTERM59\);

-- Location: LCCOMB_X47_Y29_N0
\alu_inst|Div0|auto_generated|divider|quotient[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[0]~7_combout\ = !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[0]~7_combout\);

-- Location: FF_X47_Y29_N1
\alu_inst|result[0]_NEW_REG62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|quotient[0]~7_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[0]_OTERM63\);

-- Location: LCCOMB_X47_Y30_N0
\alu_inst|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~1_combout\ = (\alu_inst|result[0]_OTERM61\ & (((\alu_inst|result[0]_OTERM63\)) # (!\alu_inst|result[5]_OTERM3\))) # (!\alu_inst|result[0]_OTERM61\ & (\alu_inst|result[5]_OTERM3\ & (\alu_inst|result[0]_OTERM59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[0]_OTERM61\,
	datab => \alu_inst|result[5]_OTERM3\,
	datac => \alu_inst|result[0]_OTERM59\,
	datad => \alu_inst|result[0]_OTERM63\,
	combout => \alu_inst|Mux7~1_combout\);

-- Location: LCCOMB_X51_Y31_N4
\reg_inst|data_reg[0][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[0][0]~feeder_combout\ = \alu_inst|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux7~1_combout\,
	combout => \reg_inst|data_reg[0][0]~feeder_combout\);

-- Location: FF_X51_Y31_N5
\reg_inst|data_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[0][0]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][0]~q\);

-- Location: LCCOMB_X51_Y31_N28
\reg_inst|data_reg[2][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[2][0]~feeder_combout\ = \alu_inst|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux7~1_combout\,
	combout => \reg_inst|data_reg[2][0]~feeder_combout\);

-- Location: FF_X51_Y31_N29
\reg_inst|data_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[2][0]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][0]~q\);

-- Location: LCCOMB_X50_Y31_N16
\reg_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux7~0_combout\ = (!\decoder_inst|reg_address_a\(2) & ((\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[2][0]~q\))) # (!\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][0]~q\,
	datab => \decoder_inst|reg_address_a\(2),
	datac => \reg_inst|data_reg[2][0]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux7~0_combout\);

-- Location: FF_X50_Y31_N17
\reg_inst|data_out_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux7~0_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(0));

-- Location: LCCOMB_X51_Y31_N10
\decoder_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux10~0_combout\ = (\reg_inst|data_out_a\(0) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_out_a\(0),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|Mux10~0_combout\);

-- Location: LCCOMB_X50_Y30_N24
\decoder_inst|alu_a[0]_NEW169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[0]_OTERM170\ = (\decoder_inst|alu_sel[0]~0_combout\ & ((\decoder_inst|Mux10~0_combout\))) # (!\decoder_inst|alu_sel[0]~0_combout\ & (\decoder_inst|alu_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_sel[0]~0_combout\,
	datac => \decoder_inst|alu_a\(0),
	datad => \decoder_inst|Mux10~0_combout\,
	combout => \decoder_inst|alu_a[0]_OTERM170\);

-- Location: FF_X50_Y30_N25
\decoder_inst|alu_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[0]_OTERM170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(0));

-- Location: FF_X47_Y30_N7
\alu_inst|result[7]_NEW_REG16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM17\);

-- Location: LCCOMB_X47_Y30_N28
\alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_OTERM57\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_OTERM57\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

-- Location: LCCOMB_X46_Y30_N28
\alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_RTM0151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_RTM0151_combout\ = !\alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_RTM0151_combout\);

-- Location: FF_X46_Y30_N29
\alu_inst|result[7]_OTERM19_OTERM88_NEW_REG149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_RTM0151_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM19_OTERM88_OTERM150\);

-- Location: LCCOMB_X47_Y30_N4
\alu_inst|Div0|auto_generated|divider|divider|sel[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(0) = (\alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM174\) # (\decoder_inst|alu_b[1]~_Duplicate_1_q\ $ (((\decoder_inst|alu_b[0]~_Duplicate_1_q\ & \decoder_inst|alu_b[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM174\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[1]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(0));

-- Location: FF_X47_Y30_N5
\alu_inst|result[7]_OTERM19_NEW_REG93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|sel\(0),
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM19_OTERM94\);

-- Location: FF_X46_Y30_N13
\alu_inst|result[6]_OTERM31_OTERM103_NEW_REG145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_OTERM182\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM31_OTERM103_OTERM146\);

-- Location: FF_X47_Y30_N11
\alu_inst|result[6]_OTERM31_NEW_REG104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM174\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM31_OTERM105\);

-- Location: FF_X46_Y30_N11
\alu_inst|result[5]_OTERM7_NEW_REG81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|sel\(2),
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM7_OTERM82\);

-- Location: FF_X46_Y31_N31
\alu_inst|result[5]_OTERM7_NEW_REG77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM7_OTERM78\);

-- Location: FF_X46_Y30_N23
\alu_inst|result[4]_OTERM15_NEW_REG99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[4]_OTERM15_OTERM100\);

-- Location: FF_X46_Y31_N15
\alu_inst|result[4]_OTERM15_NEW_REG95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[4]_OTERM15_OTERM96\);

-- Location: FF_X46_Y31_N9
\alu_inst|result[3]_OTERM27_NEW_REG108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM27_OTERM109\);

-- Location: LCCOMB_X46_Y30_N6
\alu_inst|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~6_combout\ = (\alu_inst|result[3]_OTERM27_OTERM113\ & (((!\alu_inst|Div0|auto_generated|divider|op_1~5\)))) # (!\alu_inst|result[3]_OTERM27_OTERM113\ & ((\alu_inst|result[3]_OTERM27_OTERM109\ & 
-- (!\alu_inst|Div0|auto_generated|divider|op_1~5\)) # (!\alu_inst|result[3]_OTERM27_OTERM109\ & ((\alu_inst|Div0|auto_generated|divider|op_1~5\) # (GND)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~7\ = CARRY(((!\alu_inst|result[3]_OTERM27_OTERM113\ & !\alu_inst|result[3]_OTERM27_OTERM109\)) # (!\alu_inst|Div0|auto_generated|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[3]_OTERM27_OTERM113\,
	datab => \alu_inst|result[3]_OTERM27_OTERM109\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~5\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X46_Y30_N8
\alu_inst|Div0|auto_generated|divider|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~8_combout\ = (\alu_inst|Div0|auto_generated|divider|op_1~7\ & (((\alu_inst|result[4]_OTERM15_OTERM100\) # (\alu_inst|result[4]_OTERM15_OTERM96\)))) # (!\alu_inst|Div0|auto_generated|divider|op_1~7\ & 
-- ((((\alu_inst|result[4]_OTERM15_OTERM100\) # (\alu_inst|result[4]_OTERM15_OTERM96\)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~9\ = CARRY((!\alu_inst|Div0|auto_generated|divider|op_1~7\ & ((\alu_inst|result[4]_OTERM15_OTERM100\) # (\alu_inst|result[4]_OTERM15_OTERM96\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[4]_OTERM15_OTERM100\,
	datab => \alu_inst|result[4]_OTERM15_OTERM96\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~7\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X46_Y30_N10
\alu_inst|Div0|auto_generated|divider|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~10_combout\ = (\alu_inst|result[5]_OTERM7_OTERM82\ & (((!\alu_inst|Div0|auto_generated|divider|op_1~9\)))) # (!\alu_inst|result[5]_OTERM7_OTERM82\ & ((\alu_inst|result[5]_OTERM7_OTERM78\ & 
-- (!\alu_inst|Div0|auto_generated|divider|op_1~9\)) # (!\alu_inst|result[5]_OTERM7_OTERM78\ & ((\alu_inst|Div0|auto_generated|divider|op_1~9\) # (GND)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~11\ = CARRY(((!\alu_inst|result[5]_OTERM7_OTERM82\ & !\alu_inst|result[5]_OTERM7_OTERM78\)) # (!\alu_inst|Div0|auto_generated|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[5]_OTERM7_OTERM82\,
	datab => \alu_inst|result[5]_OTERM7_OTERM78\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~9\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~10_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X46_Y30_N12
\alu_inst|Div0|auto_generated|divider|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~12_combout\ = \alu_inst|Div0|auto_generated|divider|op_1~11\ $ (((!\alu_inst|result[6]_OTERM31_OTERM103_OTERM146\ & !\alu_inst|result[6]_OTERM31_OTERM105\)))
-- \alu_inst|Div0|auto_generated|divider|op_1~13\ = CARRY((!\alu_inst|Div0|auto_generated|divider|op_1~11\ & ((\alu_inst|result[6]_OTERM31_OTERM103_OTERM146\) # (\alu_inst|result[6]_OTERM31_OTERM105\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[6]_OTERM31_OTERM103_OTERM146\,
	datab => \alu_inst|result[6]_OTERM31_OTERM105\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~11\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~12_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X46_Y30_N14
\alu_inst|Div0|auto_generated|divider|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~14_combout\ = \alu_inst|Div0|auto_generated|divider|op_1~13\ $ (((\alu_inst|result[7]_OTERM19_OTERM88_OTERM150\) # (\alu_inst|result[7]_OTERM19_OTERM94\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|result[7]_OTERM19_OTERM88_OTERM150\,
	datad => \alu_inst|result[7]_OTERM19_OTERM94\,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~13\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~14_combout\);

-- Location: FF_X47_Y30_N17
\alu_inst|result[7]_OTERM19_NEW_REG89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|diff_signs~combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM19_OTERM90\);

-- Location: FF_X47_Y30_N29
\alu_inst|result[7]_OTERM19_NEW_REG91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM19_OTERM92\);

-- Location: LCCOMB_X47_Y30_N20
\alu_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~0_combout\ = (\alu_inst|result[7]_OTERM19_OTERM90\ & (\alu_inst|Div0|auto_generated|divider|op_1~14_combout\)) # (!\alu_inst|result[7]_OTERM19_OTERM90\ & (((!\alu_inst|result[7]_OTERM19_OTERM94\ & \alu_inst|result[7]_OTERM19_OTERM92\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|op_1~14_combout\,
	datab => \alu_inst|result[7]_OTERM19_OTERM90\,
	datac => \alu_inst|result[7]_OTERM19_OTERM94\,
	datad => \alu_inst|result[7]_OTERM19_OTERM92\,
	combout => \alu_inst|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y30_N6
\alu_inst|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~2_combout\ = (\alu_inst|result[7]_OTERM21\ & (((\alu_inst|Mux0~0_combout\)) # (!\alu_inst|result[5]_OTERM3\))) # (!\alu_inst|result[7]_OTERM21\ & (\alu_inst|result[5]_OTERM3\ & (\alu_inst|result[7]_OTERM17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[7]_OTERM21\,
	datab => \alu_inst|result[5]_OTERM3\,
	datac => \alu_inst|result[7]_OTERM17\,
	datad => \alu_inst|Mux0~0_combout\,
	combout => \alu_inst|Mux0~2_combout\);

-- Location: LCCOMB_X47_Y30_N2
\reg_inst|data_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[1][7]~feeder_combout\ = \alu_inst|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux0~2_combout\,
	combout => \reg_inst|data_reg[1][7]~feeder_combout\);

-- Location: FF_X47_Y30_N3
\reg_inst|data_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[1][7]~feeder_combout\,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][7]~q\);

-- Location: FF_X50_Y31_N19
\reg_inst|data_out_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_reg[1][7]~q\,
	sload => VCC,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(7));

-- Location: LCCOMB_X50_Y31_N18
\decoder_inst|alu_b[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[7]~0_combout\ = (!\decoder_inst|format\(0) & (\reg_inst|data_out_b\(7) & \decoder_inst|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datac => \reg_inst|data_out_b\(7),
	datad => \decoder_inst|B\(0),
	combout => \decoder_inst|alu_b[7]~0_combout\);

-- Location: LCCOMB_X50_Y30_N30
\decoder_inst|alu_b[7]_NEW64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[7]_OTERM65\ = (\decoder_inst|alu_sel[0]~0_combout\ & ((\decoder_inst|alu_b[7]~0_combout\))) # (!\decoder_inst|alu_sel[0]~0_combout\ & (\decoder_inst|alu_b[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[7]~0_combout\,
	datad => \decoder_inst|alu_sel[0]~0_combout\,
	combout => \decoder_inst|alu_b[7]_OTERM65\);

-- Location: LCCOMB_X47_Y31_N30
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & ((\decoder_inst|alu_b[7]_OTERM65\ & (!\decoder_inst|alu_b[3]_OTERM136\ & !\decoder_inst|alu_b[4]_OTERM138\)) # 
-- (!\decoder_inst|alu_b[7]_OTERM65\ & (\decoder_inst|alu_b[3]_OTERM136\ & \decoder_inst|alu_b[4]_OTERM138\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[7]_OTERM65\,
	datab => \decoder_inst|alu_b[3]_OTERM136\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	datad => \decoder_inst|alu_b[4]_OTERM138\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\);

-- Location: LCCOMB_X47_Y31_N16
\alu_inst|Div0|auto_generated|divider|divider|sel[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(4) = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\) # ((\decoder_inst|alu_b[5]_OTERM140\ & ((!\decoder_inst|alu_b[6]_OTERM142\) # (!\decoder_inst|alu_b[7]_OTERM65\))) # 
-- (!\decoder_inst|alu_b[5]_OTERM140\ & ((\decoder_inst|alu_b[7]_OTERM65\) # (\decoder_inst|alu_b[6]_OTERM142\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datab => \decoder_inst|alu_b[5]_OTERM140\,
	datac => \decoder_inst|alu_b[7]_OTERM65\,
	datad => \decoder_inst|alu_b[6]_OTERM142\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(4));

-- Location: FF_X46_Y31_N25
\alu_inst|Div0|auto_generated|divider|divider|sel[4]_NEW_REG171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|sel\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\);

-- Location: FF_X46_Y30_N7
\alu_inst|result[3]_OTERM27_NEW_REG112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM172\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM27_OTERM113\);

-- Location: LCCOMB_X46_Y30_N18
\alu_inst|Div0|auto_generated|divider|quotient[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\ = (\alu_inst|result[5]_OTERM7_OTERM84\ & (((!\alu_inst|result[3]_OTERM27_OTERM109\ & !\alu_inst|result[3]_OTERM27_OTERM113\)))) # (!\alu_inst|result[5]_OTERM7_OTERM84\ & 
-- (\alu_inst|Div0|auto_generated|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|op_1~6_combout\,
	datab => \alu_inst|result[3]_OTERM27_OTERM109\,
	datac => \alu_inst|result[3]_OTERM27_OTERM113\,
	datad => \alu_inst|result[5]_OTERM7_OTERM84\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\);

-- Location: FF_X51_Y30_N5
\alu_inst|result[3]_NEW_REG22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM23\);

-- Location: LCCOMB_X49_Y30_N6
\alu_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~6_combout\ = (\decoder_inst|alu_a\(3) & ((\decoder_inst|alu_b[3]~_Duplicate_1_q\ & (\alu_inst|Add0~5\ & VCC)) # (!\decoder_inst|alu_b[3]~_Duplicate_1_q\ & (!\alu_inst|Add0~5\)))) # (!\decoder_inst|alu_a\(3) & 
-- ((\decoder_inst|alu_b[3]~_Duplicate_1_q\ & (!\alu_inst|Add0~5\)) # (!\decoder_inst|alu_b[3]~_Duplicate_1_q\ & ((\alu_inst|Add0~5\) # (GND)))))
-- \alu_inst|Add0~7\ = CARRY((\decoder_inst|alu_a\(3) & (!\decoder_inst|alu_b[3]~_Duplicate_1_q\ & !\alu_inst|Add0~5\)) # (!\decoder_inst|alu_a\(3) & ((!\alu_inst|Add0~5\) # (!\decoder_inst|alu_b[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(3),
	datab => \decoder_inst|alu_b[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add0~5\,
	combout => \alu_inst|Add0~6_combout\,
	cout => \alu_inst|Add0~7\);

-- Location: LCCOMB_X50_Y30_N10
\alu_inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~6_combout\ = (\decoder_inst|alu_b[3]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(3) & (!\alu_inst|Add1~5\)) # (!\decoder_inst|alu_a\(3) & ((\alu_inst|Add1~5\) # (GND))))) # (!\decoder_inst|alu_b[3]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(3) & 
-- (\alu_inst|Add1~5\ & VCC)) # (!\decoder_inst|alu_a\(3) & (!\alu_inst|Add1~5\))))
-- \alu_inst|Add1~7\ = CARRY((\decoder_inst|alu_b[3]~_Duplicate_1_q\ & ((!\alu_inst|Add1~5\) # (!\decoder_inst|alu_a\(3)))) # (!\decoder_inst|alu_b[3]~_Duplicate_1_q\ & (!\decoder_inst|alu_a\(3) & !\alu_inst|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[3]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(3),
	datad => VCC,
	cin => \alu_inst|Add1~5\,
	combout => \alu_inst|Add1~6_combout\,
	cout => \alu_inst|Add1~7\);

-- Location: LCCOMB_X51_Y30_N24
\alu_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux4~0_combout\ = (\decoder_inst|alu_sel\(1) & (((\decoder_inst|alu_sel\(0))))) # (!\decoder_inst|alu_sel\(1) & ((\decoder_inst|alu_sel\(0) & ((\alu_inst|Add1~6_combout\))) # (!\decoder_inst|alu_sel\(0) & (\alu_inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(1),
	datab => \alu_inst|Add0~6_combout\,
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Add1~6_combout\,
	combout => \alu_inst|Mux4~0_combout\);

-- Location: FF_X51_Y30_N25
\alu_inst|result[3]_NEW_REG24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux4~0_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM25\);

-- Location: LCCOMB_X51_Y30_N4
\alu_inst|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux4~1_combout\ = (\alu_inst|result[5]_OTERM3\ & ((\alu_inst|result[3]_OTERM25\ & (\alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\)) # (!\alu_inst|result[3]_OTERM25\ & ((\alu_inst|result[3]_OTERM23\))))) # 
-- (!\alu_inst|result[5]_OTERM3\ & (((\alu_inst|result[3]_OTERM25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[5]_OTERM3\,
	datab => \alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\,
	datac => \alu_inst|result[3]_OTERM23\,
	datad => \alu_inst|result[3]_OTERM25\,
	combout => \alu_inst|Mux4~1_combout\);

-- Location: LCCOMB_X51_Y30_N26
\reg_inst|data_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[1][3]~feeder_combout\ = \alu_inst|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux4~1_combout\,
	combout => \reg_inst|data_reg[1][3]~feeder_combout\);

-- Location: FF_X51_Y30_N27
\reg_inst|data_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[1][3]~feeder_combout\,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][3]~q\);

-- Location: FF_X50_Y31_N25
\reg_inst|data_out_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_reg[1][3]~q\,
	sload => VCC,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(3));

-- Location: LCCOMB_X50_Y31_N24
\decoder_inst|alu_b[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[3]~3_combout\ = (!\decoder_inst|format\(0) & (\reg_inst|data_out_b\(3) & \decoder_inst|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datac => \reg_inst|data_out_b\(3),
	datad => \decoder_inst|B\(0),
	combout => \decoder_inst|alu_b[3]~3_combout\);

-- Location: LCCOMB_X49_Y30_N16
\decoder_inst|alu_b[3]_NEW135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[3]_OTERM136\ = (\decoder_inst|alu_sel[0]~0_combout\ & (\decoder_inst|alu_b[3]~3_combout\)) # (!\decoder_inst|alu_sel[0]~0_combout\ & ((\decoder_inst|alu_b[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel[0]~0_combout\,
	datab => \decoder_inst|alu_b[3]~3_combout\,
	datad => \decoder_inst|alu_b[3]~_Duplicate_1_q\,
	combout => \decoder_inst|alu_b[3]_OTERM136\);

-- Location: FF_X49_Y30_N3
\decoder_inst|alu_b[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_b[3]_OTERM136\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X50_Y30_N12
\alu_inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~8_combout\ = ((\decoder_inst|alu_b[4]~_Duplicate_1_q\ $ (\decoder_inst|alu_a\(4) $ (\alu_inst|Add1~7\)))) # (GND)
-- \alu_inst|Add1~9\ = CARRY((\decoder_inst|alu_b[4]~_Duplicate_1_q\ & (\decoder_inst|alu_a\(4) & !\alu_inst|Add1~7\)) # (!\decoder_inst|alu_b[4]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(4)) # (!\alu_inst|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[4]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(4),
	datad => VCC,
	cin => \alu_inst|Add1~7\,
	combout => \alu_inst|Add1~8_combout\,
	cout => \alu_inst|Add1~9\);

-- Location: FF_X50_Y30_N13
\alu_inst|result[4]_NEW_REG8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Add1~8_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[4]_OTERM9\);

-- Location: LCCOMB_X46_Y30_N22
\alu_inst|Div0|auto_generated|divider|quotient[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\ = (\alu_inst|result[5]_OTERM7_OTERM84\ & (((!\alu_inst|result[4]_OTERM15_OTERM100\ & !\alu_inst|result[4]_OTERM15_OTERM96\)))) # (!\alu_inst|result[5]_OTERM7_OTERM84\ & 
-- (\alu_inst|Div0|auto_generated|divider|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|op_1~8_combout\,
	datab => \alu_inst|result[5]_OTERM7_OTERM84\,
	datac => \alu_inst|result[4]_OTERM15_OTERM100\,
	datad => \alu_inst|result[4]_OTERM15_OTERM96\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\);

-- Location: LCCOMB_X49_Y30_N8
\alu_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~8_combout\ = ((\decoder_inst|alu_b[4]~_Duplicate_1_q\ $ (\decoder_inst|alu_a\(4) $ (!\alu_inst|Add0~7\)))) # (GND)
-- \alu_inst|Add0~9\ = CARRY((\decoder_inst|alu_b[4]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(4)) # (!\alu_inst|Add0~7\))) # (!\decoder_inst|alu_b[4]~_Duplicate_1_q\ & (\decoder_inst|alu_a\(4) & !\alu_inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[4]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(4),
	datad => VCC,
	cin => \alu_inst|Add0~7\,
	combout => \alu_inst|Add0~8_combout\,
	cout => \alu_inst|Add0~9\);

-- Location: LCCOMB_X51_Y30_N18
\alu_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux3~0_combout\ = (\decoder_inst|alu_sel\(1) & (((\decoder_inst|alu_sel\(0)) # (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\)))) # (!\decoder_inst|alu_sel\(1) & (\alu_inst|Add0~8_combout\ & (!\decoder_inst|alu_sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(1),
	datab => \alu_inst|Add0~8_combout\,
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \alu_inst|Mux3~0_combout\);

-- Location: FF_X51_Y30_N19
\alu_inst|result[4]_NEW_REG12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux3~0_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[4]_OTERM13\);

-- Location: LCCOMB_X51_Y30_N28
\alu_inst|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux3~1_combout\ = (\alu_inst|result[4]_OTERM11\ & ((\alu_inst|result[4]_OTERM13\ & ((\alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\))) # (!\alu_inst|result[4]_OTERM13\ & (\alu_inst|result[4]_OTERM9\)))) # 
-- (!\alu_inst|result[4]_OTERM11\ & (((\alu_inst|result[4]_OTERM13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[4]_OTERM9\,
	datab => \alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\,
	datac => \alu_inst|result[4]_OTERM11\,
	datad => \alu_inst|result[4]_OTERM13\,
	combout => \alu_inst|Mux3~1_combout\);

-- Location: LCCOMB_X51_Y30_N14
\reg_inst|data_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[1][4]~feeder_combout\ = \alu_inst|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux3~1_combout\,
	combout => \reg_inst|data_reg[1][4]~feeder_combout\);

-- Location: FF_X51_Y30_N15
\reg_inst|data_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[1][4]~feeder_combout\,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][4]~q\);

-- Location: LCCOMB_X52_Y31_N24
\reg_inst|data_out_b[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_out_b[4]~feeder_combout\ = \reg_inst|data_reg[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_inst|data_reg[1][4]~q\,
	combout => \reg_inst|data_out_b[4]~feeder_combout\);

-- Location: FF_X52_Y31_N25
\reg_inst|data_out_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_out_b[4]~feeder_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(4));

-- Location: LCCOMB_X50_Y31_N8
\decoder_inst|alu_b[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[4]~4_combout\ = (!\decoder_inst|format\(0) & (\reg_inst|data_out_b\(4) & \decoder_inst|B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datab => \reg_inst|data_out_b\(4),
	datad => \decoder_inst|B\(0),
	combout => \decoder_inst|alu_b[4]~4_combout\);

-- Location: LCCOMB_X50_Y30_N26
\decoder_inst|alu_b[4]_NEW137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[4]_OTERM138\ = (\decoder_inst|alu_sel[0]~0_combout\ & (\decoder_inst|alu_b[4]~4_combout\)) # (!\decoder_inst|alu_sel[0]~0_combout\ & ((\decoder_inst|alu_b[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[4]~4_combout\,
	datac => \decoder_inst|alu_b[4]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_sel[0]~0_combout\,
	combout => \decoder_inst|alu_b[4]_OTERM138\);

-- Location: FF_X50_Y30_N27
\decoder_inst|alu_b[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_b[4]_OTERM138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X50_Y30_N14
\alu_inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~10_combout\ = (\decoder_inst|alu_a\(5) & ((\decoder_inst|alu_b[5]~_Duplicate_1_q\ & (!\alu_inst|Add1~9\)) # (!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & (\alu_inst|Add1~9\ & VCC)))) # (!\decoder_inst|alu_a\(5) & 
-- ((\decoder_inst|alu_b[5]~_Duplicate_1_q\ & ((\alu_inst|Add1~9\) # (GND))) # (!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & (!\alu_inst|Add1~9\))))
-- \alu_inst|Add1~11\ = CARRY((\decoder_inst|alu_a\(5) & (\decoder_inst|alu_b[5]~_Duplicate_1_q\ & !\alu_inst|Add1~9\)) # (!\decoder_inst|alu_a\(5) & ((\decoder_inst|alu_b[5]~_Duplicate_1_q\) # (!\alu_inst|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(5),
	datab => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add1~9\,
	combout => \alu_inst|Add1~10_combout\,
	cout => \alu_inst|Add1~11\);

-- Location: LCCOMB_X51_Y30_N12
\alu_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~0_combout\ = (\decoder_inst|alu_sel\(1) & (((\decoder_inst|alu_sel\(0))))) # (!\decoder_inst|alu_sel\(1) & ((\decoder_inst|alu_sel\(0) & ((\alu_inst|Add1~10_combout\))) # (!\decoder_inst|alu_sel\(0) & (\alu_inst|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(1),
	datab => \alu_inst|Add0~10_combout\,
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Add1~10_combout\,
	combout => \alu_inst|Mux2~0_combout\);

-- Location: FF_X51_Y30_N13
\alu_inst|result[5]_NEW_REG4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux2~0_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM5\);

-- Location: LCCOMB_X46_Y30_N20
\alu_inst|Div0|auto_generated|divider|quotient[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\ = (\alu_inst|result[5]_OTERM7_OTERM84\ & (!\alu_inst|result[5]_OTERM7_OTERM82\ & (!\alu_inst|result[5]_OTERM7_OTERM78\))) # (!\alu_inst|result[5]_OTERM7_OTERM84\ & 
-- (((\alu_inst|Div0|auto_generated|divider|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[5]_OTERM7_OTERM82\,
	datab => \alu_inst|result[5]_OTERM7_OTERM78\,
	datac => \alu_inst|Div0|auto_generated|divider|op_1~10_combout\,
	datad => \alu_inst|result[5]_OTERM7_OTERM84\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\);

-- Location: FF_X51_Y30_N31
\alu_inst|result[5]_NEW_REG0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM1\);

-- Location: LCCOMB_X51_Y30_N30
\alu_inst|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~1_combout\ = (\alu_inst|result[5]_OTERM5\ & ((\alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\) # ((!\alu_inst|result[5]_OTERM3\)))) # (!\alu_inst|result[5]_OTERM5\ & (((\alu_inst|result[5]_OTERM1\ & 
-- \alu_inst|result[5]_OTERM3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[5]_OTERM5\,
	datab => \alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\,
	datac => \alu_inst|result[5]_OTERM1\,
	datad => \alu_inst|result[5]_OTERM3\,
	combout => \alu_inst|Mux2~1_combout\);

-- Location: LCCOMB_X51_Y31_N20
\reg_inst|data_reg[2][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[2][5]~feeder_combout\ = \alu_inst|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux2~1_combout\,
	combout => \reg_inst|data_reg[2][5]~feeder_combout\);

-- Location: FF_X51_Y31_N21
\reg_inst|data_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[2][5]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][5]~q\);

-- Location: LCCOMB_X51_Y31_N12
\reg_inst|data_reg[0][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[0][5]~feeder_combout\ = \alu_inst|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux2~1_combout\,
	combout => \reg_inst|data_reg[0][5]~feeder_combout\);

-- Location: FF_X51_Y31_N13
\reg_inst|data_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[0][5]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][5]~q\);

-- Location: LCCOMB_X50_Y31_N20
\reg_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux2~0_combout\ = (!\decoder_inst|reg_address_a\(2) & ((\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[2][5]~q\)) # (!\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[2][5]~q\,
	datab => \decoder_inst|reg_address_a\(2),
	datac => \reg_inst|data_reg[0][5]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux2~0_combout\);

-- Location: FF_X50_Y31_N21
\reg_inst|data_out_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux2~0_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(5));

-- Location: LCCOMB_X49_Y31_N4
\decoder_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux5~0_combout\ = (\reg_inst|data_out_a\(5) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_out_a\(5),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|Mux5~0_combout\);

-- Location: FF_X49_Y30_N15
\decoder_inst|alu_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux5~0_combout\,
	sload => VCC,
	ena => \decoder_inst|alu_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(5));

-- Location: LCCOMB_X47_Y30_N30
\alu_inst|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~1_combout\ = (\decoder_inst|alu_sel\(1) & (((\decoder_inst|alu_sel\(0))))) # (!\decoder_inst|alu_sel\(1) & ((\decoder_inst|alu_sel\(0) & (\alu_inst|Add1~12_combout\)) # (!\decoder_inst|alu_sel\(0) & ((\alu_inst|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(1),
	datab => \alu_inst|Add1~12_combout\,
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Add0~12_combout\,
	combout => \alu_inst|Mux1~1_combout\);

-- Location: FF_X47_Y30_N31
\alu_inst|result[6]_NEW_REG32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux1~1_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM33\);

-- Location: FF_X47_Y30_N9
\alu_inst|result[6]_NEW_REG28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM29\);

-- Location: LCCOMB_X46_Y30_N26
\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_RTM0183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_RTM0183_combout\ = !\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_OTERM182\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_OTERM182\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_RTM0183_combout\);

-- Location: FF_X46_Y30_N27
\alu_inst|result[6]_OTERM31_NEW_REG106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_RTM0183_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM31_OTERM107\);

-- Location: LCCOMB_X47_Y30_N10
\alu_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~0_combout\ = (\alu_inst|result[7]_OTERM19_OTERM90\ & (((\alu_inst|Div0|auto_generated|divider|op_1~12_combout\)))) # (!\alu_inst|result[7]_OTERM19_OTERM90\ & (\alu_inst|result[6]_OTERM31_OTERM107\ & 
-- (!\alu_inst|result[6]_OTERM31_OTERM105\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[6]_OTERM31_OTERM107\,
	datab => \alu_inst|result[7]_OTERM19_OTERM90\,
	datac => \alu_inst|result[6]_OTERM31_OTERM105\,
	datad => \alu_inst|Div0|auto_generated|divider|op_1~12_combout\,
	combout => \alu_inst|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y30_N8
\alu_inst|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~2_combout\ = (\alu_inst|result[6]_OTERM33\ & (((\alu_inst|Mux1~0_combout\)) # (!\alu_inst|result[5]_OTERM3\))) # (!\alu_inst|result[6]_OTERM33\ & (\alu_inst|result[5]_OTERM3\ & (\alu_inst|result[6]_OTERM29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[6]_OTERM33\,
	datab => \alu_inst|result[5]_OTERM3\,
	datac => \alu_inst|result[6]_OTERM29\,
	datad => \alu_inst|Mux1~0_combout\,
	combout => \alu_inst|Mux1~2_combout\);

-- Location: LCCOMB_X51_Y31_N22
\reg_inst|data_reg[2][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[2][6]~feeder_combout\ = \alu_inst|Mux1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux1~2_combout\,
	combout => \reg_inst|data_reg[2][6]~feeder_combout\);

-- Location: FF_X51_Y31_N23
\reg_inst|data_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[2][6]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][6]~q\);

-- Location: LCCOMB_X51_Y31_N24
\reg_inst|data_reg[0][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[0][6]~feeder_combout\ = \alu_inst|Mux1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux1~2_combout\,
	combout => \reg_inst|data_reg[0][6]~feeder_combout\);

-- Location: FF_X51_Y31_N25
\reg_inst|data_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[0][6]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][6]~q\);

-- Location: LCCOMB_X50_Y31_N26
\reg_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux1~0_combout\ = (!\decoder_inst|reg_address_a\(2) & ((\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[2][6]~q\)) # (!\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(1),
	datab => \reg_inst|data_reg[2][6]~q\,
	datac => \decoder_inst|reg_address_a\(2),
	datad => \reg_inst|data_reg[0][6]~q\,
	combout => \reg_inst|Mux1~0_combout\);

-- Location: FF_X50_Y31_N27
\reg_inst|data_out_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux1~0_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(6));

-- Location: LCCOMB_X49_Y31_N12
\decoder_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux4~0_combout\ = (\reg_inst|data_out_a\(6) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|data_out_a\(6),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y34_N30
\decoder_inst|decoder_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[0]~0_combout\ = (\pipeline_inst|stage\(2) & (\decoder_inst|op\(0) & (!\decoder_inst|B\(0) & !\decoder_inst|format\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|stage\(2),
	datab => \decoder_inst|op\(0),
	datac => \decoder_inst|B\(0),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|decoder_out[0]~0_combout\);

-- Location: FF_X52_Y34_N27
\decoder_inst|decoder_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux4~0_combout\,
	sload => VCC,
	ena => \decoder_inst|decoder_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(6));

-- Location: LCCOMB_X52_Y34_N0
\decoder_inst|decoder_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[7]~feeder_combout\ = \decoder_inst|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|Mux3~0_combout\,
	combout => \decoder_inst|decoder_out[7]~feeder_combout\);

-- Location: FF_X52_Y34_N1
\decoder_inst|decoder_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|decoder_out[7]~feeder_combout\,
	ena => \decoder_inst|decoder_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(7));

-- Location: FF_X52_Y34_N25
\decoder_inst|decoder_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux5~0_combout\,
	sload => VCC,
	ena => \decoder_inst|decoder_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(5));

-- Location: FF_X52_Y34_N23
\decoder_inst|decoder_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux6~0_combout\,
	sload => VCC,
	ena => \decoder_inst|decoder_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(4));

-- Location: FF_X52_Y34_N21
\decoder_inst|decoder_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux7~0_combout\,
	sload => VCC,
	ena => \decoder_inst|decoder_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(3));

-- Location: FF_X52_Y34_N19
\decoder_inst|decoder_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux8~0_combout\,
	sload => VCC,
	ena => \decoder_inst|decoder_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(2));

-- Location: FF_X52_Y34_N17
\decoder_inst|decoder_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux9~0_combout\,
	sload => VCC,
	ena => \decoder_inst|decoder_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(1));

-- Location: FF_X52_Y34_N15
\decoder_inst|decoder_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|Mux10~0_combout\,
	sload => VCC,
	ena => \decoder_inst|decoder_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(0));

-- Location: LCCOMB_X52_Y34_N14
\screen_inst|dig2dec_inst|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~0_combout\ = \decoder_inst|decoder_out\(0)
-- \screen_inst|dig2dec_inst|Add2~1\ = CARRY((\decoder_inst|decoder_out\(7) & !\decoder_inst|decoder_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(7),
	datab => \decoder_inst|decoder_out\(0),
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Add2~0_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~1\);

-- Location: LCCOMB_X52_Y34_N16
\screen_inst|dig2dec_inst|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~2_combout\ = (\screen_inst|dig2dec_inst|Add2~1\ & (\decoder_inst|decoder_out\(7) $ ((!\decoder_inst|decoder_out\(1))))) # (!\screen_inst|dig2dec_inst|Add2~1\ & ((\decoder_inst|decoder_out\(7) $ 
-- (\decoder_inst|decoder_out\(1))) # (GND)))
-- \screen_inst|dig2dec_inst|Add2~3\ = CARRY((\decoder_inst|decoder_out\(7) $ (!\decoder_inst|decoder_out\(1))) # (!\screen_inst|dig2dec_inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(7),
	datab => \decoder_inst|decoder_out\(1),
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Add2~1\,
	combout => \screen_inst|dig2dec_inst|Add2~2_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~3\);

-- Location: LCCOMB_X52_Y34_N18
\screen_inst|dig2dec_inst|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~4_combout\ = (\screen_inst|dig2dec_inst|Add2~3\ & ((\decoder_inst|decoder_out\(7) $ (\decoder_inst|decoder_out\(2))))) # (!\screen_inst|dig2dec_inst|Add2~3\ & (\decoder_inst|decoder_out\(7) $ (\decoder_inst|decoder_out\(2) $ 
-- (VCC))))
-- \screen_inst|dig2dec_inst|Add2~5\ = CARRY((!\screen_inst|dig2dec_inst|Add2~3\ & (\decoder_inst|decoder_out\(7) $ (\decoder_inst|decoder_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(7),
	datab => \decoder_inst|decoder_out\(2),
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Add2~3\,
	combout => \screen_inst|dig2dec_inst|Add2~4_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~5\);

-- Location: LCCOMB_X52_Y34_N20
\screen_inst|dig2dec_inst|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~6_combout\ = (\screen_inst|dig2dec_inst|Add2~5\ & (\decoder_inst|decoder_out\(7) $ ((!\decoder_inst|decoder_out\(3))))) # (!\screen_inst|dig2dec_inst|Add2~5\ & ((\decoder_inst|decoder_out\(7) $ 
-- (\decoder_inst|decoder_out\(3))) # (GND)))
-- \screen_inst|dig2dec_inst|Add2~7\ = CARRY((\decoder_inst|decoder_out\(7) $ (!\decoder_inst|decoder_out\(3))) # (!\screen_inst|dig2dec_inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(7),
	datab => \decoder_inst|decoder_out\(3),
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Add2~5\,
	combout => \screen_inst|dig2dec_inst|Add2~6_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~7\);

-- Location: LCCOMB_X52_Y34_N22
\screen_inst|dig2dec_inst|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~8_combout\ = (\screen_inst|dig2dec_inst|Add2~7\ & ((\decoder_inst|decoder_out\(4) $ (\decoder_inst|decoder_out\(7))))) # (!\screen_inst|dig2dec_inst|Add2~7\ & (\decoder_inst|decoder_out\(4) $ (\decoder_inst|decoder_out\(7) $ 
-- (VCC))))
-- \screen_inst|dig2dec_inst|Add2~9\ = CARRY((!\screen_inst|dig2dec_inst|Add2~7\ & (\decoder_inst|decoder_out\(4) $ (\decoder_inst|decoder_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(4),
	datab => \decoder_inst|decoder_out\(7),
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Add2~7\,
	combout => \screen_inst|dig2dec_inst|Add2~8_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~9\);

-- Location: LCCOMB_X52_Y34_N24
\screen_inst|dig2dec_inst|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~10_combout\ = (\screen_inst|dig2dec_inst|Add2~9\ & (\decoder_inst|decoder_out\(5) $ ((!\decoder_inst|decoder_out\(7))))) # (!\screen_inst|dig2dec_inst|Add2~9\ & ((\decoder_inst|decoder_out\(5) $ 
-- (\decoder_inst|decoder_out\(7))) # (GND)))
-- \screen_inst|dig2dec_inst|Add2~11\ = CARRY((\decoder_inst|decoder_out\(5) $ (!\decoder_inst|decoder_out\(7))) # (!\screen_inst|dig2dec_inst|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(5),
	datab => \decoder_inst|decoder_out\(7),
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Add2~9\,
	combout => \screen_inst|dig2dec_inst|Add2~10_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~11\);

-- Location: LCCOMB_X52_Y34_N26
\screen_inst|dig2dec_inst|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~12_combout\ = (\screen_inst|dig2dec_inst|Add2~11\ & ((\decoder_inst|decoder_out\(6) $ (\decoder_inst|decoder_out\(7))))) # (!\screen_inst|dig2dec_inst|Add2~11\ & (\decoder_inst|decoder_out\(6) $ 
-- (\decoder_inst|decoder_out\(7) $ (VCC))))
-- \screen_inst|dig2dec_inst|Add2~13\ = CARRY((!\screen_inst|dig2dec_inst|Add2~11\ & (\decoder_inst|decoder_out\(6) $ (\decoder_inst|decoder_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(6),
	datab => \decoder_inst|decoder_out\(7),
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Add2~11\,
	combout => \screen_inst|dig2dec_inst|Add2~12_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~13\);

-- Location: LCCOMB_X52_Y34_N28
\screen_inst|dig2dec_inst|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~14_combout\ = \screen_inst|dig2dec_inst|Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Add2~13\,
	combout => \screen_inst|dig2dec_inst|Add2~14_combout\);

-- Location: LCCOMB_X55_Y38_N12
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\screen_inst|dig2dec_inst|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X55_Y38_N14
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Add2~12_combout\ & (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\screen_inst|dig2dec_inst|Add2~12_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Add2~12_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X55_Y38_N16
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Add2~14_combout\ & (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\screen_inst|dig2dec_inst|Add2~14_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\screen_inst|dig2dec_inst|Add2~14_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X55_Y38_N18
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X55_Y38_N0
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X55_Y38_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\screen_inst|dig2dec_inst|Add2~14_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X55_Y38_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X55_Y38_N24
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\screen_inst|dig2dec_inst|Add2~12_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X55_Y38_N8
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\screen_inst|dig2dec_inst|Add2~10_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X55_Y38_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\screen_inst|dig2dec_inst|Add2~10_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X55_Y38_N10
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X55_Y38_N20
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X56_Y38_N0
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X56_Y38_N2
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X56_Y38_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X56_Y38_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X56_Y38_N8
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X56_Y38_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X56_Y38_N24
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\screen_inst|dig2dec_inst|Add2~14_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X56_Y38_N16
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X56_Y38_N18
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\screen_inst|dig2dec_inst|Add2~12_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X56_Y38_N10
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X56_Y38_N22
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\screen_inst|dig2dec_inst|Add2~10_combout\ $ 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X56_Y38_N12
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X56_Y38_N30
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X56_Y38_N14
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X56_Y38_N28
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X57_Y38_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X57_Y38_N8
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X57_Y38_N10
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X57_Y38_N12
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X57_Y38_N14
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\))))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # (GND))))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X57_Y38_N16
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X57_Y38_N0
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X57_Y38_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X57_Y38_N2
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X57_Y38_N28
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X57_Y38_N22
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X57_Y38_N20
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X57_Y38_N24
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X57_Y38_N18
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\screen_inst|dig2dec_inst|Add2~8_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X57_Y38_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X57_Y38_N30
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\screen_inst|dig2dec_inst|Add2~6_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X58_Y38_N30
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \screen_inst|dig2dec_inst|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X58_Y38_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \screen_inst|dig2dec_inst|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X58_Y38_N10
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X58_Y38_N12
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X58_Y38_N14
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\)))))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X58_Y38_N16
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X58_Y38_N18
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X58_Y38_N20
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X58_Y38_N22
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X59_Y38_N12
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X59_Y38_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X58_Y38_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X59_Y38_N30
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X58_Y38_N24
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X60_Y38_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X58_Y38_N28
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X58_Y38_N2
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X60_Y38_N14
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X58_Y38_N0
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\screen_inst|dig2dec_inst|Add2~6_combout\))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X58_Y38_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \screen_inst|dig2dec_inst|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X58_Y38_N8
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X59_Y38_N10
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ = (\screen_inst|dig2dec_inst|Add2~2_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X59_Y38_N0
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\screen_inst|dig2dec_inst|Add2~2_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X59_Y38_N14
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X59_Y38_N16
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X59_Y38_N18
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X59_Y38_N20
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y38_N22
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X59_Y38_N24
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X59_Y38_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X59_Y38_N28
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X59_Y38_N2
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X59_Y38_N8
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\screen_inst|dig2dec_inst|Add2~2_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X59_Y38_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X63_Y50_N28
\screen_inst|seg7_0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux6~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\screen_inst|dig2dec_inst|Add2~0_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\screen_inst|dig2dec_inst|Add2~0_combout\ $ (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~0_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \screen_inst|seg7_0|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y50_N10
\screen_inst|seg7_0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux5~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- ((!\screen_inst|dig2dec_inst|Add2~0_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (\screen_inst|dig2dec_inst|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~0_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \screen_inst|seg7_0|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y50_N20
\screen_inst|seg7_0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux4~0_combout\ = (\screen_inst|dig2dec_inst|Add2~0_combout\ & (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\))) # (!\screen_inst|dig2dec_inst|Add2~0_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~0_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \screen_inst|seg7_0|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y50_N12
\screen_inst|seg7_0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux3~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((\screen_inst|dig2dec_inst|Add2~0_combout\))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\screen_inst|dig2dec_inst|Add2~0_combout\ & ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\))) # 
-- (!\screen_inst|dig2dec_inst|Add2~0_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~0_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \screen_inst|seg7_0|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y50_N24
\screen_inst|seg7_0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux2~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\screen_inst|dig2dec_inst|Add2~0_combout\)))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- ((\screen_inst|dig2dec_inst|Add2~0_combout\) # ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~0_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \screen_inst|seg7_0|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y50_N6
\screen_inst|seg7_0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux1~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- \screen_inst|dig2dec_inst|Add2~0_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\screen_inst|dig2dec_inst|Add2~0_combout\ & (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ $ (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~0_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \screen_inst|seg7_0|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y50_N26
\screen_inst|seg7_0|Mux0~0_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux0~0_wirecell_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\screen_inst|dig2dec_inst|Add2~0_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ $ (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\screen_inst|dig2dec_inst|Add2~0_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~0_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \screen_inst|seg7_0|Mux0~0_wirecell_combout\);

-- Location: LCCOMB_X56_Y38_N20
\screen_inst|dig2dec_inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|LessThan2~0_combout\ = (!\screen_inst|dig2dec_inst|Add2~14_combout\ & (((!\screen_inst|dig2dec_inst|Add2~2_combout\ & !\screen_inst|dig2dec_inst|Add2~4_combout\)) # (!\screen_inst|dig2dec_inst|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~2_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X55_Y38_N22
\screen_inst|dig2dec_inst|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|LessThan2~1_combout\ = (\screen_inst|dig2dec_inst|LessThan2~0_combout\ & (!\screen_inst|dig2dec_inst|Add2~10_combout\ & (!\screen_inst|dig2dec_inst|Add2~8_combout\ & !\screen_inst|dig2dec_inst|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan2~0_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~12_combout\,
	combout => \screen_inst|dig2dec_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X59_Y39_N20
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\screen_inst|dig2dec_inst|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X59_Y39_N22
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Add2~12_combout\ & (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\screen_inst|dig2dec_inst|Add2~12_combout\ & (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Add2~12_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X59_Y39_N24
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Add2~14_combout\ & (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\screen_inst|dig2dec_inst|Add2~14_combout\ & (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\screen_inst|dig2dec_inst|Add2~14_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X59_Y39_N26
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X59_Y39_N12
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \screen_inst|dig2dec_inst|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~14_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X59_Y39_N14
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X59_Y39_N30
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \screen_inst|dig2dec_inst|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~12_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X59_Y39_N16
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X59_Y39_N10
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \screen_inst|dig2dec_inst|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X59_Y39_N18
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\screen_inst|dig2dec_inst|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X58_Y39_N8
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X58_Y39_N6
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X59_Y39_N0
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X59_Y39_N2
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X59_Y39_N4
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X59_Y39_N6
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y39_N8
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X58_Y39_N22
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X58_Y39_N0
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\screen_inst|dig2dec_inst|Add2~10_combout\ $ 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X58_Y39_N30
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X58_Y39_N20
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X57_Y39_N26
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X57_Y39_N6
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X58_Y39_N10
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X58_Y39_N12
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X58_Y39_N14
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X58_Y39_N26
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X59_Y39_N28
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\screen_inst|dig2dec_inst|Add2~12_combout\))) # (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~12_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X58_Y39_N16
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y39_N18
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X58_Y39_N2
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X58_Y39_N28
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\) # ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X58_Y39_N4
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\screen_inst|dig2dec_inst|Add2~8_combout\)) # (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X57_Y39_N0
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X56_Y39_N8
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\screen_inst|dig2dec_inst|Add2~6_combout\ & \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X58_Y39_N24
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X57_Y39_N12
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~4_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X57_Y39_N8
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~4_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X57_Y39_N16
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X57_Y39_N18
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X57_Y39_N20
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X57_Y39_N22
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y39_N24
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X59_Y43_N0
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X59_Y43_N2
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X59_Y43_N4
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X59_Y43_N6
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X59_Y43_N8
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X59_Y43_N10
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X59_Y43_N12
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X60_Y43_N0
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\);

-- Location: LCCOMB_X60_Y43_N28
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\);

-- Location: LCCOMB_X60_Y43_N8
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\)))
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\,
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X59_Y43_N14
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\ = (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\);

-- Location: LCCOMB_X59_Y43_N28
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\);

-- Location: LCCOMB_X59_Y43_N26
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\ = (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\);

-- Location: LCCOMB_X59_Y43_N24
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\);

-- Location: LCCOMB_X60_Y43_N26
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\);

-- Location: LCCOMB_X60_Y43_N4
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\);

-- Location: LCCOMB_X60_Y43_N10
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & 
-- (((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\) # (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\)))
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\ & !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X60_Y43_N12
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & 
-- (((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\) # (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\)))))
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & 
-- ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\) # (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X60_Y43_N14
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ & !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X60_Y43_N16
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY(((!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)) # (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X60_Y43_N18
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ & 
-- ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\) # (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X60_Y43_N20
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY(((!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)) # (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X60_Y43_N22
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = !\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X60_Y43_N6
\screen_inst|dig2dec_inst|seg1[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[1]~3_combout\ = (\screen_inst|dig2dec_inst|LessThan2~1_combout\) # ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan2~1_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datac => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[1]~3_combout\);

-- Location: LCCOMB_X57_Y39_N2
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X57_Y39_N10
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # ((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X57_Y39_N30
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X57_Y39_N14
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\screen_inst|dig2dec_inst|Add2~6_combout\)) # (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X57_Y39_N4
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X57_Y39_N28
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\screen_inst|dig2dec_inst|Add2~4_combout\ & \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X57_Y37_N30
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ = (\screen_inst|dig2dec_inst|Add2~2_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~2_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X57_Y37_N14
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\screen_inst|dig2dec_inst|Add2~2_combout\ & \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~2_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X56_Y39_N12
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X56_Y39_N14
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X56_Y39_N16
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X56_Y39_N18
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X56_Y39_N20
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X57_Y43_N16
\screen_inst|dig2dec_inst|seg1[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[0]~2_combout\ = (\screen_inst|dig2dec_inst|LessThan2~1_combout\) # (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|LessThan2~1_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[0]~2_combout\);

-- Location: LCCOMB_X59_Y43_N22
\screen_inst|dig2dec_inst|seg1[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[3]~6_combout\ = (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[3]~6_combout\);

-- Location: LCCOMB_X60_Y43_N30
\screen_inst|dig2dec_inst|seg1[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[3]~7_combout\ = (\screen_inst|dig2dec_inst|LessThan2~1_combout\) # ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~6_combout\)) # 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan2~1_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[3]~6_combout\,
	datac => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[3]~7_combout\);

-- Location: LCCOMB_X60_Y43_N2
\screen_inst|dig2dec_inst|seg1[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[2]~4_combout\ = \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[2]~4_combout\);

-- Location: LCCOMB_X60_Y43_N24
\screen_inst|dig2dec_inst|seg1[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[2]~5_combout\ = (!\screen_inst|dig2dec_inst|LessThan2~1_combout\ & ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\screen_inst|dig2dec_inst|seg1[2]~4_combout\)) # 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan2~1_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[2]~4_combout\,
	datac => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[2]~5_combout\);

-- Location: LCCOMB_X65_Y50_N2
\screen_inst|seg7_1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux6~0_combout\ = (\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & (((\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & !\screen_inst|dig2dec_inst|seg1[2]~5_combout\)))) # (!\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & 
-- ((\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~7_combout\ $ (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\))) # (!\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & (!\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & 
-- \screen_inst|dig2dec_inst|seg1[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	combout => \screen_inst|seg7_1|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y50_N30
\screen_inst|seg7_1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux5~0_combout\ = (\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & ((\screen_inst|dig2dec_inst|seg1[3]~7_combout\) # ((!\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & \screen_inst|dig2dec_inst|seg1[2]~5_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & (\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ $ (\screen_inst|dig2dec_inst|seg1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	combout => \screen_inst|seg7_1|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y50_N12
\screen_inst|seg7_1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux4~0_combout\ = (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & (\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~7_combout\))) # (!\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & 
-- ((\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & ((\screen_inst|dig2dec_inst|seg1[3]~7_combout\))) # (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & (\screen_inst|dig2dec_inst|seg1[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	combout => \screen_inst|seg7_1|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y50_N0
\screen_inst|seg7_1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux3~0_combout\ = (\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & ((\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\)) # (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & 
-- ((\screen_inst|dig2dec_inst|seg1[3]~7_combout\))))) # (!\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & ((\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & ((!\screen_inst|dig2dec_inst|seg1[2]~5_combout\))) # (!\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & 
-- (!\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & \screen_inst|dig2dec_inst|seg1[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	combout => \screen_inst|seg7_1|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y50_N24
\screen_inst|seg7_1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux2~0_combout\ = (\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & ((\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & ((!\screen_inst|dig2dec_inst|seg1[2]~5_combout\))) # (!\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & 
-- (\screen_inst|dig2dec_inst|seg1[0]~2_combout\)))) # (!\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & ((\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & ((!\screen_inst|dig2dec_inst|seg1[3]~7_combout\))) # (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & 
-- (\screen_inst|dig2dec_inst|seg1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	combout => \screen_inst|seg7_1|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y50_N10
\screen_inst|seg7_1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux1~0_combout\ = (\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & (((\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & !\screen_inst|dig2dec_inst|seg1[3]~7_combout\)) # (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\))) # 
-- (!\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~7_combout\ $ (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	combout => \screen_inst|seg7_1|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y50_N22
\screen_inst|seg7_1|Mux0~0_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux0~0_wirecell_combout\ = (\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~7_combout\ $ (\screen_inst|dig2dec_inst|seg1[2]~5_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & ((\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & (!\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & \screen_inst|dig2dec_inst|seg1[2]~5_combout\)) # (!\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & 
-- ((!\screen_inst|dig2dec_inst|seg1[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	combout => \screen_inst|seg7_1|Mux0~0_wirecell_combout\);

-- Location: LCCOMB_X52_Y34_N12
\screen_inst|dig2dec_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|LessThan1~0_combout\ = (!\screen_inst|dig2dec_inst|Add2~4_combout\ & !\screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X52_Y34_N6
\screen_inst|dig2dec_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|LessThan1~1_combout\ = (((\screen_inst|dig2dec_inst|LessThan1~0_combout\ & !\screen_inst|dig2dec_inst|Add2~8_combout\)) # (!\screen_inst|dig2dec_inst|Add2~10_combout\)) # (!\screen_inst|dig2dec_inst|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan1~0_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~8_combout\,
	combout => \screen_inst|dig2dec_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y37_N6
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X56_Y37_N8
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # 
-- (!\screen_inst|dig2dec_inst|Add2~8_combout\ & (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\screen_inst|dig2dec_inst|Add2~8_combout\ & !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X56_Y37_N10
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\screen_inst|dig2dec_inst|Add2~10_combout\ & ((GND) # (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # 
-- (!\screen_inst|dig2dec_inst|Add2~10_combout\ & (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\screen_inst|dig2dec_inst|Add2~10_combout\) # (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X56_Y37_N12
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\screen_inst|dig2dec_inst|Add2~12_combout\ & (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # 
-- (!\screen_inst|dig2dec_inst|Add2~12_combout\ & ((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\screen_inst|dig2dec_inst|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X56_Y37_N14
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\screen_inst|dig2dec_inst|Add2~14_combout\ & (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # 
-- (!\screen_inst|dig2dec_inst|Add2~14_combout\ & (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\screen_inst|dig2dec_inst|Add2~14_combout\ & !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X56_Y37_N16
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X56_Y37_N2
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\screen_inst|dig2dec_inst|Add2~14_combout\ & \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X55_Y37_N2
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & 
-- !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X56_Y37_N20
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\screen_inst|dig2dec_inst|Add2~12_combout\ & \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X55_Y37_N4
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & 
-- !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X55_Y37_N12
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X56_Y37_N18
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\screen_inst|dig2dec_inst|Add2~10_combout\ & \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X55_Y37_N10
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X56_Y37_N24
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X55_Y37_N30
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\screen_inst|dig2dec_inst|Add2~6_combout\ & !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X55_Y37_N8
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\screen_inst|dig2dec_inst|Add2~6_combout\ & \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X55_Y37_N6
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\screen_inst|dig2dec_inst|Add2~4_combout\ & !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X55_Y37_N28
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\screen_inst|dig2dec_inst|Add2~4_combout\ & \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X55_Y37_N14
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\) # 
-- (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X55_Y37_N16
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ & !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X55_Y37_N18
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\) # 
-- ((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\) # (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X55_Y37_N20
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ & 
-- !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\)) # (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X55_Y37_N22
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & 
-- ((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\) # (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X55_Y37_N24
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ & !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X55_Y37_N26
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X56_Y37_N30
\screen_inst|seg7_2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux6~0_combout\ = (\screen_inst|dig2dec_inst|LessThan1~1_combout\ & (((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)) # (!\screen_inst|dig2dec_inst|Add2~14_combout\))) # (!\screen_inst|dig2dec_inst|LessThan1~1_combout\ & 
-- (((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|seg7_2|Mux6~0_combout\);

-- Location: LCCOMB_X56_Y37_N28
\screen_inst|seg7_2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux5~0_combout\ = (!\screen_inst|dig2dec_inst|Add2~14_combout\ & \screen_inst|dig2dec_inst|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datad => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	combout => \screen_inst|seg7_2|Mux5~0_combout\);

-- Location: LCCOMB_X56_Y37_N0
\screen_inst|seg7_2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux4~0_combout\ = (\screen_inst|dig2dec_inst|LessThan1~1_combout\ & (((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)) # (!\screen_inst|dig2dec_inst|Add2~14_combout\))) # (!\screen_inst|dig2dec_inst|LessThan1~1_combout\ & 
-- (((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|seg7_2|Mux4~0_combout\);

-- Location: LCCOMB_X56_Y37_N4
\screen_inst|seg7_2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux2~0_combout\ = ((!\screen_inst|dig2dec_inst|Add2~14_combout\ & \screen_inst|dig2dec_inst|LessThan1~1_combout\)) # (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	combout => \screen_inst|seg7_2|Mux2~0_combout\);

-- Location: LCCOMB_X56_Y37_N26
\screen_inst|seg7_2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux1~0_combout\ = (((\screen_inst|dig2dec_inst|LessThan1~1_combout\ & !\screen_inst|dig2dec_inst|Add2~14_combout\)) # (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)) # 
-- (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|seg7_2|Mux1~0_combout\);

-- Location: LCCOMB_X56_Y37_N22
\screen_inst|seg7_2|Mux0~0_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux0~0_wirecell_combout\ = (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # ((\screen_inst|dig2dec_inst|LessThan1~1_combout\ & !\screen_inst|dig2dec_inst|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|seg7_2|Mux0~0_wirecell_combout\);

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


