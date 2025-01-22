library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity decoder is

	port 
	(
		clk     : in std_logic;
		
		instruction : in std_logic_vector(25 downto 0);
		reg_value_a	: in std_logic_vector(7 downto 0);
		reg_value_b	: in std_logic_vector(7 downto 0);
		ram_value	: in std_logic_vector(7 downto 0);
		status		: in std_logic_vector(1 downto 0)
		
		
	);

end entity;

architecture decoder_a of decoder is

begin
	decode: process (clk)
	begin
		if rising_edge(clk) then
		end if;
	end process;

end architecture;