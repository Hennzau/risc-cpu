library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity decoder is

	port 
	(
		en		  : in std_logic;
		clk     : in std_logic;
		
		instruction : in std_logic_vector(25 downto 0);
		reg_value_a	: in std_logic_vector(7 downto 0);
		reg_value_b	: in std_logic_vector(7 downto 0);
		ram_value	: in std_logic_vector(7 downto 0);
		status		: in std_logic_vector(1 downto 0);
		
		alu_sel		: out std_logic_vector(2 downto 0);
		alu_a			: out std_logic_vector(7 downto 0);
		alu_b			: out std_logic_vector(7 downto 0);
		
		fetch_jump		: out std_logic;
		fetch_address	: out std_logic_vector(7 downto 0);
		
		reg_rw			: out std_logic;
		reg_address		: out std_logic_vector(3 downto 0);
		reg_address_a	: out std_logic_vector(3 downto 0);
		reg_address_b	: out std_logic_vector(3 downto 0);
		
		ram_rw		: out std_logic;
		ram_address : out std_logic_vector(7 downto 0);
		ram_data_in	: out std_logic_vector(7 downto 0)
	);

end entity;

architecture decoder_a of decoder is

begin
	decode: process (clk)
	begin
		if rising_edge(clk) then
			if en = '1' then
			end if;
		end if;
	end process;

end architecture;