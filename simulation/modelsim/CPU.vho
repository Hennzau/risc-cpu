-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "01/24/2025 21:49:34"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
	KEY : IN std_logic_vector(1 DOWNTO 0);
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
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
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
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fetch_inst|address[0]~8_combout\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[0]~0_combout\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[0]~q\ : std_logic;
SIGNAL \pipeline_inst|Mux4~1_combout\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[1]~q\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[2]~0_combout\ : std_logic;
SIGNAL \pipeline_inst|pipeline:counter[2]~q\ : std_logic;
SIGNAL \pipeline_inst|Mux7~0_combout\ : std_logic;
SIGNAL \fetch_inst|address[0]~9\ : std_logic;
SIGNAL \fetch_inst|address[1]~10_combout\ : std_logic;
SIGNAL \fetch_inst|address[1]~11\ : std_logic;
SIGNAL \fetch_inst|address[2]~12_combout\ : std_logic;
SIGNAL \fetch_inst|address[2]~13\ : std_logic;
SIGNAL \fetch_inst|address[3]~14_combout\ : std_logic;
SIGNAL \fetch_inst|address[3]~15\ : std_logic;
SIGNAL \fetch_inst|address[4]~16_combout\ : std_logic;
SIGNAL \fetch_inst|address[4]~17\ : std_logic;
SIGNAL \fetch_inst|address[5]~18_combout\ : std_logic;
SIGNAL \fetch_inst|address[5]~19\ : std_logic;
SIGNAL \fetch_inst|address[6]~20_combout\ : std_logic;
SIGNAL \fetch_inst|address[6]~21\ : std_logic;
SIGNAL \fetch_inst|address[7]~22_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~19_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~20_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux6~0_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux5~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~5_combout\ : std_logic;
SIGNAL \rom_inst|data[25]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|format[1]~feeder_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~6_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~7_combout\ : std_logic;
SIGNAL \decoder_inst|op[0]~feeder_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~8_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~9_combout\ : std_logic;
SIGNAL \decoder_inst|op[4]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|alu_sel~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~10_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~11_combout\ : std_logic;
SIGNAL \decoder_inst|op[1]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|alu_sel~1_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~28_combout\ : std_logic;
SIGNAL \decoder_inst|B[4]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|reg_address_b[2]~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~25_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~26_combout\ : std_logic;
SIGNAL \decoder_inst|reg[2]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|reg_address[2]~feeder_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~21_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~22_combout\ : std_logic;
SIGNAL \decoder_inst|reg[0]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|reg_address[0]~feeder_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~23_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~24_combout\ : std_logic;
SIGNAL \decoder_inst|reg[1]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|reg_address[1]~feeder_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux4~0_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_inst|Mux33~0_combout\ : std_logic;
SIGNAL \decoder_inst|reg_rw~q\ : std_logic;
SIGNAL \reg_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][2]~q\ : std_logic;
SIGNAL \reg_inst|Decoder0~7_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][2]~q\ : std_logic;
SIGNAL \rom_inst|rom_data~27_combout\ : std_logic;
SIGNAL \reg_inst|Mux13~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][2]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][2]~q\ : std_logic;
SIGNAL \reg_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[4][2]~q\ : std_logic;
SIGNAL \reg_inst|Mux13~1_combout\ : std_logic;
SIGNAL \reg_inst|data_out_a[0]~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~3_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~4_combout\ : std_logic;
SIGNAL \decoder_inst|format[0]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[2]~5_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[0]~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[2]_OTERM53\ : std_logic;
SIGNAL \decoder_inst|alu_b[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \decoder_inst|alu_a[2]~8_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~12_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~13_combout\ : std_logic;
SIGNAL \decoder_inst|op[2]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[7]~2_combout\ : std_logic;
SIGNAL \decoder_inst|Mux34~0_combout\ : std_logic;
SIGNAL \decoder_inst|ram_rw~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|ram_rw~q\ : std_logic;
SIGNAL \ram_inst|data_ram~17_combout\ : std_logic;
SIGNAL \ram_inst|data_out[0]~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~1_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~2_combout\ : std_logic;
SIGNAL \decoder_inst|A[0]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|ram_address[0]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|ram_data_in[0]~0_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~14_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~15_combout\ : std_logic;
SIGNAL \decoder_inst|A[1]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|ram_address[1]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|ram_address[2]~feeder_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~17_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~18_combout\ : std_logic;
SIGNAL \decoder_inst|ram_address[3]~feeder_combout\ : std_logic;
SIGNAL \rom_inst|rom_data~16_combout\ : std_logic;
SIGNAL \decoder_inst|ram_address[4]~feeder_combout\ : std_logic;
SIGNAL \decoder_inst|alu_sel~2_combout\ : std_logic;
SIGNAL \pipeline_inst|Mux2~0_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM1\ : std_logic;
SIGNAL \decoder_inst|ram_data_in[0]~1_combout\ : std_logic;
SIGNAL \decoder_inst|Mux69~0_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM5_OTERM61\ : std_logic;
SIGNAL \reg_inst|data_reg[4][3]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][3]~q\ : std_logic;
SIGNAL \reg_inst|Mux12~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][3]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[6][3]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][3]~q\ : std_logic;
SIGNAL \reg_inst|Mux12~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[3]~7_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[3]_OTERM129\ : std_logic;
SIGNAL \decoder_inst|alu_b[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \decoder_inst|alu_a[3]~11_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \decoder_inst|Mux67~0_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~8_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][7]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][7]~q\ : std_logic;
SIGNAL \reg_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][7]~q\ : std_logic;
SIGNAL \decoder_inst|Mux68~0_combout\ : std_logic;
SIGNAL \reg_inst|Mux0~2_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][7]~q\ : std_logic;
SIGNAL \reg_inst|Mux0~3_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[4][7]~q\ : std_logic;
SIGNAL \reg_inst|Mux0~0_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[7][7]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[5][7]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][7]~q\ : std_logic;
SIGNAL \reg_inst|Mux0~1_combout\ : std_logic;
SIGNAL \reg_inst|Mux0~4_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[7]~21_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[0]~4_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[0]_OTERM185\ : std_logic;
SIGNAL \decoder_inst|alu_a[4]~14_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][6]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][6]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[4][6]~q\ : std_logic;
SIGNAL \reg_inst|Mux9~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][6]~q\ : std_logic;
SIGNAL \reg_inst|Mux9~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[6]~11_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[6]_OTERM127\ : std_logic;
SIGNAL \decoder_inst|alu_b[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \decoder_inst|alu_a[6]~19_combout\ : std_logic;
SIGNAL \decoder_inst|ram_data_in[7]~feeder_combout\ : std_logic;
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \decoder_inst|alu_a[6]~20_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[6]~feeder_combout\ : std_logic;
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \decoder_inst|alu_a[5]~17_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[5]~18_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[5]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[4][5]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[2][5]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][5]~q\ : std_logic;
SIGNAL \reg_inst|Mux10~0_combout\ : std_logic;
SIGNAL \reg_inst|Mux10~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[5]~10_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[5]_OTERM125\ : std_logic;
SIGNAL \decoder_inst|alu_b[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_inst|data_reg[4][4]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[0][4]~q\ : std_logic;
SIGNAL \reg_inst|Mux11~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[2][4]~q\ : std_logic;
SIGNAL \reg_inst|Mux11~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[4]~8_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[4]_OTERM131\ : std_logic;
SIGNAL \decoder_inst|alu_b[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_inst|data_reg[2][1]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[6][1]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][1]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[4][1]~q\ : std_logic;
SIGNAL \reg_inst|Mux14~0_combout\ : std_logic;
SIGNAL \reg_inst|Mux14~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[1]~3_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[1]_OTERM51\ : std_logic;
SIGNAL \decoder_inst|alu_b[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_inst|data_reg[6][0]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][0]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[2][0]~q\ : std_logic;
SIGNAL \reg_inst|Mux15~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[4][0]~q\ : std_logic;
SIGNAL \reg_inst|Mux15~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[0]~0_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[0]_OTERM49\ : std_logic;
SIGNAL \decoder_inst|alu_b[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu_inst|Add0~1\ : std_logic;
SIGNAL \alu_inst|Add0~3\ : std_logic;
SIGNAL \alu_inst|Add0~5\ : std_logic;
SIGNAL \alu_inst|Add0~7\ : std_logic;
SIGNAL \alu_inst|Add0~9\ : std_logic;
SIGNAL \alu_inst|Add0~11\ : std_logic;
SIGNAL \alu_inst|Add0~12_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|diff_signs~combout\ : std_logic;
SIGNAL \alu_inst|Mux9~4_combout\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM29_OTERM101\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~0_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_OTERM45\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_NEW_REG44_OTERM193\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0181_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_OTERM195\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_NEW_REG40_OTERM57\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_OTERM41\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel[1]~3_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0123_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM197\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_NEW_REG42_OTERM55\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_OTERM43\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173feeder_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175feeder_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ : std_logic;
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
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ : std_logic;
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
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM29_OTERM99\ : std_logic;
SIGNAL \alu_inst|Add1~1\ : std_logic;
SIGNAL \alu_inst|Add1~3\ : std_logic;
SIGNAL \alu_inst|Add1~5\ : std_logic;
SIGNAL \alu_inst|Add1~7\ : std_logic;
SIGNAL \alu_inst|Add1~9\ : std_logic;
SIGNAL \alu_inst|Add1~11\ : std_logic;
SIGNAL \alu_inst|Add1~12_combout\ : std_logic;
SIGNAL \alu_inst|Mux9~9_combout\ : std_logic;
SIGNAL \alu_inst|Mux9~6_combout\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM29_OTERM105\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
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
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \alu_inst|Mux9~5_combout\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM29_OTERM103\ : std_logic;
SIGNAL \alu_inst|Mux9~7_combout\ : std_logic;
SIGNAL \alu_inst|Equal0~0_combout\ : std_logic;
SIGNAL \alu_inst|Equal0~1_combout\ : std_logic;
SIGNAL \alu_inst|Add2~1\ : std_logic;
SIGNAL \alu_inst|Add2~3\ : std_logic;
SIGNAL \alu_inst|Add2~5\ : std_logic;
SIGNAL \alu_inst|Add2~7\ : std_logic;
SIGNAL \alu_inst|Add2~9\ : std_logic;
SIGNAL \alu_inst|Add2~11\ : std_logic;
SIGNAL \alu_inst|Add2~12_combout\ : std_logic;
SIGNAL \alu_inst|Add2~18_combout\ : std_logic;
SIGNAL \alu_inst|Equal1~1_combout\ : std_logic;
SIGNAL \alu_inst|Add3~1\ : std_logic;
SIGNAL \alu_inst|Add3~3\ : std_logic;
SIGNAL \alu_inst|Add3~5\ : std_logic;
SIGNAL \alu_inst|Add3~7\ : std_logic;
SIGNAL \alu_inst|Add3~9\ : std_logic;
SIGNAL \alu_inst|Add3~11\ : std_logic;
SIGNAL \alu_inst|Add3~12_combout\ : std_logic;
SIGNAL \alu_inst|Add3~18_combout\ : std_logic;
SIGNAL \alu_inst|Mux9~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux9~3_combout\ : std_logic;
SIGNAL \alu_inst|result[6]_OTERM27\ : std_logic;
SIGNAL \alu_inst|Mux9~8_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][6]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[1][6]~q\ : std_logic;
SIGNAL \reg_inst|Mux1~2_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][6]~q\ : std_logic;
SIGNAL \reg_inst|Mux1~3_combout\ : std_logic;
SIGNAL \reg_inst|Mux1~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[7][6]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[5][6]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][6]~q\ : std_logic;
SIGNAL \reg_inst|Mux1~1_combout\ : std_logic;
SIGNAL \reg_inst|Mux1~4_combout\ : std_logic;
SIGNAL \decoder_inst|ram_data_in[6]~feeder_combout\ : std_logic;
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \decoder_inst|alu_a[4]~15_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[4]~16_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[4]~feeder_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \alu_inst|Add0~10_combout\ : std_logic;
SIGNAL \alu_inst|Mux10~2_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM5_OTERM63\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM5_OTERM65_OTERM135\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM5_OTERM65_OTERM133~feeder_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM5_OTERM65_OTERM133\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM5_OTERM65_OTERM137\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|diff_signs_RTM0140~combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\ : std_logic;
SIGNAL \alu_inst|Add1~10_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM5_OTERM59\ : std_logic;
SIGNAL \alu_inst|Mux10~3_combout\ : std_logic;
SIGNAL \alu_inst|Add2~10_combout\ : std_logic;
SIGNAL \alu_inst|Add2~19_combout\ : std_logic;
SIGNAL \alu_inst|Add3~10_combout\ : std_logic;
SIGNAL \alu_inst|Add3~19_combout\ : std_logic;
SIGNAL \alu_inst|Mux10~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux10~1_combout\ : std_logic;
SIGNAL \alu_inst|result[5]_OTERM3\ : std_logic;
SIGNAL \alu_inst|Mux10~4_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][5]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][5]~q\ : std_logic;
SIGNAL \reg_inst|Mux2~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[7][5]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[5][5]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][5]~q\ : std_logic;
SIGNAL \reg_inst|Mux2~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[1][5]~q\ : std_logic;
SIGNAL \reg_inst|Mux2~2_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][5]~q\ : std_logic;
SIGNAL \reg_inst|Mux2~3_combout\ : std_logic;
SIGNAL \reg_inst|Mux2~4_combout\ : std_logic;
SIGNAL \decoder_inst|ram_data_in[5]~feeder_combout\ : std_logic;
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \decoder_inst|alu_a[7]~22_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[7]~feeder_combout\ : std_logic;
SIGNAL \alu_inst|Add0~13\ : std_logic;
SIGNAL \alu_inst|Add0~14_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~6_combout\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM25_OTERM93\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \alu_inst|Mux8~7_combout\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM25_OTERM95\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM25_OTERM91\ : std_logic;
SIGNAL \alu_inst|Add1~13\ : std_logic;
SIGNAL \alu_inst|Add1~14_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~11_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~8_combout\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM25_OTERM97\ : std_logic;
SIGNAL \alu_inst|Mux8~9_combout\ : std_logic;
SIGNAL \alu_inst|Add2~13\ : std_logic;
SIGNAL \alu_inst|Add2~14_combout\ : std_logic;
SIGNAL \alu_inst|Add2~16_combout\ : std_logic;
SIGNAL \alu_inst|Add3~13\ : std_logic;
SIGNAL \alu_inst|Add3~14_combout\ : std_logic;
SIGNAL \alu_inst|Add3~16_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~4_combout\ : std_logic;
SIGNAL \alu_inst|Mux8~5_combout\ : std_logic;
SIGNAL \alu_inst|result[7]_OTERM23\ : std_logic;
SIGNAL \alu_inst|Mux8~10_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][7]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][7]~q\ : std_logic;
SIGNAL \reg_inst|Mux8~0_combout\ : std_logic;
SIGNAL \reg_inst|Mux8~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[7]~2_combout\ : std_logic;
SIGNAL \decoder_inst|alu_b[7]_OTERM47\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM9_OTERM71_OTERM145\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM9_OTERM71_OTERM143~feeder_combout\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM9_OTERM71_OTERM143\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM9_OTERM71_OTERM147\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \alu_inst|Add0~8_combout\ : std_logic;
SIGNAL \alu_inst|Mux11~2_combout\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM9_OTERM69\ : std_logic;
SIGNAL \alu_inst|Add1~8_combout\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM9_OTERM67\ : std_logic;
SIGNAL \alu_inst|Mux11~3_combout\ : std_logic;
SIGNAL \alu_inst|Add3~8_combout\ : std_logic;
SIGNAL \alu_inst|Add3~20_combout\ : std_logic;
SIGNAL \alu_inst|Add2~8_combout\ : std_logic;
SIGNAL \alu_inst|Add2~20_combout\ : std_logic;
SIGNAL \alu_inst|Mux11~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux11~1_combout\ : std_logic;
SIGNAL \alu_inst|result[4]_OTERM7\ : std_logic;
SIGNAL \alu_inst|Mux11~4_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][4]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[6][4]~q\ : std_logic;
SIGNAL \reg_inst|Mux3~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[7][4]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[5][4]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][4]~q\ : std_logic;
SIGNAL \reg_inst|Mux3~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][4]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[1][4]~q\ : std_logic;
SIGNAL \reg_inst|Mux3~2_combout\ : std_logic;
SIGNAL \reg_inst|Mux3~3_combout\ : std_logic;
SIGNAL \reg_inst|Mux3~4_combout\ : std_logic;
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \decoder_inst|alu_a[3]~12_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[3]~13_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[3]~feeder_combout\ : std_logic;
SIGNAL \alu_inst|Add1~6_combout\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM13_OTERM73\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \alu_inst|Add0~6_combout\ : std_logic;
SIGNAL \alu_inst|Mux12~2_combout\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM13_OTERM75\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM13_OTERM77_OTERM152\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM13_OTERM77_OTERM154\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM13_OTERM77_OTERM150\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\ : std_logic;
SIGNAL \alu_inst|Mux12~3_combout\ : std_logic;
SIGNAL \alu_inst|Add2~6_combout\ : std_logic;
SIGNAL \alu_inst|Add2~21_combout\ : std_logic;
SIGNAL \alu_inst|Add3~6_combout\ : std_logic;
SIGNAL \alu_inst|Add3~21_combout\ : std_logic;
SIGNAL \alu_inst|Mux12~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux12~1_combout\ : std_logic;
SIGNAL \alu_inst|result[3]_OTERM11\ : std_logic;
SIGNAL \alu_inst|Mux12~4_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][3]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][3]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[7][3]~q\ : std_logic;
SIGNAL \reg_inst|Mux4~0_combout\ : std_logic;
SIGNAL \reg_inst|Mux4~1_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][3]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[1][3]~q\ : std_logic;
SIGNAL \reg_inst|Mux4~2_combout\ : std_logic;
SIGNAL \reg_inst|Mux4~3_combout\ : std_logic;
SIGNAL \reg_inst|Mux4~4_combout\ : std_logic;
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \decoder_inst|alu_a[0]~5_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[0]~6_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[0]~7_combout\ : std_logic;
SIGNAL \alu_inst|Equal1~0_combout\ : std_logic;
SIGNAL \alu_inst|Equal1~0_OTERM35feeder_combout\ : std_logic;
SIGNAL \alu_inst|Equal1~0_OTERM35\ : std_logic;
SIGNAL \alu_inst|Add3~2_combout\ : std_logic;
SIGNAL \alu_inst|Add3~17_combout\ : std_logic;
SIGNAL \alu_inst|Add2~2_combout\ : std_logic;
SIGNAL \alu_inst|Add2~17_combout\ : std_logic;
SIGNAL \alu_inst|Mux14~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux14~1_combout\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM19\ : std_logic;
SIGNAL \alu_inst|Add1~2_combout\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM21_OTERM85\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM21_OTERM89_OTERM164\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM21_OTERM89_OTERM166\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM21_OTERM89_OTERM168\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \alu_inst|Add0~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux14~2_combout\ : std_logic;
SIGNAL \alu_inst|result[1]_OTERM21_OTERM87\ : std_logic;
SIGNAL \alu_inst|Mux14~3_combout\ : std_logic;
SIGNAL \alu_inst|Mux14~4_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][1]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[1][1]~q\ : std_logic;
SIGNAL \reg_inst|Mux6~2_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][1]~q\ : std_logic;
SIGNAL \reg_inst|Mux6~3_combout\ : std_logic;
SIGNAL \reg_inst|Mux6~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[7][1]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[5][1]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][1]~q\ : std_logic;
SIGNAL \reg_inst|Mux6~1_combout\ : std_logic;
SIGNAL \reg_inst|Mux6~4_combout\ : std_logic;
SIGNAL \decoder_inst|ram_data_in[1]~feeder_combout\ : std_logic;
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \decoder_inst|alu_a[1]~1_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[1]~0_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[1]~3_combout\ : std_logic;
SIGNAL \alu_inst|Equal1~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux15~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux15~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux15~2_combout\ : std_logic;
SIGNAL \alu_inst|result[0]_OTERM31\ : std_logic;
SIGNAL \alu_inst|result[0]_OTERM33_OTERM109\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \alu_inst|result[0]_OTERM33_OTERM107\ : std_logic;
SIGNAL \alu_inst|result[0]_OTERM33_OTERM111\ : std_logic;
SIGNAL \alu_inst|Add1~0_combout\ : std_logic;
SIGNAL \alu_inst|Add0~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux15~3_combout\ : std_logic;
SIGNAL \alu_inst|result[0]_OTERM33_OTERM113\ : std_logic;
SIGNAL \alu_inst|Mux15~4_combout\ : std_logic;
SIGNAL \alu_inst|Mux15~5_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[0][0]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[1][0]~q\ : std_logic;
SIGNAL \reg_inst|Mux7~2_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][0]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][0]~q\ : std_logic;
SIGNAL \reg_inst|Mux7~3_combout\ : std_logic;
SIGNAL \reg_inst|Mux7~0_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[7][0]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[5][0]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][0]~q\ : std_logic;
SIGNAL \reg_inst|Mux7~1_combout\ : std_logic;
SIGNAL \reg_inst|Mux7~4_combout\ : std_logic;
SIGNAL \decoder_inst|ram_data_in[0]~feeder_combout\ : std_logic;
SIGNAL \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \decoder_inst|alu_a[2]~9_combout\ : std_logic;
SIGNAL \decoder_inst|alu_a[2]~10_combout\ : std_logic;
SIGNAL \alu_inst|Add0~4_combout\ : std_logic;
SIGNAL \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \alu_inst|Mux13~2_combout\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM17_OTERM81\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM17_OTERM83_OTERM157\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM17_OTERM83_OTERM161\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM17_OTERM83_OTERM159\ : std_logic;
SIGNAL \alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\ : std_logic;
SIGNAL \alu_inst|Add1~4_combout\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM17_OTERM79\ : std_logic;
SIGNAL \alu_inst|Mux13~3_combout\ : std_logic;
SIGNAL \alu_inst|Add3~4_combout\ : std_logic;
SIGNAL \alu_inst|Add3~22_combout\ : std_logic;
SIGNAL \alu_inst|Add2~4_combout\ : std_logic;
SIGNAL \alu_inst|Add2~22_combout\ : std_logic;
SIGNAL \alu_inst|Mux13~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux13~1_combout\ : std_logic;
SIGNAL \alu_inst|result[2]_OTERM15\ : std_logic;
SIGNAL \alu_inst|Mux13~4_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[3][2]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[1][2]~q\ : std_logic;
SIGNAL \reg_inst|Mux5~2_combout\ : std_logic;
SIGNAL \reg_inst|Mux5~3_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][2]~feeder_combout\ : std_logic;
SIGNAL \reg_inst|data_reg[5][2]~q\ : std_logic;
SIGNAL \reg_inst|data_reg[7][2]~q\ : std_logic;
SIGNAL \reg_inst|Mux5~0_combout\ : std_logic;
SIGNAL \reg_inst|Mux5~1_combout\ : std_logic;
SIGNAL \reg_inst|Mux5~4_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[2]~9_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[0]~1_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[0]~2_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[7]~3_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[1]~4_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[0]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~4_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[6]~5_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[5]~6_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[4]~7_combout\ : std_logic;
SIGNAL \decoder_inst|decoder_out[3]~8_combout\ : std_logic;
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
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
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
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Add2~0_combout\ : std_logic;
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
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
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
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[0]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[3]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[50]~5_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[3]~7_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[2]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[2]~5_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|seg1[1]~3_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux6~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux5~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux4~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux3~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux2~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux1~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_1|Mux0~0_wirecell_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
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
SIGNAL \screen_inst|seg7_4|Mux1~0_combout\ : std_logic;
SIGNAL \screen_inst|seg7_4|Mux1~1_combout\ : std_logic;
SIGNAL \screen_inst|seg7_4|Mux1~2_combout\ : std_logic;
SIGNAL \decoder_inst|reg_address_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \decoder_inst|ram_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|ram_data_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_inst|data_out_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|alu_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|alu_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \decoder_inst|reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \alu_inst|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \reg_inst|data_out_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fetch_inst|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|decoder_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|reg_address_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rom_inst|data\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \decoder_inst|A\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|reg_address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \decoder_inst|format\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pipeline_inst|stage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|op\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \decoder_inst|ALT_INV_op\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \decoder_inst|ALT_INV_decoder_out\ : std_logic_vector(7 DOWNTO 7);
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_KEY <= KEY;
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

\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\decoder_inst|ram_data_in\(7) & \decoder_inst|ram_data_in\(6) & \decoder_inst|ram_data_in\(5) & \decoder_inst|ram_data_in\(4) & \decoder_inst|ram_data_in\(3) & \decoder_inst|ram_data_in\(2) & \decoder_inst|ram_data_in\(1) & 
\decoder_inst|ram_data_in\(0));

\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\decoder_inst|ram_address\(4) & \decoder_inst|ram_address\(3) & \decoder_inst|ram_address\(2) & \decoder_inst|ram_address\(1) & \decoder_inst|ram_address\(0));

\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\decoder_inst|ram_address\(4) & \decoder_inst|ram_address\(3) & \decoder_inst|ram_address\(2) & \decoder_inst|ram_address\(1) & \decoder_inst|ram_address\(0));

\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a1\ <= \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a2\ <= \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a3\ <= \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a4\ <= \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a5\ <= \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a6\ <= \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a7\ <= \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\alu_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\decoder_inst|alu_a\(7) & \decoder_inst|alu_a\(6) & \decoder_inst|alu_a\(5) & \decoder_inst|alu_a\(4) & \decoder_inst|alu_a\(3) & \decoder_inst|alu_a\(2) & \decoder_inst|alu_a\(1) & 
\decoder_inst|alu_a\(0) & gnd);

\alu_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\decoder_inst|alu_b[7]_OTERM47\ & \decoder_inst|alu_b[6]_OTERM127\ & \decoder_inst|alu_b[5]_OTERM125\ & \decoder_inst|alu_b[4]_OTERM131\ & \decoder_inst|alu_b[3]_OTERM129\ & 
\decoder_inst|alu_b[2]_OTERM53\ & \decoder_inst|alu_b[1]_OTERM51\ & \decoder_inst|alu_b[0]_OTERM49\ & gnd);

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
\decoder_inst|ALT_INV_op\(4) <= NOT \decoder_inst|op\(4);
\decoder_inst|ALT_INV_decoder_out\(7) <= NOT \decoder_inst|decoder_out\(7);
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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
	i => \screen_inst|seg7_4|Mux1~0_combout\,
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
	i => \screen_inst|seg7_4|Mux1~1_combout\,
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
	i => \screen_inst|seg7_4|Mux1~0_combout\,
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
	i => \SW[8]~input_o\,
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
	i => \screen_inst|seg7_4|Mux1~2_combout\,
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
	i => \ALT_INV_SW[9]~input_o\,
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

