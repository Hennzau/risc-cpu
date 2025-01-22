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

			data_in  : in std_logic_vector(7 downto 0);
			data_out : out std_logic_vector(7 downto 0)
		);
	end component;

	component alu
		port
		(
			clk      : in STD_LOGIC;
			rst      : in STD_LOGIC;

			sel		: in std_logic_vector(2 downto 0); -- 0 ADD, 1 SUB, 2 MUL, 3 DIV, 4 INC, 5 DEC, 6 LSHIFT, 7 RSHIFT

			a			: in std_logic_vector(7 downto 0);
			b		   : in std_logic_vector(7 downto 0);

			result	: out std_logic_vector(7 downto 0);
			status  : out std_logic_vector(1 downto 0) -- status(0) = nonzero, status(1) = positive
		);
	end component;

	component reg
	port
	(
		en			  : in STD_LOGIC;
		clk        : in STD_LOGIC;
		rst        : in STD_LOGIC;

		address    : in std_logic_vector(3 downto 0);

		address_a  : in std_logic_vector(3 downto 0);
		address_b  : in std_logic_vector(3 downto 0);

		data_in    : in std_logic_vector(7 downto 0);

		data_out_a : out std_logic_vector(7 downto 0);
		data_out_b : out std_logic_vector(7 downto 0)
	);
	end component;

	component status
	port
	(
		clk        : in STD_LOGIC;
		rst        : in STD_LOGIC;

		input		: in std_logic_vector(1 downto 0);
		output	: out std_logic_vector(1 downto 0)
	);
	end component;

	signal general_clk: STD_LOGIC;
	signal general_rst: STD_LOGIC;
	
	signal fetch_en   : STD_LOGIC;
	signal fetch_jump	: STD_LOGIC;
	signal fetch_address_in : std_logic_vector(7 downto 0);
	signal fetch_address_out : std_logic_vector(7 downto 0);

	signal rom_en : STD_LOGIC;
	signal rom_address : std_logic_vector(7 downto 0);
	signal rom_data : std_logic_vector(25 downto 0);

	signal ram_rw : STD_LOGIC;
	signal ram_en : STD_LOGIC;
	signal ram_address : std_logic_vector(7 downto 0);
	signal ram_data_in : std_logic_vector(7 downto 0);
	signal ram_data_out : std_logic_vector(7 downto 0);

	signal alu_sel : std_logic_vector(2 downto 0);
	signal alu_a : std_logic_vector(7 downto 0);
	signal alu_b : std_logic_vector(7 downto 0);
	signal alu_result : std_logic_vector(7 downto 0);
	signal alu_status : std_logic_vector(1 downto 0);
	
	signal reg_en : STD_LOGIC;
	signal reg_address : std_logic_vector(3 downto 0);
	signal reg_address_a : std_logic_vector(3 downto 0);
	signal reg_address_b : std_logic_vector(3 downto 0);
	signal reg_data_in : std_logic_vector(7 downto 0);
	signal reg_data_out_a : std_logic_vector(7 downto 0);
	signal reg_data_out_b : std_logic_vector(7 downto 0);

	signal status_input : std_logic_vector(1 downto 0);
	signal status_output : std_logic_vector(1 downto 0);

begin

	fetch_inst: fetch
	port map (
		en          => fetch_en,
		clk         => general_clk,
		rst         => general_rst,
		jump        => fetch_jump,
		address_in  => fetch_address_in,
		address_out => fetch_address_out
	);

	-- ROM Instantiation
	rom_inst: rom
	port map (
		en      => rom_en,
		clk     => general_clk,
		rst     => general_rst,
		address => rom_address,
		data    => rom_data
	);

	-- RAM Instantiation
	ram_inst: ram
	port map (
		rw       => ram_rw,
		en       => ram_en,
		clk      => general_clk,
		rst      => general_rst,
		address  => ram_address,
		data_in  => ram_data_in,
		data_out => ram_data_out
	);

	-- ALU Instantiation
	alu_inst: alu
	port map (
		clk      => general_clk,
		rst      => general_rst,
		sel      => alu_sel,
		a        => alu_a,
		b        => alu_b,
		result   => alu_result,
		status   => alu_status
	);

	-- REG Instantiation
	reg_inst: reg
	port map (
		en			  => reg_en,
		clk        => general_clk,
		rst        => general_rst,
		address    => reg_address,
		address_a  => reg_address_a,
		address_b  => reg_address_b,
		data_in    => reg_data_in,
		data_out_a => reg_data_out_a,
		data_out_b => reg_data_out_b
	);

	-- Status Instantiation
	status_inst: status
	port map (
		clk    => general_clk,
		rst    => general_rst,
		input  => status_input,
		output => status_output
	);
	
	rom_address <= fetch_address_in;
	status_input <= alu_status;
	reg_data_in <= alu_result;
	general_clk <= MAX10_CLK1_50;
	
end bdf_type;
