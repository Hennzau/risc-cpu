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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
-- CREATED		"Tue Jan 12 09:49:06 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY CPU IS 
	PORT
	(
		MAX10_CLK1_50 :  IN  STD_LOGIC;
		
		SW :  IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		LEDR :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		
		HEX0 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX1 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX2 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX3 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX4 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX5 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
		
	);
END CPU;

ARCHITECTURE bdf_type OF CPU IS 

COMPONENT seg7_lut
	PORT(
			iDIG 		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			oSEG 		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dig2dec
	PORT(
			vol 		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			seg0 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			seg1 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			seg2 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			seg3 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			seg4 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT fetch
	PORT(
			en 		: IN STD_LOGIC;
			clk		: IN STD_LOGIC;
			rst		: IN STD_LOGIC;
			
			jump		: IN STD_LOGIC;
			
			address_in	: in std_logic_vector(7 downto 0);
			address_out	: out std_logic_vector(7 downto 0)	
	);
END COMPONENT;

COMPONENT rom
	PORT(	
			en 		: IN STD_LOGIC;
			clk		: IN STD_LOGIC;
			rst		: IN STD_LOGIC;
			
			address	: in std_logic_vector(7 downto 0);
			
			data		: out std_logic_vector(25 downto 0)
	);
END COMPONENT;

COMPONENT ram
	PORT(	
			rw			: IN STD_LOGIC;
			en 		: IN STD_LOGIC;
			clk		: IN STD_LOGIC;
			rst		: IN STD_LOGIC;
			
			address	: in std_logic_vector(7 downto 0);
			
			data_in	: out std_logic_vector(7 downto 0);
			data_out	: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT reg
	PORT(
			en 		: IN STD_LOGIC;
			clk		: IN STD_LOGIC;
			rst		: IN STD_LOGIC;
			
			address	: in std_logic_vector(3 downto 0);
			
			address_a: in std_logic_vector(3 downto 0);
			address_b: in std_logic_vector(3 downto 0);
			
			data_in	: out std_logic_vector(7 downto 0);
			
			data_out_a: out std_logic_vector(7 downto 0);
			data_out_b: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

SIGNAL	HEX_out0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	HEX_out1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	HEX_out2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	HEX_out3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	HEX_out4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL	seg7_in0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	seg7_in1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	seg7_in2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	seg7_in3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	seg7_in4 :  STD_LOGIC_VECTOR(3 DOWNTO 0);

SIGNAL	user_sw : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	user_input : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN 

b2v_inst1 : seg7_lut
PORT MAP(iDIG => seg7_in0,
		 oSEG => HEX_out4(6 DOWNTO 0));

b2v_inst2 : seg7_lut
PORT MAP(iDIG => seg7_in1,
		 oSEG => HEX_out3(6 DOWNTO 0));

b2v_inst3 : seg7_lut
PORT MAP(iDIG => seg7_in2,
		 oSEG => HEX_out2(6 DOWNTO 0));

b2v_inst4 : seg7_lut
PORT MAP(iDIG => seg7_in3,
		 oSEG => HEX_out1(6 DOWNTO 0));

b2v_inst5 : seg7_lut
PORT MAP(iDIG => seg7_in4,
		 oSEG => HEX_out0(6 DOWNTO 0));

b2v_inst6 : dig2dec
PORT MAP(		 vol => user_input,
		 seg0 => seg7_in4,
		 seg1 => seg7_in3,
		 seg2 => seg7_in2,
		 seg3 => seg7_in1,
		 seg4 => seg7_in0);

HEX0 <= HEX_out0;
HEX1 <= HEX_out1;
HEX2 <= HEX_out2;
HEX3 <= HEX_out3;
HEX4 <= HEX_out4;
HEX5 <= "01000000";

user_input(15 downto 10) <= (others => '0');
user_input(9 downto 0) <= SW;

LEDR <= SW;

END bdf_type;
