library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
entity ram is
	port 
	(
		rw       : in std_logic;
 
		en       : in std_logic;
		clk      : in std_logic;
		rst      : in std_logic;
 
		address  : in std_logic_vector(7 downto 0);
 
		data_in  : in std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0)
	);
end ram;

architecture ram_a of ram is

	type ram is array(0 to 255) of std_logic_vector(7 downto 0);

	signal data_ram : ram;

begin
	acces_ram : process (rst, clk)
	begin
		if rst /= '1' then
			if rising_edge(clk) then
				if en = '1' then
					if rw = '1' then
						data_out <= data_ram(to_integer(unsigned(address)));
					else
						data_ram(to_integer(unsigned(address))) <= data_in;
					end if;
				end if;
			end if;
		end if;
 
	end process acces_ram;

end ram_a;