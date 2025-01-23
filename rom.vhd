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
						"01" & "10001" & "000" & "11010101" & "00000000", -- MOV 213 to REG 000
						"01" & "10001" & "010" & "01010001" & "00000000", -- MOV 81 to REG 010
						"01" & "10001" & "001" & "01000000" & "00000000", -- MOV 64 to REG 001
						
						"00" & "10001" & "001" & "00000000" & "00000000", -- MOV V(REG 000) to REG 001
						"00" & "10001" & "010" & "00000001" & "00000000", -- MOV V(REG 001) to REG 010
						
						"00" & "10011" & "000" & "00000010" & "00000000", -- OUT REG 001
						
		others => 	"00" & "10010" & "000" & "00000000" & "00000000" -- NOP
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