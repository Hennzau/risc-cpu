library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity screen is
 
	port 
	(
		data_a  	: in std_logic_vector(7 downto 0);
		data_b	: in std_logic_vector(5 downto 0);
		
		HEX0	: out STD_LOGIC_VECTOR(7 downto 0);
		HEX1  : out STD_LOGIC_VECTOR(7 downto 0);
		HEX2  : out STD_LOGIC_VECTOR(7 downto 0);
		HEX3  : out STD_LOGIC_VECTOR(7 downto 0);
		HEX4  : out STD_LOGIC_VECTOR(7 downto 0);
		HEX5  : out STD_LOGIC_VECTOR(7 downto 0)
	);
 
end entity;
architecture screen_a of screen is

	component seg7_lut
		port
		(
			iDIG : in STD_LOGIC_VECTOR(3 downto 0);
			oSEG : out STD_LOGIC_VECTOR(6 downto 0)
		);
	end component;

	component dig2dec
		port
		(
			data_a  	: in std_logic_vector(7 downto 0);
			data_b	: in std_logic_vector(5 downto 0);
			
			seg0 : out STD_LOGIC_VECTOR(3 downto 0);
			seg1 : out STD_LOGIC_VECTOR(3 downto 0);
			seg2 : out STD_LOGIC_VECTOR(3 downto 0);
			seg3 : out STD_LOGIC_VECTOR(3 downto 0);
			seg4 : out STD_LOGIC_VECTOR(3 downto 0);
			seg5 : out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;

	signal HEX_out0   : STD_LOGIC_VECTOR(7 downto 0);
	signal HEX_out1   : STD_LOGIC_VECTOR(7 downto 0);
	signal HEX_out2   : STD_LOGIC_VECTOR(7 downto 0);
	signal HEX_out3   : STD_LOGIC_VECTOR(7 downto 0);
	signal HEX_out4   : STD_LOGIC_VECTOR(7 downto 0);
	signal HEX_out5   : STD_LOGIC_VECTOR(7 downto 0);

	signal seg7_in0   : STD_LOGIC_VECTOR(3 downto 0);
	signal seg7_in1   : STD_LOGIC_VECTOR(3 downto 0);
	signal seg7_in2   : STD_LOGIC_VECTOR(3 downto 0);
	signal seg7_in3   : STD_LOGIC_VECTOR(3 downto 0);
	signal seg7_in4   : STD_LOGIC_VECTOR(3 downto 0);
	signal seg7_in5   : STD_LOGIC_VECTOR(3 downto 0);
	
begin
	seg7_0 : seg7_lut
	port map
	(
		iDIG => seg7_in0, 
		oSEG => HEX_out0(6 downto 0)
	);

	seg7_1 : seg7_lut
	port map
	(
		iDIG => seg7_in1, 
		oSEG => HEX_out1(6 downto 0)
	);

	seg7_2 : seg7_lut
	port map
	(
		iDIG => seg7_in2, 
		oSEG => HEX_out2(6 downto 0)
	);

	seg7_3 : seg7_lut
	port map
	(
		iDIG => seg7_in3, 
		oSEG => HEX_out3(6 downto 0)
	);

	seg7_4 : seg7_lut
	port map
	(
		iDIG => seg7_in4, 
		oSEG => HEX_out4(6 downto 0)
	);

	seg7_5 : seg7_lut
	port map
	(
		iDIG => seg7_in5, 
		oSEG => HEX_out5(6 downto 0)
	);

	dig2dec_inst : dig2dec
	port map
	(
		data_a => data_a,
		data_b => data_b,
		
		seg0 => seg7_in0, 
		seg1 => seg7_in1, 
		seg2 => seg7_in2, 
		seg3 => seg7_in3, 
		seg4 => seg7_in4,
		seg5 => seg7_in5
	);
	
	HEX_out0(7) <= '1';
	HEX_out1(7) <= '1';
	HEX_out2(7) <= '1';
	HEX_out3(7) <= '1';
	HEX_out4(7) <= '0';
	HEX_out5(7) <= '1';

	HEX0                     <= HEX_out0;
	HEX1                     <= HEX_out1;
	HEX2                     <= HEX_out2;
	HEX3                     <= HEX_out3;
	HEX4                     <= HEX_out4;
	HEX5                     <= HEX_out5;
	
end architecture;