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
						"01" & "10001" & "010" & std_logic_vector(to_signed(12, 8)) & "00000000", -- MOV -17 to REG 010
						"01" & "10001" & "001" & std_logic_vector(to_signed(12, 8))  & "00000000", -- MOV +13 to REG 001

--						"00" & "10001" & "001" & "00000000" & "00000000", -- MOV V(REG 000) to REG 001
--						
--						"00" & "10100" & "001" & "00001000" & "00000000", -- REG (001) to RAM(00001000)
--						"00" & "10101" & "100" & "00001000" & "00000000", -- RAM (00001000) to REG(100)
						
						"00" & "00010" & "010" & "00000010" & "00000001", -- MUL V(REG 001) and V(REG 010) and put into REG 100
						
						"00" & "10011" & "000" & "00000010" & "00000000", -- OUT REG 100
						
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