-- Location: LCCOMB_X50_Y32_N4
\fetch_inst|address[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[0]~8_combout\ = \fetch_inst|address\(0) $ (VCC)
-- \fetch_inst|address[0]~9\ = CARRY(\fetch_inst|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|address\(0),
	datad => VCC,
	combout => \fetch_inst|address[0]~8_combout\,
	cout => \fetch_inst|address[0]~9\);

-- Location: LCCOMB_X47_Y31_N4
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

-- Location: FF_X47_Y31_N5
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

-- Location: LCCOMB_X47_Y31_N12
\pipeline_inst|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux4~1_combout\ = \pipeline_inst|pipeline:counter[0]~q\ $ (\pipeline_inst|pipeline:counter[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipeline_inst|pipeline:counter[0]~q\,
	datac => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|Mux4~1_combout\);

-- Location: FF_X47_Y31_N13
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

-- Location: LCCOMB_X47_Y31_N18
\pipeline_inst|pipeline:counter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|pipeline:counter[2]~0_combout\ = \pipeline_inst|pipeline:counter[2]~q\ $ (((\pipeline_inst|pipeline:counter[0]~q\ & \pipeline_inst|pipeline:counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipeline_inst|pipeline:counter[0]~q\,
	datac => \pipeline_inst|pipeline:counter[2]~q\,
	datad => \pipeline_inst|pipeline:counter[1]~q\,
	combout => \pipeline_inst|pipeline:counter[2]~0_combout\);

-- Location: FF_X47_Y31_N19
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

-- Location: LCCOMB_X47_Y31_N0
\pipeline_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux7~0_combout\ = (!\pipeline_inst|pipeline:counter[1]~q\ & (!\pipeline_inst|pipeline:counter[0]~q\ & !\pipeline_inst|pipeline:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[1]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[2]~q\,
	combout => \pipeline_inst|Mux7~0_combout\);

-- Location: FF_X47_Y31_N1
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

-- Location: FF_X50_Y32_N5
\fetch_inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[0]~8_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(0));

-- Location: LCCOMB_X50_Y32_N6
\fetch_inst|address[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[1]~10_combout\ = (\fetch_inst|address\(1) & (!\fetch_inst|address[0]~9\)) # (!\fetch_inst|address\(1) & ((\fetch_inst|address[0]~9\) # (GND)))
-- \fetch_inst|address[1]~11\ = CARRY((!\fetch_inst|address[0]~9\) # (!\fetch_inst|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(1),
	datad => VCC,
	cin => \fetch_inst|address[0]~9\,
	combout => \fetch_inst|address[1]~10_combout\,
	cout => \fetch_inst|address[1]~11\);

-- Location: FF_X50_Y32_N7
\fetch_inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[1]~10_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(1));

-- Location: LCCOMB_X50_Y32_N8
\fetch_inst|address[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[2]~12_combout\ = (\fetch_inst|address\(2) & (\fetch_inst|address[1]~11\ $ (GND))) # (!\fetch_inst|address\(2) & (!\fetch_inst|address[1]~11\ & VCC))
-- \fetch_inst|address[2]~13\ = CARRY((\fetch_inst|address\(2) & !\fetch_inst|address[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|address\(2),
	datad => VCC,
	cin => \fetch_inst|address[1]~11\,
	combout => \fetch_inst|address[2]~12_combout\,
	cout => \fetch_inst|address[2]~13\);

-- Location: FF_X50_Y32_N9
\fetch_inst|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[2]~12_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(2));

-- Location: LCCOMB_X50_Y32_N10
\fetch_inst|address[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[3]~14_combout\ = (\fetch_inst|address\(3) & (!\fetch_inst|address[2]~13\)) # (!\fetch_inst|address\(3) & ((\fetch_inst|address[2]~13\) # (GND)))
-- \fetch_inst|address[3]~15\ = CARRY((!\fetch_inst|address[2]~13\) # (!\fetch_inst|address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(3),
	datad => VCC,
	cin => \fetch_inst|address[2]~13\,
	combout => \fetch_inst|address[3]~14_combout\,
	cout => \fetch_inst|address[3]~15\);

-- Location: FF_X50_Y32_N11
\fetch_inst|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[3]~14_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(3));

-- Location: LCCOMB_X50_Y32_N12
\fetch_inst|address[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[4]~16_combout\ = (\fetch_inst|address\(4) & (\fetch_inst|address[3]~15\ $ (GND))) # (!\fetch_inst|address\(4) & (!\fetch_inst|address[3]~15\ & VCC))
-- \fetch_inst|address[4]~17\ = CARRY((\fetch_inst|address\(4) & !\fetch_inst|address[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(4),
	datad => VCC,
	cin => \fetch_inst|address[3]~15\,
	combout => \fetch_inst|address[4]~16_combout\,
	cout => \fetch_inst|address[4]~17\);

-- Location: FF_X50_Y32_N13
\fetch_inst|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[4]~16_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(4));

-- Location: LCCOMB_X50_Y32_N14
\fetch_inst|address[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[5]~18_combout\ = (\fetch_inst|address\(5) & (!\fetch_inst|address[4]~17\)) # (!\fetch_inst|address\(5) & ((\fetch_inst|address[4]~17\) # (GND)))
-- \fetch_inst|address[5]~19\ = CARRY((!\fetch_inst|address[4]~17\) # (!\fetch_inst|address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|address\(5),
	datad => VCC,
	cin => \fetch_inst|address[4]~17\,
	combout => \fetch_inst|address[5]~18_combout\,
	cout => \fetch_inst|address[5]~19\);

-- Location: FF_X50_Y32_N15
\fetch_inst|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[5]~18_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(5));

-- Location: LCCOMB_X50_Y32_N16
\fetch_inst|address[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[6]~20_combout\ = (\fetch_inst|address\(6) & (\fetch_inst|address[5]~19\ $ (GND))) # (!\fetch_inst|address\(6) & (!\fetch_inst|address[5]~19\ & VCC))
-- \fetch_inst|address[6]~21\ = CARRY((\fetch_inst|address\(6) & !\fetch_inst|address[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|address\(6),
	datad => VCC,
	cin => \fetch_inst|address[5]~19\,
	combout => \fetch_inst|address[6]~20_combout\,
	cout => \fetch_inst|address[6]~21\);

-- Location: FF_X50_Y32_N17
\fetch_inst|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[6]~20_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(6));

-- Location: LCCOMB_X50_Y32_N18
\fetch_inst|address[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fetch_inst|address[7]~22_combout\ = \fetch_inst|address[6]~21\ $ (\fetch_inst|address\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fetch_inst|address\(7),
	cin => \fetch_inst|address[6]~21\,
	combout => \fetch_inst|address[7]~22_combout\);

-- Location: FF_X50_Y32_N19
\fetch_inst|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fetch_inst|address[7]~22_combout\,
	ena => \pipeline_inst|stage\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch_inst|address\(7));

-- Location: LCCOMB_X50_Y32_N30
\rom_inst|rom_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~0_combout\ = (!\fetch_inst|address\(4) & (!\fetch_inst|address\(6) & (!\fetch_inst|address\(5) & !\fetch_inst|address\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(4),
	datab => \fetch_inst|address\(6),
	datac => \fetch_inst|address\(5),
	datad => \fetch_inst|address\(7),
	combout => \rom_inst|rom_data~0_combout\);

-- Location: LCCOMB_X51_Y32_N14
\rom_inst|rom_data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~19_combout\ = (\fetch_inst|address\(2) & (!\fetch_inst|address\(3) & ((\fetch_inst|address\(0)) # (\fetch_inst|address\(1))))) # (!\fetch_inst|address\(2) & (((\fetch_inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(2),
	datab => \fetch_inst|address\(0),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~19_combout\);

-- Location: LCCOMB_X51_Y32_N22
\rom_inst|rom_data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~20_combout\ = (\rom_inst|rom_data~0_combout\ & \rom_inst|rom_data~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|rom_data~0_combout\,
	datac => \rom_inst|rom_data~19_combout\,
	combout => \rom_inst|rom_data~20_combout\);

-- Location: LCCOMB_X47_Y31_N28
\pipeline_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux6~0_combout\ = (!\pipeline_inst|pipeline:counter[1]~q\ & (\pipeline_inst|pipeline:counter[0]~q\ & !\pipeline_inst|pipeline:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[1]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[2]~q\,
	combout => \pipeline_inst|Mux6~0_combout\);

-- Location: FF_X47_Y31_N29
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

-- Location: FF_X51_Y32_N23
\rom_inst|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~20_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(10));

-- Location: LCCOMB_X47_Y31_N6
\pipeline_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux5~0_combout\ = (\pipeline_inst|pipeline:counter[1]~q\ & ((!\pipeline_inst|pipeline:counter[2]~q\))) # (!\pipeline_inst|pipeline:counter[1]~q\ & (\pipeline_inst|pipeline:counter[0]~q\ & \pipeline_inst|pipeline:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[1]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[2]~q\,
	combout => \pipeline_inst|Mux5~0_combout\);

-- Location: FF_X47_Y31_N7
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

-- Location: FF_X55_Y31_N29
\decoder_inst|A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \rom_inst|data\(10),
	sload => VCC,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|A\(2));

-- Location: LCCOMB_X50_Y31_N24
\rom_inst|rom_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~5_combout\ = (\fetch_inst|address\(0) & (!\fetch_inst|address\(2) & (\rom_inst|rom_data~0_combout\ & !\fetch_inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \fetch_inst|address\(2),
	datac => \rom_inst|rom_data~0_combout\,
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~5_combout\);

-- Location: LCCOMB_X50_Y31_N14
\rom_inst|data[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|data[25]~feeder_combout\ = \rom_inst|rom_data~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|rom_data~5_combout\,
	combout => \rom_inst|data[25]~feeder_combout\);

-- Location: FF_X50_Y31_N15
\rom_inst|data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|data[25]~feeder_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(25));

-- Location: LCCOMB_X51_Y31_N8
\decoder_inst|format[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|format[1]~feeder_combout\ = \rom_inst|data\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(25),
	combout => \decoder_inst|format[1]~feeder_combout\);

-- Location: FF_X51_Y31_N9
\decoder_inst|format[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|format[1]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|format\(1));

-- Location: LCCOMB_X50_Y31_N10
\rom_inst|rom_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~6_combout\ = (\fetch_inst|address\(0) & ((\fetch_inst|address\(2) & (\fetch_inst|address\(1) & \fetch_inst|address\(3))) # (!\fetch_inst|address\(2) & ((!\fetch_inst|address\(3)))))) # (!\fetch_inst|address\(0) & 
-- ((\fetch_inst|address\(3)) # ((\fetch_inst|address\(2) & \fetch_inst|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \fetch_inst|address\(2),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~6_combout\);

-- Location: LCCOMB_X50_Y31_N18
\rom_inst|rom_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~7_combout\ = (\rom_inst|rom_data~0_combout\ & !\rom_inst|rom_data~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~6_combout\,
	combout => \rom_inst|rom_data~7_combout\);

-- Location: FF_X50_Y31_N19
\rom_inst|data[19]\ : dffeas
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
	q => \rom_inst|data\(19));

-- Location: LCCOMB_X51_Y31_N14
\decoder_inst|op[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|op[0]~feeder_combout\ = \rom_inst|data\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(19),
	combout => \decoder_inst|op[0]~feeder_combout\);

-- Location: FF_X51_Y31_N15
\decoder_inst|op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|op[0]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|op\(0));

-- Location: LCCOMB_X50_Y31_N12
\rom_inst|rom_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~8_combout\ = (\fetch_inst|address\(1) & (!\fetch_inst|address\(3) & ((!\fetch_inst|address\(2)) # (!\fetch_inst|address\(0))))) # (!\fetch_inst|address\(1) & ((\fetch_inst|address\(0) & ((!\fetch_inst|address\(3)) # 
-- (!\fetch_inst|address\(2)))) # (!\fetch_inst|address\(0) & ((\fetch_inst|address\(2)) # (\fetch_inst|address\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \fetch_inst|address\(2),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~8_combout\);

-- Location: LCCOMB_X50_Y31_N26
\rom_inst|rom_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~9_combout\ = (!\rom_inst|rom_data~8_combout\) # (!\rom_inst|rom_data~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~8_combout\,
	combout => \rom_inst|rom_data~9_combout\);

-- Location: FF_X50_Y31_N27
\rom_inst|data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~9_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(23));

-- Location: LCCOMB_X49_Y31_N18
\decoder_inst|op[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|op[4]~feeder_combout\ = \rom_inst|data\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(23),
	combout => \decoder_inst|op[4]~feeder_combout\);

-- Location: FF_X49_Y31_N19
\decoder_inst|op[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|op[4]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|op\(4));

-- Location: LCCOMB_X51_Y31_N16
\decoder_inst|alu_sel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_sel~0_combout\ = (\decoder_inst|op\(0) & !\decoder_inst|op\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|op\(0),
	datac => \decoder_inst|op\(4),
	combout => \decoder_inst|alu_sel~0_combout\);

-- Location: FF_X51_Y31_N17
\decoder_inst|alu_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_sel~0_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_sel\(0));

-- Location: LCCOMB_X50_Y31_N16
\rom_inst|rom_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~10_combout\ = \fetch_inst|address\(2) $ (((\fetch_inst|address\(0) & (\fetch_inst|address\(1) & !\fetch_inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \fetch_inst|address\(2),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~10_combout\);

-- Location: LCCOMB_X50_Y31_N30
\rom_inst|rom_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~11_combout\ = (\rom_inst|rom_data~10_combout\) # (!\rom_inst|rom_data~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~10_combout\,
	combout => \rom_inst|rom_data~11_combout\);

-- Location: FF_X50_Y31_N31
\rom_inst|data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~11_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(20));

-- Location: LCCOMB_X51_Y31_N10
\decoder_inst|op[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|op[1]~feeder_combout\ = \rom_inst|data\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(20),
	combout => \decoder_inst|op[1]~feeder_combout\);

-- Location: FF_X51_Y31_N11
\decoder_inst|op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|op[1]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|op\(1));

-- Location: LCCOMB_X51_Y31_N22
\decoder_inst|alu_sel~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_sel~1_combout\ = (!\decoder_inst|op\(4) & \decoder_inst|op\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|op\(4),
	datad => \decoder_inst|op\(1),
	combout => \decoder_inst|alu_sel~1_combout\);

-- Location: FF_X51_Y31_N23
\decoder_inst|alu_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_sel~1_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_sel\(1));

-- Location: LCCOMB_X50_Y31_N2
\rom_inst|rom_data~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~28_combout\ = (\rom_inst|rom_data~5_combout\ & !\fetch_inst|address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|rom_data~5_combout\,
	datac => \fetch_inst|address\(1),
	combout => \rom_inst|rom_data~28_combout\);

-- Location: FF_X50_Y31_N3
\rom_inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~28_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(4));

-- Location: LCCOMB_X49_Y31_N24
\decoder_inst|B[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|B[4]~feeder_combout\ = \rom_inst|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(4),
	combout => \decoder_inst|B[4]~feeder_combout\);

-- Location: FF_X49_Y31_N25
\decoder_inst|B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|B[4]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|B\(4));

-- Location: LCCOMB_X46_Y30_N26
\decoder_inst|reg_address_b[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg_address_b[2]~0_combout\ = (\pipeline_inst|stage\(2) & !\decoder_inst|op\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|stage\(2),
	datab => \decoder_inst|op\(4),
	combout => \decoder_inst|reg_address_b[2]~0_combout\);

-- Location: FF_X46_Y30_N27
\decoder_inst|reg_address_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|B\(4),
	sload => VCC,
	ena => \decoder_inst|reg_address_b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address_b\(2));

-- Location: LCCOMB_X51_Y32_N20
\rom_inst|rom_data~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~25_combout\ = (\fetch_inst|address\(2) & (((!\fetch_inst|address\(3))))) # (!\fetch_inst|address\(2) & (\fetch_inst|address\(3) & ((!\fetch_inst|address\(1)) # (!\fetch_inst|address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(2),
	datab => \fetch_inst|address\(0),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~25_combout\);

-- Location: LCCOMB_X51_Y32_N24
\rom_inst|rom_data~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~26_combout\ = (\rom_inst|rom_data~0_combout\ & \rom_inst|rom_data~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~25_combout\,
	combout => \rom_inst|rom_data~26_combout\);

-- Location: FF_X51_Y32_N25
\rom_inst|data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~26_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(18));

-- Location: LCCOMB_X52_Y31_N8
\decoder_inst|reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg[2]~feeder_combout\ = \rom_inst|data\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|data\(18),
	combout => \decoder_inst|reg[2]~feeder_combout\);

-- Location: FF_X52_Y31_N9
\decoder_inst|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|reg[2]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg\(2));

-- Location: LCCOMB_X49_Y31_N26
\decoder_inst|reg_address[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg_address[2]~feeder_combout\ = \decoder_inst|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|reg\(2),
	combout => \decoder_inst|reg_address[2]~feeder_combout\);

-- Location: FF_X49_Y31_N27
\decoder_inst|reg_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|reg_address[2]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address\(2));

-- Location: LCCOMB_X51_Y32_N18
\rom_inst|rom_data~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~21_combout\ = (\fetch_inst|address\(0) & (((!\fetch_inst|address\(1) & !\fetch_inst|address\(3))) # (!\fetch_inst|address\(2)))) # (!\fetch_inst|address\(0) & (\fetch_inst|address\(3) $ (((\fetch_inst|address\(2) & 
-- \fetch_inst|address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(2),
	datab => \fetch_inst|address\(0),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~21_combout\);

-- Location: LCCOMB_X51_Y32_N30
\rom_inst|rom_data~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~22_combout\ = (\rom_inst|rom_data~0_combout\ & \rom_inst|rom_data~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~21_combout\,
	combout => \rom_inst|rom_data~22_combout\);

-- Location: FF_X51_Y32_N31
\rom_inst|data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~22_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(16));

-- Location: LCCOMB_X51_Y31_N6
\decoder_inst|reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg[0]~feeder_combout\ = \rom_inst|data\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|data\(16),
	combout => \decoder_inst|reg[0]~feeder_combout\);

-- Location: FF_X51_Y31_N7
\decoder_inst|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|reg[0]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg\(0));

-- Location: LCCOMB_X51_Y31_N4
\decoder_inst|reg_address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg_address[0]~feeder_combout\ = \decoder_inst|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|reg\(0),
	combout => \decoder_inst|reg_address[0]~feeder_combout\);

-- Location: FF_X51_Y31_N5
\decoder_inst|reg_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|reg_address[0]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address\(0));

-- Location: LCCOMB_X51_Y32_N10
\rom_inst|rom_data~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~23_combout\ = (\fetch_inst|address\(1) & ((\fetch_inst|address\(0) & ((!\fetch_inst|address\(3)))) # (!\fetch_inst|address\(0) & (!\fetch_inst|address\(2))))) # (!\fetch_inst|address\(1) & (!\fetch_inst|address\(2) & 
-- ((\fetch_inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(2),
	datab => \fetch_inst|address\(0),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~23_combout\);

-- Location: LCCOMB_X51_Y32_N26
\rom_inst|rom_data~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~24_combout\ = (\rom_inst|rom_data~0_combout\ & \rom_inst|rom_data~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~23_combout\,
	combout => \rom_inst|rom_data~24_combout\);

-- Location: FF_X51_Y32_N27
\rom_inst|data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~24_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(17));

-- Location: LCCOMB_X51_Y31_N12
\decoder_inst|reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg[1]~feeder_combout\ = \rom_inst|data\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|data\(17),
	combout => \decoder_inst|reg[1]~feeder_combout\);

-- Location: FF_X51_Y31_N13
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

-- Location: LCCOMB_X49_Y31_N4
\decoder_inst|reg_address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|reg_address[1]~feeder_combout\ = \decoder_inst|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|reg\(1),
	combout => \decoder_inst|reg_address[1]~feeder_combout\);

-- Location: FF_X49_Y31_N5
\decoder_inst|reg_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|reg_address[1]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address\(1));

