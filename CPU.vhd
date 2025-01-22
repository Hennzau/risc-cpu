library ieee;
use ieee.std_logic_1164.all;

library work;

entity CPU is
	port 
	(
		MAX10_CLK1_50 : in STD_LOGIC;
 
		SW            : in STD_LOGIC_VECTOR(9 downto 0);
		LEDR          : out STD_LOGIC_VECTOR(9 downto 0);
 
		HEX0          : out STD_LOGIC_VECTOR(7 downto 0);
		HEX1          : out STD_LOGIC_VECTOR(7 downto 0);
		HEX2          : out STD_LOGIC_VECTOR(7 downto 0);
		HEX3          : out STD_LOGIC_VECTOR(7 downto 0);
		HEX4          : out STD_LOGIC_VECTOR(7 downto 0);
		HEX5          : out STD_LOGIC_VECTOR(7 downto 0)
	);
end CPU;

architecture bdf_type of CPU is

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
			vol  : in STD_LOGIC_VECTOR(15 downto 0);
			seg0 : out STD_LOGIC_VECTOR(3 downto 0);
			seg1 : out STD_LOGIC_VECTOR(3 downto 0);
			seg2 : out STD_LOGIC_VECTOR(3 downto 0);
			seg3 : out STD_LOGIC_VECTOR(3 downto 0);
			seg4 : out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;

	component fetch
		port 
		(
			en          : in STD_LOGIC;
			clk         : in STD_LOGIC;
			rst         : in STD_LOGIC;
 
			jump        : in STD_LOGIC;
 
			address_in  : in std_logic_vector(7 downto 0);
			address_out : out std_logic_vector(7 downto 0) 
		);
	end component;

	component rom
		port 
		(
			en      : in STD_LOGIC;
			clk     : in STD_LOGIC;
			rst     : in STD_LOGIC;
 
			address : in std_logic_vector(7 downto 0);
 
			data    : out std_logic_vector(25 downto 0)
		);
	end component;

	component ram
		port 
		(
			rw       : in STD_LOGIC;
			en       : in STD_LOGIC;
			clk      : in STD_LOGIC;
			rst      : in STD_LOGIC;
 
			address  : in std_logic_vector(7 downto 0);
 
			data_in  : out std_logic_vector(7 downto 0);
			data_out : out std_logic_vector(7 downto 0)
		);
	end component;

	component reg
		port 
		(
			en     	: in STD_LOGIC;
			clk      : in STD_LOGIC;
			rst      : in STD_LOGIC;
 
			sel		: in std_logic_vector(2 downto 0); -- 0 ADD, 1 SUB, 2 MUL, 3 DIV, 4 INC, 5 DEC, 6 LSHIFT, 7 RSHIFT
	 
			a			: in std_logic_vector(7 downto 0);
			b		   : in std_logic_vector(7 downto 0);
			
			result	: out std_logic_vector(7 downto 0);
			status  : out std_logic_vector(1 downto 0) -- status(0) = nonzero, status(1) = positive
		);
	end component;
	
	component alu
	port 
	(
		clk        : in STD_LOGIC;
		rst        : in STD_LOGIC;

		address    : in std_logic_vector(3 downto 0);

		address_a  : in std_logic_vector(3 downto 0);
		address_b  : in std_logic_vector(3 downto 0);

		data_in    : out std_logic_vector(7 downto 0);

		data_out_a : out std_logic_vector(7 downto 0);
		data_out_b : out std_logic_vector(7 downto 0)
	);
	end component;
	
	component status
	port 
	(
		clk        : in STD_LOGIC;
		rst        : in STD_LOGIC;

		input		: in std_logic_vector(7 downto 0);
		output	: out std_logic_vector(7 downto 0)
	);
	end component;

	signal HEX_out0   : STD_LOGIC_VECTOR(7 downto 0);
	signal HEX_out1   : STD_LOGIC_VECTOR(7 downto 0);
	signal HEX_out2   : STD_LOGIC_VECTOR(7 downto 0);
	signal HEX_out3   : STD_LOGIC_VECTOR(7 downto 0);
	signal HEX_out4   : STD_LOGIC_VECTOR(7 downto 0);

	signal seg7_in0   : STD_LOGIC_VECTOR(3 downto 0);
	signal seg7_in1   : STD_LOGIC_VECTOR(3 downto 0);
	signal seg7_in2   : STD_LOGIC_VECTOR(3 downto 0);
	signal seg7_in3   : STD_LOGIC_VECTOR(3 downto 0);
	signal seg7_in4   : STD_LOGIC_VECTOR(3 downto 0);

	signal user_input : STD_LOGIC_VECTOR(15 downto 0);

begin
	b2v_inst1 : seg7_lut
	port map
	(
		iDIG => seg7_in0, 
		oSEG => HEX_out4(6 downto 0)
	);

	b2v_inst2 : seg7_lut
	port map
	(
		iDIG => seg7_in1, 
		oSEG => HEX_out3(6 downto 0)
	);

	b2v_inst3 : seg7_lut
	port map
	(
		iDIG => seg7_in2, 
		oSEG => HEX_out2(6 downto 0)
	);

	b2v_inst4 : seg7_lut
	port map
	(
		iDIG => seg7_in3, 
		oSEG => HEX_out1(6 downto 0)
	);

	b2v_inst5 : seg7_lut
	port map
	(
		iDIG => seg7_in4, 
		oSEG => HEX_out0(6 downto 0)
	);

	b2v_inst6 : dig2dec
	port map
	(
		vol  => user_input, 
		seg0 => seg7_in4, 
		seg1 => seg7_in3, 
		seg2 => seg7_in2, 
		seg3 => seg7_in1, 
		seg4 => seg7_in0
	);

	HEX0                     <= HEX_out0;
	HEX1                     <= HEX_out1;
	HEX2                     <= HEX_out2;
	HEX3                     <= HEX_out3;
	HEX4                     <= HEX_out4;
	HEX5                     <= "01000000";

	user_input(15 downto 10) <= (others => '0');
	user_input(9 downto 0)   <= SW;

	LEDR                     <= SW;

end bdf_type;