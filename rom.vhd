library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
entity rom is

	port 
	(
		en      : in std_logic;
		clk     : in std_logic;
		rst     : in std_logic;
 
		address : in std_logic_vector(7 downto 0);
 
		data    : out std_logic_vector(25 downto 0)
	);

end rom;

architecture rom_a of rom is

	type rom is array(0 to 255) of std_logic_vector(25 downto 0);

	signal rom_data : rom := (
						"01" & "10011" & "000" & "01010101" & "00000000",
		others => 	"00" & "10010" & "000" & "00000000" & "00000000"
	);

begin
	acces_rom : process (rst, clk)
	begin
		if rst /= '1' then
			if rising_edge(clk) then
				if en = '1' then
					data <= rom_data(to_integer(unsigned(address)));
				end if;

			end if;
		end if;
 
	end process acces_rom;

end rom_a;