-- Location: LCCOMB_X47_Y31_N26
\pipeline_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux4~0_combout\ = (\pipeline_inst|pipeline:counter[2]~q\ & (\pipeline_inst|pipeline:counter[1]~q\ $ (!\pipeline_inst|pipeline:counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[1]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[2]~q\,
	combout => \pipeline_inst|Mux4~0_combout\);

-- Location: FF_X47_Y31_N27
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

-- Location: LCCOMB_X47_Y31_N30
\pipeline_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux1~0_combout\ = (\pipeline_inst|pipeline:counter[1]~q\ & (\pipeline_inst|pipeline:counter[0]~q\ & \pipeline_inst|pipeline:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[1]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[2]~q\,
	combout => \pipeline_inst|Mux1~0_combout\);

-- Location: FF_X47_Y31_N31
\pipeline_inst|stage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \pipeline_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pipeline_inst|stage\(6));

-- Location: LCCOMB_X51_Y31_N24
\decoder_inst|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux33~0_combout\ = (\decoder_inst|op\(4) & (\decoder_inst|op\(0) & !\decoder_inst|op\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(4),
	datab => \decoder_inst|op\(0),
	datad => \decoder_inst|op\(1),
	combout => \decoder_inst|Mux33~0_combout\);

-- Location: FF_X51_Y31_N25
\decoder_inst|reg_rw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|Mux33~0_combout\,
	asdata => VCC,
	sload => \decoder_inst|ALT_INV_op\(4),
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_rw~q\);

-- Location: LCCOMB_X51_Y31_N20
\reg_inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~0_combout\ = (\pipeline_inst|stage\(3) & (\pipeline_inst|stage\(6) & \decoder_inst|reg_rw~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|stage\(3),
	datac => \pipeline_inst|stage\(6),
	datad => \decoder_inst|reg_rw~q\,
	combout => \reg_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X49_Y31_N10
\reg_inst|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~5_combout\ = (!\decoder_inst|reg_address\(2) & (!\decoder_inst|reg_address\(0) & (\decoder_inst|reg_address\(1) & \reg_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address\(2),
	datab => \decoder_inst|reg_address\(0),
	datac => \decoder_inst|reg_address\(1),
	datad => \reg_inst|Decoder0~0_combout\,
	combout => \reg_inst|Decoder0~5_combout\);

-- Location: FF_X50_Y30_N19
\reg_inst|data_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux13~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][2]~q\);

-- Location: LCCOMB_X49_Y31_N20
\reg_inst|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~7_combout\ = (!\decoder_inst|reg_address\(2) & (!\decoder_inst|reg_address\(0) & (!\decoder_inst|reg_address\(1) & \reg_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address\(2),
	datab => \decoder_inst|reg_address\(0),
	datac => \decoder_inst|reg_address\(1),
	datad => \reg_inst|Decoder0~0_combout\,
	combout => \reg_inst|Decoder0~7_combout\);

-- Location: FF_X49_Y30_N3
\reg_inst|data_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux13~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][2]~q\);

-- Location: LCCOMB_X50_Y31_N4
\rom_inst|rom_data~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~27_combout\ = (\rom_inst|rom_data~5_combout\ & \fetch_inst|address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|rom_data~5_combout\,
	datac => \fetch_inst|address\(1),
	combout => \rom_inst|rom_data~27_combout\);

-- Location: FF_X50_Y31_N5
\rom_inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~27_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(1));

-- Location: FF_X47_Y29_N9
\decoder_inst|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \rom_inst|data\(1),
	sload => VCC,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|B\(1));

-- Location: FF_X46_Y30_N9
\decoder_inst|reg_address_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|B\(1),
	sload => VCC,
	ena => \decoder_inst|reg_address_b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address_b\(1));

-- Location: LCCOMB_X49_Y30_N2
\reg_inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux13~0_combout\ = (\decoder_inst|reg_address_b\(2) & (((\decoder_inst|reg_address_b\(1))))) # (!\decoder_inst|reg_address_b\(2) & ((\decoder_inst|reg_address_b\(1) & (\reg_inst|data_reg[2][2]~q\)) # (!\decoder_inst|reg_address_b\(1) & 
-- ((\reg_inst|data_reg[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_b\(2),
	datab => \reg_inst|data_reg[2][2]~q\,
	datac => \reg_inst|data_reg[0][2]~q\,
	datad => \decoder_inst|reg_address_b\(1),
	combout => \reg_inst|Mux13~0_combout\);

-- Location: LCCOMB_X47_Y30_N10
\reg_inst|data_reg[6][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[6][2]~feeder_combout\ = \alu_inst|Mux13~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux13~4_combout\,
	combout => \reg_inst|data_reg[6][2]~feeder_combout\);

-- Location: LCCOMB_X49_Y31_N22
\reg_inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~2_combout\ = (\decoder_inst|reg_address\(2) & (!\decoder_inst|reg_address\(0) & (\decoder_inst|reg_address\(1) & \reg_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address\(2),
	datab => \decoder_inst|reg_address\(0),
	datac => \decoder_inst|reg_address\(1),
	datad => \reg_inst|Decoder0~0_combout\,
	combout => \reg_inst|Decoder0~2_combout\);

-- Location: FF_X47_Y30_N11
\reg_inst|data_reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[6][2]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[6][2]~q\);

-- Location: LCCOMB_X49_Y31_N2
\reg_inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~3_combout\ = (\decoder_inst|reg_address\(2) & (!\decoder_inst|reg_address\(0) & (!\decoder_inst|reg_address\(1) & \reg_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address\(2),
	datab => \decoder_inst|reg_address\(0),
	datac => \decoder_inst|reg_address\(1),
	datad => \reg_inst|Decoder0~0_combout\,
	combout => \reg_inst|Decoder0~3_combout\);

-- Location: FF_X47_Y30_N5
\reg_inst|data_reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux13~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[4][2]~q\);

-- Location: LCCOMB_X46_Y30_N0
\reg_inst|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux13~1_combout\ = (\decoder_inst|reg_address_b\(2) & ((\reg_inst|Mux13~0_combout\ & (\reg_inst|data_reg[6][2]~q\)) # (!\reg_inst|Mux13~0_combout\ & ((\reg_inst|data_reg[4][2]~q\))))) # (!\decoder_inst|reg_address_b\(2) & 
-- (\reg_inst|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_b\(2),
	datab => \reg_inst|Mux13~0_combout\,
	datac => \reg_inst|data_reg[6][2]~q\,
	datad => \reg_inst|data_reg[4][2]~q\,
	combout => \reg_inst|Mux13~1_combout\);

-- Location: LCCOMB_X51_Y31_N30
\reg_inst|data_out_a[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_out_a[0]~0_combout\ = (\pipeline_inst|stage\(3) & ((!\decoder_inst|reg_rw~q\) # (!\pipeline_inst|stage\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|stage\(3),
	datac => \pipeline_inst|stage\(6),
	datad => \decoder_inst|reg_rw~q\,
	combout => \reg_inst|data_out_a[0]~0_combout\);

-- Location: FF_X46_Y30_N1
\reg_inst|data_out_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux13~1_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(2));

-- Location: LCCOMB_X51_Y32_N4
\rom_inst|rom_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~3_combout\ = (!\fetch_inst|address\(0) & !\fetch_inst|address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fetch_inst|address\(0),
	datac => \fetch_inst|address\(1),
	combout => \rom_inst|rom_data~3_combout\);

-- Location: LCCOMB_X51_Y32_N2
\rom_inst|rom_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~4_combout\ = (!\fetch_inst|address\(2) & (\rom_inst|rom_data~0_combout\ & (\rom_inst|rom_data~3_combout\ & !\fetch_inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(2),
	datab => \rom_inst|rom_data~0_combout\,
	datac => \rom_inst|rom_data~3_combout\,
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~4_combout\);

-- Location: FF_X51_Y32_N3
\rom_inst|data[24]\ : dffeas
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
	q => \rom_inst|data\(24));

-- Location: LCCOMB_X55_Y31_N18
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

-- Location: FF_X55_Y31_N19
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

-- Location: LCCOMB_X46_Y30_N2
\decoder_inst|alu_b[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[2]~5_combout\ = (\decoder_inst|format\(1) & (((\decoder_inst|B\(4) & !\decoder_inst|format\(0))))) # (!\decoder_inst|format\(1) & ((\decoder_inst|format\(0) & ((\decoder_inst|B\(4)))) # (!\decoder_inst|format\(0) & 
-- (\reg_inst|data_out_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(1),
	datab => \reg_inst|data_out_b\(2),
	datac => \decoder_inst|B\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_b[2]~5_combout\);

-- Location: LCCOMB_X47_Y29_N12
\decoder_inst|alu_b[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[0]~1_combout\ = (\pipeline_inst|stage\(2) & ((\decoder_inst|op\(4)) # ((!\decoder_inst|format\(1)) # (!\decoder_inst|format\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(4),
	datab => \pipeline_inst|stage\(2),
	datac => \decoder_inst|format\(0),
	datad => \decoder_inst|format\(1),
	combout => \decoder_inst|alu_b[0]~1_combout\);

-- Location: LCCOMB_X47_Y29_N6
\decoder_inst|alu_b[2]_NEW52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[2]_OTERM53\ = (\decoder_inst|alu_b[0]~1_combout\ & (!\decoder_inst|op\(4) & (\decoder_inst|alu_b[2]~5_combout\))) # (!\decoder_inst|alu_b[0]~1_combout\ & (((\decoder_inst|alu_b[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(4),
	datab => \decoder_inst|alu_b[2]~5_combout\,
	datac => \decoder_inst|alu_b[2]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[0]~1_combout\,
	combout => \decoder_inst|alu_b[2]_OTERM53\);

-- Location: FF_X47_Y29_N7
\decoder_inst|alu_b[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_b[2]_OTERM53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X55_Y31_N8
\decoder_inst|alu_a[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[2]~8_combout\ = (\reg_inst|data_out_a\(2) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(2),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_a[2]~8_combout\);

-- Location: LCCOMB_X50_Y31_N28
\rom_inst|rom_data~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~12_combout\ = (\fetch_inst|address\(2) & ((\fetch_inst|address\(0) & (!\fetch_inst|address\(1) & !\fetch_inst|address\(3))) # (!\fetch_inst|address\(0) & (\fetch_inst|address\(1) $ (\fetch_inst|address\(3)))))) # 
-- (!\fetch_inst|address\(2) & (((\fetch_inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \fetch_inst|address\(2),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~12_combout\);

-- Location: LCCOMB_X50_Y31_N22
\rom_inst|rom_data~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~13_combout\ = (\rom_inst|rom_data~0_combout\ & \rom_inst|rom_data~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~12_combout\,
	combout => \rom_inst|rom_data~13_combout\);

-- Location: FF_X50_Y31_N23
\rom_inst|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~13_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(21));

-- Location: LCCOMB_X51_Y31_N2
\decoder_inst|op[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|op[2]~feeder_combout\ = \rom_inst|data\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(21),
	combout => \decoder_inst|op[2]~feeder_combout\);

-- Location: FF_X51_Y31_N3
\decoder_inst|op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|op[2]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|op\(2));

-- Location: LCCOMB_X52_Y31_N14
\decoder_inst|alu_a[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[7]~2_combout\ = (!\decoder_inst|op\(1) & (\decoder_inst|op\(4) & (\decoder_inst|op\(0) & \decoder_inst|op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(1),
	datab => \decoder_inst|op\(4),
	datac => \decoder_inst|op\(0),
	datad => \decoder_inst|op\(2),
	combout => \decoder_inst|alu_a[7]~2_combout\);

-- Location: LCCOMB_X52_Y31_N28
\decoder_inst|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux34~0_combout\ = (\decoder_inst|op\(2) & (\decoder_inst|op\(4) & (!\decoder_inst|op\(1) & !\decoder_inst|op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(2),
	datab => \decoder_inst|op\(4),
	datac => \decoder_inst|op\(1),
	datad => \decoder_inst|op\(0),
	combout => \decoder_inst|Mux34~0_combout\);

-- Location: LCCOMB_X52_Y31_N30
\decoder_inst|ram_rw~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_rw~feeder_combout\ = \decoder_inst|Mux34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|Mux34~0_combout\,
	combout => \decoder_inst|ram_rw~feeder_combout\);

-- Location: FF_X52_Y31_N31
\decoder_inst|ram_rw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_rw~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_rw~q\);

-- Location: LCCOMB_X52_Y31_N6
\ram_inst|data_ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_inst|data_ram~17_combout\ = (\decoder_inst|ram_rw~q\ & (\pipeline_inst|stage\(3) & \pipeline_inst|stage\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|ram_rw~q\,
	datab => \pipeline_inst|stage\(3),
	datac => \pipeline_inst|stage\(6),
	combout => \ram_inst|data_ram~17_combout\);

-- Location: LCCOMB_X52_Y31_N26
\ram_inst|data_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ram_inst|data_out[0]~0_combout\ = (\pipeline_inst|stage\(3) & ((!\pipeline_inst|stage\(6)) # (!\decoder_inst|ram_rw~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|ram_rw~q\,
	datab => \pipeline_inst|stage\(3),
	datac => \pipeline_inst|stage\(6),
	combout => \ram_inst|data_out[0]~0_combout\);

-- Location: LCCOMB_X50_Y31_N0
\rom_inst|rom_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~1_combout\ = (\fetch_inst|address\(1) & (!\fetch_inst|address\(3) & ((\fetch_inst|address\(2)) # (!\fetch_inst|address\(0))))) # (!\fetch_inst|address\(1) & ((\fetch_inst|address\(0) & ((\fetch_inst|address\(3)))) # 
-- (!\fetch_inst|address\(0) & (\fetch_inst|address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \fetch_inst|address\(2),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~1_combout\);

-- Location: LCCOMB_X50_Y31_N8
\rom_inst|rom_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~2_combout\ = (\rom_inst|rom_data~0_combout\ & \rom_inst|rom_data~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~1_combout\,
	combout => \rom_inst|rom_data~2_combout\);

-- Location: FF_X50_Y31_N9
\rom_inst|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~2_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(8));

-- Location: LCCOMB_X55_Y31_N2
\decoder_inst|A[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|A[0]~feeder_combout\ = \rom_inst|data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(8),
	combout => \decoder_inst|A[0]~feeder_combout\);

-- Location: FF_X55_Y31_N3
\decoder_inst|A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|A[0]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|A\(0));

-- Location: LCCOMB_X52_Y31_N20
\decoder_inst|ram_address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_address[0]~feeder_combout\ = \decoder_inst|A\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|A\(0),
	combout => \decoder_inst|ram_address[0]~feeder_combout\);

-- Location: LCCOMB_X52_Y31_N18
\decoder_inst|ram_data_in[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_data_in[0]~0_combout\ = (\decoder_inst|op\(2) & (\decoder_inst|op\(4) & (\pipeline_inst|stage\(2) & !\decoder_inst|op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(2),
	datab => \decoder_inst|op\(4),
	datac => \pipeline_inst|stage\(2),
	datad => \decoder_inst|op\(1),
	combout => \decoder_inst|ram_data_in[0]~0_combout\);

-- Location: FF_X52_Y31_N21
\decoder_inst|ram_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_address[0]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_address\(0));

-- Location: LCCOMB_X50_Y31_N6
\rom_inst|rom_data~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~14_combout\ = (\fetch_inst|address\(0) & ((\fetch_inst|address\(2)) # (\fetch_inst|address\(1) $ (!\fetch_inst|address\(3))))) # (!\fetch_inst|address\(0) & ((\fetch_inst|address\(1)) # ((\fetch_inst|address\(2) & 
-- \fetch_inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(0),
	datab => \fetch_inst|address\(2),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~14_combout\);

-- Location: LCCOMB_X50_Y31_N20
\rom_inst|rom_data~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~15_combout\ = (\rom_inst|rom_data~0_combout\ & !\rom_inst|rom_data~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~14_combout\,
	combout => \rom_inst|rom_data~15_combout\);

-- Location: FF_X50_Y31_N21
\rom_inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~15_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(9));

-- Location: LCCOMB_X55_Y31_N22
\decoder_inst|A[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|A[1]~feeder_combout\ = \rom_inst|data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|data\(9),
	combout => \decoder_inst|A[1]~feeder_combout\);

-- Location: FF_X55_Y31_N23
\decoder_inst|A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|A[1]~feeder_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|A\(1));

-- Location: LCCOMB_X52_Y31_N2
\decoder_inst|ram_address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_address[1]~feeder_combout\ = \decoder_inst|A\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|A\(1),
	combout => \decoder_inst|ram_address[1]~feeder_combout\);

-- Location: FF_X52_Y31_N3
\decoder_inst|ram_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_address[1]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_address\(1));

-- Location: LCCOMB_X52_Y31_N4
\decoder_inst|ram_address[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_address[2]~feeder_combout\ = \decoder_inst|A\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|A\(2),
	combout => \decoder_inst|ram_address[2]~feeder_combout\);

-- Location: FF_X52_Y31_N5
\decoder_inst|ram_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_address[2]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_address\(2));

-- Location: LCCOMB_X51_Y32_N28
\rom_inst|rom_data~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~17_combout\ = (\fetch_inst|address\(2)) # ((\fetch_inst|address\(1) & ((!\fetch_inst|address\(3)))) # (!\fetch_inst|address\(1) & ((\fetch_inst|address\(0)) # (\fetch_inst|address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(2),
	datab => \fetch_inst|address\(0),
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~17_combout\);

-- Location: LCCOMB_X51_Y32_N16
\rom_inst|rom_data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~18_combout\ = (\rom_inst|rom_data~0_combout\ & !\rom_inst|rom_data~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_inst|rom_data~0_combout\,
	datad => \rom_inst|rom_data~17_combout\,
	combout => \rom_inst|rom_data~18_combout\);

-- Location: FF_X51_Y32_N17
\rom_inst|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~18_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(11));

-- Location: FF_X55_Y31_N25
\decoder_inst|A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \rom_inst|data\(11),
	sload => VCC,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|A\(3));

-- Location: LCCOMB_X52_Y31_N24
\decoder_inst|ram_address[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_address[3]~feeder_combout\ = \decoder_inst|A\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|A\(3),
	combout => \decoder_inst|ram_address[3]~feeder_combout\);

-- Location: FF_X52_Y31_N25
\decoder_inst|ram_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_address[3]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_address\(3));

-- Location: LCCOMB_X51_Y32_N8
\rom_inst|rom_data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|rom_data~16_combout\ = (!\fetch_inst|address\(2) & (\rom_inst|rom_data~0_combout\ & (\fetch_inst|address\(1) & \fetch_inst|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fetch_inst|address\(2),
	datab => \rom_inst|rom_data~0_combout\,
	datac => \fetch_inst|address\(1),
	datad => \fetch_inst|address\(3),
	combout => \rom_inst|rom_data~16_combout\);

-- Location: FF_X51_Y32_N9
\rom_inst|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rom_inst|rom_data~16_combout\,
	ena => \pipeline_inst|stage\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|data\(12));

-- Location: FF_X55_Y31_N15
\decoder_inst|A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \rom_inst|data\(12),
	sload => VCC,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|A\(4));

-- Location: LCCOMB_X52_Y31_N16
\decoder_inst|ram_address[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_address[4]~feeder_combout\ = \decoder_inst|A\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|A\(4),
	combout => \decoder_inst|ram_address[4]~feeder_combout\);

-- Location: FF_X52_Y31_N17
\decoder_inst|ram_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_address[4]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_address\(4));

-- Location: LCCOMB_X51_Y31_N28
\decoder_inst|alu_sel~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_sel~2_combout\ = (!\decoder_inst|op\(4) & \decoder_inst|op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|op\(4),
	datad => \decoder_inst|op\(2),
	combout => \decoder_inst|alu_sel~2_combout\);

-- Location: FF_X51_Y31_N29
\decoder_inst|alu_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_sel~2_combout\,
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_sel\(2));

-- Location: LCCOMB_X47_Y31_N24
\pipeline_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pipeline_inst|Mux2~0_combout\ = (\pipeline_inst|pipeline:counter[1]~q\ & (!\pipeline_inst|pipeline:counter[0]~q\ & \pipeline_inst|pipeline:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipeline_inst|pipeline:counter[1]~q\,
	datac => \pipeline_inst|pipeline:counter[0]~q\,
	datad => \pipeline_inst|pipeline:counter[2]~q\,
	combout => \pipeline_inst|Mux2~0_combout\);

-- Location: FF_X47_Y31_N25
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

-- Location: FF_X51_Y29_N21
\alu_inst|result[5]_NEW_REG0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_sel\(2),
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM1\);

-- Location: LCCOMB_X52_Y31_N10
\decoder_inst|ram_data_in[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_data_in[0]~1_combout\ = (!\decoder_inst|op\(0) & \decoder_inst|ram_data_in[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(0),
	datad => \decoder_inst|ram_data_in[0]~0_combout\,
	combout => \decoder_inst|ram_data_in[0]~1_combout\);

-- Location: FF_X54_Y31_N17
\decoder_inst|ram_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_out_a\(2),
	sload => VCC,
	ena => \decoder_inst|ram_data_in[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_data_in\(2));

-- Location: LCCOMB_X51_Y31_N0
\decoder_inst|Mux69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux69~0_combout\ = (\decoder_inst|Mux34~0_combout\ & (\decoder_inst|reg\(0))) # (!\decoder_inst|Mux34~0_combout\ & ((\decoder_inst|A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg\(0),
	datac => \decoder_inst|A\(0),
	datad => \decoder_inst|Mux34~0_combout\,
	combout => \decoder_inst|Mux69~0_combout\);

-- Location: FF_X51_Y31_N1
\decoder_inst|reg_address_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|Mux69~0_combout\,
	asdata => \decoder_inst|A\(0),
	sload => \decoder_inst|ALT_INV_op\(4),
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address_a\(0));

-- Location: FF_X51_Y29_N11
\alu_inst|result[5]_OTERM5_NEW_REG60\ : dffeas
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
	q => \alu_inst|result[5]_OTERM5_OTERM61\);

-- Location: FF_X47_Y30_N1
\reg_inst|data_reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux12~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[4][3]~q\);

-- Location: FF_X49_Y30_N11
\reg_inst|data_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux12~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][3]~q\);

-- Location: LCCOMB_X49_Y30_N10
\reg_inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux12~0_combout\ = (\decoder_inst|reg_address_b\(2) & ((\reg_inst|data_reg[4][3]~q\) # ((\decoder_inst|reg_address_b\(1))))) # (!\decoder_inst|reg_address_b\(2) & (((\reg_inst|data_reg[0][3]~q\ & !\decoder_inst|reg_address_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[4][3]~q\,
	datab => \decoder_inst|reg_address_b\(2),
	datac => \reg_inst|data_reg[0][3]~q\,
	datad => \decoder_inst|reg_address_b\(1),
	combout => \reg_inst|Mux12~0_combout\);

-- Location: FF_X50_Y30_N29
\reg_inst|data_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux12~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][3]~q\);

-- Location: LCCOMB_X47_Y30_N30
\reg_inst|data_reg[6][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[6][3]~feeder_combout\ = \alu_inst|Mux12~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux12~4_combout\,
	combout => \reg_inst|data_reg[6][3]~feeder_combout\);

-- Location: FF_X47_Y30_N31
\reg_inst|data_reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[6][3]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[6][3]~q\);

-- Location: LCCOMB_X46_Y30_N12
\reg_inst|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux12~1_combout\ = (\decoder_inst|reg_address_b\(1) & ((\reg_inst|Mux12~0_combout\ & ((\reg_inst|data_reg[6][3]~q\))) # (!\reg_inst|Mux12~0_combout\ & (\reg_inst|data_reg[2][3]~q\)))) # (!\decoder_inst|reg_address_b\(1) & 
-- (\reg_inst|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_b\(1),
	datab => \reg_inst|Mux12~0_combout\,
	datac => \reg_inst|data_reg[2][3]~q\,
	datad => \reg_inst|data_reg[6][3]~q\,
	combout => \reg_inst|Mux12~1_combout\);

-- Location: FF_X46_Y30_N13
\reg_inst|data_out_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux12~1_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(3));

-- Location: LCCOMB_X46_Y30_N6
\decoder_inst|alu_b[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[3]~7_combout\ = (\reg_inst|data_out_b\(3) & (!\decoder_inst|op\(4) & !\decoder_inst|format\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_out_b\(3),
	datac => \decoder_inst|op\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_b[3]~7_combout\);

-- Location: LCCOMB_X47_Y29_N14
\decoder_inst|alu_b[3]_NEW128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[3]_OTERM129\ = (\decoder_inst|alu_b[0]~1_combout\ & (((\decoder_inst|alu_b[3]~7_combout\ & !\decoder_inst|format\(1))))) # (!\decoder_inst|alu_b[0]~1_combout\ & (\decoder_inst|alu_b[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~1_combout\,
	datab => \decoder_inst|alu_b[3]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[3]~7_combout\,
	datad => \decoder_inst|format\(1),
	combout => \decoder_inst|alu_b[3]_OTERM129\);

-- Location: FF_X47_Y29_N27
\decoder_inst|alu_b[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_b[3]_OTERM129\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X54_Y31_N22
\decoder_inst|alu_a[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[3]~11_combout\ = (\reg_inst|data_out_a\(3) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(3),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_a[3]~11_combout\);

-- Location: LCCOMB_X47_Y29_N4
\decoder_inst|alu_b[7]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[7]~_Duplicate_1feeder_combout\ = \decoder_inst|alu_b[7]_OTERM47\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|alu_b[7]_OTERM47\,
	combout => \decoder_inst|alu_b[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X47_Y29_N5
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

-- Location: LCCOMB_X52_Y31_N12
\decoder_inst|Mux67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux67~0_combout\ = (\decoder_inst|Mux34~0_combout\ & (\decoder_inst|reg\(2))) # (!\decoder_inst|Mux34~0_combout\ & ((\decoder_inst|A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|reg\(2),
	datac => \decoder_inst|A\(2),
	datad => \decoder_inst|Mux34~0_combout\,
	combout => \decoder_inst|Mux67~0_combout\);

-- Location: FF_X52_Y31_N13
\decoder_inst|reg_address_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|Mux67~0_combout\,
	asdata => \decoder_inst|A\(2),
	sload => \decoder_inst|ALT_INV_op\(4),
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address_a\(2));

-- Location: LCCOMB_X49_Y31_N12
\reg_inst|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~8_combout\ = (!\decoder_inst|reg_address\(2) & (\decoder_inst|reg_address\(0) & (\decoder_inst|reg_address\(1) & \reg_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address\(2),
	datab => \decoder_inst|reg_address\(0),
	datac => \decoder_inst|reg_address\(1),
	datad => \reg_inst|Decoder0~0_combout\,
	combout => \reg_inst|Decoder0~8_combout\);

-- Location: FF_X49_Y29_N27
\reg_inst|data_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux8~10_combout\,
	ena => \reg_inst|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[3][7]~q\);

-- Location: FF_X49_Y30_N27
\reg_inst|data_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux8~10_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][7]~q\);

-- Location: LCCOMB_X49_Y31_N28
\reg_inst|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~6_combout\ = (!\decoder_inst|reg_address\(2) & (\decoder_inst|reg_address\(0) & (!\decoder_inst|reg_address\(1) & \reg_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address\(2),
	datab => \decoder_inst|reg_address\(0),
	datac => \decoder_inst|reg_address\(1),
	datad => \reg_inst|Decoder0~0_combout\,
	combout => \reg_inst|Decoder0~6_combout\);

-- Location: FF_X49_Y30_N5
\reg_inst|data_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux8~10_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][7]~q\);

-- Location: LCCOMB_X51_Y31_N26
\decoder_inst|Mux68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|Mux68~0_combout\ = (\decoder_inst|Mux34~0_combout\ & (\decoder_inst|reg\(1))) # (!\decoder_inst|Mux34~0_combout\ & ((\decoder_inst|A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg\(1),
	datac => \decoder_inst|A\(1),
	datad => \decoder_inst|Mux34~0_combout\,
	combout => \decoder_inst|Mux68~0_combout\);

-- Location: FF_X51_Y31_N27
\decoder_inst|reg_address_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|Mux68~0_combout\,
	asdata => \decoder_inst|A\(1),
	sload => \decoder_inst|ALT_INV_op\(4),
	ena => \pipeline_inst|stage\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|reg_address_a\(1));

-- Location: LCCOMB_X49_Y30_N4
\reg_inst|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux0~2_combout\ = (\decoder_inst|reg_address_a\(0) & (((\reg_inst|data_reg[1][7]~q\) # (\decoder_inst|reg_address_a\(1))))) # (!\decoder_inst|reg_address_a\(0) & (\reg_inst|data_reg[0][7]~q\ & ((!\decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][7]~q\,
	datab => \decoder_inst|reg_address_a\(0),
	datac => \reg_inst|data_reg[1][7]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux0~2_combout\);

-- Location: FF_X50_Y30_N27
\reg_inst|data_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux8~10_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][7]~q\);

-- Location: LCCOMB_X50_Y30_N26
\reg_inst|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux0~3_combout\ = (\reg_inst|Mux0~2_combout\ & ((\reg_inst|data_reg[3][7]~q\) # ((!\decoder_inst|reg_address_a\(1))))) # (!\reg_inst|Mux0~2_combout\ & (((\reg_inst|data_reg[2][7]~q\ & \decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[3][7]~q\,
	datab => \reg_inst|Mux0~2_combout\,
	datac => \reg_inst|data_reg[2][7]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux0~3_combout\);

-- Location: FF_X47_Y30_N29
\reg_inst|data_reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux8~10_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[4][7]~q\);

-- Location: LCCOMB_X47_Y30_N28
\reg_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux0~0_combout\ = (\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[6][7]~q\) # ((\decoder_inst|reg_address_a\(0))))) # (!\decoder_inst|reg_address_a\(1) & (((\reg_inst|data_reg[4][7]~q\ & !\decoder_inst|reg_address_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][7]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[4][7]~q\,
	datad => \decoder_inst|reg_address_a\(0),
	combout => \reg_inst|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y31_N30
\reg_inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~4_combout\ = (\decoder_inst|reg_address\(2) & (\decoder_inst|reg_address\(0) & (\decoder_inst|reg_address\(1) & \reg_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address\(2),
	datab => \decoder_inst|reg_address\(0),
	datac => \decoder_inst|reg_address\(1),
	datad => \reg_inst|Decoder0~0_combout\,
	combout => \reg_inst|Decoder0~4_combout\);

-- Location: FF_X51_Y30_N29
\reg_inst|data_reg[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux8~10_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[7][7]~q\);

-- Location: LCCOMB_X50_Y30_N22
\reg_inst|data_reg[5][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[5][7]~feeder_combout\ = \alu_inst|Mux8~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux8~10_combout\,
	combout => \reg_inst|data_reg[5][7]~feeder_combout\);

-- Location: LCCOMB_X49_Y31_N8
\reg_inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Decoder0~1_combout\ = (\decoder_inst|reg_address\(2) & (\decoder_inst|reg_address\(0) & (!\decoder_inst|reg_address\(1) & \reg_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address\(2),
	datab => \decoder_inst|reg_address\(0),
	datac => \decoder_inst|reg_address\(1),
	datad => \reg_inst|Decoder0~0_combout\,
	combout => \reg_inst|Decoder0~1_combout\);

-- Location: FF_X50_Y30_N23
\reg_inst|data_reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[5][7]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[5][7]~q\);

-- Location: LCCOMB_X51_Y30_N28
\reg_inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux0~1_combout\ = (\decoder_inst|reg_address_a\(0) & ((\reg_inst|Mux0~0_combout\ & (\reg_inst|data_reg[7][7]~q\)) # (!\reg_inst|Mux0~0_combout\ & ((\reg_inst|data_reg[5][7]~q\))))) # (!\decoder_inst|reg_address_a\(0) & 
-- (\reg_inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(0),
	datab => \reg_inst|Mux0~0_combout\,
	datac => \reg_inst|data_reg[7][7]~q\,
	datad => \reg_inst|data_reg[5][7]~q\,
	combout => \reg_inst|Mux0~1_combout\);

-- Location: LCCOMB_X51_Y30_N16
\reg_inst|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux0~4_combout\ = (\decoder_inst|reg_address_a\(2) & ((\reg_inst|Mux0~1_combout\))) # (!\decoder_inst|reg_address_a\(2) & (\reg_inst|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|reg_address_a\(2),
	datac => \reg_inst|Mux0~3_combout\,
	datad => \reg_inst|Mux0~1_combout\,
	combout => \reg_inst|Mux0~4_combout\);

-- Location: FF_X51_Y30_N17
\reg_inst|data_out_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux0~4_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(7));

-- Location: LCCOMB_X54_Y31_N10
\decoder_inst|alu_a[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[7]~21_combout\ = (\decoder_inst|format\(0) & (\decoder_inst|format\(1) & ((\decoder_inst|alu_a\(7))))) # (!\decoder_inst|format\(0) & (((\reg_inst|data_out_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(1),
	datab => \reg_inst|data_out_a\(7),
	datac => \decoder_inst|alu_a\(7),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_a[7]~21_combout\);

-- Location: LCCOMB_X52_Y31_N22
\decoder_inst|alu_a[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[0]~4_combout\ = (\pipeline_inst|stage\(2) & (((!\decoder_inst|op\(1) & \decoder_inst|op\(0))) # (!\decoder_inst|op\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(1),
	datab => \decoder_inst|op\(4),
	datac => \pipeline_inst|stage\(2),
	datad => \decoder_inst|op\(0),
	combout => \decoder_inst|alu_a[0]~4_combout\);

-- Location: LCCOMB_X56_Y31_N12
\decoder_inst|alu_a[0]_NEW184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[0]_OTERM185\ = (\decoder_inst|alu_a[0]~4_combout\ & ((\decoder_inst|alu_a[0]~7_combout\))) # (!\decoder_inst|alu_a[0]~4_combout\ & (\decoder_inst|alu_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[0]~4_combout\,
	datac => \decoder_inst|alu_a\(0),
	datad => \decoder_inst|alu_a[0]~7_combout\,
	combout => \decoder_inst|alu_a[0]_OTERM185\);

-- Location: FF_X56_Y31_N13
\decoder_inst|alu_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[0]_OTERM185\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(0));

-- Location: LCCOMB_X55_Y31_N0
\decoder_inst|alu_a[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[4]~14_combout\ = (\reg_inst|data_out_a\(4) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_a[4]~14_combout\);

-- Location: LCCOMB_X47_Y30_N24
\reg_inst|data_reg[6][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[6][6]~feeder_combout\ = \alu_inst|Mux9~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux9~8_combout\,
	combout => \reg_inst|data_reg[6][6]~feeder_combout\);

-- Location: FF_X47_Y30_N25
\reg_inst|data_reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[6][6]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[6][6]~q\);

-- Location: FF_X47_Y30_N21
\reg_inst|data_reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux9~8_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[4][6]~q\);

-- Location: LCCOMB_X46_Y30_N30
\reg_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux9~0_combout\ = (\decoder_inst|reg_address_b\(2) & ((\reg_inst|data_reg[4][6]~q\) # ((\decoder_inst|reg_address_b\(1))))) # (!\decoder_inst|reg_address_b\(2) & (((\reg_inst|data_reg[0][6]~q\ & !\decoder_inst|reg_address_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[4][6]~q\,
	datab => \reg_inst|data_reg[0][6]~q\,
	datac => \decoder_inst|reg_address_b\(2),
	datad => \decoder_inst|reg_address_b\(1),
	combout => \reg_inst|Mux9~0_combout\);

-- Location: FF_X50_Y30_N1
\reg_inst|data_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux9~8_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][6]~q\);

-- Location: LCCOMB_X46_Y30_N28
\reg_inst|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux9~1_combout\ = (\decoder_inst|reg_address_b\(1) & ((\reg_inst|Mux9~0_combout\ & (\reg_inst|data_reg[6][6]~q\)) # (!\reg_inst|Mux9~0_combout\ & ((\reg_inst|data_reg[2][6]~q\))))) # (!\decoder_inst|reg_address_b\(1) & 
-- (((\reg_inst|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_b\(1),
	datab => \reg_inst|data_reg[6][6]~q\,
	datac => \reg_inst|Mux9~0_combout\,
	datad => \reg_inst|data_reg[2][6]~q\,
	combout => \reg_inst|Mux9~1_combout\);

-- Location: FF_X46_Y30_N29
\reg_inst|data_out_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux9~1_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(6));

-- Location: LCCOMB_X47_Y29_N26
\decoder_inst|alu_b[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[6]~11_combout\ = (!\decoder_inst|op\(4) & (!\decoder_inst|format\(0) & \reg_inst|data_out_b\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(4),
	datab => \decoder_inst|format\(0),
	datad => \reg_inst|data_out_b\(6),
	combout => \decoder_inst|alu_b[6]~11_combout\);

-- Location: LCCOMB_X47_Y29_N20
\decoder_inst|alu_b[6]_NEW126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[6]_OTERM127\ = (\decoder_inst|alu_b[0]~1_combout\ & (\decoder_inst|alu_b[6]~11_combout\ & (!\decoder_inst|format\(1)))) # (!\decoder_inst|alu_b[0]~1_combout\ & (((\decoder_inst|alu_b[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[6]~11_combout\,
	datab => \decoder_inst|format\(1),
	datac => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[0]~1_combout\,
	combout => \decoder_inst|alu_b[6]_OTERM127\);

-- Location: FF_X47_Y29_N21
\decoder_inst|alu_b[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_b[6]_OTERM127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X54_Y31_N12
\decoder_inst|alu_a[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[6]~19_combout\ = (\decoder_inst|format\(0) & (\decoder_inst|alu_a\(6) & ((\decoder_inst|format\(1))))) # (!\decoder_inst|format\(0) & (((\reg_inst|data_out_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(6),
	datab => \decoder_inst|format\(0),
	datac => \reg_inst|data_out_a\(6),
	datad => \decoder_inst|format\(1),
	combout => \decoder_inst|alu_a[6]~19_combout\);

-- Location: LCCOMB_X54_Y31_N14
\decoder_inst|ram_data_in[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_data_in[7]~feeder_combout\ = \reg_inst|data_out_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_inst|data_out_a\(7),
	combout => \decoder_inst|ram_data_in[7]~feeder_combout\);

-- Location: FF_X54_Y31_N15
\decoder_inst|ram_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_data_in[7]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_data_in\(7));

-- Location: M9K_X53_Y31_N0
\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram:ram_inst|altsyncram:data_ram_rtl_0|altsyncram_m4d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_inst|data_ram~17_combout\,
	portbre => VCC,
	clk0 => \MAX10_CLK1_50~inputclkctrl_outclk\,
	clk1 => \MAX10_CLK1_50~inputclkctrl_outclk\,
	ena0 => \ram_inst|data_ram~17_combout\,
	ena1 => \ram_inst|data_out[0]~0_combout\,
	portadatain => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y31_N24
\decoder_inst|alu_a[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[6]~20_combout\ = (\decoder_inst|alu_a[7]~2_combout\ & ((\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a6\))) # (!\decoder_inst|alu_a[7]~2_combout\ & (\decoder_inst|alu_a[6]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[6]~19_combout\,
	datab => \decoder_inst|alu_a[7]~2_combout\,
	datad => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \decoder_inst|alu_a[6]~20_combout\);

-- Location: LCCOMB_X56_Y31_N16
\decoder_inst|alu_a[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[6]~feeder_combout\ = \decoder_inst|alu_a[6]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|alu_a[6]~20_combout\,
	combout => \decoder_inst|alu_a[6]~feeder_combout\);

-- Location: FF_X56_Y31_N17
\decoder_inst|alu_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[6]~feeder_combout\,
	ena => \decoder_inst|alu_a[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(6));

-- Location: LCCOMB_X54_Y31_N18
\decoder_inst|alu_a[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[5]~17_combout\ = (\decoder_inst|format\(0) & (\decoder_inst|format\(1) & ((\decoder_inst|alu_a\(5))))) # (!\decoder_inst|format\(0) & (((\reg_inst|data_out_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(1),
	datab => \decoder_inst|format\(0),
	datac => \reg_inst|data_out_a\(5),
	datad => \decoder_inst|alu_a\(5),
	combout => \decoder_inst|alu_a[5]~17_combout\);

-- Location: LCCOMB_X54_Y31_N16
\decoder_inst|alu_a[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[5]~18_combout\ = (\decoder_inst|alu_a[7]~2_combout\ & (\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a5\)) # (!\decoder_inst|alu_a[7]~2_combout\ & ((\decoder_inst|alu_a[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a5\,
	datab => \decoder_inst|alu_a[7]~2_combout\,
	datad => \decoder_inst|alu_a[5]~17_combout\,
	combout => \decoder_inst|alu_a[5]~18_combout\);

-- Location: LCCOMB_X56_Y31_N8
\decoder_inst|alu_a[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[5]~feeder_combout\ = \decoder_inst|alu_a[5]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder_inst|alu_a[5]~18_combout\,
	combout => \decoder_inst|alu_a[5]~feeder_combout\);

-- Location: FF_X56_Y31_N9
\decoder_inst|alu_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[5]~feeder_combout\,
	ena => \decoder_inst|alu_a[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(5));

-- Location: FF_X47_Y30_N19
\reg_inst|data_reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux10~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[4][5]~q\);

-- Location: FF_X50_Y30_N7
\reg_inst|data_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux10~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][5]~q\);

-- Location: FF_X49_Y30_N13
\reg_inst|data_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux10~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][5]~q\);

-- Location: LCCOMB_X49_Y30_N12
\reg_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux10~0_combout\ = (\decoder_inst|reg_address_b\(2) & (((\decoder_inst|reg_address_b\(1))))) # (!\decoder_inst|reg_address_b\(2) & ((\decoder_inst|reg_address_b\(1) & (\reg_inst|data_reg[2][5]~q\)) # (!\decoder_inst|reg_address_b\(1) & 
-- ((\reg_inst|data_reg[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[2][5]~q\,
	datab => \decoder_inst|reg_address_b\(2),
	datac => \reg_inst|data_reg[0][5]~q\,
	datad => \decoder_inst|reg_address_b\(1),
	combout => \reg_inst|Mux10~0_combout\);

-- Location: LCCOMB_X46_Y30_N18
\reg_inst|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux10~1_combout\ = (\decoder_inst|reg_address_b\(2) & ((\reg_inst|Mux10~0_combout\ & (\reg_inst|data_reg[6][5]~q\)) # (!\reg_inst|Mux10~0_combout\ & ((\reg_inst|data_reg[4][5]~q\))))) # (!\decoder_inst|reg_address_b\(2) & 
-- (((\reg_inst|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_b\(2),
	datab => \reg_inst|data_reg[6][5]~q\,
	datac => \reg_inst|data_reg[4][5]~q\,
	datad => \reg_inst|Mux10~0_combout\,
	combout => \reg_inst|Mux10~1_combout\);

-- Location: FF_X46_Y30_N19
\reg_inst|data_out_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux10~1_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(5));

-- Location: LCCOMB_X46_Y30_N4
\decoder_inst|alu_b[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[5]~10_combout\ = (\reg_inst|data_out_b\(5) & (!\decoder_inst|op\(4) & !\decoder_inst|format\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|data_out_b\(5),
	datac => \decoder_inst|op\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_b[5]~10_combout\);

-- Location: LCCOMB_X47_Y29_N22
\decoder_inst|alu_b[5]_NEW124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[5]_OTERM125\ = (\decoder_inst|alu_b[0]~1_combout\ & (\decoder_inst|alu_b[5]~10_combout\ & ((!\decoder_inst|format\(1))))) # (!\decoder_inst|alu_b[0]~1_combout\ & (((\decoder_inst|alu_b[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~1_combout\,
	datab => \decoder_inst|alu_b[5]~10_combout\,
	datac => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datad => \decoder_inst|format\(1),
	combout => \decoder_inst|alu_b[5]_OTERM125\);

-- Location: FF_X54_Y29_N9
\decoder_inst|alu_b[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_b[5]_OTERM125\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[5]~_Duplicate_1_q\);

-- Location: FF_X47_Y30_N9
\reg_inst|data_reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux11~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[4][4]~q\);

-- Location: FF_X49_Y30_N25
\reg_inst|data_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux11~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][4]~q\);

-- Location: LCCOMB_X49_Y30_N24
\reg_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux11~0_combout\ = (\decoder_inst|reg_address_b\(2) & ((\reg_inst|data_reg[4][4]~q\) # ((\decoder_inst|reg_address_b\(1))))) # (!\decoder_inst|reg_address_b\(2) & (((\reg_inst|data_reg[0][4]~q\ & !\decoder_inst|reg_address_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[4][4]~q\,
	datab => \decoder_inst|reg_address_b\(2),
	datac => \reg_inst|data_reg[0][4]~q\,
	datad => \decoder_inst|reg_address_b\(1),
	combout => \reg_inst|Mux11~0_combout\);

-- Location: FF_X50_Y30_N5
\reg_inst|data_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux11~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][4]~q\);

-- Location: LCCOMB_X46_Y30_N20
\reg_inst|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux11~1_combout\ = (\reg_inst|Mux11~0_combout\ & (((\reg_inst|data_reg[6][4]~q\)) # (!\decoder_inst|reg_address_b\(1)))) # (!\reg_inst|Mux11~0_combout\ & (\decoder_inst|reg_address_b\(1) & (\reg_inst|data_reg[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|Mux11~0_combout\,
	datab => \decoder_inst|reg_address_b\(1),
	datac => \reg_inst|data_reg[2][4]~q\,
	datad => \reg_inst|data_reg[6][4]~q\,
	combout => \reg_inst|Mux11~1_combout\);

-- Location: FF_X46_Y30_N21
\reg_inst|data_out_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux11~1_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(4));

-- Location: LCCOMB_X46_Y30_N10
\decoder_inst|alu_b[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[4]~8_combout\ = (\decoder_inst|format\(1) & (((\decoder_inst|B\(4) & !\decoder_inst|format\(0))))) # (!\decoder_inst|format\(1) & ((\decoder_inst|format\(0) & ((\decoder_inst|B\(4)))) # (!\decoder_inst|format\(0) & 
-- (\reg_inst|data_out_b\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(1),
	datab => \reg_inst|data_out_b\(4),
	datac => \decoder_inst|B\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_b[4]~8_combout\);

-- Location: LCCOMB_X47_Y29_N30
\decoder_inst|alu_b[4]_NEW130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[4]_OTERM131\ = (\decoder_inst|alu_b[0]~1_combout\ & (!\decoder_inst|op\(4) & (\decoder_inst|alu_b[4]~8_combout\))) # (!\decoder_inst|alu_b[0]~1_combout\ & (((\decoder_inst|alu_b[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(4),
	datab => \decoder_inst|alu_b[4]~8_combout\,
	datac => \decoder_inst|alu_b[4]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[0]~1_combout\,
	combout => \decoder_inst|alu_b[4]_OTERM131\);

-- Location: FF_X47_Y29_N31
\decoder_inst|alu_b[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_b[4]_OTERM131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[4]~_Duplicate_1_q\);

-- Location: FF_X50_Y30_N17
\reg_inst|data_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux14~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][1]~q\);

-- Location: LCCOMB_X47_Y30_N22
\reg_inst|data_reg[6][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[6][1]~feeder_combout\ = \alu_inst|Mux14~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux14~4_combout\,
	combout => \reg_inst|data_reg[6][1]~feeder_combout\);

-- Location: FF_X47_Y30_N23
\reg_inst|data_reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[6][1]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[6][1]~q\);

-- Location: FF_X47_Y30_N15
\reg_inst|data_reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux14~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[4][1]~q\);

-- Location: LCCOMB_X49_Y30_N28
\reg_inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux14~0_combout\ = (\decoder_inst|reg_address_b\(2) & ((\reg_inst|data_reg[4][1]~q\) # ((\decoder_inst|reg_address_b\(1))))) # (!\decoder_inst|reg_address_b\(2) & (((\reg_inst|data_reg[0][1]~q\ & !\decoder_inst|reg_address_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[4][1]~q\,
	datab => \decoder_inst|reg_address_b\(2),
	datac => \reg_inst|data_reg[0][1]~q\,
	datad => \decoder_inst|reg_address_b\(1),
	combout => \reg_inst|Mux14~0_combout\);

-- Location: LCCOMB_X46_Y30_N24
\reg_inst|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux14~1_combout\ = (\reg_inst|Mux14~0_combout\ & (((\reg_inst|data_reg[6][1]~q\) # (!\decoder_inst|reg_address_b\(1))))) # (!\reg_inst|Mux14~0_combout\ & (\reg_inst|data_reg[2][1]~q\ & ((\decoder_inst|reg_address_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[2][1]~q\,
	datab => \reg_inst|data_reg[6][1]~q\,
	datac => \reg_inst|Mux14~0_combout\,
	datad => \decoder_inst|reg_address_b\(1),
	combout => \reg_inst|Mux14~1_combout\);

-- Location: FF_X46_Y30_N25
\reg_inst|data_out_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux14~1_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(1));

-- Location: LCCOMB_X47_Y29_N8
\decoder_inst|alu_b[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[1]~3_combout\ = (\decoder_inst|format\(0) & (((\decoder_inst|B\(1) & !\decoder_inst|format\(1))))) # (!\decoder_inst|format\(0) & ((\decoder_inst|format\(1) & ((\decoder_inst|B\(1)))) # (!\decoder_inst|format\(1) & 
-- (\reg_inst|data_out_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datab => \reg_inst|data_out_b\(1),
	datac => \decoder_inst|B\(1),
	datad => \decoder_inst|format\(1),
	combout => \decoder_inst|alu_b[1]~3_combout\);

-- Location: LCCOMB_X47_Y29_N24
\decoder_inst|alu_b[1]_NEW50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[1]_OTERM51\ = (\decoder_inst|alu_b[0]~1_combout\ & (!\decoder_inst|op\(4) & (\decoder_inst|alu_b[1]~3_combout\))) # (!\decoder_inst|alu_b[0]~1_combout\ & (((\decoder_inst|alu_b[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(4),
	datab => \decoder_inst|alu_b[1]~3_combout\,
	datac => \decoder_inst|alu_b[1]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[0]~1_combout\,
	combout => \decoder_inst|alu_b[1]_OTERM51\);

-- Location: FF_X47_Y29_N25
\decoder_inst|alu_b[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_b[1]_OTERM51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X47_Y30_N6
\reg_inst|data_reg[6][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[6][0]~feeder_combout\ = \alu_inst|Mux15~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux15~5_combout\,
	combout => \reg_inst|data_reg[6][0]~feeder_combout\);

-- Location: FF_X47_Y30_N7
\reg_inst|data_reg[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[6][0]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[6][0]~q\);

-- Location: FF_X50_Y30_N9
\reg_inst|data_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux15~5_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[2][0]~q\);

-- Location: LCCOMB_X49_Y30_N6
\reg_inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux15~0_combout\ = (\decoder_inst|reg_address_b\(2) & (((\decoder_inst|reg_address_b\(1))))) # (!\decoder_inst|reg_address_b\(2) & ((\decoder_inst|reg_address_b\(1) & (\reg_inst|data_reg[2][0]~q\)) # (!\decoder_inst|reg_address_b\(1) & 
-- ((\reg_inst|data_reg[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_b\(2),
	datab => \reg_inst|data_reg[2][0]~q\,
	datac => \reg_inst|data_reg[0][0]~q\,
	datad => \decoder_inst|reg_address_b\(1),
	combout => \reg_inst|Mux15~0_combout\);

-- Location: FF_X47_Y30_N3
\reg_inst|data_reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux15~5_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[4][0]~q\);

-- Location: LCCOMB_X46_Y30_N22
\reg_inst|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux15~1_combout\ = (\reg_inst|Mux15~0_combout\ & ((\reg_inst|data_reg[6][0]~q\) # ((!\decoder_inst|reg_address_b\(2))))) # (!\reg_inst|Mux15~0_combout\ & (((\decoder_inst|reg_address_b\(2) & \reg_inst|data_reg[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][0]~q\,
	datab => \reg_inst|Mux15~0_combout\,
	datac => \decoder_inst|reg_address_b\(2),
	datad => \reg_inst|data_reg[4][0]~q\,
	combout => \reg_inst|Mux15~1_combout\);

-- Location: FF_X46_Y30_N23
\reg_inst|data_out_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux15~1_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(0));

-- Location: LCCOMB_X46_Y30_N8
\decoder_inst|alu_b[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[0]~0_combout\ = (\reg_inst|data_out_b\(0) & (!\decoder_inst|op\(4) & !\decoder_inst|format\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_out_b\(0),
	datab => \decoder_inst|op\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_b[0]~0_combout\);

-- Location: LCCOMB_X47_Y29_N2
\decoder_inst|alu_b[0]_NEW48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[0]_OTERM49\ = (\decoder_inst|alu_b[0]~1_combout\ & (((\decoder_inst|alu_b[0]~0_combout\ & !\decoder_inst|format\(1))))) # (!\decoder_inst|alu_b[0]~1_combout\ & (\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~1_combout\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[0]~0_combout\,
	datad => \decoder_inst|format\(1),
	combout => \decoder_inst|alu_b[0]_OTERM49\);

-- Location: FF_X56_Y29_N25
\decoder_inst|alu_b[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_b[0]_OTERM49\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_b[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X50_Y29_N16
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

-- Location: LCCOMB_X50_Y29_N18
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

-- Location: LCCOMB_X50_Y29_N20
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

-- Location: LCCOMB_X50_Y29_N22
\alu_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~6_combout\ = (\decoder_inst|alu_b[3]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(3) & (\alu_inst|Add0~5\ & VCC)) # (!\decoder_inst|alu_a\(3) & (!\alu_inst|Add0~5\)))) # (!\decoder_inst|alu_b[3]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(3) & 
-- (!\alu_inst|Add0~5\)) # (!\decoder_inst|alu_a\(3) & ((\alu_inst|Add0~5\) # (GND)))))
-- \alu_inst|Add0~7\ = CARRY((\decoder_inst|alu_b[3]~_Duplicate_1_q\ & (!\decoder_inst|alu_a\(3) & !\alu_inst|Add0~5\)) # (!\decoder_inst|alu_b[3]~_Duplicate_1_q\ & ((!\alu_inst|Add0~5\) # (!\decoder_inst|alu_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[3]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(3),
	datad => VCC,
	cin => \alu_inst|Add0~5\,
	combout => \alu_inst|Add0~6_combout\,
	cout => \alu_inst|Add0~7\);

-- Location: LCCOMB_X50_Y29_N24
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

-- Location: LCCOMB_X50_Y29_N26
\alu_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~10_combout\ = (\decoder_inst|alu_a\(5) & ((\decoder_inst|alu_b[5]~_Duplicate_1_q\ & (\alu_inst|Add0~9\ & VCC)) # (!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & (!\alu_inst|Add0~9\)))) # (!\decoder_inst|alu_a\(5) & 
-- ((\decoder_inst|alu_b[5]~_Duplicate_1_q\ & (!\alu_inst|Add0~9\)) # (!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & ((\alu_inst|Add0~9\) # (GND)))))
-- \alu_inst|Add0~11\ = CARRY((\decoder_inst|alu_a\(5) & (!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & !\alu_inst|Add0~9\)) # (!\decoder_inst|alu_a\(5) & ((!\alu_inst|Add0~9\) # (!\decoder_inst|alu_b[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(5),
	datab => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu_inst|Add0~9\,
	combout => \alu_inst|Add0~10_combout\,
	cout => \alu_inst|Add0~11\);

-- Location: LCCOMB_X50_Y29_N28
\alu_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~12_combout\ = ((\decoder_inst|alu_b[6]~_Duplicate_1_q\ $ (\decoder_inst|alu_a\(6) $ (!\alu_inst|Add0~11\)))) # (GND)
-- \alu_inst|Add0~13\ = CARRY((\decoder_inst|alu_b[6]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(6)) # (!\alu_inst|Add0~11\))) # (!\decoder_inst|alu_b[6]~_Duplicate_1_q\ & (\decoder_inst|alu_a\(6) & !\alu_inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(6),
	datad => VCC,
	cin => \alu_inst|Add0~11\,
	combout => \alu_inst|Add0~12_combout\,
	cout => \alu_inst|Add0~13\);

-- Location: LCCOMB_X54_Y29_N10
\alu_inst|Div0|auto_generated|divider|diff_signs\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|diff_signs~combout\ = \decoder_inst|alu_b[7]~_Duplicate_1_q\ $ (\decoder_inst|alu_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_a\(7),
	combout => \alu_inst|Div0|auto_generated|divider|diff_signs~combout\);

-- Location: LCCOMB_X49_Y29_N6
\alu_inst|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~4_combout\ = (\decoder_inst|alu_sel\(0) & (((\decoder_inst|alu_sel\(1) & \alu_inst|Div0|auto_generated|divider|diff_signs~combout\)))) # (!\decoder_inst|alu_sel\(0) & ((\alu_inst|Add0~12_combout\) # ((\decoder_inst|alu_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \alu_inst|Add0~12_combout\,
	datac => \decoder_inst|alu_sel\(1),
	datad => \alu_inst|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \alu_inst|Mux9~4_combout\);

-- Location: FF_X49_Y29_N7
\alu_inst|result[6]_OTERM29_NEW_REG100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux9~4_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM29_OTERM101\);

-- Location: LCCOMB_X47_Y29_N16
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\ = \decoder_inst|alu_b[1]_OTERM51\ $ (((\decoder_inst|alu_b[7]_OTERM47\ & \decoder_inst|alu_b[0]_OTERM49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_b[7]_OTERM47\,
	datac => \decoder_inst|alu_b[0]_OTERM49\,
	datad => \decoder_inst|alu_b[1]_OTERM51\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\);

-- Location: FF_X56_Y29_N31
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_NEW_REG118\ : dffeas
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
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\);

-- Location: LCCOMB_X56_Y31_N4
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~0_combout\ = (\decoder_inst|alu_a[7]~22_combout\ & (!\decoder_inst|alu_a[6]~20_combout\ & (!\decoder_inst|alu_a[4]~16_combout\ & !\decoder_inst|alu_a[3]~13_combout\))) # 
-- (!\decoder_inst|alu_a[7]~22_combout\ & (\decoder_inst|alu_a[6]~20_combout\ & (\decoder_inst|alu_a[4]~16_combout\ & \decoder_inst|alu_a[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[7]~22_combout\,
	datab => \decoder_inst|alu_a[6]~20_combout\,
	datac => \decoder_inst|alu_a[4]~16_combout\,
	datad => \decoder_inst|alu_a[3]~13_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~0_combout\);

-- Location: LCCOMB_X56_Y31_N22
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~0_combout\ & (\alu_inst|Equal1~0_combout\ & (\decoder_inst|alu_a[4]~16_combout\ $ (!\decoder_inst|alu_a[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[4]~16_combout\,
	datab => \decoder_inst|alu_a[5]~18_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~0_combout\,
	datad => \alu_inst|Equal1~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\);

-- Location: FF_X57_Y29_N23
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_NEW_REG44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_NEW_REG44_OTERM193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_OTERM45\);

-- Location: LCCOMB_X57_Y29_N22
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_NEW_REG44_NEW192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_NEW_REG44_OTERM193\ = (\decoder_inst|alu_a[0]~4_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\)) # (!\decoder_inst|alu_a[0]~4_combout\ & 
-- ((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_OTERM45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_OTERM45\,
	datad => \decoder_inst|alu_a[0]~4_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_NEW_REG44_OTERM193\);

-- Location: LCCOMB_X47_Y29_N18
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ = \decoder_inst|alu_b[2]_OTERM53\ $ (((\decoder_inst|alu_b[7]_OTERM47\ & ((\decoder_inst|alu_b[1]_OTERM51\) # (\decoder_inst|alu_b[0]_OTERM49\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[2]_OTERM53\,
	datab => \decoder_inst|alu_b[1]_OTERM51\,
	datac => \decoder_inst|alu_b[0]_OTERM49\,
	datad => \decoder_inst|alu_b[7]_OTERM47\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\);

-- Location: LCCOMB_X56_Y29_N30
\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0181_combout\ = (\decoder_inst|alu_b[0]_OTERM49\ & (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ & (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\ 
-- & !\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]_OTERM49\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0181_combout\);

-- Location: LCCOMB_X47_Y29_N10
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ = (!\decoder_inst|alu_b[2]_OTERM53\ & (!\decoder_inst|alu_b[1]_OTERM51\ & (!\decoder_inst|alu_b[0]_OTERM49\ & \decoder_inst|alu_b[7]_OTERM47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[2]_OTERM53\,
	datab => \decoder_inst|alu_b[1]_OTERM51\,
	datac => \decoder_inst|alu_b[0]_OTERM49\,
	datad => \decoder_inst|alu_b[7]_OTERM47\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\);

-- Location: LCCOMB_X55_Y29_N6
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & ((\decoder_inst|alu_b[3]_OTERM129\ & (\decoder_inst|alu_b[4]_OTERM131\ & !\decoder_inst|alu_b[7]_OTERM47\)) # 
-- (!\decoder_inst|alu_b[3]_OTERM129\ & (!\decoder_inst|alu_b[4]_OTERM131\ & \decoder_inst|alu_b[7]_OTERM47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[3]_OTERM129\,
	datab => \decoder_inst|alu_b[4]_OTERM131\,
	datac => \decoder_inst|alu_b[7]_OTERM47\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\);

-- Location: LCCOMB_X55_Y29_N2
\alu_inst|Div0|auto_generated|divider|divider|sel[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(4) = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\) # ((\decoder_inst|alu_b[6]_OTERM127\ & ((!\decoder_inst|alu_b[7]_OTERM47\) # (!\decoder_inst|alu_b[5]_OTERM125\))) # 
-- (!\decoder_inst|alu_b[6]_OTERM127\ & ((\decoder_inst|alu_b[5]_OTERM125\) # (\decoder_inst|alu_b[7]_OTERM47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[6]_OTERM127\,
	datab => \decoder_inst|alu_b[5]_OTERM125\,
	datac => \decoder_inst|alu_b[7]_OTERM47\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(4));

-- Location: LCCOMB_X55_Y29_N28
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ = \decoder_inst|alu_b[4]_OTERM131\ $ (((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & (\decoder_inst|alu_b[3]_OTERM129\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & ((\decoder_inst|alu_b[7]_OTERM47\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[3]_OTERM129\,
	datab => \decoder_inst|alu_b[4]_OTERM131\,
	datac => \decoder_inst|alu_b[7]_OTERM47\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\);

-- Location: LCCOMB_X57_Y29_N20
\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_NEW_REG44_OTERM193\ & (((\alu_inst|Div0|auto_generated|divider|divider|sel\(4)) # 
-- (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_NEW_REG44_OTERM193\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~0_RTM0181_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|sel\(4),
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\);

-- Location: FF_X56_Y29_N19
\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_NEW_REG194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_OTERM195\);

-- Location: LCCOMB_X56_Y31_N2
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~2_combout\ = (\alu_inst|Equal1~0_combout\ & ((\decoder_inst|alu_a[7]~22_combout\ & (!\decoder_inst|alu_a[3]~13_combout\ & !\decoder_inst|alu_a[4]~16_combout\)) # (!\decoder_inst|alu_a[7]~22_combout\ 
-- & (\decoder_inst|alu_a[3]~13_combout\ & \decoder_inst|alu_a[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[7]~22_combout\,
	datab => \decoder_inst|alu_a[3]~13_combout\,
	datac => \decoder_inst|alu_a[4]~16_combout\,
	datad => \alu_inst|Equal1~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~2_combout\);

-- Location: LCCOMB_X56_Y31_N20
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ = \decoder_inst|alu_a[6]~20_combout\ $ (((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~2_combout\ & ((\decoder_inst|alu_a[5]~18_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~2_combout\ & (\decoder_inst|alu_a[7]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[7]~22_combout\,
	datab => \decoder_inst|alu_a[5]~18_combout\,
	datac => \decoder_inst|alu_a[6]~20_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~2_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\);

-- Location: LCCOMB_X56_Y29_N24
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_NEW_REG40_NEW56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_NEW_REG40_OTERM57\ = (\decoder_inst|alu_a[0]~4_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\))) # (!\decoder_inst|alu_a[0]~4_combout\ & 
-- (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_OTERM41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[0]~4_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_OTERM41\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_NEW_REG40_OTERM57\);

-- Location: FF_X56_Y29_N5
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_NEW_REG40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_NEW_REG40_OTERM57\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_OTERM41\);

-- Location: LCCOMB_X56_Y29_N18
\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_OTERM195\ & 
-- ((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_OTERM41\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\)))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & 
-- (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_OTERM195\) # (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_OTERM41\)) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_OTERM195\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_OTERM41\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

-- Location: LCCOMB_X55_Y29_N4
\alu_inst|Div0|auto_generated|divider|divider|sel[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\ = \decoder_inst|alu_b[4]_OTERM131\ $ (((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & (\decoder_inst|alu_b[3]_OTERM129\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & ((\decoder_inst|alu_b[5]_OTERM125\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[3]_OTERM129\,
	datab => \decoder_inst|alu_b[4]_OTERM131\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	datad => \decoder_inst|alu_b[5]_OTERM125\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\);

-- Location: LCCOMB_X55_Y29_N30
\alu_inst|Div0|auto_generated|divider|divider|sel[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel[1]~3_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\) # ((\decoder_inst|alu_b[7]_OTERM47\ & ((!\decoder_inst|alu_b[6]_OTERM127\) # (!\decoder_inst|alu_b[5]_OTERM125\))) # 
-- (!\decoder_inst|alu_b[7]_OTERM47\ & ((\decoder_inst|alu_b[5]_OTERM125\) # (\decoder_inst|alu_b[6]_OTERM127\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[7]_OTERM47\,
	datab => \decoder_inst|alu_b[5]_OTERM125\,
	datac => \decoder_inst|alu_b[6]_OTERM127\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel[1]~3_combout\);

-- Location: LCCOMB_X56_Y29_N22
\alu_inst|Div0|auto_generated|divider|divider|sel[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(1) = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\) # ((\alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\) # 
-- ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\) # (\alu_inst|Div0|auto_generated|divider|divider|sel[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[1]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|sel[1]~3_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(1));

-- Location: FF_X56_Y29_N23
\alu_inst|Div0|auto_generated|divider|divider|sel[1]_NEW_REG188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|sel\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\);

-- Location: FF_X56_Y29_N21
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_NEW_REG116\ : dffeas
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
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\);

-- Location: LCCOMB_X56_Y29_N20
\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0123_combout\ = (!\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_NEW_REG40_OTERM57\ & \decoder_inst|alu_b[0]_OTERM49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_NEW_REG40_OTERM57\,
	datad => \decoder_inst|alu_b[0]_OTERM49\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0123_combout\);

-- Location: LCCOMB_X56_Y29_N28
\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|sel\(1)) # 
-- (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\ $ (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(1),
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[0]~1_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_RTM0123_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_combout\);

-- Location: FF_X56_Y29_N29
\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_NEW_REG196\ : dffeas
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
	q => \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM197\);

-- Location: LCCOMB_X56_Y29_N4
\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_OTERM41\ $ (((!\alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\ & (\decoder_inst|alu_b[0]~_Duplicate_1_q\ & 
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_OTERM41\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\);

-- Location: LCCOMB_X56_Y31_N26
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ = \decoder_inst|alu_a[7]~22_combout\ $ (\decoder_inst|alu_a[5]~18_combout\ $ (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[7]~22_combout\,
	datac => \decoder_inst|alu_a[5]~18_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~2_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\);

-- Location: LCCOMB_X56_Y29_N2
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_NEW_REG42_NEW54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_NEW_REG42_OTERM55\ = (\decoder_inst|alu_a[0]~4_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\)) # (!\decoder_inst|alu_a[0]~4_combout\ & 
-- ((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_OTERM43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_OTERM43\,
	datad => \decoder_inst|alu_a[0]~4_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_NEW_REG42_OTERM55\);

-- Location: FF_X56_Y29_N3
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_NEW_REG42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_NEW_REG42_OTERM55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_OTERM43\);

-- Location: LCCOMB_X56_Y29_N8
\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_OTERM43\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_OTERM43\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X56_Y29_N10
\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X56_Y29_N12
\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM197\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM197\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM197\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM197\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X56_Y29_N14
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

-- Location: LCCOMB_X57_Y29_N26
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173feeder_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173feeder_combout\);

-- Location: FF_X57_Y29_N27
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_NEW_REG172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\);

-- Location: FF_X57_Y29_N21
\alu_inst|Div0|auto_generated|divider|divider|sel[4]_NEW_REG186\ : dffeas
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
	q => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\);

-- Location: LCCOMB_X57_Y29_N18
\alu_inst|Div0|auto_generated|divider|divider|sel[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(3) = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\) # (\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(3));

-- Location: LCCOMB_X57_Y29_N24
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175feeder_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175feeder_combout\);

-- Location: FF_X57_Y29_N25
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_NEW_REG174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\);

-- Location: LCCOMB_X56_Y29_N0
\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X56_Y29_N6
\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_OTERM43\ $ (((!\alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & \decoder_inst|alu_b[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_OTERM43\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X57_Y31_N26
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ = \decoder_inst|alu_a\(4) $ (((\alu_inst|Equal1~0_OTERM35\ & ((\decoder_inst|alu_a\(3)))) # (!\alu_inst|Equal1~0_OTERM35\ & (\decoder_inst|alu_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(4),
	datab => \decoder_inst|alu_a\(7),
	datac => \alu_inst|Equal1~0_OTERM35\,
	datad => \decoder_inst|alu_a\(3),
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\);

-- Location: LCCOMB_X57_Y29_N0
\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X57_Y29_N2
\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X57_Y29_N4
\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ $ (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\))) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ & (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X57_Y29_N6
\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X57_Y29_N16
\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\);

-- Location: LCCOMB_X57_Y29_N30
\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\);

-- Location: LCCOMB_X57_Y29_N10
\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(3) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\);

-- Location: LCCOMB_X57_Y29_N28
\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ $ (((\decoder_inst|alu_b[0]~_Duplicate_1_q\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & !\alu_inst|Div0|auto_generated|divider|divider|sel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\);

-- Location: LCCOMB_X57_Y31_N20
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ = \decoder_inst|alu_a\(3) $ (\alu_inst|Equal1~0_OTERM35\ $ (\decoder_inst|alu_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(3),
	datac => \alu_inst|Equal1~0_OTERM35\,
	datad => \decoder_inst|alu_a\(7),
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\);

-- Location: LCCOMB_X57_Y28_N0
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X57_Y28_N2
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X57_Y28_N4
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X57_Y28_N6
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X57_Y28_N8
\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X57_Y28_N10
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

-- Location: FF_X55_Y29_N7
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_NEW_REG170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\);

-- Location: LCCOMB_X54_Y29_N8
\alu_inst|Div0|auto_generated|divider|divider|sel[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(5) = (\decoder_inst|alu_b[7]~_Duplicate_1_q\ & (((!\decoder_inst|alu_b[5]~_Duplicate_1_q\ & \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\)) # 
-- (!\decoder_inst|alu_b[6]~_Duplicate_1_q\))) # (!\decoder_inst|alu_b[7]~_Duplicate_1_q\ & ((\decoder_inst|alu_b[6]~_Duplicate_1_q\) # ((\decoder_inst|alu_b[5]~_Duplicate_1_q\ & \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(5));

-- Location: LCCOMB_X54_Y29_N30
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ = \decoder_inst|alu_b[5]~_Duplicate_1_q\ $ (\decoder_inst|alu_b[7]~_Duplicate_1_q\ $ (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\);

-- Location: LCCOMB_X56_Y28_N4
\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\);

-- Location: LCCOMB_X57_Y28_N14
\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LCCOMB_X57_Y28_N12
\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\);

-- Location: LCCOMB_X57_Y28_N30
\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\);

-- Location: LCCOMB_X56_Y28_N2
\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ $ (((\decoder_inst|alu_b[0]~_Duplicate_1_q\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & !\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\);

-- Location: LCCOMB_X56_Y31_N28
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\ = \decoder_inst|alu_a\(2) $ (((\decoder_inst|alu_a\(7) & ((\decoder_inst|alu_a\(0)) # (\decoder_inst|alu_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(0),
	datab => \decoder_inst|alu_a\(2),
	datac => \decoder_inst|alu_a\(1),
	datad => \decoder_inst|alu_a\(7),
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\);

-- Location: LCCOMB_X57_Y28_N16
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X57_Y28_N18
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X57_Y28_N20
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ $ (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\))) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ & (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X57_Y28_N22
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X57_Y28_N24
\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X57_Y28_N26
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

-- Location: LCCOMB_X57_Y28_N28
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

-- Location: LCCOMB_X56_Y28_N30
\alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[45]~16_combout\);

-- Location: LCCOMB_X54_Y29_N16
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ = \decoder_inst|alu_b[6]~_Duplicate_1_q\ $ (((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\ & ((\decoder_inst|alu_b[5]~_Duplicate_1_q\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\ & (\decoder_inst|alu_b[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\,
	datab => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\);

-- Location: LCCOMB_X55_Y28_N8
\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\);

-- Location: LCCOMB_X56_Y28_N24
\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\);

-- Location: LCCOMB_X55_Y28_N30
\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\);

-- Location: LCCOMB_X56_Y28_N0
\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\);

-- Location: LCCOMB_X55_Y28_N10
\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\ $ (((!\alu_inst|Div0|auto_generated|divider|divider|sel\(5) & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & \decoder_inst|alu_b[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\);

-- Location: LCCOMB_X56_Y31_N14
\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ = \decoder_inst|alu_a\(1) $ (((\decoder_inst|alu_a\(7) & \decoder_inst|alu_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(7),
	datac => \decoder_inst|alu_a\(1),
	datad => \decoder_inst|alu_a\(0),
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\);

-- Location: LCCOMB_X55_Y28_N12
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X55_Y28_N14
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X55_Y28_N16
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X55_Y28_N18
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X55_Y28_N20
\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ $ (\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ $ 
-- (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X55_Y28_N22
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

-- Location: LCCOMB_X55_Y28_N24
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

-- Location: LCCOMB_X55_Y28_N26
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

-- Location: LCCOMB_X54_Y29_N22
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\ & ((\decoder_inst|alu_b[6]~_Duplicate_1_q\ & (!\decoder_inst|alu_b[7]~_Duplicate_1_q\ & 
-- \decoder_inst|alu_b[5]~_Duplicate_1_q\)) # (!\decoder_inst|alu_b[6]~_Duplicate_1_q\ & (\decoder_inst|alu_b[7]~_Duplicate_1_q\ & !\decoder_inst|alu_b[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_OTERM171\,
	datab => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datac => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[5]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\);

-- Location: LCCOMB_X56_Y28_N28
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

-- Location: LCCOMB_X55_Y28_N4
\alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[53]~23_combout\);

-- Location: LCCOMB_X55_Y28_N28
\alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[52]~24_combout\);

-- Location: LCCOMB_X55_Y28_N2
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

-- Location: LCCOMB_X56_Y28_N26
\alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\);

-- Location: LCCOMB_X55_Y28_N0
\alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\);

-- Location: LCCOMB_X55_Y28_N6
\alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ = \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ $ (((!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & \decoder_inst|alu_b[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\);

-- Location: LCCOMB_X56_Y28_N6
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

-- Location: LCCOMB_X56_Y28_N8
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\))) # (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\ & (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[1]~4_OTERM119\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[48]~28_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X56_Y28_N10
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\))) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ & (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[49]~27_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_OTERM117\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X56_Y28_N12
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ & (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[50]~26_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_OTERM175\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X56_Y28_N14
\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ & ((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\))) # (!\alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ & (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\ & 
-- !\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|StageOut[51]~25_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_OTERM173\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X56_Y28_N16
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

-- Location: LCCOMB_X56_Y28_N18
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

-- Location: LCCOMB_X56_Y28_N20
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

-- Location: LCCOMB_X56_Y28_N22
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

-- Location: LCCOMB_X55_Y29_N12
\alu_inst|Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~1\ = CARRY(\alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => VCC,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X55_Y29_N14
\alu_inst|Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~2_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((!\alu_inst|Div0|auto_generated|divider|op_1~1\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (!\alu_inst|Div0|auto_generated|divider|op_1~1\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu_inst|Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~3\ = CARRY(((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & !\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~1\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X55_Y29_N16
\alu_inst|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~4_combout\ = (\alu_inst|Div0|auto_generated|divider|op_1~3\ & (((\alu_inst|Div0|auto_generated|divider|divider|sel\(5)) # (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|op_1~3\ & ((((\alu_inst|Div0|auto_generated|divider|divider|sel\(5)) # (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~5\ = CARRY((!\alu_inst|Div0|auto_generated|divider|op_1~3\ & ((\alu_inst|Div0|auto_generated|divider|divider|sel\(5)) # (\alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~3\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X55_Y29_N18
\alu_inst|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~6_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((!\alu_inst|Div0|auto_generated|divider|op_1~5\)))) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & (!\alu_inst|Div0|auto_generated|divider|op_1~5\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\ & ((\alu_inst|Div0|auto_generated|divider|op_1~5\) # (GND)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~7\ = CARRY(((!\alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & !\alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~5\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X55_Y29_N20
\alu_inst|Div0|auto_generated|divider|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~8_combout\ = (\alu_inst|Div0|auto_generated|divider|op_1~7\ & (((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\alu_inst|Div0|auto_generated|divider|divider|sel\(3))))) # 
-- (!\alu_inst|Div0|auto_generated|divider|op_1~7\ & ((((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\alu_inst|Div0|auto_generated|divider|divider|sel\(3))))))
-- \alu_inst|Div0|auto_generated|divider|op_1~9\ = CARRY((!\alu_inst|Div0|auto_generated|divider|op_1~7\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\alu_inst|Div0|auto_generated|divider|divider|sel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(3),
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~7\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X55_Y29_N22
\alu_inst|Div0|auto_generated|divider|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~10_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\ & (((!\alu_inst|Div0|auto_generated|divider|op_1~9\)))) # (!\alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\ & 
-- ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (!\alu_inst|Div0|auto_generated|divider|op_1~9\)) # (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\alu_inst|Div0|auto_generated|divider|op_1~9\) # (GND)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~11\ = CARRY(((!\alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\ & !\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~9\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~10_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X55_Y29_N24
\alu_inst|Div0|auto_generated|divider|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~12_combout\ = (\alu_inst|Div0|auto_generated|divider|op_1~11\ & (((\alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # (!\alu_inst|Div0|auto_generated|divider|op_1~11\ & ((((\alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \alu_inst|Div0|auto_generated|divider|op_1~13\ = CARRY((!\alu_inst|Div0|auto_generated|divider|op_1~11\ & ((\alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\,
	datad => VCC,
	cin => \alu_inst|Div0|auto_generated|divider|op_1~11\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~12_combout\,
	cout => \alu_inst|Div0|auto_generated|divider|op_1~13\);

-- Location: FF_X55_Y29_N25
\alu_inst|result[6]_OTERM29_NEW_REG98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|op_1~12_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM29_OTERM99\);

-- Location: LCCOMB_X50_Y29_N0
\alu_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~0_combout\ = (\decoder_inst|alu_b[0]~_Duplicate_1_q\ & (\decoder_inst|alu_a\(0) $ (VCC))) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(0)) # (GND)))
-- \alu_inst|Add1~1\ = CARRY((\decoder_inst|alu_a\(0)) # (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(0),
	datad => VCC,
	combout => \alu_inst|Add1~0_combout\,
	cout => \alu_inst|Add1~1\);

-- Location: LCCOMB_X50_Y29_N2
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

-- Location: LCCOMB_X50_Y29_N4
\alu_inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~4_combout\ = ((\decoder_inst|alu_b[2]~_Duplicate_1_q\ $ (\decoder_inst|alu_a\(2) $ (\alu_inst|Add1~3\)))) # (GND)
-- \alu_inst|Add1~5\ = CARRY((\decoder_inst|alu_b[2]~_Duplicate_1_q\ & (\decoder_inst|alu_a\(2) & !\alu_inst|Add1~3\)) # (!\decoder_inst|alu_b[2]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(2)) # (!\alu_inst|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[2]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(2),
	datad => VCC,
	cin => \alu_inst|Add1~3\,
	combout => \alu_inst|Add1~4_combout\,
	cout => \alu_inst|Add1~5\);

-- Location: LCCOMB_X50_Y29_N6
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

-- Location: LCCOMB_X50_Y29_N8
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

-- Location: LCCOMB_X50_Y29_N10
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

-- Location: LCCOMB_X50_Y29_N12
\alu_inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add1~12_combout\ = ((\decoder_inst|alu_b[6]~_Duplicate_1_q\ $ (\decoder_inst|alu_a\(6) $ (\alu_inst|Add1~11\)))) # (GND)
-- \alu_inst|Add1~13\ = CARRY((\decoder_inst|alu_b[6]~_Duplicate_1_q\ & (\decoder_inst|alu_a\(6) & !\alu_inst|Add1~11\)) # (!\decoder_inst|alu_b[6]~_Duplicate_1_q\ & ((\decoder_inst|alu_a\(6)) # (!\alu_inst|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[6]~_Duplicate_1_q\,
	datab => \decoder_inst|alu_a\(6),
	datad => VCC,
	cin => \alu_inst|Add1~11\,
	combout => \alu_inst|Add1~12_combout\,
	cout => \alu_inst|Add1~13\);

-- Location: LCCOMB_X54_Y29_N20
\alu_inst|Mux9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~9_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\ & (\decoder_inst|alu_a\(7) $ ((\decoder_inst|alu_b[7]~_Duplicate_1_q\)))) # (!\alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\ & 
-- ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\) # (\decoder_inst|alu_a\(7) $ (\decoder_inst|alu_b[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(7),
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\,
	datac => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	combout => \alu_inst|Mux9~9_combout\);

-- Location: LCCOMB_X49_Y29_N8
\alu_inst|Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~6_combout\ = (\decoder_inst|alu_sel\(0) & ((\decoder_inst|alu_sel\(1) & ((\alu_inst|Mux9~9_combout\))) # (!\decoder_inst|alu_sel\(1) & (\alu_inst|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \decoder_inst|alu_sel\(1),
	datac => \alu_inst|Add1~12_combout\,
	datad => \alu_inst|Mux9~9_combout\,
	combout => \alu_inst|Mux9~6_combout\);

-- Location: FF_X49_Y29_N9
\alu_inst|result[6]_OTERM29_NEW_REG104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux9~6_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM29_OTERM105\);

-- Location: DSPMULT_X48_Y29_N0
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

-- Location: DSPOUT_X48_Y29_N2
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

-- Location: LCCOMB_X49_Y29_N16
\alu_inst|Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~5_combout\ = (\alu_inst|Mux9~4_combout\ & ((\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\decoder_inst|alu_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Mux9~4_combout\,
	datac => \decoder_inst|alu_sel\(1),
	datad => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \alu_inst|Mux9~5_combout\);

-- Location: FF_X49_Y29_N17
\alu_inst|result[6]_OTERM29_NEW_REG102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux9~5_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM29_OTERM103\);

-- Location: LCCOMB_X49_Y29_N4
\alu_inst|Mux9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~7_combout\ = (\alu_inst|result[6]_OTERM29_OTERM105\ & (((\alu_inst|result[6]_OTERM29_OTERM99\)) # (!\alu_inst|result[6]_OTERM29_OTERM101\))) # (!\alu_inst|result[6]_OTERM29_OTERM105\ & (\alu_inst|result[6]_OTERM29_OTERM103\ & 
-- ((\alu_inst|result[6]_OTERM29_OTERM101\) # (\alu_inst|result[6]_OTERM29_OTERM99\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[6]_OTERM29_OTERM101\,
	datab => \alu_inst|result[6]_OTERM29_OTERM99\,
	datac => \alu_inst|result[6]_OTERM29_OTERM105\,
	datad => \alu_inst|result[6]_OTERM29_OTERM103\,
	combout => \alu_inst|Mux9~7_combout\);

-- Location: LCCOMB_X52_Y30_N22
\alu_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Equal0~0_combout\ = (\decoder_inst|alu_a\(0) & (\decoder_inst|alu_a\(2) & (\decoder_inst|alu_a\(3) & \decoder_inst|alu_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(0),
	datab => \decoder_inst|alu_a\(2),
	datac => \decoder_inst|alu_a\(3),
	datad => \decoder_inst|alu_a\(1),
	combout => \alu_inst|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y30_N0
\alu_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Equal0~1_combout\ = (!\decoder_inst|alu_a\(7) & (\decoder_inst|alu_a\(4) & (\decoder_inst|alu_a\(6) & \decoder_inst|alu_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(7),
	datab => \decoder_inst|alu_a\(4),
	datac => \decoder_inst|alu_a\(6),
	datad => \decoder_inst|alu_a\(5),
	combout => \alu_inst|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y30_N0
\alu_inst|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~1\ = CARRY(\decoder_inst|alu_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(0),
	datad => VCC,
	cout => \alu_inst|Add2~1\);

-- Location: LCCOMB_X52_Y30_N2
\alu_inst|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~2_combout\ = (\decoder_inst|alu_a\(1) & (!\alu_inst|Add2~1\)) # (!\decoder_inst|alu_a\(1) & ((\alu_inst|Add2~1\) # (GND)))
-- \alu_inst|Add2~3\ = CARRY((!\alu_inst|Add2~1\) # (!\decoder_inst|alu_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(1),
	datad => VCC,
	cin => \alu_inst|Add2~1\,
	combout => \alu_inst|Add2~2_combout\,
	cout => \alu_inst|Add2~3\);

-- Location: LCCOMB_X52_Y30_N4
\alu_inst|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~4_combout\ = (\decoder_inst|alu_a\(2) & (\alu_inst|Add2~3\ $ (GND))) # (!\decoder_inst|alu_a\(2) & (!\alu_inst|Add2~3\ & VCC))
-- \alu_inst|Add2~5\ = CARRY((\decoder_inst|alu_a\(2) & !\alu_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(2),
	datad => VCC,
	cin => \alu_inst|Add2~3\,
	combout => \alu_inst|Add2~4_combout\,
	cout => \alu_inst|Add2~5\);

-- Location: LCCOMB_X52_Y30_N6
\alu_inst|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~6_combout\ = (\decoder_inst|alu_a\(3) & (!\alu_inst|Add2~5\)) # (!\decoder_inst|alu_a\(3) & ((\alu_inst|Add2~5\) # (GND)))
-- \alu_inst|Add2~7\ = CARRY((!\alu_inst|Add2~5\) # (!\decoder_inst|alu_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(3),
	datad => VCC,
	cin => \alu_inst|Add2~5\,
	combout => \alu_inst|Add2~6_combout\,
	cout => \alu_inst|Add2~7\);

-- Location: LCCOMB_X52_Y30_N8
\alu_inst|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~8_combout\ = (\decoder_inst|alu_a\(4) & (\alu_inst|Add2~7\ $ (GND))) # (!\decoder_inst|alu_a\(4) & (!\alu_inst|Add2~7\ & VCC))
-- \alu_inst|Add2~9\ = CARRY((\decoder_inst|alu_a\(4) & !\alu_inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(4),
	datad => VCC,
	cin => \alu_inst|Add2~7\,
	combout => \alu_inst|Add2~8_combout\,
	cout => \alu_inst|Add2~9\);

-- Location: LCCOMB_X52_Y30_N10
\alu_inst|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~10_combout\ = (\decoder_inst|alu_a\(5) & (!\alu_inst|Add2~9\)) # (!\decoder_inst|alu_a\(5) & ((\alu_inst|Add2~9\) # (GND)))
-- \alu_inst|Add2~11\ = CARRY((!\alu_inst|Add2~9\) # (!\decoder_inst|alu_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(5),
	datad => VCC,
	cin => \alu_inst|Add2~9\,
	combout => \alu_inst|Add2~10_combout\,
	cout => \alu_inst|Add2~11\);

-- Location: LCCOMB_X52_Y30_N12
\alu_inst|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~12_combout\ = (\decoder_inst|alu_a\(6) & (\alu_inst|Add2~11\ $ (GND))) # (!\decoder_inst|alu_a\(6) & (!\alu_inst|Add2~11\ & VCC))
-- \alu_inst|Add2~13\ = CARRY((\decoder_inst|alu_a\(6) & !\alu_inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(6),
	datad => VCC,
	cin => \alu_inst|Add2~11\,
	combout => \alu_inst|Add2~12_combout\,
	cout => \alu_inst|Add2~13\);

-- Location: LCCOMB_X54_Y30_N20
\alu_inst|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~18_combout\ = (\alu_inst|Add2~12_combout\) # ((\alu_inst|Equal0~0_combout\ & \alu_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal0~0_combout\,
	datab => \alu_inst|Equal0~1_combout\,
	datad => \alu_inst|Add2~12_combout\,
	combout => \alu_inst|Add2~18_combout\);

-- Location: LCCOMB_X55_Y30_N8
\alu_inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Equal1~1_combout\ = (!\decoder_inst|alu_a\(6) & (!\decoder_inst|alu_a\(3) & (!\decoder_inst|alu_a\(4) & !\decoder_inst|alu_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(6),
	datab => \decoder_inst|alu_a\(3),
	datac => \decoder_inst|alu_a\(4),
	datad => \decoder_inst|alu_a\(5),
	combout => \alu_inst|Equal1~1_combout\);

-- Location: LCCOMB_X55_Y30_N16
\alu_inst|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~1\ = CARRY(\decoder_inst|alu_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(0),
	datad => VCC,
	cout => \alu_inst|Add3~1\);

-- Location: LCCOMB_X55_Y30_N18
\alu_inst|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~2_combout\ = (\decoder_inst|alu_a\(1) & (\alu_inst|Add3~1\ & VCC)) # (!\decoder_inst|alu_a\(1) & (!\alu_inst|Add3~1\))
-- \alu_inst|Add3~3\ = CARRY((!\decoder_inst|alu_a\(1) & !\alu_inst|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(1),
	datad => VCC,
	cin => \alu_inst|Add3~1\,
	combout => \alu_inst|Add3~2_combout\,
	cout => \alu_inst|Add3~3\);

-- Location: LCCOMB_X55_Y30_N20
\alu_inst|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~4_combout\ = (\decoder_inst|alu_a\(2) & ((GND) # (!\alu_inst|Add3~3\))) # (!\decoder_inst|alu_a\(2) & (\alu_inst|Add3~3\ $ (GND)))
-- \alu_inst|Add3~5\ = CARRY((\decoder_inst|alu_a\(2)) # (!\alu_inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(2),
	datad => VCC,
	cin => \alu_inst|Add3~3\,
	combout => \alu_inst|Add3~4_combout\,
	cout => \alu_inst|Add3~5\);

-- Location: LCCOMB_X55_Y30_N22
\alu_inst|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~6_combout\ = (\decoder_inst|alu_a\(3) & (\alu_inst|Add3~5\ & VCC)) # (!\decoder_inst|alu_a\(3) & (!\alu_inst|Add3~5\))
-- \alu_inst|Add3~7\ = CARRY((!\decoder_inst|alu_a\(3) & !\alu_inst|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(3),
	datad => VCC,
	cin => \alu_inst|Add3~5\,
	combout => \alu_inst|Add3~6_combout\,
	cout => \alu_inst|Add3~7\);

-- Location: LCCOMB_X55_Y30_N24
\alu_inst|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~8_combout\ = (\decoder_inst|alu_a\(4) & ((GND) # (!\alu_inst|Add3~7\))) # (!\decoder_inst|alu_a\(4) & (\alu_inst|Add3~7\ $ (GND)))
-- \alu_inst|Add3~9\ = CARRY((\decoder_inst|alu_a\(4)) # (!\alu_inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(4),
	datad => VCC,
	cin => \alu_inst|Add3~7\,
	combout => \alu_inst|Add3~8_combout\,
	cout => \alu_inst|Add3~9\);

-- Location: LCCOMB_X55_Y30_N26
\alu_inst|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~10_combout\ = (\decoder_inst|alu_a\(5) & (\alu_inst|Add3~9\ & VCC)) # (!\decoder_inst|alu_a\(5) & (!\alu_inst|Add3~9\))
-- \alu_inst|Add3~11\ = CARRY((!\decoder_inst|alu_a\(5) & !\alu_inst|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(5),
	datad => VCC,
	cin => \alu_inst|Add3~9\,
	combout => \alu_inst|Add3~10_combout\,
	cout => \alu_inst|Add3~11\);

-- Location: LCCOMB_X55_Y30_N28
\alu_inst|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~12_combout\ = (\decoder_inst|alu_a\(6) & ((GND) # (!\alu_inst|Add3~11\))) # (!\decoder_inst|alu_a\(6) & (\alu_inst|Add3~11\ $ (GND)))
-- \alu_inst|Add3~13\ = CARRY((\decoder_inst|alu_a\(6)) # (!\alu_inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_a\(6),
	datad => VCC,
	cin => \alu_inst|Add3~11\,
	combout => \alu_inst|Add3~12_combout\,
	cout => \alu_inst|Add3~13\);

-- Location: LCCOMB_X54_Y30_N28
\alu_inst|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~18_combout\ = (\alu_inst|Add3~12_combout\ & ((!\alu_inst|Equal1~1_combout\) # (!\alu_inst|Equal1~0_OTERM35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal1~0_OTERM35\,
	datab => \alu_inst|Equal1~1_combout\,
	datac => \alu_inst|Add3~12_combout\,
	combout => \alu_inst|Add3~18_combout\);

-- Location: LCCOMB_X54_Y30_N8
\alu_inst|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~2_combout\ = (\decoder_inst|alu_sel\(0) & (((\decoder_inst|alu_sel\(1)) # (\alu_inst|Add3~18_combout\)))) # (!\decoder_inst|alu_sel\(0) & (\alu_inst|Add2~18_combout\ & (!\decoder_inst|alu_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \alu_inst|Add2~18_combout\,
	datac => \decoder_inst|alu_sel\(1),
	datad => \alu_inst|Add3~18_combout\,
	combout => \alu_inst|Mux9~2_combout\);

-- Location: LCCOMB_X54_Y29_N12
\alu_inst|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~3_combout\ = (\alu_inst|Mux9~2_combout\ & (((\decoder_inst|alu_a\(7)) # (!\decoder_inst|alu_sel\(1))))) # (!\alu_inst|Mux9~2_combout\ & (\decoder_inst|alu_a\(5) & ((\decoder_inst|alu_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(5),
	datab => \alu_inst|Mux9~2_combout\,
	datac => \decoder_inst|alu_a\(7),
	datad => \decoder_inst|alu_sel\(1),
	combout => \alu_inst|Mux9~3_combout\);

-- Location: FF_X54_Y29_N13
\alu_inst|result[6]_NEW_REG26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux9~3_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[6]_OTERM27\);

-- Location: LCCOMB_X49_Y29_N2
\alu_inst|Mux9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux9~8_combout\ = (\alu_inst|result[5]_OTERM1\ & ((\alu_inst|result[6]_OTERM27\))) # (!\alu_inst|result[5]_OTERM1\ & (\alu_inst|Mux9~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|result[5]_OTERM1\,
	datac => \alu_inst|Mux9~7_combout\,
	datad => \alu_inst|result[6]_OTERM27\,
	combout => \alu_inst|Mux9~8_combout\);

-- Location: LCCOMB_X49_Y30_N30
\reg_inst|data_reg[0][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[0][6]~feeder_combout\ = \alu_inst|Mux9~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux9~8_combout\,
	combout => \reg_inst|data_reg[0][6]~feeder_combout\);

-- Location: FF_X49_Y30_N31
\reg_inst|data_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[0][6]~feeder_combout\,
	ena => \reg_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][6]~q\);

-- Location: FF_X49_Y30_N15
\reg_inst|data_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux9~8_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][6]~q\);

-- Location: LCCOMB_X49_Y30_N14
\reg_inst|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux1~2_combout\ = (\decoder_inst|reg_address_a\(0) & (((\reg_inst|data_reg[1][6]~q\) # (\decoder_inst|reg_address_a\(1))))) # (!\decoder_inst|reg_address_a\(0) & (\reg_inst|data_reg[0][6]~q\ & ((!\decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][6]~q\,
	datab => \decoder_inst|reg_address_a\(0),
	datac => \reg_inst|data_reg[1][6]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux1~2_combout\);

-- Location: FF_X49_Y29_N3
\reg_inst|data_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux9~8_combout\,
	ena => \reg_inst|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[3][6]~q\);

-- Location: LCCOMB_X50_Y30_N0
\reg_inst|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux1~3_combout\ = (\reg_inst|Mux1~2_combout\ & (((\reg_inst|data_reg[3][6]~q\)) # (!\decoder_inst|reg_address_a\(1)))) # (!\reg_inst|Mux1~2_combout\ & (\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|Mux1~2_combout\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[2][6]~q\,
	datad => \reg_inst|data_reg[3][6]~q\,
	combout => \reg_inst|Mux1~3_combout\);

-- Location: LCCOMB_X47_Y30_N20
\reg_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux1~0_combout\ = (\decoder_inst|reg_address_a\(0) & (((\decoder_inst|reg_address_a\(1))))) # (!\decoder_inst|reg_address_a\(0) & ((\decoder_inst|reg_address_a\(1) & (\reg_inst|data_reg[6][6]~q\)) # (!\decoder_inst|reg_address_a\(1) & 
-- ((\reg_inst|data_reg[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][6]~q\,
	datab => \decoder_inst|reg_address_a\(0),
	datac => \reg_inst|data_reg[4][6]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux1~0_combout\);

-- Location: FF_X51_Y30_N13
\reg_inst|data_reg[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux9~8_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[7][6]~q\);

-- Location: LCCOMB_X50_Y30_N24
\reg_inst|data_reg[5][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[5][6]~feeder_combout\ = \alu_inst|Mux9~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux9~8_combout\,
	combout => \reg_inst|data_reg[5][6]~feeder_combout\);

-- Location: FF_X50_Y30_N25
\reg_inst|data_reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[5][6]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[5][6]~q\);

-- Location: LCCOMB_X51_Y30_N12
\reg_inst|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux1~1_combout\ = (\decoder_inst|reg_address_a\(0) & ((\reg_inst|Mux1~0_combout\ & (\reg_inst|data_reg[7][6]~q\)) # (!\reg_inst|Mux1~0_combout\ & ((\reg_inst|data_reg[5][6]~q\))))) # (!\decoder_inst|reg_address_a\(0) & 
-- (\reg_inst|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(0),
	datab => \reg_inst|Mux1~0_combout\,
	datac => \reg_inst|data_reg[7][6]~q\,
	datad => \reg_inst|data_reg[5][6]~q\,
	combout => \reg_inst|Mux1~1_combout\);

-- Location: LCCOMB_X51_Y30_N14
\reg_inst|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux1~4_combout\ = (\decoder_inst|reg_address_a\(2) & ((\reg_inst|Mux1~1_combout\))) # (!\decoder_inst|reg_address_a\(2) & (\reg_inst|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|reg_address_a\(2),
	datac => \reg_inst|Mux1~3_combout\,
	datad => \reg_inst|Mux1~1_combout\,
	combout => \reg_inst|Mux1~4_combout\);

-- Location: FF_X51_Y30_N15
\reg_inst|data_out_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux1~4_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(6));

-- Location: LCCOMB_X54_Y31_N2
\decoder_inst|ram_data_in[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_data_in[6]~feeder_combout\ = \reg_inst|data_out_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(6),
	combout => \decoder_inst|ram_data_in[6]~feeder_combout\);

-- Location: FF_X54_Y31_N3
\decoder_inst|ram_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_data_in[6]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_data_in\(6));

-- Location: LCCOMB_X55_Y31_N14
\decoder_inst|alu_a[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[4]~15_combout\ = (\decoder_inst|format\(0) & ((\decoder_inst|format\(1) & (\decoder_inst|alu_a\(4))) # (!\decoder_inst|format\(1) & ((\decoder_inst|A\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(4),
	datab => \decoder_inst|format\(1),
	datac => \decoder_inst|A\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_a[4]~15_combout\);

-- Location: LCCOMB_X56_Y31_N30
\decoder_inst|alu_a[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[4]~16_combout\ = (\decoder_inst|alu_a[7]~2_combout\ & (((\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a4\)))) # (!\decoder_inst|alu_a[7]~2_combout\ & ((\decoder_inst|alu_a[4]~14_combout\) # ((\decoder_inst|alu_a[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[4]~14_combout\,
	datab => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a4\,
	datac => \decoder_inst|alu_a[7]~2_combout\,
	datad => \decoder_inst|alu_a[4]~15_combout\,
	combout => \decoder_inst|alu_a[4]~16_combout\);

-- Location: LCCOMB_X57_Y31_N22
\decoder_inst|alu_a[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[4]~feeder_combout\ = \decoder_inst|alu_a[4]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|alu_a[4]~16_combout\,
	combout => \decoder_inst|alu_a[4]~feeder_combout\);

-- Location: FF_X57_Y31_N23
\decoder_inst|alu_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[4]~feeder_combout\,
	ena => \decoder_inst|alu_a[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(4));

-- Location: LCCOMB_X51_Y29_N18
\alu_inst|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux10~2_combout\ = (\decoder_inst|alu_sel\(0) & (((\decoder_inst|alu_sel\(1))))) # (!\decoder_inst|alu_sel\(0) & ((\decoder_inst|alu_sel\(1) & (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\)) # (!\decoder_inst|alu_sel\(1) & 
-- ((\alu_inst|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \alu_inst|Add0~10_combout\,
	datad => \decoder_inst|alu_sel\(1),
	combout => \alu_inst|Mux10~2_combout\);

-- Location: FF_X51_Y29_N19
\alu_inst|result[5]_OTERM5_NEW_REG62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux10~2_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM5_OTERM63\);

-- Location: FF_X55_Y29_N23
\alu_inst|result[5]_OTERM5_OTERM65_NEW_REG134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|op_1~10_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM5_OTERM65_OTERM135\);

-- Location: LCCOMB_X55_Y29_N0
\alu_inst|result[5]_OTERM5_OTERM65_OTERM133~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|result[5]_OTERM5_OTERM65_OTERM133~feeder_combout\ = \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \alu_inst|result[5]_OTERM5_OTERM65_OTERM133~feeder_combout\);

-- Location: FF_X55_Y29_N1
\alu_inst|result[5]_OTERM5_OTERM65_NEW_REG132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|result[5]_OTERM5_OTERM65_OTERM133~feeder_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM5_OTERM65_OTERM133\);

-- Location: FF_X55_Y29_N11
\alu_inst|result[5]_OTERM5_OTERM65_NEW_REG136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM5_OTERM65_OTERM137\);

-- Location: LCCOMB_X54_Y29_N18
\alu_inst|Div0|auto_generated|divider|diff_signs_RTM0140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|diff_signs_RTM0140~combout\ = !\alu_inst|Div0|auto_generated|divider|diff_signs~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \alu_inst|Div0|auto_generated|divider|diff_signs_RTM0140~combout\);

-- Location: FF_X54_Y29_N19
\alu_inst|result[5]_OTERM5_OTERM65_NEW_REG138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|diff_signs_RTM0140~combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM5_OTERM65_OTERM139\);

-- Location: LCCOMB_X55_Y29_N10
\alu_inst|Div0|auto_generated|divider|quotient[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\ = (\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (((!\alu_inst|result[5]_OTERM5_OTERM65_OTERM133\ & !\alu_inst|result[5]_OTERM5_OTERM65_OTERM137\)))) # 
-- (!\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (\alu_inst|result[5]_OTERM5_OTERM65_OTERM135\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[5]_OTERM5_OTERM65_OTERM135\,
	datab => \alu_inst|result[5]_OTERM5_OTERM65_OTERM133\,
	datac => \alu_inst|result[5]_OTERM5_OTERM65_OTERM137\,
	datad => \alu_inst|result[5]_OTERM5_OTERM65_OTERM139\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\);

-- Location: FF_X50_Y29_N11
\alu_inst|result[5]_OTERM5_NEW_REG58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Add1~10_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM5_OTERM59\);

-- Location: LCCOMB_X51_Y29_N6
\alu_inst|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux10~3_combout\ = (\alu_inst|result[5]_OTERM5_OTERM61\ & ((\alu_inst|result[5]_OTERM5_OTERM63\ & (\alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\)) # (!\alu_inst|result[5]_OTERM5_OTERM63\ & 
-- ((\alu_inst|result[5]_OTERM5_OTERM59\))))) # (!\alu_inst|result[5]_OTERM5_OTERM61\ & (\alu_inst|result[5]_OTERM5_OTERM63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[5]_OTERM5_OTERM61\,
	datab => \alu_inst|result[5]_OTERM5_OTERM63\,
	datac => \alu_inst|Div0|auto_generated|divider|quotient[5]~3_combout\,
	datad => \alu_inst|result[5]_OTERM5_OTERM59\,
	combout => \alu_inst|Mux10~3_combout\);

-- Location: LCCOMB_X54_Y30_N14
\alu_inst|Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~19_combout\ = (\alu_inst|Add2~10_combout\) # ((\alu_inst|Equal0~0_combout\ & \alu_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal0~0_combout\,
	datab => \alu_inst|Equal0~1_combout\,
	datac => \alu_inst|Add2~10_combout\,
	combout => \alu_inst|Add2~19_combout\);

-- Location: LCCOMB_X54_Y30_N10
\alu_inst|Add3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~19_combout\ = (\alu_inst|Add3~10_combout\ & ((!\alu_inst|Equal1~1_combout\) # (!\alu_inst|Equal1~0_OTERM35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal1~0_OTERM35\,
	datac => \alu_inst|Equal1~1_combout\,
	datad => \alu_inst|Add3~10_combout\,
	combout => \alu_inst|Add3~19_combout\);

-- Location: LCCOMB_X54_Y30_N16
\alu_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux10~0_combout\ = (\decoder_inst|alu_sel\(0) & (((\decoder_inst|alu_sel\(1)) # (\alu_inst|Add3~19_combout\)))) # (!\decoder_inst|alu_sel\(0) & (\alu_inst|Add2~19_combout\ & (!\decoder_inst|alu_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \alu_inst|Add2~19_combout\,
	datac => \decoder_inst|alu_sel\(1),
	datad => \alu_inst|Add3~19_combout\,
	combout => \alu_inst|Mux10~0_combout\);

-- Location: LCCOMB_X55_Y30_N14
\alu_inst|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux10~1_combout\ = (\alu_inst|Mux10~0_combout\ & ((\decoder_inst|alu_a\(6)) # ((!\decoder_inst|alu_sel\(1))))) # (!\alu_inst|Mux10~0_combout\ & (((\decoder_inst|alu_a\(4) & \decoder_inst|alu_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(6),
	datab => \decoder_inst|alu_a\(4),
	datac => \alu_inst|Mux10~0_combout\,
	datad => \decoder_inst|alu_sel\(1),
	combout => \alu_inst|Mux10~1_combout\);

-- Location: FF_X55_Y30_N15
\alu_inst|result[5]_NEW_REG2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux10~1_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[5]_OTERM3\);

-- Location: LCCOMB_X51_Y29_N4
\alu_inst|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux10~4_combout\ = (\alu_inst|result[5]_OTERM1\ & ((\alu_inst|result[5]_OTERM3\))) # (!\alu_inst|result[5]_OTERM1\ & (\alu_inst|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux10~3_combout\,
	datab => \alu_inst|result[5]_OTERM3\,
	datad => \alu_inst|result[5]_OTERM1\,
	combout => \alu_inst|Mux10~4_combout\);

-- Location: LCCOMB_X47_Y30_N26
\reg_inst|data_reg[6][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[6][5]~feeder_combout\ = \alu_inst|Mux10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux10~4_combout\,
	combout => \reg_inst|data_reg[6][5]~feeder_combout\);

-- Location: FF_X47_Y30_N27
\reg_inst|data_reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[6][5]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[6][5]~q\);

-- Location: LCCOMB_X47_Y30_N18
\reg_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux2~0_combout\ = (\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[6][5]~q\) # ((\decoder_inst|reg_address_a\(0))))) # (!\decoder_inst|reg_address_a\(1) & (((\reg_inst|data_reg[4][5]~q\ & !\decoder_inst|reg_address_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][5]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[4][5]~q\,
	datad => \decoder_inst|reg_address_a\(0),
	combout => \reg_inst|Mux2~0_combout\);

-- Location: FF_X51_Y30_N23
\reg_inst|data_reg[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux10~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[7][5]~q\);

-- Location: LCCOMB_X50_Y30_N10
\reg_inst|data_reg[5][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[5][5]~feeder_combout\ = \alu_inst|Mux10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux10~4_combout\,
	combout => \reg_inst|data_reg[5][5]~feeder_combout\);

-- Location: FF_X50_Y30_N11
\reg_inst|data_reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[5][5]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[5][5]~q\);

-- Location: LCCOMB_X51_Y30_N22
\reg_inst|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux2~1_combout\ = (\decoder_inst|reg_address_a\(0) & ((\reg_inst|Mux2~0_combout\ & (\reg_inst|data_reg[7][5]~q\)) # (!\reg_inst|Mux2~0_combout\ & ((\reg_inst|data_reg[5][5]~q\))))) # (!\decoder_inst|reg_address_a\(0) & 
-- (\reg_inst|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(0),
	datab => \reg_inst|Mux2~0_combout\,
	datac => \reg_inst|data_reg[7][5]~q\,
	datad => \reg_inst|data_reg[5][5]~q\,
	combout => \reg_inst|Mux2~1_combout\);

-- Location: FF_X49_Y30_N1
\reg_inst|data_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux10~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][5]~q\);

-- Location: LCCOMB_X49_Y30_N0
\reg_inst|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux2~2_combout\ = (\decoder_inst|reg_address_a\(1) & (((\decoder_inst|reg_address_a\(0))))) # (!\decoder_inst|reg_address_a\(1) & ((\decoder_inst|reg_address_a\(0) & ((\reg_inst|data_reg[1][5]~q\))) # (!\decoder_inst|reg_address_a\(0) & 
-- (\reg_inst|data_reg[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][5]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[1][5]~q\,
	datad => \decoder_inst|reg_address_a\(0),
	combout => \reg_inst|Mux2~2_combout\);

-- Location: LCCOMB_X51_Y29_N16
\reg_inst|data_reg[3][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[3][5]~feeder_combout\ = \alu_inst|Mux10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux10~4_combout\,
	combout => \reg_inst|data_reg[3][5]~feeder_combout\);

-- Location: FF_X51_Y29_N17
\reg_inst|data_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[3][5]~feeder_combout\,
	ena => \reg_inst|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[3][5]~q\);

-- Location: LCCOMB_X50_Y30_N6
\reg_inst|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux2~3_combout\ = (\reg_inst|Mux2~2_combout\ & ((\reg_inst|data_reg[3][5]~q\) # ((!\decoder_inst|reg_address_a\(1))))) # (!\reg_inst|Mux2~2_combout\ & (((\reg_inst|data_reg[2][5]~q\ & \decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|Mux2~2_combout\,
	datab => \reg_inst|data_reg[3][5]~q\,
	datac => \reg_inst|data_reg[2][5]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux2~3_combout\);

-- Location: LCCOMB_X51_Y30_N2
\reg_inst|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux2~4_combout\ = (\decoder_inst|reg_address_a\(2) & (\reg_inst|Mux2~1_combout\)) # (!\decoder_inst|reg_address_a\(2) & ((\reg_inst|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|Mux2~1_combout\,
	datab => \decoder_inst|reg_address_a\(2),
	datac => \reg_inst|Mux2~3_combout\,
	combout => \reg_inst|Mux2~4_combout\);

-- Location: FF_X51_Y30_N3
\reg_inst|data_out_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux2~4_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(5));

-- Location: LCCOMB_X54_Y31_N20
\decoder_inst|ram_data_in[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_data_in[5]~feeder_combout\ = \reg_inst|data_out_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(5),
	combout => \decoder_inst|ram_data_in[5]~feeder_combout\);

-- Location: FF_X54_Y31_N21
\decoder_inst|ram_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_data_in[5]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_data_in\(5));

-- Location: LCCOMB_X54_Y31_N30
\decoder_inst|alu_a[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[7]~22_combout\ = (\decoder_inst|alu_a[7]~2_combout\ & ((\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a7\))) # (!\decoder_inst|alu_a[7]~2_combout\ & (\decoder_inst|alu_a[7]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[7]~21_combout\,
	datab => \decoder_inst|alu_a[7]~2_combout\,
	datad => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \decoder_inst|alu_a[7]~22_combout\);

-- Location: LCCOMB_X57_Y31_N28
\decoder_inst|alu_a[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[7]~feeder_combout\ = \decoder_inst|alu_a[7]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|alu_a[7]~22_combout\,
	combout => \decoder_inst|alu_a[7]~feeder_combout\);

-- Location: FF_X57_Y31_N29
\decoder_inst|alu_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[7]~feeder_combout\,
	ena => \decoder_inst|alu_a[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(7));

-- Location: LCCOMB_X50_Y29_N30
\alu_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add0~14_combout\ = \decoder_inst|alu_b[7]~_Duplicate_1_q\ $ (\alu_inst|Add0~13\ $ (\decoder_inst|alu_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_a\(7),
	cin => \alu_inst|Add0~13\,
	combout => \alu_inst|Add0~14_combout\);

-- Location: LCCOMB_X49_Y29_N14
\alu_inst|Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~6_combout\ = (\decoder_inst|alu_sel\(0) & (\decoder_inst|alu_sel\(1) & ((\alu_inst|Div0|auto_generated|divider|diff_signs~combout\)))) # (!\decoder_inst|alu_sel\(0) & ((\decoder_inst|alu_sel\(1)) # ((\alu_inst|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \decoder_inst|alu_sel\(1),
	datac => \alu_inst|Add0~14_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \alu_inst|Mux8~6_combout\);

-- Location: FF_X49_Y29_N15
\alu_inst|result[7]_OTERM25_NEW_REG92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux8~6_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM25_OTERM93\);

-- Location: LCCOMB_X49_Y29_N24
\alu_inst|Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~7_combout\ = (\alu_inst|Mux8~6_combout\ & ((\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\) # (!\decoder_inst|alu_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Mux8~6_combout\,
	datac => \decoder_inst|alu_sel\(1),
	datad => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \alu_inst|Mux8~7_combout\);

-- Location: FF_X49_Y29_N25
\alu_inst|result[7]_OTERM25_NEW_REG94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux8~7_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM25_OTERM95\);

-- Location: LCCOMB_X54_Y29_N24
\alu_inst|Div0|auto_generated|divider|divider|sel[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(0) = (\alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\) # (\decoder_inst|alu_b[1]~_Duplicate_1_q\ $ (((\decoder_inst|alu_b[7]~_Duplicate_1_q\ & \decoder_inst|alu_b[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[1]~_Duplicate_1_q\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel[1]_OTERM189\,
	datac => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(0));

-- Location: LCCOMB_X55_Y29_N26
\alu_inst|Div0|auto_generated|divider|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|op_1~14_combout\ = \alu_inst|Div0|auto_generated|divider|op_1~13\ $ (((\alu_inst|Div0|auto_generated|divider|divider|sel\(0)) # ((!\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_OTERM45\ & 
-- \decoder_inst|alu_b[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_OTERM45\,
	datab => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|sel\(0),
	cin => \alu_inst|Div0|auto_generated|divider|op_1~13\,
	combout => \alu_inst|Div0|auto_generated|divider|op_1~14_combout\);

-- Location: FF_X55_Y29_N27
\alu_inst|result[7]_OTERM25_NEW_REG90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|op_1~14_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM25_OTERM91\);

-- Location: LCCOMB_X50_Y29_N14
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

-- Location: LCCOMB_X54_Y29_N26
\alu_inst|Mux8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~11_combout\ = (\alu_inst|Div0|auto_generated|divider|diff_signs~combout\) # ((!\alu_inst|Div0|auto_generated|divider|divider|sel\(0) & ((\alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_OTERM45\) # 
-- (!\decoder_inst|alu_b[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|diff_signs~combout\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|sel\(0),
	datac => \alu_inst|Div0|auto_generated|divider|my_abs_num|cs1a[6]~1_OTERM45\,
	datad => \decoder_inst|alu_b[0]~_Duplicate_1_q\,
	combout => \alu_inst|Mux8~11_combout\);

-- Location: LCCOMB_X49_Y29_N0
\alu_inst|Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~8_combout\ = (\decoder_inst|alu_sel\(0) & ((\decoder_inst|alu_sel\(1) & ((\alu_inst|Mux8~11_combout\))) # (!\decoder_inst|alu_sel\(1) & (\alu_inst|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \decoder_inst|alu_sel\(1),
	datac => \alu_inst|Add1~14_combout\,
	datad => \alu_inst|Mux8~11_combout\,
	combout => \alu_inst|Mux8~8_combout\);

-- Location: FF_X49_Y29_N1
\alu_inst|result[7]_OTERM25_NEW_REG96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux8~8_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM25_OTERM97\);

-- Location: LCCOMB_X49_Y29_N30
\alu_inst|Mux8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~9_combout\ = (\alu_inst|result[7]_OTERM25_OTERM97\ & (((\alu_inst|result[7]_OTERM25_OTERM91\)) # (!\alu_inst|result[7]_OTERM25_OTERM93\))) # (!\alu_inst|result[7]_OTERM25_OTERM97\ & (\alu_inst|result[7]_OTERM25_OTERM95\ & 
-- ((\alu_inst|result[7]_OTERM25_OTERM93\) # (\alu_inst|result[7]_OTERM25_OTERM91\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[7]_OTERM25_OTERM93\,
	datab => \alu_inst|result[7]_OTERM25_OTERM95\,
	datac => \alu_inst|result[7]_OTERM25_OTERM91\,
	datad => \alu_inst|result[7]_OTERM25_OTERM97\,
	combout => \alu_inst|Mux8~9_combout\);

-- Location: LCCOMB_X52_Y30_N14
\alu_inst|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~14_combout\ = \alu_inst|Add2~13\ $ (\decoder_inst|alu_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|alu_a\(7),
	cin => \alu_inst|Add2~13\,
	combout => \alu_inst|Add2~14_combout\);

-- Location: LCCOMB_X54_Y30_N22
\alu_inst|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~16_combout\ = (\alu_inst|Add2~14_combout\ & ((!\alu_inst|Equal0~1_combout\) # (!\alu_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal0~0_combout\,
	datab => \alu_inst|Equal0~1_combout\,
	datad => \alu_inst|Add2~14_combout\,
	combout => \alu_inst|Add2~16_combout\);

-- Location: LCCOMB_X55_Y30_N30
\alu_inst|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~14_combout\ = \alu_inst|Add3~13\ $ (!\decoder_inst|alu_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|alu_a\(7),
	cin => \alu_inst|Add3~13\,
	combout => \alu_inst|Add3~14_combout\);

-- Location: LCCOMB_X55_Y30_N2
\alu_inst|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~16_combout\ = (\alu_inst|Add3~14_combout\) # ((\alu_inst|Equal1~0_OTERM35\ & \alu_inst|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal1~0_OTERM35\,
	datab => \alu_inst|Equal1~1_combout\,
	datac => \alu_inst|Add3~14_combout\,
	combout => \alu_inst|Add3~16_combout\);

-- Location: LCCOMB_X54_Y30_N24
\alu_inst|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~4_combout\ = (\decoder_inst|alu_sel\(0) & ((\decoder_inst|alu_sel\(1)) # ((\alu_inst|Add3~16_combout\)))) # (!\decoder_inst|alu_sel\(0) & (!\decoder_inst|alu_sel\(1) & (\alu_inst|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \decoder_inst|alu_sel\(1),
	datac => \alu_inst|Add2~16_combout\,
	datad => \alu_inst|Add3~16_combout\,
	combout => \alu_inst|Mux8~4_combout\);

-- Location: LCCOMB_X54_Y29_N4
\alu_inst|Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~5_combout\ = (\alu_inst|Mux8~4_combout\ & ((\decoder_inst|alu_a\(7)) # ((!\decoder_inst|alu_sel\(1))))) # (!\alu_inst|Mux8~4_combout\ & (((\decoder_inst|alu_a\(6) & \decoder_inst|alu_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(7),
	datab => \decoder_inst|alu_a\(6),
	datac => \alu_inst|Mux8~4_combout\,
	datad => \decoder_inst|alu_sel\(1),
	combout => \alu_inst|Mux8~5_combout\);

-- Location: FF_X54_Y29_N5
\alu_inst|result[7]_NEW_REG22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux8~5_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[7]_OTERM23\);

-- Location: LCCOMB_X49_Y29_N26
\alu_inst|Mux8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux8~10_combout\ = (\alu_inst|result[5]_OTERM1\ & ((\alu_inst|result[7]_OTERM23\))) # (!\alu_inst|result[5]_OTERM1\ & (\alu_inst|Mux8~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux8~9_combout\,
	datac => \alu_inst|result[7]_OTERM23\,
	datad => \alu_inst|result[5]_OTERM1\,
	combout => \alu_inst|Mux8~10_combout\);

-- Location: LCCOMB_X47_Y30_N12
\reg_inst|data_reg[6][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[6][7]~feeder_combout\ = \alu_inst|Mux8~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux8~10_combout\,
	combout => \reg_inst|data_reg[6][7]~feeder_combout\);

-- Location: FF_X47_Y30_N13
\reg_inst|data_reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[6][7]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[6][7]~q\);

-- Location: LCCOMB_X49_Y30_N26
\reg_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux8~0_combout\ = (\decoder_inst|reg_address_b\(2) & (((\decoder_inst|reg_address_b\(1))))) # (!\decoder_inst|reg_address_b\(2) & ((\decoder_inst|reg_address_b\(1) & (\reg_inst|data_reg[2][7]~q\)) # (!\decoder_inst|reg_address_b\(1) & 
-- ((\reg_inst|data_reg[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_b\(2),
	datab => \reg_inst|data_reg[2][7]~q\,
	datac => \reg_inst|data_reg[0][7]~q\,
	datad => \decoder_inst|reg_address_b\(1),
	combout => \reg_inst|Mux8~0_combout\);

-- Location: LCCOMB_X46_Y30_N14
\reg_inst|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux8~1_combout\ = (\decoder_inst|reg_address_b\(2) & ((\reg_inst|Mux8~0_combout\ & (\reg_inst|data_reg[6][7]~q\)) # (!\reg_inst|Mux8~0_combout\ & ((\reg_inst|data_reg[4][7]~q\))))) # (!\decoder_inst|reg_address_b\(2) & 
-- (((\reg_inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][7]~q\,
	datab => \reg_inst|data_reg[4][7]~q\,
	datac => \decoder_inst|reg_address_b\(2),
	datad => \reg_inst|Mux8~0_combout\,
	combout => \reg_inst|Mux8~1_combout\);

-- Location: FF_X46_Y30_N15
\reg_inst|data_out_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux8~1_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_b\(7));

-- Location: LCCOMB_X46_Y30_N16
\decoder_inst|alu_b[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[7]~2_combout\ = (\reg_inst|data_out_b\(7) & (!\decoder_inst|op\(4) & !\decoder_inst|format\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|data_out_b\(7),
	datac => \decoder_inst|op\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_b[7]~2_combout\);

-- Location: LCCOMB_X47_Y29_N28
\decoder_inst|alu_b[7]_NEW46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_b[7]_OTERM47\ = (\decoder_inst|alu_b[0]~1_combout\ & (\decoder_inst|alu_b[7]~2_combout\ & (!\decoder_inst|format\(1)))) # (!\decoder_inst|alu_b[0]~1_combout\ & (((\decoder_inst|alu_b[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[7]~2_combout\,
	datab => \decoder_inst|format\(1),
	datac => \decoder_inst|alu_b[7]~_Duplicate_1_q\,
	datad => \decoder_inst|alu_b[0]~1_combout\,
	combout => \decoder_inst|alu_b[7]_OTERM47\);

-- Location: LCCOMB_X55_Y29_N8
\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ = \decoder_inst|alu_b[3]_OTERM129\ $ (\decoder_inst|alu_b[7]_OTERM47\ $ (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_b[3]_OTERM129\,
	datac => \decoder_inst|alu_b[7]_OTERM47\,
	datad => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\);

-- Location: LCCOMB_X56_Y29_N26
\alu_inst|Div0|auto_generated|divider|divider|sel[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|sel\(2) = (\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\) # ((\alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\) # 
-- (\alu_inst|Div0|auto_generated|divider|divider|sel\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	datab => \alu_inst|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|sel\(4),
	combout => \alu_inst|Div0|auto_generated|divider|divider|sel\(2));

-- Location: FF_X56_Y29_N27
\alu_inst|Div0|auto_generated|divider|divider|sel[2]_NEW_REG190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|sel\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\);

-- Location: LCCOMB_X56_Y29_N16
\alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM197\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM197\)) # 
-- (!\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|divider|sel[2]_OTERM191\,
	datab => \alu_inst|Div0|auto_generated|divider|divider|StageOut[9]~2_OTERM197\,
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \alu_inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \alu_inst|Div0|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X57_Y29_N8
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

-- Location: FF_X55_Y29_N21
\alu_inst|result[4]_OTERM9_OTERM71_NEW_REG144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|op_1~8_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[4]_OTERM9_OTERM71_OTERM145\);

-- Location: LCCOMB_X54_Y29_N28
\alu_inst|result[4]_OTERM9_OTERM71_OTERM143~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|result[4]_OTERM9_OTERM71_OTERM143~feeder_combout\ = \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \alu_inst|result[4]_OTERM9_OTERM71_OTERM143~feeder_combout\);

-- Location: FF_X54_Y29_N29
\alu_inst|result[4]_OTERM9_OTERM71_NEW_REG142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|result[4]_OTERM9_OTERM71_OTERM143~feeder_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[4]_OTERM9_OTERM71_OTERM143\);

-- Location: FF_X54_Y29_N7
\alu_inst|result[4]_OTERM9_OTERM71_NEW_REG146\ : dffeas
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
	q => \alu_inst|result[4]_OTERM9_OTERM71_OTERM147\);

-- Location: LCCOMB_X54_Y29_N6
\alu_inst|Div0|auto_generated|divider|quotient[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\ = (\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (((!\alu_inst|result[4]_OTERM9_OTERM71_OTERM143\ & !\alu_inst|result[4]_OTERM9_OTERM71_OTERM147\)))) # 
-- (!\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (\alu_inst|result[4]_OTERM9_OTERM71_OTERM145\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[4]_OTERM9_OTERM71_OTERM145\,
	datab => \alu_inst|result[4]_OTERM9_OTERM71_OTERM143\,
	datac => \alu_inst|result[4]_OTERM9_OTERM71_OTERM147\,
	datad => \alu_inst|result[5]_OTERM5_OTERM65_OTERM139\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\);

-- Location: LCCOMB_X51_Y29_N2
\alu_inst|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux11~2_combout\ = (\decoder_inst|alu_sel\(0) & (((\decoder_inst|alu_sel\(1))))) # (!\decoder_inst|alu_sel\(0) & ((\decoder_inst|alu_sel\(1) & (\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\)) # (!\decoder_inst|alu_sel\(1) & 
-- ((\alu_inst|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \alu_inst|Add0~8_combout\,
	datac => \decoder_inst|alu_sel\(0),
	datad => \decoder_inst|alu_sel\(1),
	combout => \alu_inst|Mux11~2_combout\);

-- Location: FF_X51_Y29_N3
\alu_inst|result[4]_OTERM9_NEW_REG68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux11~2_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[4]_OTERM9_OTERM69\);

-- Location: FF_X50_Y29_N9
\alu_inst|result[4]_OTERM9_NEW_REG66\ : dffeas
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
	q => \alu_inst|result[4]_OTERM9_OTERM67\);

-- Location: LCCOMB_X51_Y29_N10
\alu_inst|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux11~3_combout\ = (\alu_inst|result[4]_OTERM9_OTERM69\ & ((\alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\) # ((!\alu_inst|result[5]_OTERM5_OTERM61\)))) # (!\alu_inst|result[4]_OTERM9_OTERM69\ & 
-- (((\alu_inst|result[5]_OTERM5_OTERM61\ & \alu_inst|result[4]_OTERM9_OTERM67\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Div0|auto_generated|divider|quotient[4]~4_combout\,
	datab => \alu_inst|result[4]_OTERM9_OTERM69\,
	datac => \alu_inst|result[5]_OTERM5_OTERM61\,
	datad => \alu_inst|result[4]_OTERM9_OTERM67\,
	combout => \alu_inst|Mux11~3_combout\);

-- Location: LCCOMB_X54_Y30_N18
\alu_inst|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~20_combout\ = (\alu_inst|Add3~8_combout\ & ((!\alu_inst|Equal1~1_combout\) # (!\alu_inst|Equal1~0_OTERM35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal1~0_OTERM35\,
	datac => \alu_inst|Equal1~1_combout\,
	datad => \alu_inst|Add3~8_combout\,
	combout => \alu_inst|Add3~20_combout\);

-- Location: LCCOMB_X54_Y30_N0
\alu_inst|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~20_combout\ = (\alu_inst|Add2~8_combout\) # ((\alu_inst|Equal0~0_combout\ & \alu_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal0~0_combout\,
	datab => \alu_inst|Equal0~1_combout\,
	datac => \alu_inst|Add2~8_combout\,
	combout => \alu_inst|Add2~20_combout\);

-- Location: LCCOMB_X54_Y30_N6
\alu_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux11~0_combout\ = (\decoder_inst|alu_sel\(0) & ((\alu_inst|Add3~20_combout\) # ((\decoder_inst|alu_sel\(1))))) # (!\decoder_inst|alu_sel\(0) & (((!\decoder_inst|alu_sel\(1) & \alu_inst|Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \alu_inst|Add3~20_combout\,
	datac => \decoder_inst|alu_sel\(1),
	datad => \alu_inst|Add2~20_combout\,
	combout => \alu_inst|Mux11~0_combout\);

-- Location: LCCOMB_X55_Y30_N4
\alu_inst|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux11~1_combout\ = (\decoder_inst|alu_sel\(1) & ((\alu_inst|Mux11~0_combout\ & ((\decoder_inst|alu_a\(5)))) # (!\alu_inst|Mux11~0_combout\ & (\decoder_inst|alu_a\(3))))) # (!\decoder_inst|alu_sel\(1) & (((\alu_inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(1),
	datab => \decoder_inst|alu_a\(3),
	datac => \alu_inst|Mux11~0_combout\,
	datad => \decoder_inst|alu_a\(5),
	combout => \alu_inst|Mux11~1_combout\);

-- Location: FF_X55_Y30_N5
\alu_inst|result[4]_NEW_REG6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux11~1_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[4]_OTERM7\);

-- Location: LCCOMB_X51_Y29_N12
\alu_inst|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux11~4_combout\ = (\alu_inst|result[5]_OTERM1\ & ((\alu_inst|result[4]_OTERM7\))) # (!\alu_inst|result[5]_OTERM1\ & (\alu_inst|Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|result[5]_OTERM1\,
	datac => \alu_inst|Mux11~3_combout\,
	datad => \alu_inst|result[4]_OTERM7\,
	combout => \alu_inst|Mux11~4_combout\);

-- Location: LCCOMB_X47_Y30_N16
\reg_inst|data_reg[6][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[6][4]~feeder_combout\ = \alu_inst|Mux11~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux11~4_combout\,
	combout => \reg_inst|data_reg[6][4]~feeder_combout\);

-- Location: FF_X47_Y30_N17
\reg_inst|data_reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[6][4]~feeder_combout\,
	ena => \reg_inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[6][4]~q\);

-- Location: LCCOMB_X47_Y30_N8
\reg_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux3~0_combout\ = (\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[6][4]~q\) # ((\decoder_inst|reg_address_a\(0))))) # (!\decoder_inst|reg_address_a\(1) & (((\reg_inst|data_reg[4][4]~q\ & !\decoder_inst|reg_address_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][4]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[4][4]~q\,
	datad => \decoder_inst|reg_address_a\(0),
	combout => \reg_inst|Mux3~0_combout\);

-- Location: FF_X51_Y30_N9
\reg_inst|data_reg[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux11~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[7][4]~q\);

-- Location: LCCOMB_X50_Y30_N2
\reg_inst|data_reg[5][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[5][4]~feeder_combout\ = \alu_inst|Mux11~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux11~4_combout\,
	combout => \reg_inst|data_reg[5][4]~feeder_combout\);

-- Location: FF_X50_Y30_N3
\reg_inst|data_reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[5][4]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[5][4]~q\);

-- Location: LCCOMB_X51_Y30_N8
\reg_inst|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux3~1_combout\ = (\decoder_inst|reg_address_a\(0) & ((\reg_inst|Mux3~0_combout\ & (\reg_inst|data_reg[7][4]~q\)) # (!\reg_inst|Mux3~0_combout\ & ((\reg_inst|data_reg[5][4]~q\))))) # (!\decoder_inst|reg_address_a\(0) & 
-- (\reg_inst|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(0),
	datab => \reg_inst|Mux3~0_combout\,
	datac => \reg_inst|data_reg[7][4]~q\,
	datad => \reg_inst|data_reg[5][4]~q\,
	combout => \reg_inst|Mux3~1_combout\);

-- Location: FF_X51_Y29_N13
\reg_inst|data_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux11~4_combout\,
	ena => \reg_inst|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[3][4]~q\);

-- Location: FF_X49_Y30_N23
\reg_inst|data_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux11~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][4]~q\);

-- Location: LCCOMB_X49_Y30_N22
\reg_inst|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux3~2_combout\ = (\decoder_inst|reg_address_a\(0) & (((\reg_inst|data_reg[1][4]~q\) # (\decoder_inst|reg_address_a\(1))))) # (!\decoder_inst|reg_address_a\(0) & (\reg_inst|data_reg[0][4]~q\ & ((!\decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][4]~q\,
	datab => \decoder_inst|reg_address_a\(0),
	datac => \reg_inst|data_reg[1][4]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux3~2_combout\);

-- Location: LCCOMB_X50_Y30_N4
\reg_inst|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux3~3_combout\ = (\reg_inst|Mux3~2_combout\ & ((\reg_inst|data_reg[3][4]~q\) # ((!\decoder_inst|reg_address_a\(1))))) # (!\reg_inst|Mux3~2_combout\ & (((\reg_inst|data_reg[2][4]~q\ & \decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[3][4]~q\,
	datab => \reg_inst|Mux3~2_combout\,
	datac => \reg_inst|data_reg[2][4]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux3~3_combout\);

-- Location: LCCOMB_X51_Y30_N6
\reg_inst|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux3~4_combout\ = (\decoder_inst|reg_address_a\(2) & (\reg_inst|Mux3~1_combout\)) # (!\decoder_inst|reg_address_a\(2) & ((\reg_inst|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|Mux3~1_combout\,
	datac => \reg_inst|Mux3~3_combout\,
	datad => \decoder_inst|reg_address_a\(2),
	combout => \reg_inst|Mux3~4_combout\);

-- Location: FF_X51_Y30_N7
\reg_inst|data_out_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux3~4_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(4));

-- Location: FF_X54_Y31_N31
\decoder_inst|ram_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_out_a\(4),
	sload => VCC,
	ena => \decoder_inst|ram_data_in[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_data_in\(4));

-- Location: LCCOMB_X55_Y31_N24
\decoder_inst|alu_a[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[3]~12_combout\ = (\decoder_inst|format\(0) & ((\decoder_inst|format\(1) & (\decoder_inst|alu_a\(3))) # (!\decoder_inst|format\(1) & ((\decoder_inst|A\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(1),
	datab => \decoder_inst|alu_a\(3),
	datac => \decoder_inst|A\(3),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_a[3]~12_combout\);

-- Location: LCCOMB_X56_Y31_N24
\decoder_inst|alu_a[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[3]~13_combout\ = (\decoder_inst|alu_a[7]~2_combout\ & (((\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a3\)))) # (!\decoder_inst|alu_a[7]~2_combout\ & ((\decoder_inst|alu_a[3]~11_combout\) # ((\decoder_inst|alu_a[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[3]~11_combout\,
	datab => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a3\,
	datac => \decoder_inst|alu_a[7]~2_combout\,
	datad => \decoder_inst|alu_a[3]~12_combout\,
	combout => \decoder_inst|alu_a[3]~13_combout\);

-- Location: LCCOMB_X57_Y31_N24
\decoder_inst|alu_a[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[3]~feeder_combout\ = \decoder_inst|alu_a[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decoder_inst|alu_a[3]~13_combout\,
	combout => \decoder_inst|alu_a[3]~feeder_combout\);

-- Location: FF_X57_Y31_N25
\decoder_inst|alu_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[3]~feeder_combout\,
	ena => \decoder_inst|alu_a[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(3));

-- Location: FF_X50_Y29_N7
\alu_inst|result[3]_OTERM13_NEW_REG72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Add1~6_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM13_OTERM73\);

-- Location: LCCOMB_X51_Y29_N30
\alu_inst|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux12~2_combout\ = (\decoder_inst|alu_sel\(1) & ((\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\) # ((\decoder_inst|alu_sel\(0))))) # (!\decoder_inst|alu_sel\(1) & (((!\decoder_inst|alu_sel\(0) & \alu_inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \decoder_inst|alu_sel\(1),
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Add0~6_combout\,
	combout => \alu_inst|Mux12~2_combout\);

-- Location: FF_X51_Y29_N31
\alu_inst|result[3]_OTERM13_NEW_REG74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux12~2_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM13_OTERM75\);

-- Location: FF_X55_Y29_N19
\alu_inst|result[3]_OTERM13_OTERM77_NEW_REG151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|op_1~6_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM13_OTERM77_OTERM152\);

-- Location: FF_X54_Y29_N15
\alu_inst|result[3]_OTERM13_OTERM77_NEW_REG153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Div0|auto_generated|divider|divider|sel[4]_OTERM187\,
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM13_OTERM77_OTERM154\);

-- Location: FF_X57_Y28_N11
\alu_inst|result[3]_OTERM13_OTERM77_NEW_REG149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM13_OTERM77_OTERM150\);

-- Location: LCCOMB_X54_Y29_N14
\alu_inst|Div0|auto_generated|divider|quotient[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\ = (\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (((!\alu_inst|result[3]_OTERM13_OTERM77_OTERM154\ & !\alu_inst|result[3]_OTERM13_OTERM77_OTERM150\)))) # 
-- (!\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (\alu_inst|result[3]_OTERM13_OTERM77_OTERM152\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[3]_OTERM13_OTERM77_OTERM152\,
	datab => \alu_inst|result[5]_OTERM5_OTERM65_OTERM139\,
	datac => \alu_inst|result[3]_OTERM13_OTERM77_OTERM154\,
	datad => \alu_inst|result[3]_OTERM13_OTERM77_OTERM150\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\);

-- Location: LCCOMB_X51_Y29_N26
\alu_inst|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux12~3_combout\ = (\alu_inst|result[5]_OTERM5_OTERM61\ & ((\alu_inst|result[3]_OTERM13_OTERM75\ & ((\alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\))) # (!\alu_inst|result[3]_OTERM13_OTERM75\ & 
-- (\alu_inst|result[3]_OTERM13_OTERM73\)))) # (!\alu_inst|result[5]_OTERM5_OTERM61\ & (((\alu_inst|result[3]_OTERM13_OTERM75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[5]_OTERM5_OTERM61\,
	datab => \alu_inst|result[3]_OTERM13_OTERM73\,
	datac => \alu_inst|result[3]_OTERM13_OTERM75\,
	datad => \alu_inst|Div0|auto_generated|divider|quotient[3]~5_combout\,
	combout => \alu_inst|Mux12~3_combout\);

-- Location: LCCOMB_X54_Y30_N2
\alu_inst|Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~21_combout\ = (\alu_inst|Add2~6_combout\) # ((\alu_inst|Equal0~0_combout\ & \alu_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal0~0_combout\,
	datab => \alu_inst|Equal0~1_combout\,
	datac => \alu_inst|Add2~6_combout\,
	combout => \alu_inst|Add2~21_combout\);

-- Location: LCCOMB_X55_Y30_N6
\alu_inst|Add3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~21_combout\ = (\alu_inst|Add3~6_combout\ & ((!\alu_inst|Equal1~1_combout\) # (!\alu_inst|Equal1~0_OTERM35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal1~0_OTERM35\,
	datab => \alu_inst|Equal1~1_combout\,
	datac => \alu_inst|Add3~6_combout\,
	combout => \alu_inst|Add3~21_combout\);

-- Location: LCCOMB_X54_Y30_N12
\alu_inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux12~0_combout\ = (\decoder_inst|alu_sel\(0) & (((\decoder_inst|alu_sel\(1)) # (\alu_inst|Add3~21_combout\)))) # (!\decoder_inst|alu_sel\(0) & (\alu_inst|Add2~21_combout\ & (!\decoder_inst|alu_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \alu_inst|Add2~21_combout\,
	datac => \decoder_inst|alu_sel\(1),
	datad => \alu_inst|Add3~21_combout\,
	combout => \alu_inst|Mux12~0_combout\);

-- Location: LCCOMB_X52_Y30_N24
\alu_inst|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux12~1_combout\ = (\alu_inst|Mux12~0_combout\ & (((\decoder_inst|alu_a\(4))) # (!\decoder_inst|alu_sel\(1)))) # (!\alu_inst|Mux12~0_combout\ & (\decoder_inst|alu_sel\(1) & (\decoder_inst|alu_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux12~0_combout\,
	datab => \decoder_inst|alu_sel\(1),
	datac => \decoder_inst|alu_a\(2),
	datad => \decoder_inst|alu_a\(4),
	combout => \alu_inst|Mux12~1_combout\);

-- Location: FF_X52_Y30_N25
\alu_inst|result[3]_NEW_REG10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux12~1_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[3]_OTERM11\);

-- Location: LCCOMB_X51_Y29_N22
\alu_inst|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux12~4_combout\ = (\alu_inst|result[5]_OTERM1\ & ((\alu_inst|result[3]_OTERM11\))) # (!\alu_inst|result[5]_OTERM1\ & (\alu_inst|Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux12~3_combout\,
	datab => \alu_inst|result[5]_OTERM1\,
	datac => \alu_inst|result[3]_OTERM11\,
	combout => \alu_inst|Mux12~4_combout\);

-- Location: LCCOMB_X50_Y30_N20
\reg_inst|data_reg[5][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[5][3]~feeder_combout\ = \alu_inst|Mux12~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux12~4_combout\,
	combout => \reg_inst|data_reg[5][3]~feeder_combout\);

-- Location: FF_X50_Y30_N21
\reg_inst|data_reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[5][3]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[5][3]~q\);

-- Location: FF_X51_Y30_N31
\reg_inst|data_reg[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux12~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[7][3]~q\);

-- Location: LCCOMB_X47_Y30_N0
\reg_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux4~0_combout\ = (\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[6][3]~q\) # ((\decoder_inst|reg_address_a\(0))))) # (!\decoder_inst|reg_address_a\(1) & (((\reg_inst|data_reg[4][3]~q\ & !\decoder_inst|reg_address_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][3]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[4][3]~q\,
	datad => \decoder_inst|reg_address_a\(0),
	combout => \reg_inst|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y30_N30
\reg_inst|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux4~1_combout\ = (\decoder_inst|reg_address_a\(0) & ((\reg_inst|Mux4~0_combout\ & ((\reg_inst|data_reg[7][3]~q\))) # (!\reg_inst|Mux4~0_combout\ & (\reg_inst|data_reg[5][3]~q\)))) # (!\decoder_inst|reg_address_a\(0) & 
-- (((\reg_inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(0),
	datab => \reg_inst|data_reg[5][3]~q\,
	datac => \reg_inst|data_reg[7][3]~q\,
	datad => \reg_inst|Mux4~0_combout\,
	combout => \reg_inst|Mux4~1_combout\);

-- Location: FF_X51_Y29_N23
\reg_inst|data_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux12~4_combout\,
	ena => \reg_inst|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[3][3]~q\);

-- Location: FF_X49_Y30_N19
\reg_inst|data_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux12~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][3]~q\);

-- Location: LCCOMB_X49_Y30_N18
\reg_inst|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux4~2_combout\ = (\decoder_inst|reg_address_a\(0) & (((\reg_inst|data_reg[1][3]~q\) # (\decoder_inst|reg_address_a\(1))))) # (!\decoder_inst|reg_address_a\(0) & (\reg_inst|data_reg[0][3]~q\ & ((!\decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][3]~q\,
	datab => \decoder_inst|reg_address_a\(0),
	datac => \reg_inst|data_reg[1][3]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux4~2_combout\);

-- Location: LCCOMB_X50_Y30_N28
\reg_inst|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux4~3_combout\ = (\reg_inst|Mux4~2_combout\ & ((\reg_inst|data_reg[3][3]~q\) # ((!\decoder_inst|reg_address_a\(1))))) # (!\reg_inst|Mux4~2_combout\ & (((\reg_inst|data_reg[2][3]~q\ & \decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[3][3]~q\,
	datab => \reg_inst|Mux4~2_combout\,
	datac => \reg_inst|data_reg[2][3]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux4~3_combout\);

-- Location: LCCOMB_X51_Y30_N26
\reg_inst|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux4~4_combout\ = (\decoder_inst|reg_address_a\(2) & (\reg_inst|Mux4~1_combout\)) # (!\decoder_inst|reg_address_a\(2) & ((\reg_inst|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|Mux4~1_combout\,
	datab => \decoder_inst|reg_address_a\(2),
	datad => \reg_inst|Mux4~3_combout\,
	combout => \reg_inst|Mux4~4_combout\);

-- Location: FF_X51_Y30_N27
\reg_inst|data_out_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux4~4_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(3));

-- Location: FF_X54_Y31_N25
\decoder_inst|ram_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reg_inst|data_out_a\(3),
	sload => VCC,
	ena => \decoder_inst|ram_data_in[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_data_in\(3));

-- Location: LCCOMB_X55_Y31_N6
\decoder_inst|alu_a[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[0]~5_combout\ = (!\decoder_inst|format\(0) & \reg_inst|data_out_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|format\(0),
	datad => \reg_inst|data_out_a\(0),
	combout => \decoder_inst|alu_a[0]~5_combout\);

-- Location: LCCOMB_X55_Y31_N12
\decoder_inst|alu_a[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[0]~6_combout\ = (\decoder_inst|format\(0) & ((\decoder_inst|format\(1) & (\decoder_inst|alu_a\(0))) # (!\decoder_inst|format\(1) & ((\decoder_inst|A\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(0),
	datab => \decoder_inst|A\(0),
	datac => \decoder_inst|format\(1),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_a[0]~6_combout\);

-- Location: LCCOMB_X56_Y31_N18
\decoder_inst|alu_a[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[0]~7_combout\ = (\decoder_inst|alu_a[7]~2_combout\ & (\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\decoder_inst|alu_a[7]~2_combout\ & (((\decoder_inst|alu_a[0]~5_combout\) # 
-- (\decoder_inst|alu_a[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \decoder_inst|alu_a[7]~2_combout\,
	datac => \decoder_inst|alu_a[0]~5_combout\,
	datad => \decoder_inst|alu_a[0]~6_combout\,
	combout => \decoder_inst|alu_a[0]~7_combout\);

-- Location: LCCOMB_X56_Y31_N10
\alu_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Equal1~0_combout\ = (!\decoder_inst|alu_a[1]~3_combout\ & (!\decoder_inst|alu_a[0]~7_combout\ & (\decoder_inst|alu_a[7]~22_combout\ & !\decoder_inst|alu_a[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[1]~3_combout\,
	datab => \decoder_inst|alu_a[0]~7_combout\,
	datac => \decoder_inst|alu_a[7]~22_combout\,
	datad => \decoder_inst|alu_a[2]~10_combout\,
	combout => \alu_inst|Equal1~0_combout\);

-- Location: LCCOMB_X57_Y31_N30
\alu_inst|Equal1~0_OTERM35feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Equal1~0_OTERM35feeder_combout\ = \alu_inst|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Equal1~0_combout\,
	combout => \alu_inst|Equal1~0_OTERM35feeder_combout\);

-- Location: FF_X57_Y31_N31
\alu_inst|Equal1~0_NEW_REG34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Equal1~0_OTERM35feeder_combout\,
	ena => \decoder_inst|alu_a[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|Equal1~0_OTERM35\);

-- Location: LCCOMB_X55_Y30_N12
\alu_inst|Add3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~17_combout\ = (\alu_inst|Add3~2_combout\ & ((!\alu_inst|Equal1~1_combout\) # (!\alu_inst|Equal1~0_OTERM35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal1~0_OTERM35\,
	datab => \alu_inst|Add3~2_combout\,
	datac => \alu_inst|Equal1~1_combout\,
	combout => \alu_inst|Add3~17_combout\);

-- Location: LCCOMB_X52_Y30_N20
\alu_inst|Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~17_combout\ = (\alu_inst|Add2~2_combout\) # ((\alu_inst|Equal0~1_combout\ & \alu_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Equal0~1_combout\,
	datac => \alu_inst|Equal0~0_combout\,
	datad => \alu_inst|Add2~2_combout\,
	combout => \alu_inst|Add2~17_combout\);

-- Location: LCCOMB_X52_Y30_N26
\alu_inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux14~0_combout\ = (\decoder_inst|alu_sel\(1) & (((\decoder_inst|alu_sel\(0))))) # (!\decoder_inst|alu_sel\(1) & ((\decoder_inst|alu_sel\(0) & (\alu_inst|Add3~17_combout\)) # (!\decoder_inst|alu_sel\(0) & ((\alu_inst|Add2~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add3~17_combout\,
	datab => \decoder_inst|alu_sel\(1),
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Add2~17_combout\,
	combout => \alu_inst|Mux14~0_combout\);

-- Location: LCCOMB_X52_Y30_N30
\alu_inst|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux14~1_combout\ = (\alu_inst|Mux14~0_combout\ & ((\decoder_inst|alu_a\(2)) # ((!\decoder_inst|alu_sel\(1))))) # (!\alu_inst|Mux14~0_combout\ & (((\decoder_inst|alu_a\(0) & \decoder_inst|alu_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mux14~0_combout\,
	datab => \decoder_inst|alu_a\(2),
	datac => \decoder_inst|alu_a\(0),
	datad => \decoder_inst|alu_sel\(1),
	combout => \alu_inst|Mux14~1_combout\);

-- Location: FF_X52_Y30_N31
\alu_inst|result[1]_NEW_REG18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux14~1_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[1]_OTERM19\);

-- Location: FF_X50_Y29_N3
\alu_inst|result[1]_OTERM21_NEW_REG84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Add1~2_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[1]_OTERM21_OTERM85\);

-- Location: FF_X55_Y28_N27
\alu_inst|result[1]_OTERM21_OTERM89_NEW_REG163\ : dffeas
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
	q => \alu_inst|result[1]_OTERM21_OTERM89_OTERM164\);

-- Location: FF_X55_Y29_N15
\alu_inst|result[1]_OTERM21_OTERM89_NEW_REG165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|op_1~2_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[1]_OTERM21_OTERM89_OTERM166\);

-- Location: FF_X54_Y29_N3
\alu_inst|result[1]_OTERM21_OTERM89_NEW_REG167\ : dffeas
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
	q => \alu_inst|result[1]_OTERM21_OTERM89_OTERM168\);

-- Location: LCCOMB_X54_Y29_N2
\alu_inst|Div0|auto_generated|divider|quotient[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\ = (\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (!\alu_inst|result[1]_OTERM21_OTERM89_OTERM164\ & ((!\alu_inst|result[1]_OTERM21_OTERM89_OTERM168\)))) # 
-- (!\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (((\alu_inst|result[1]_OTERM21_OTERM89_OTERM166\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[1]_OTERM21_OTERM89_OTERM164\,
	datab => \alu_inst|result[1]_OTERM21_OTERM89_OTERM166\,
	datac => \alu_inst|result[1]_OTERM21_OTERM89_OTERM168\,
	datad => \alu_inst|result[5]_OTERM5_OTERM65_OTERM139\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\);

-- Location: LCCOMB_X51_Y29_N8
\alu_inst|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux14~2_combout\ = (\decoder_inst|alu_sel\(1) & ((\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\) # ((\decoder_inst|alu_sel\(0))))) # (!\decoder_inst|alu_sel\(1) & (((!\decoder_inst|alu_sel\(0) & \alu_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \decoder_inst|alu_sel\(1),
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Add0~2_combout\,
	combout => \alu_inst|Mux14~2_combout\);

-- Location: FF_X51_Y29_N9
\alu_inst|result[1]_OTERM21_NEW_REG86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux14~2_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[1]_OTERM21_OTERM87\);

-- Location: LCCOMB_X51_Y29_N28
\alu_inst|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux14~3_combout\ = (\alu_inst|result[1]_OTERM21_OTERM87\ & (((\alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\) # (!\alu_inst|result[5]_OTERM5_OTERM61\)))) # (!\alu_inst|result[1]_OTERM21_OTERM87\ & 
-- (\alu_inst|result[1]_OTERM21_OTERM85\ & ((\alu_inst|result[5]_OTERM5_OTERM61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[1]_OTERM21_OTERM85\,
	datab => \alu_inst|Div0|auto_generated|divider|quotient[1]~2_combout\,
	datac => \alu_inst|result[1]_OTERM21_OTERM87\,
	datad => \alu_inst|result[5]_OTERM5_OTERM61\,
	combout => \alu_inst|Mux14~3_combout\);

-- Location: LCCOMB_X51_Y29_N0
\alu_inst|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux14~4_combout\ = (\alu_inst|result[5]_OTERM1\ & (\alu_inst|result[1]_OTERM19\)) # (!\alu_inst|result[5]_OTERM1\ & ((\alu_inst|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|result[5]_OTERM1\,
	datac => \alu_inst|result[1]_OTERM19\,
	datad => \alu_inst|Mux14~3_combout\,
	combout => \alu_inst|Mux14~4_combout\);

-- Location: FF_X49_Y30_N29
\reg_inst|data_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux14~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][1]~q\);

-- Location: FF_X49_Y30_N9
\reg_inst|data_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux14~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][1]~q\);

-- Location: LCCOMB_X49_Y30_N8
\reg_inst|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux6~2_combout\ = (\decoder_inst|reg_address_a\(1) & (((\decoder_inst|reg_address_a\(0))))) # (!\decoder_inst|reg_address_a\(1) & ((\decoder_inst|reg_address_a\(0) & ((\reg_inst|data_reg[1][1]~q\))) # (!\decoder_inst|reg_address_a\(0) & 
-- (\reg_inst|data_reg[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][1]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[1][1]~q\,
	datad => \decoder_inst|reg_address_a\(0),
	combout => \reg_inst|Mux6~2_combout\);

-- Location: LCCOMB_X51_Y29_N24
\reg_inst|data_reg[3][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[3][1]~feeder_combout\ = \alu_inst|Mux14~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu_inst|Mux14~4_combout\,
	combout => \reg_inst|data_reg[3][1]~feeder_combout\);

-- Location: FF_X51_Y29_N25
\reg_inst|data_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[3][1]~feeder_combout\,
	ena => \reg_inst|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[3][1]~q\);

-- Location: LCCOMB_X50_Y30_N16
\reg_inst|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux6~3_combout\ = (\reg_inst|Mux6~2_combout\ & ((\reg_inst|data_reg[3][1]~q\) # ((!\decoder_inst|reg_address_a\(1))))) # (!\reg_inst|Mux6~2_combout\ & (((\reg_inst|data_reg[2][1]~q\ & \decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|Mux6~2_combout\,
	datab => \reg_inst|data_reg[3][1]~q\,
	datac => \reg_inst|data_reg[2][1]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux6~3_combout\);

-- Location: LCCOMB_X47_Y30_N14
\reg_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux6~0_combout\ = (\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[6][1]~q\) # ((\decoder_inst|reg_address_a\(0))))) # (!\decoder_inst|reg_address_a\(1) & (((\reg_inst|data_reg[4][1]~q\ & !\decoder_inst|reg_address_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][1]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[4][1]~q\,
	datad => \decoder_inst|reg_address_a\(0),
	combout => \reg_inst|Mux6~0_combout\);

-- Location: FF_X51_Y30_N25
\reg_inst|data_reg[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux14~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[7][1]~q\);

-- Location: LCCOMB_X50_Y30_N14
\reg_inst|data_reg[5][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[5][1]~feeder_combout\ = \alu_inst|Mux14~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux14~4_combout\,
	combout => \reg_inst|data_reg[5][1]~feeder_combout\);

-- Location: FF_X50_Y30_N15
\reg_inst|data_reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[5][1]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[5][1]~q\);

-- Location: LCCOMB_X51_Y30_N24
\reg_inst|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux6~1_combout\ = (\decoder_inst|reg_address_a\(0) & ((\reg_inst|Mux6~0_combout\ & (\reg_inst|data_reg[7][1]~q\)) # (!\reg_inst|Mux6~0_combout\ & ((\reg_inst|data_reg[5][1]~q\))))) # (!\decoder_inst|reg_address_a\(0) & 
-- (\reg_inst|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(0),
	datab => \reg_inst|Mux6~0_combout\,
	datac => \reg_inst|data_reg[7][1]~q\,
	datad => \reg_inst|data_reg[5][1]~q\,
	combout => \reg_inst|Mux6~1_combout\);

-- Location: LCCOMB_X51_Y30_N0
\reg_inst|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux6~4_combout\ = (\decoder_inst|reg_address_a\(2) & ((\reg_inst|Mux6~1_combout\))) # (!\decoder_inst|reg_address_a\(2) & (\reg_inst|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|Mux6~3_combout\,
	datab => \decoder_inst|reg_address_a\(2),
	datad => \reg_inst|Mux6~1_combout\,
	combout => \reg_inst|Mux6~4_combout\);

-- Location: FF_X51_Y30_N1
\reg_inst|data_out_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux6~4_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(1));

-- Location: LCCOMB_X54_Y31_N4
\decoder_inst|ram_data_in[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_data_in[1]~feeder_combout\ = \reg_inst|data_out_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_inst|data_out_a\(1),
	combout => \decoder_inst|ram_data_in[1]~feeder_combout\);

-- Location: FF_X54_Y31_N5
\decoder_inst|ram_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_data_in[1]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_data_in\(1));

-- Location: LCCOMB_X55_Y31_N30
\decoder_inst|alu_a[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[1]~1_combout\ = (\decoder_inst|format\(0) & ((\decoder_inst|format\(1) & ((\decoder_inst|alu_a\(1)))) # (!\decoder_inst|format\(1) & (\decoder_inst|A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|A\(1),
	datab => \decoder_inst|format\(0),
	datac => \decoder_inst|format\(1),
	datad => \decoder_inst|alu_a\(1),
	combout => \decoder_inst|alu_a[1]~1_combout\);

-- Location: LCCOMB_X55_Y31_N10
\decoder_inst|alu_a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[1]~0_combout\ = (\reg_inst|data_out_a\(1) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(1),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|alu_a[1]~0_combout\);

-- Location: LCCOMB_X56_Y31_N6
\decoder_inst|alu_a[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[1]~3_combout\ = (\decoder_inst|alu_a[7]~2_combout\ & (\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a1\)) # (!\decoder_inst|alu_a[7]~2_combout\ & (((\decoder_inst|alu_a[1]~1_combout\) # (\decoder_inst|alu_a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a1\,
	datab => \decoder_inst|alu_a[1]~1_combout\,
	datac => \decoder_inst|alu_a[7]~2_combout\,
	datad => \decoder_inst|alu_a[1]~0_combout\,
	combout => \decoder_inst|alu_a[1]~3_combout\);

-- Location: FF_X56_Y31_N7
\decoder_inst|alu_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[1]~3_combout\,
	ena => \decoder_inst|alu_a[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(1));

-- Location: LCCOMB_X54_Y30_N4
\alu_inst|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Equal1~2_combout\ = (\alu_inst|Equal1~0_OTERM35\ & \alu_inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal1~0_OTERM35\,
	datac => \alu_inst|Equal1~1_combout\,
	combout => \alu_inst|Equal1~2_combout\);

-- Location: LCCOMB_X54_Y30_N26
\alu_inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux15~0_combout\ = (!\decoder_inst|alu_sel\(0) & (((\alu_inst|Equal0~1_combout\ & \alu_inst|Equal0~0_combout\)) # (!\decoder_inst|alu_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \alu_inst|Equal0~1_combout\,
	datac => \alu_inst|Equal0~0_combout\,
	datad => \decoder_inst|alu_a\(0),
	combout => \alu_inst|Mux15~0_combout\);

-- Location: LCCOMB_X54_Y30_N30
\alu_inst|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux15~1_combout\ = (\alu_inst|Mux15~0_combout\) # ((\decoder_inst|alu_sel\(0) & (!\alu_inst|Equal1~2_combout\ & !\decoder_inst|alu_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \alu_inst|Equal1~2_combout\,
	datac => \alu_inst|Mux15~0_combout\,
	datad => \decoder_inst|alu_a\(0),
	combout => \alu_inst|Mux15~1_combout\);

-- Location: LCCOMB_X49_Y29_N10
\alu_inst|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux15~2_combout\ = (\decoder_inst|alu_sel\(1) & (\decoder_inst|alu_a\(1) & ((\decoder_inst|alu_sel\(0))))) # (!\decoder_inst|alu_sel\(1) & (((\alu_inst|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(1),
	datab => \decoder_inst|alu_sel\(1),
	datac => \alu_inst|Mux15~1_combout\,
	datad => \decoder_inst|alu_sel\(0),
	combout => \alu_inst|Mux15~2_combout\);

-- Location: FF_X49_Y29_N11
\alu_inst|result[0]_NEW_REG30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux15~2_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[0]_OTERM31\);

-- Location: FF_X56_Y28_N23
\alu_inst|result[0]_OTERM33_NEW_REG108\ : dffeas
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
	q => \alu_inst|result[0]_OTERM33_OTERM109\);

-- Location: FF_X49_Y29_N21
\alu_inst|result[0]_OTERM33_NEW_REG106\ : dffeas
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
	q => \alu_inst|result[0]_OTERM33_OTERM107\);

-- Location: FF_X49_Y29_N19
\alu_inst|result[0]_OTERM33_NEW_REG110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \decoder_inst|alu_sel\(1),
	sload => VCC,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[0]_OTERM33_OTERM111\);

-- Location: LCCOMB_X49_Y29_N12
\alu_inst|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux15~3_combout\ = (\decoder_inst|alu_sel\(0) & ((\decoder_inst|alu_sel\(1)) # ((\alu_inst|Add1~0_combout\)))) # (!\decoder_inst|alu_sel\(0) & (!\decoder_inst|alu_sel\(1) & ((\alu_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \decoder_inst|alu_sel\(1),
	datac => \alu_inst|Add1~0_combout\,
	datad => \alu_inst|Add0~0_combout\,
	combout => \alu_inst|Mux15~3_combout\);

-- Location: FF_X49_Y29_N13
\alu_inst|result[0]_OTERM33_NEW_REG112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux15~3_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[0]_OTERM33_OTERM113\);

-- Location: LCCOMB_X49_Y29_N18
\alu_inst|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux15~4_combout\ = (\alu_inst|result[0]_OTERM33_OTERM111\ & ((\alu_inst|result[0]_OTERM33_OTERM113\ & (!\alu_inst|result[0]_OTERM33_OTERM109\)) # (!\alu_inst|result[0]_OTERM33_OTERM113\ & ((\alu_inst|result[0]_OTERM33_OTERM107\))))) # 
-- (!\alu_inst|result[0]_OTERM33_OTERM111\ & (((\alu_inst|result[0]_OTERM33_OTERM113\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[0]_OTERM33_OTERM109\,
	datab => \alu_inst|result[0]_OTERM33_OTERM107\,
	datac => \alu_inst|result[0]_OTERM33_OTERM111\,
	datad => \alu_inst|result[0]_OTERM33_OTERM113\,
	combout => \alu_inst|Mux15~4_combout\);

-- Location: LCCOMB_X49_Y29_N20
\alu_inst|Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux15~5_combout\ = (\alu_inst|result[5]_OTERM1\ & (\alu_inst|result[0]_OTERM31\)) # (!\alu_inst|result[5]_OTERM1\ & ((\alu_inst|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[0]_OTERM31\,
	datab => \alu_inst|Mux15~4_combout\,
	datad => \alu_inst|result[5]_OTERM1\,
	combout => \alu_inst|Mux15~5_combout\);

-- Location: FF_X49_Y30_N7
\reg_inst|data_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux15~5_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[0][0]~q\);

-- Location: FF_X49_Y30_N17
\reg_inst|data_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux15~5_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][0]~q\);

-- Location: LCCOMB_X49_Y30_N16
\reg_inst|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux7~2_combout\ = (\decoder_inst|reg_address_a\(0) & (((\reg_inst|data_reg[1][0]~q\) # (\decoder_inst|reg_address_a\(1))))) # (!\decoder_inst|reg_address_a\(0) & (\reg_inst|data_reg[0][0]~q\ & ((!\decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][0]~q\,
	datab => \decoder_inst|reg_address_a\(0),
	datac => \reg_inst|data_reg[1][0]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux7~2_combout\);

-- Location: LCCOMB_X49_Y29_N28
\reg_inst|data_reg[3][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[3][0]~feeder_combout\ = \alu_inst|Mux15~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux15~5_combout\,
	combout => \reg_inst|data_reg[3][0]~feeder_combout\);

-- Location: FF_X49_Y29_N29
\reg_inst|data_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[3][0]~feeder_combout\,
	ena => \reg_inst|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[3][0]~q\);

-- Location: LCCOMB_X50_Y30_N8
\reg_inst|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux7~3_combout\ = (\reg_inst|Mux7~2_combout\ & ((\reg_inst|data_reg[3][0]~q\) # ((!\decoder_inst|reg_address_a\(1))))) # (!\reg_inst|Mux7~2_combout\ & (((\reg_inst|data_reg[2][0]~q\ & \decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|Mux7~2_combout\,
	datab => \reg_inst|data_reg[3][0]~q\,
	datac => \reg_inst|data_reg[2][0]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux7~3_combout\);

-- Location: LCCOMB_X47_Y30_N2
\reg_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux7~0_combout\ = (\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[6][0]~q\) # ((\decoder_inst|reg_address_a\(0))))) # (!\decoder_inst|reg_address_a\(1) & (((\reg_inst|data_reg[4][0]~q\ & !\decoder_inst|reg_address_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][0]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[4][0]~q\,
	datad => \decoder_inst|reg_address_a\(0),
	combout => \reg_inst|Mux7~0_combout\);

-- Location: FF_X51_Y30_N19
\reg_inst|data_reg[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux15~5_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[7][0]~q\);

-- Location: LCCOMB_X50_Y30_N12
\reg_inst|data_reg[5][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[5][0]~feeder_combout\ = \alu_inst|Mux15~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux15~5_combout\,
	combout => \reg_inst|data_reg[5][0]~feeder_combout\);

-- Location: FF_X50_Y30_N13
\reg_inst|data_reg[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[5][0]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[5][0]~q\);

-- Location: LCCOMB_X51_Y30_N18
\reg_inst|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux7~1_combout\ = (\decoder_inst|reg_address_a\(0) & ((\reg_inst|Mux7~0_combout\ & (\reg_inst|data_reg[7][0]~q\)) # (!\reg_inst|Mux7~0_combout\ & ((\reg_inst|data_reg[5][0]~q\))))) # (!\decoder_inst|reg_address_a\(0) & 
-- (\reg_inst|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(0),
	datab => \reg_inst|Mux7~0_combout\,
	datac => \reg_inst|data_reg[7][0]~q\,
	datad => \reg_inst|data_reg[5][0]~q\,
	combout => \reg_inst|Mux7~1_combout\);

-- Location: LCCOMB_X51_Y30_N20
\reg_inst|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux7~4_combout\ = (\decoder_inst|reg_address_a\(2) & ((\reg_inst|Mux7~1_combout\))) # (!\decoder_inst|reg_address_a\(2) & (\reg_inst|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|Mux7~3_combout\,
	datab => \decoder_inst|reg_address_a\(2),
	datad => \reg_inst|Mux7~1_combout\,
	combout => \reg_inst|Mux7~4_combout\);

-- Location: FF_X51_Y30_N21
\reg_inst|data_out_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux7~4_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(0));

-- Location: LCCOMB_X54_Y31_N6
\decoder_inst|ram_data_in[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|ram_data_in[0]~feeder_combout\ = \reg_inst|data_out_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(0),
	combout => \decoder_inst|ram_data_in[0]~feeder_combout\);

-- Location: FF_X54_Y31_N7
\decoder_inst|ram_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|ram_data_in[0]~feeder_combout\,
	ena => \decoder_inst|ram_data_in[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|ram_data_in\(0));

-- Location: LCCOMB_X55_Y31_N28
\decoder_inst|alu_a[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[2]~9_combout\ = (\decoder_inst|format\(0) & ((\decoder_inst|format\(1) & ((\decoder_inst|alu_a\(2)))) # (!\decoder_inst|format\(1) & (\decoder_inst|A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(1),
	datab => \decoder_inst|format\(0),
	datac => \decoder_inst|A\(2),
	datad => \decoder_inst|alu_a\(2),
	combout => \decoder_inst|alu_a[2]~9_combout\);

-- Location: LCCOMB_X56_Y31_N0
\decoder_inst|alu_a[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|alu_a[2]~10_combout\ = (\decoder_inst|alu_a[7]~2_combout\ & (((\ram_inst|data_ram_rtl_0|auto_generated|ram_block1a2\)))) # (!\decoder_inst|alu_a[7]~2_combout\ & ((\decoder_inst|alu_a[2]~8_combout\) # ((\decoder_inst|alu_a[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a[2]~8_combout\,
	datab => \decoder_inst|alu_a[7]~2_combout\,
	datac => \ram_inst|data_ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \decoder_inst|alu_a[2]~9_combout\,
	combout => \decoder_inst|alu_a[2]~10_combout\);

-- Location: FF_X56_Y31_N1
\decoder_inst|alu_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|alu_a[2]~10_combout\,
	ena => \decoder_inst|alu_a[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|alu_a\(2));

-- Location: LCCOMB_X49_Y29_N22
\alu_inst|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux13~2_combout\ = (\decoder_inst|alu_sel\(0) & (\decoder_inst|alu_sel\(1))) # (!\decoder_inst|alu_sel\(0) & ((\decoder_inst|alu_sel\(1) & ((\alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!\decoder_inst|alu_sel\(1) & 
-- (\alu_inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_sel\(0),
	datab => \decoder_inst|alu_sel\(1),
	datac => \alu_inst|Add0~4_combout\,
	datad => \alu_inst|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \alu_inst|Mux13~2_combout\);

-- Location: FF_X49_Y29_N23
\alu_inst|result[2]_OTERM17_NEW_REG80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux13~2_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[2]_OTERM17_OTERM81\);

-- Location: FF_X57_Y28_N29
\alu_inst|result[2]_OTERM17_OTERM83_NEW_REG156\ : dffeas
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
	q => \alu_inst|result[2]_OTERM17_OTERM83_OTERM157\);

-- Location: FF_X54_Y29_N1
\alu_inst|result[2]_OTERM17_OTERM83_NEW_REG160\ : dffeas
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
	q => \alu_inst|result[2]_OTERM17_OTERM83_OTERM161\);

-- Location: FF_X55_Y29_N17
\alu_inst|result[2]_OTERM17_OTERM83_NEW_REG158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Div0|auto_generated|divider|op_1~4_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[2]_OTERM17_OTERM83_OTERM159\);

-- Location: LCCOMB_X54_Y29_N0
\alu_inst|Div0|auto_generated|divider|quotient[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\ = (\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (!\alu_inst|result[2]_OTERM17_OTERM83_OTERM157\ & (!\alu_inst|result[2]_OTERM17_OTERM83_OTERM161\))) # 
-- (!\alu_inst|result[5]_OTERM5_OTERM65_OTERM139\ & (((\alu_inst|result[2]_OTERM17_OTERM83_OTERM159\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[2]_OTERM17_OTERM83_OTERM157\,
	datab => \alu_inst|result[5]_OTERM5_OTERM65_OTERM139\,
	datac => \alu_inst|result[2]_OTERM17_OTERM83_OTERM161\,
	datad => \alu_inst|result[2]_OTERM17_OTERM83_OTERM159\,
	combout => \alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\);

-- Location: FF_X50_Y29_N5
\alu_inst|result[2]_OTERM17_NEW_REG78\ : dffeas
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
	q => \alu_inst|result[2]_OTERM17_OTERM79\);

-- Location: LCCOMB_X51_Y29_N14
\alu_inst|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux13~3_combout\ = (\alu_inst|result[2]_OTERM17_OTERM81\ & ((\alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\) # ((!\alu_inst|result[5]_OTERM5_OTERM61\)))) # (!\alu_inst|result[2]_OTERM17_OTERM81\ & 
-- (((\alu_inst|result[2]_OTERM17_OTERM79\ & \alu_inst|result[5]_OTERM5_OTERM61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|result[2]_OTERM17_OTERM81\,
	datab => \alu_inst|Div0|auto_generated|divider|quotient[2]~6_combout\,
	datac => \alu_inst|result[2]_OTERM17_OTERM79\,
	datad => \alu_inst|result[5]_OTERM5_OTERM61\,
	combout => \alu_inst|Mux13~3_combout\);

-- Location: LCCOMB_X55_Y30_N10
\alu_inst|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add3~22_combout\ = (\alu_inst|Add3~4_combout\ & ((!\alu_inst|Equal1~1_combout\) # (!\alu_inst|Equal1~0_OTERM35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal1~0_OTERM35\,
	datab => \alu_inst|Add3~4_combout\,
	datac => \alu_inst|Equal1~1_combout\,
	combout => \alu_inst|Add3~22_combout\);

-- Location: LCCOMB_X52_Y30_N16
\alu_inst|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Add2~22_combout\ = (\alu_inst|Add2~4_combout\) # ((\alu_inst|Equal0~0_combout\ & \alu_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Equal0~0_combout\,
	datab => \alu_inst|Equal0~1_combout\,
	datac => \alu_inst|Add2~4_combout\,
	combout => \alu_inst|Add2~22_combout\);

-- Location: LCCOMB_X52_Y30_N18
\alu_inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux13~0_combout\ = (\decoder_inst|alu_sel\(1) & (((\decoder_inst|alu_sel\(0))))) # (!\decoder_inst|alu_sel\(1) & ((\decoder_inst|alu_sel\(0) & (\alu_inst|Add3~22_combout\)) # (!\decoder_inst|alu_sel\(0) & ((\alu_inst|Add2~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Add3~22_combout\,
	datab => \decoder_inst|alu_sel\(1),
	datac => \decoder_inst|alu_sel\(0),
	datad => \alu_inst|Add2~22_combout\,
	combout => \alu_inst|Mux13~0_combout\);

-- Location: LCCOMB_X52_Y30_N28
\alu_inst|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux13~1_combout\ = (\decoder_inst|alu_sel\(1) & ((\alu_inst|Mux13~0_combout\ & (\decoder_inst|alu_a\(3))) # (!\alu_inst|Mux13~0_combout\ & ((\decoder_inst|alu_a\(1)))))) # (!\decoder_inst|alu_sel\(1) & (((\alu_inst|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|alu_a\(3),
	datab => \decoder_inst|alu_sel\(1),
	datac => \alu_inst|Mux13~0_combout\,
	datad => \decoder_inst|alu_a\(1),
	combout => \alu_inst|Mux13~1_combout\);

-- Location: FF_X52_Y30_N29
\alu_inst|result[2]_NEW_REG14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \alu_inst|Mux13~1_combout\,
	ena => \pipeline_inst|stage\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_inst|result[2]_OTERM15\);

-- Location: LCCOMB_X51_Y29_N20
\alu_inst|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_inst|Mux13~4_combout\ = (\alu_inst|result[5]_OTERM1\ & ((\alu_inst|result[2]_OTERM15\))) # (!\alu_inst|result[5]_OTERM1\ & (\alu_inst|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Mux13~3_combout\,
	datac => \alu_inst|result[5]_OTERM1\,
	datad => \alu_inst|result[2]_OTERM15\,
	combout => \alu_inst|Mux13~4_combout\);

-- Location: FF_X51_Y29_N5
\reg_inst|data_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux13~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[3][2]~q\);

-- Location: FF_X49_Y30_N21
\reg_inst|data_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux13~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[1][2]~q\);

-- Location: LCCOMB_X49_Y30_N20
\reg_inst|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux5~2_combout\ = (\decoder_inst|reg_address_a\(0) & (((\reg_inst|data_reg[1][2]~q\) # (\decoder_inst|reg_address_a\(1))))) # (!\decoder_inst|reg_address_a\(0) & (\reg_inst|data_reg[0][2]~q\ & ((!\decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[0][2]~q\,
	datab => \decoder_inst|reg_address_a\(0),
	datac => \reg_inst|data_reg[1][2]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux5~2_combout\);

-- Location: LCCOMB_X50_Y30_N18
\reg_inst|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux5~3_combout\ = (\reg_inst|Mux5~2_combout\ & ((\reg_inst|data_reg[3][2]~q\) # ((!\decoder_inst|reg_address_a\(1))))) # (!\reg_inst|Mux5~2_combout\ & (((\reg_inst|data_reg[2][2]~q\ & \decoder_inst|reg_address_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[3][2]~q\,
	datab => \reg_inst|Mux5~2_combout\,
	datac => \reg_inst|data_reg[2][2]~q\,
	datad => \decoder_inst|reg_address_a\(1),
	combout => \reg_inst|Mux5~3_combout\);

-- Location: LCCOMB_X50_Y30_N30
\reg_inst|data_reg[5][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|data_reg[5][2]~feeder_combout\ = \alu_inst|Mux13~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_inst|Mux13~4_combout\,
	combout => \reg_inst|data_reg[5][2]~feeder_combout\);

-- Location: FF_X50_Y30_N31
\reg_inst|data_reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|data_reg[5][2]~feeder_combout\,
	ena => \reg_inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[5][2]~q\);

-- Location: FF_X51_Y30_N5
\reg_inst|data_reg[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \alu_inst|Mux13~4_combout\,
	sload => VCC,
	ena => \reg_inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_reg[7][2]~q\);

-- Location: LCCOMB_X47_Y30_N4
\reg_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux5~0_combout\ = (\decoder_inst|reg_address_a\(1) & ((\reg_inst|data_reg[6][2]~q\) # ((\decoder_inst|reg_address_a\(0))))) # (!\decoder_inst|reg_address_a\(1) & (((\reg_inst|data_reg[4][2]~q\ & !\decoder_inst|reg_address_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_reg[6][2]~q\,
	datab => \decoder_inst|reg_address_a\(1),
	datac => \reg_inst|data_reg[4][2]~q\,
	datad => \decoder_inst|reg_address_a\(0),
	combout => \reg_inst|Mux5~0_combout\);

-- Location: LCCOMB_X51_Y30_N4
\reg_inst|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux5~1_combout\ = (\decoder_inst|reg_address_a\(0) & ((\reg_inst|Mux5~0_combout\ & ((\reg_inst|data_reg[7][2]~q\))) # (!\reg_inst|Mux5~0_combout\ & (\reg_inst|data_reg[5][2]~q\)))) # (!\decoder_inst|reg_address_a\(0) & 
-- (((\reg_inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|reg_address_a\(0),
	datab => \reg_inst|data_reg[5][2]~q\,
	datac => \reg_inst|data_reg[7][2]~q\,
	datad => \reg_inst|Mux5~0_combout\,
	combout => \reg_inst|Mux5~1_combout\);

-- Location: LCCOMB_X51_Y30_N10
\reg_inst|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_inst|Mux5~4_combout\ = (\decoder_inst|reg_address_a\(2) & ((\reg_inst|Mux5~1_combout\))) # (!\decoder_inst|reg_address_a\(2) & (\reg_inst|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|Mux5~3_combout\,
	datac => \reg_inst|Mux5~1_combout\,
	datad => \decoder_inst|reg_address_a\(2),
	combout => \reg_inst|Mux5~4_combout\);

-- Location: FF_X51_Y30_N11
\reg_inst|data_out_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reg_inst|Mux5~4_combout\,
	ena => \reg_inst|data_out_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|data_out_a\(2));

-- Location: LCCOMB_X55_Y31_N26
\decoder_inst|decoder_out[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[2]~9_combout\ = (\decoder_inst|format\(1) & (((\reg_inst|data_out_a\(2))))) # (!\decoder_inst|format\(1) & ((\decoder_inst|format\(0) & (\decoder_inst|A\(2))) # (!\decoder_inst|format\(0) & ((\reg_inst|data_out_a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|A\(2),
	datab => \decoder_inst|format\(1),
	datac => \reg_inst|data_out_a\(2),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|decoder_out[2]~9_combout\);

-- Location: LCCOMB_X51_Y31_N18
\decoder_inst|decoder_out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[0]~1_combout\ = (\decoder_inst|op\(0) & (\decoder_inst|op\(4) & ((!\decoder_inst|format\(1)) # (!\decoder_inst|format\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(0),
	datab => \decoder_inst|op\(0),
	datac => \decoder_inst|op\(4),
	datad => \decoder_inst|format\(1),
	combout => \decoder_inst|decoder_out[0]~1_combout\);

-- Location: LCCOMB_X52_Y31_N0
\decoder_inst|decoder_out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[0]~2_combout\ = (!\decoder_inst|op\(2) & (\decoder_inst|decoder_out[0]~1_combout\ & (\pipeline_inst|stage\(2) & \decoder_inst|op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|op\(2),
	datab => \decoder_inst|decoder_out[0]~1_combout\,
	datac => \pipeline_inst|stage\(2),
	datad => \decoder_inst|op\(1),
	combout => \decoder_inst|decoder_out[0]~2_combout\);

-- Location: FF_X55_Y31_N27
\decoder_inst|decoder_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|decoder_out[2]~9_combout\,
	ena => \decoder_inst|decoder_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(2));

-- Location: LCCOMB_X54_Y31_N26
\decoder_inst|decoder_out[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[7]~3_combout\ = (!\decoder_inst|format\(0) & \reg_inst|data_out_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder_inst|format\(0),
	datad => \reg_inst|data_out_a\(7),
	combout => \decoder_inst|decoder_out[7]~3_combout\);

-- Location: FF_X54_Y31_N27
\decoder_inst|decoder_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|decoder_out[7]~3_combout\,
	ena => \decoder_inst|decoder_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(7));

-- Location: LCCOMB_X55_Y31_N16
\decoder_inst|decoder_out[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[1]~4_combout\ = (\decoder_inst|format\(1) & (((\reg_inst|data_out_a\(1))))) # (!\decoder_inst|format\(1) & ((\decoder_inst|format\(0) & (\decoder_inst|A\(1))) # (!\decoder_inst|format\(0) & ((\reg_inst|data_out_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|A\(1),
	datab => \decoder_inst|format\(1),
	datac => \reg_inst|data_out_a\(1),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|decoder_out[1]~4_combout\);

-- Location: FF_X55_Y31_N17
\decoder_inst|decoder_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|decoder_out[1]~4_combout\,
	ena => \decoder_inst|decoder_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(1));

-- Location: LCCOMB_X55_Y31_N4
\decoder_inst|decoder_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[0]~0_combout\ = (\decoder_inst|format\(0) & ((\decoder_inst|format\(1) & (\reg_inst|data_out_a\(0))) # (!\decoder_inst|format\(1) & ((\decoder_inst|A\(0)))))) # (!\decoder_inst|format\(0) & (\reg_inst|data_out_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|data_out_a\(0),
	datab => \decoder_inst|format\(0),
	datac => \decoder_inst|format\(1),
	datad => \decoder_inst|A\(0),
	combout => \decoder_inst|decoder_out[0]~0_combout\);

-- Location: FF_X55_Y31_N5
\decoder_inst|decoder_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|decoder_out[0]~0_combout\,
	ena => \decoder_inst|decoder_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(0));

-- Location: LCCOMB_X62_Y43_N14
\screen_inst|dig2dec_inst|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~0_combout\ = \decoder_inst|decoder_out\(0)
-- \screen_inst|dig2dec_inst|Add2~1\ = CARRY((!\decoder_inst|decoder_out\(0) & \decoder_inst|decoder_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(0),
	datab => \decoder_inst|decoder_out\(7),
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Add2~0_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~1\);

-- Location: LCCOMB_X62_Y43_N16
\screen_inst|dig2dec_inst|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~2_combout\ = (\screen_inst|dig2dec_inst|Add2~1\ & (\decoder_inst|decoder_out\(1) $ ((!\decoder_inst|decoder_out\(7))))) # (!\screen_inst|dig2dec_inst|Add2~1\ & ((\decoder_inst|decoder_out\(1) $ 
-- (\decoder_inst|decoder_out\(7))) # (GND)))
-- \screen_inst|dig2dec_inst|Add2~3\ = CARRY((\decoder_inst|decoder_out\(1) $ (!\decoder_inst|decoder_out\(7))) # (!\screen_inst|dig2dec_inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(1),
	datab => \decoder_inst|decoder_out\(7),
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Add2~1\,
	combout => \screen_inst|dig2dec_inst|Add2~2_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~3\);

-- Location: LCCOMB_X62_Y43_N18
\screen_inst|dig2dec_inst|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~4_combout\ = (\screen_inst|dig2dec_inst|Add2~3\ & ((\decoder_inst|decoder_out\(2) $ (\decoder_inst|decoder_out\(7))))) # (!\screen_inst|dig2dec_inst|Add2~3\ & (\decoder_inst|decoder_out\(2) $ (\decoder_inst|decoder_out\(7) $ 
-- (VCC))))
-- \screen_inst|dig2dec_inst|Add2~5\ = CARRY((!\screen_inst|dig2dec_inst|Add2~3\ & (\decoder_inst|decoder_out\(2) $ (\decoder_inst|decoder_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(2),
	datab => \decoder_inst|decoder_out\(7),
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Add2~3\,
	combout => \screen_inst|dig2dec_inst|Add2~4_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~5\);

-- Location: LCCOMB_X54_Y31_N28
\decoder_inst|decoder_out[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[6]~5_combout\ = (\reg_inst|data_out_a\(6) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(6),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|decoder_out[6]~5_combout\);

-- Location: FF_X54_Y31_N29
\decoder_inst|decoder_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|decoder_out[6]~5_combout\,
	ena => \decoder_inst|decoder_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(6));

-- Location: LCCOMB_X54_Y31_N8
\decoder_inst|decoder_out[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[5]~6_combout\ = (\reg_inst|data_out_a\(5) & !\decoder_inst|format\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|data_out_a\(5),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|decoder_out[5]~6_combout\);

-- Location: FF_X54_Y31_N9
\decoder_inst|decoder_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|decoder_out[5]~6_combout\,
	ena => \decoder_inst|decoder_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(5));

-- Location: LCCOMB_X55_Y31_N20
\decoder_inst|decoder_out[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[4]~7_combout\ = (\decoder_inst|format\(1) & (((\reg_inst|data_out_a\(4))))) # (!\decoder_inst|format\(1) & ((\decoder_inst|format\(0) & (\decoder_inst|A\(4))) # (!\decoder_inst|format\(0) & ((\reg_inst|data_out_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(1),
	datab => \decoder_inst|A\(4),
	datac => \reg_inst|data_out_a\(4),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|decoder_out[4]~7_combout\);

-- Location: FF_X55_Y31_N21
\decoder_inst|decoder_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|decoder_out[4]~7_combout\,
	ena => \decoder_inst|decoder_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(4));

-- Location: LCCOMB_X54_Y31_N0
\decoder_inst|decoder_out[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder_inst|decoder_out[3]~8_combout\ = (\decoder_inst|format\(1) & (((\reg_inst|data_out_a\(3))))) # (!\decoder_inst|format\(1) & ((\decoder_inst|format\(0) & (\decoder_inst|A\(3))) # (!\decoder_inst|format\(0) & ((\reg_inst|data_out_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|format\(1),
	datab => \decoder_inst|A\(3),
	datac => \reg_inst|data_out_a\(3),
	datad => \decoder_inst|format\(0),
	combout => \decoder_inst|decoder_out[3]~8_combout\);

-- Location: FF_X54_Y31_N1
\decoder_inst|decoder_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \decoder_inst|decoder_out[3]~8_combout\,
	ena => \decoder_inst|decoder_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decoder_inst|decoder_out\(3));

-- Location: LCCOMB_X62_Y43_N20
\screen_inst|dig2dec_inst|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Add2~6_combout\ = (\screen_inst|dig2dec_inst|Add2~5\ & (\decoder_inst|decoder_out\(3) $ ((!\decoder_inst|decoder_out\(7))))) # (!\screen_inst|dig2dec_inst|Add2~5\ & ((\decoder_inst|decoder_out\(3) $ 
-- (\decoder_inst|decoder_out\(7))) # (GND)))
-- \screen_inst|dig2dec_inst|Add2~7\ = CARRY((\decoder_inst|decoder_out\(3) $ (!\decoder_inst|decoder_out\(7))) # (!\screen_inst|dig2dec_inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_inst|decoder_out\(3),
	datab => \decoder_inst|decoder_out\(7),
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Add2~5\,
	combout => \screen_inst|dig2dec_inst|Add2~6_combout\,
	cout => \screen_inst|dig2dec_inst|Add2~7\);

-- Location: LCCOMB_X62_Y43_N22
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

-- Location: LCCOMB_X62_Y43_N24
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

-- Location: LCCOMB_X62_Y43_N26
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

-- Location: LCCOMB_X62_Y43_N28
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

-- Location: LCCOMB_X64_Y45_N12
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

-- Location: LCCOMB_X64_Y45_N14
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Add2~12_combout\ & (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\screen_inst|dig2dec_inst|Add2~12_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Add2~12_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X64_Y45_N16
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

-- Location: LCCOMB_X64_Y45_N18
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

-- Location: LCCOMB_X63_Y45_N22
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\screen_inst|dig2dec_inst|Add2~14_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X63_Y45_N16
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X63_Y45_N10
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

-- Location: LCCOMB_X63_Y45_N24
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

-- Location: LCCOMB_X64_Y45_N2
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\screen_inst|dig2dec_inst|Add2~10_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X63_Y45_N14
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

-- Location: LCCOMB_X63_Y45_N12
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X63_Y45_N18
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X63_Y45_N0
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X63_Y45_N2
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

-- Location: LCCOMB_X63_Y45_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X63_Y45_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X63_Y45_N8
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

-- Location: LCCOMB_X62_Y45_N22
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

-- Location: LCCOMB_X63_Y45_N28
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\screen_inst|dig2dec_inst|Add2~14_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X62_Y45_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X63_Y45_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\screen_inst|dig2dec_inst|Add2~12_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X63_Y45_N30
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\screen_inst|dig2dec_inst|Add2~10_combout\ $ 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X62_Y45_N0
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

-- Location: LCCOMB_X63_Y45_N20
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X62_Y45_N24
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X64_Y45_N28
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\screen_inst|dig2dec_inst|Add2~6_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X64_Y45_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\screen_inst|dig2dec_inst|Add2~6_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X62_Y45_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X62_Y45_N8
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

-- Location: LCCOMB_X62_Y45_N10
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X62_Y45_N12
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

-- Location: LCCOMB_X62_Y45_N14
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

-- Location: LCCOMB_X62_Y45_N16
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

-- Location: LCCOMB_X62_Y45_N20
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X61_Y45_N2
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

-- Location: LCCOMB_X62_Y45_N30
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X62_Y45_N28
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X61_Y45_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X62_Y45_N18
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X62_Y45_N2
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

-- Location: LCCOMB_X64_Y45_N10
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\screen_inst|dig2dec_inst|Add2~8_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X64_Y45_N24
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\screen_inst|dig2dec_inst|Add2~6_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X64_Y45_N20
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X64_Y45_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\screen_inst|dig2dec_inst|Add2~4_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X64_Y45_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\screen_inst|dig2dec_inst|Add2~4_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X61_Y45_N10
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

-- Location: LCCOMB_X61_Y45_N12
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X61_Y45_N14
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

-- Location: LCCOMB_X61_Y45_N16
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

-- Location: LCCOMB_X61_Y45_N18
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\))))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # (GND))))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X61_Y45_N20
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X61_Y45_N22
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

-- Location: LCCOMB_X64_Y45_N22
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\screen_inst|dig2dec_inst|Add2~4_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X61_Y45_N30
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X60_Y45_N2
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X60_Y45_N10
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

-- Location: LCCOMB_X61_Y45_N8
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X60_Y45_N12
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X61_Y45_N0
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X61_Y45_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X61_Y45_N28
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X61_Y45_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X62_Y45_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\screen_inst|dig2dec_inst|Add2~6_combout\))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X61_Y45_N24
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X60_Y45_N6
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ = (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \screen_inst|dig2dec_inst|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X60_Y45_N4
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \screen_inst|dig2dec_inst|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X60_Y45_N14
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

-- Location: LCCOMB_X60_Y45_N16
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

-- Location: LCCOMB_X60_Y45_N18
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

-- Location: LCCOMB_X60_Y45_N20
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

-- Location: LCCOMB_X60_Y45_N22
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

-- Location: LCCOMB_X60_Y45_N24
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

-- Location: LCCOMB_X60_Y45_N26
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X60_Y45_N28
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

-- Location: LCCOMB_X60_Y45_N8
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X60_Y45_N30
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X60_Y45_N0
\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\screen_inst|dig2dec_inst|Add2~2_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~2_combout\,
	combout => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X63_Y50_N28
\screen_inst|seg7_0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux6~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ $ (!\screen_inst|dig2dec_inst|Add2~0_combout\)))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\)) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & \screen_inst|dig2dec_inst|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~0_combout\,
	combout => \screen_inst|seg7_0|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y50_N24
\screen_inst|seg7_0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux5~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & !\screen_inst|dig2dec_inst|Add2~0_combout\)))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (\screen_inst|dig2dec_inst|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~0_combout\,
	combout => \screen_inst|seg7_0|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y50_N10
\screen_inst|seg7_0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux4~0_combout\ = (\screen_inst|dig2dec_inst|Add2~0_combout\ & (((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\screen_inst|dig2dec_inst|Add2~0_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~0_combout\,
	combout => \screen_inst|seg7_0|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y50_N4
\screen_inst|seg7_0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux3~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- ((\screen_inst|dig2dec_inst|Add2~0_combout\))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- !\screen_inst|dig2dec_inst|Add2~0_combout\)))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\screen_inst|dig2dec_inst|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~0_combout\,
	combout => \screen_inst|seg7_0|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y50_N12
\screen_inst|seg7_0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux2~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- ((\screen_inst|dig2dec_inst|Add2~0_combout\) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- ((\screen_inst|dig2dec_inst|Add2~0_combout\) # ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~0_combout\,
	combout => \screen_inst|seg7_0|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y50_N20
\screen_inst|seg7_0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux1~0_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\screen_inst|dig2dec_inst|Add2~0_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ $ (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- ((!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & \screen_inst|dig2dec_inst|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~0_combout\,
	combout => \screen_inst|seg7_0|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y50_N16
\screen_inst|seg7_0|Mux0~0_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_0|Mux0~0_wirecell_combout\ = (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\screen_inst|dig2dec_inst|Add2~0_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & !\screen_inst|dig2dec_inst|Add2~0_combout\)) # (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (!\screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \screen_inst|dig2dec_inst|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~0_combout\,
	combout => \screen_inst|seg7_0|Mux0~0_wirecell_combout\);

-- Location: LCCOMB_X62_Y43_N12
\screen_inst|dig2dec_inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|LessThan2~0_combout\ = (!\screen_inst|dig2dec_inst|Add2~14_combout\ & (((!\screen_inst|dig2dec_inst|Add2~4_combout\ & !\screen_inst|dig2dec_inst|Add2~2_combout\)) # (!\screen_inst|dig2dec_inst|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~2_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X62_Y43_N2
\screen_inst|dig2dec_inst|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|LessThan2~1_combout\ = (\screen_inst|dig2dec_inst|LessThan2~0_combout\ & (!\screen_inst|dig2dec_inst|Add2~8_combout\ & (!\screen_inst|dig2dec_inst|Add2~12_combout\ & !\screen_inst|dig2dec_inst|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan2~0_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~10_combout\,
	combout => \screen_inst|dig2dec_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X65_Y46_N20
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\screen_inst|dig2dec_inst|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~10_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X65_Y46_N22
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

-- Location: LCCOMB_X65_Y46_N24
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

-- Location: LCCOMB_X65_Y46_N26
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

-- Location: LCCOMB_X65_Y46_N12
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

-- Location: LCCOMB_X65_Y46_N14
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

-- Location: LCCOMB_X65_Y46_N30
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

-- Location: LCCOMB_X65_Y46_N16
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\screen_inst|dig2dec_inst|Add2~12_combout\ & \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X65_Y46_N10
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

-- Location: LCCOMB_X65_Y46_N18
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

-- Location: LCCOMB_X64_Y46_N30
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X64_Y46_N6
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X65_Y46_N0
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

-- Location: LCCOMB_X65_Y46_N2
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X65_Y46_N4
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X65_Y46_N6
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X65_Y46_N8
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

-- Location: LCCOMB_X64_Y46_N22
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

-- Location: LCCOMB_X65_Y46_N28
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

-- Location: LCCOMB_X64_Y46_N26
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

-- Location: LCCOMB_X64_Y46_N0
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

-- Location: LCCOMB_X64_Y46_N20
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X64_Y46_N8
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\screen_inst|dig2dec_inst|Add2~8_combout\ & \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X64_Y46_N24
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X64_Y46_N28
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X64_Y46_N10
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X64_Y46_N12
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X64_Y46_N14
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

-- Location: LCCOMB_X64_Y46_N16
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

-- Location: LCCOMB_X64_Y46_N18
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

-- Location: LCCOMB_X64_Y46_N4
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\screen_inst|dig2dec_inst|Add2~8_combout\)) # (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X64_Y46_N2
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

-- Location: LCCOMB_X63_Y46_N0
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

-- Location: LCCOMB_X63_Y46_N4
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X63_Y46_N12
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

-- Location: LCCOMB_X63_Y46_N8
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X63_Y46_N26
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\screen_inst|dig2dec_inst|Add2~4_combout\ & \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X63_Y46_N28
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\screen_inst|dig2dec_inst|Add2~4_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X63_Y46_N16
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

-- Location: LCCOMB_X63_Y46_N18
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

-- Location: LCCOMB_X63_Y46_N20
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

-- Location: LCCOMB_X63_Y46_N22
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y46_N24
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

-- Location: LCCOMB_X63_Y46_N30
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X62_Y46_N4
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X62_Y46_N22
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\screen_inst|dig2dec_inst|Add2~6_combout\))) # (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X62_Y46_N8
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

-- Location: LCCOMB_X63_Y46_N2
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X62_Y46_N2
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

-- Location: LCCOMB_X62_Y46_N10
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

-- Location: LCCOMB_X62_Y46_N24
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

-- Location: LCCOMB_X62_Y46_N12
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\) # 
-- (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X62_Y46_N14
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

-- Location: LCCOMB_X62_Y46_N16
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X62_Y46_N18
\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- (!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ & !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X62_Y46_N20
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

-- Location: LCCOMB_X62_Y49_N30
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

-- Location: LCCOMB_X63_Y49_N0
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X63_Y49_N2
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

-- Location: LCCOMB_X63_Y49_N4
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

-- Location: LCCOMB_X63_Y49_N6
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

-- Location: LCCOMB_X63_Y49_N8
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

-- Location: LCCOMB_X63_Y49_N10
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

-- Location: LCCOMB_X63_Y49_N12
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

-- Location: LCCOMB_X63_Y49_N14
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

-- Location: LCCOMB_X63_Y49_N16
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

-- Location: LCCOMB_X63_Y49_N28
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

-- Location: LCCOMB_X63_Y49_N26
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

-- Location: LCCOMB_X63_Y49_N22
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

-- Location: LCCOMB_X64_Y49_N30
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\ = (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- !\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~7_combout\);

-- Location: LCCOMB_X64_Y49_N0
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\ = (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[49]~8_combout\);

-- Location: LCCOMB_X64_Y49_N6
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

-- Location: LCCOMB_X64_Y49_N28
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

-- Location: LCCOMB_X64_Y49_N8
\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\)))
-- \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\) # 
-- (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~10_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|StageOut[48]~9_combout\,
	datad => VCC,
	combout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X64_Y49_N10
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

-- Location: LCCOMB_X64_Y49_N12
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

-- Location: LCCOMB_X64_Y49_N14
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

-- Location: LCCOMB_X64_Y49_N16
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

-- Location: LCCOMB_X64_Y49_N18
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

-- Location: LCCOMB_X64_Y49_N20
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

-- Location: LCCOMB_X64_Y49_N22
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

-- Location: LCCOMB_X64_Y49_N24
\screen_inst|dig2dec_inst|seg1[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[3]~7_combout\ = (\screen_inst|dig2dec_inst|LessThan2~1_combout\) # ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~6_combout\)) # 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[3]~6_combout\,
	datab => \screen_inst|dig2dec_inst|LessThan2~1_combout\,
	datac => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[3]~7_combout\);

-- Location: LCCOMB_X64_Y49_N26
\screen_inst|dig2dec_inst|seg1[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[2]~4_combout\ = \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ $ (\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[2]~4_combout\);

-- Location: LCCOMB_X64_Y49_N4
\screen_inst|dig2dec_inst|seg1[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[2]~5_combout\ = (!\screen_inst|dig2dec_inst|LessThan2~1_combout\ & ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\screen_inst|dig2dec_inst|seg1[2]~4_combout\)) # 
-- (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datab => \screen_inst|dig2dec_inst|LessThan2~1_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[2]~4_combout\,
	datad => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[2]~5_combout\);

-- Location: LCCOMB_X64_Y49_N2
\screen_inst|dig2dec_inst|seg1[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|seg1[1]~3_combout\ = (\screen_inst|dig2dec_inst|LessThan2~1_combout\) # ((\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((!\screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- (\screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datab => \screen_inst|dig2dec_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datac => \screen_inst|dig2dec_inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \screen_inst|dig2dec_inst|LessThan2~1_combout\,
	combout => \screen_inst|dig2dec_inst|seg1[1]~3_combout\);

-- Location: LCCOMB_X65_Y49_N0
\screen_inst|seg7_1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux6~0_combout\ = (\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & ((\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & !\screen_inst|dig2dec_inst|seg1[1]~3_combout\)) # 
-- (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & ((\screen_inst|dig2dec_inst|seg1[1]~3_combout\))))) # (!\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & (!\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ $ 
-- (\screen_inst|dig2dec_inst|seg1[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	combout => \screen_inst|seg7_1|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y49_N12
\screen_inst|seg7_1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux5~0_combout\ = (\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & ((\screen_inst|dig2dec_inst|seg1[1]~3_combout\) # ((!\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & \screen_inst|dig2dec_inst|seg1[2]~5_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & (\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ $ (\screen_inst|dig2dec_inst|seg1[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	combout => \screen_inst|seg7_1|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y49_N4
\screen_inst|seg7_1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux4~0_combout\ = (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & ((\screen_inst|dig2dec_inst|seg1[1]~3_combout\)))) # (!\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & 
-- ((\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~7_combout\)) # (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & ((\screen_inst|dig2dec_inst|seg1[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	combout => \screen_inst|seg7_1|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y49_N8
\screen_inst|seg7_1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux3~0_combout\ = (\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & ((\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & ((\screen_inst|dig2dec_inst|seg1[1]~3_combout\))) # (!\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & 
-- (!\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & !\screen_inst|dig2dec_inst|seg1[1]~3_combout\)))) # (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & ((\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & ((\screen_inst|dig2dec_inst|seg1[3]~7_combout\))) # 
-- (!\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	combout => \screen_inst|seg7_1|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y49_N10
\screen_inst|seg7_1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux2~0_combout\ = (\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & ((\screen_inst|dig2dec_inst|seg1[0]~2_combout\) # (\screen_inst|dig2dec_inst|seg1[1]~3_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & ((\screen_inst|dig2dec_inst|seg1[0]~2_combout\) # ((\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & !\screen_inst|dig2dec_inst|seg1[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	combout => \screen_inst|seg7_1|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y49_N18
\screen_inst|seg7_1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux1~0_combout\ = (\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~7_combout\ $ (\screen_inst|dig2dec_inst|seg1[1]~3_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|seg1[2]~5_combout\ & ((\screen_inst|dig2dec_inst|seg1[1]~3_combout\) # ((\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & !\screen_inst|dig2dec_inst|seg1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	combout => \screen_inst|seg7_1|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y49_N20
\screen_inst|seg7_1|Mux0~0_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_1|Mux0~0_wirecell_combout\ = (\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & (\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & (\screen_inst|dig2dec_inst|seg1[3]~7_combout\ $ (\screen_inst|dig2dec_inst|seg1[2]~5_combout\)))) # 
-- (!\screen_inst|dig2dec_inst|seg1[1]~3_combout\ & ((\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & (!\screen_inst|dig2dec_inst|seg1[0]~2_combout\ & \screen_inst|dig2dec_inst|seg1[2]~5_combout\)) # (!\screen_inst|dig2dec_inst|seg1[3]~7_combout\ & 
-- ((!\screen_inst|dig2dec_inst|seg1[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|seg1[0]~2_combout\,
	datab => \screen_inst|dig2dec_inst|seg1[3]~7_combout\,
	datac => \screen_inst|dig2dec_inst|seg1[2]~5_combout\,
	datad => \screen_inst|dig2dec_inst|seg1[1]~3_combout\,
	combout => \screen_inst|seg7_1|Mux0~0_wirecell_combout\);

-- Location: LCCOMB_X63_Y43_N6
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~6_combout\,
	datad => VCC,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X63_Y43_N8
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

-- Location: LCCOMB_X63_Y43_N10
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

-- Location: LCCOMB_X63_Y43_N12
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

-- Location: LCCOMB_X63_Y43_N14
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

-- Location: LCCOMB_X63_Y43_N16
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

-- Location: LCCOMB_X62_Y43_N10
\screen_inst|dig2dec_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|LessThan1~0_combout\ = (!\screen_inst|dig2dec_inst|Add2~4_combout\ & !\screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~4_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X62_Y43_N4
\screen_inst|dig2dec_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|LessThan1~1_combout\ = (((\screen_inst|dig2dec_inst|LessThan1~0_combout\ & !\screen_inst|dig2dec_inst|Add2~8_combout\)) # (!\screen_inst|dig2dec_inst|Add2~10_combout\)) # (!\screen_inst|dig2dec_inst|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|LessThan1~0_combout\,
	datab => \screen_inst|dig2dec_inst|Add2~8_combout\,
	datac => \screen_inst|dig2dec_inst|Add2~12_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~10_combout\,
	combout => \screen_inst|dig2dec_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X63_Y43_N26
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

-- Location: LCCOMB_X64_Y43_N2
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X64_Y43_N6
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ = (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X63_Y43_N28
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

-- Location: LCCOMB_X64_Y43_N30
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ = (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X63_Y43_N4
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

-- Location: LCCOMB_X63_Y43_N30
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

-- Location: LCCOMB_X64_Y43_N8
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X64_Y43_N12
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X64_Y43_N28
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \screen_inst|dig2dec_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~6_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X64_Y43_N10
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ = (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \screen_inst|dig2dec_inst|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~4_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X64_Y43_N4
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \screen_inst|dig2dec_inst|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~4_combout\,
	combout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X64_Y43_N14
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

-- Location: LCCOMB_X64_Y43_N16
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

-- Location: LCCOMB_X64_Y43_N18
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- ((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\) # (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X64_Y43_N20
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

-- Location: LCCOMB_X64_Y43_N22
\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & 
-- ((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\) # (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X64_Y43_N24
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

-- Location: LCCOMB_X64_Y43_N26
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

-- Location: LCCOMB_X63_Y43_N20
\screen_inst|seg7_2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux6~0_combout\ = (\screen_inst|dig2dec_inst|Add2~14_combout\ & (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)))) # (!\screen_inst|dig2dec_inst|Add2~14_combout\ & ((\screen_inst|dig2dec_inst|LessThan1~1_combout\) # 
-- ((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \screen_inst|seg7_2|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y43_N0
\screen_inst|seg7_2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux5~0_combout\ = (\screen_inst|dig2dec_inst|LessThan1~1_combout\ & !\screen_inst|dig2dec_inst|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datad => \screen_inst|dig2dec_inst|Add2~14_combout\,
	combout => \screen_inst|seg7_2|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y43_N2
\screen_inst|seg7_2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux4~0_combout\ = (\screen_inst|dig2dec_inst|Add2~14_combout\ & (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)))) # (!\screen_inst|dig2dec_inst|Add2~14_combout\ & ((\screen_inst|dig2dec_inst|LessThan1~1_combout\) # 
-- ((!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \screen_inst|seg7_2|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y43_N22
\screen_inst|seg7_2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux2~0_combout\ = ((!\screen_inst|dig2dec_inst|Add2~14_combout\ & \screen_inst|dig2dec_inst|LessThan1~1_combout\)) # (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datac => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \screen_inst|seg7_2|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y43_N24
\screen_inst|seg7_2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux1~0_combout\ = (((!\screen_inst|dig2dec_inst|Add2~14_combout\ & \screen_inst|dig2dec_inst|LessThan1~1_combout\)) # (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)) # 
-- (!\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datab => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \screen_inst|seg7_2|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y43_N18
\screen_inst|seg7_2|Mux0~0_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_2|Mux0~0_wirecell_combout\ = (\screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # ((!\screen_inst|dig2dec_inst|Add2~14_combout\ & \screen_inst|dig2dec_inst|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \screen_inst|dig2dec_inst|Add2~14_combout\,
	datac => \screen_inst|dig2dec_inst|LessThan1~1_combout\,
	datad => \screen_inst|dig2dec_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \screen_inst|seg7_2|Mux0~0_wirecell_combout\);

-- Location: LCCOMB_X77_Y40_N2
\screen_inst|seg7_4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_4|Mux1~0_combout\ = (\SW[8]~input_o\ & !\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \screen_inst|seg7_4|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y40_N14
\screen_inst|seg7_4|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_4|Mux1~1_combout\ = (!\SW[8]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \screen_inst|seg7_4|Mux1~1_combout\);

-- Location: LCCOMB_X77_Y40_N4
\screen_inst|seg7_4|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \screen_inst|seg7_4|Mux1~2_combout\ = (\SW[8]~input_o\) # (\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \screen_inst|seg7_4|Mux1~2_combout\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

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


