library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
entity fetch is
	port 
	(
		en          : in std_logic;
		clk         : in std_logic;
		rst         : in std_logic;
 
		jump        : in std_logic;
 
		address_in  : in std_logic_vector(7 downto 0);
		address_out : out std_logic_vector(7 downto 0)
	);
end entity;
architecture fetch_a of fetch is

	signal address : std_logic_vector(7 downto 0);

begin
	access_fetch : process (rst, clk)
	begin
		if rst = '1' then
			address <= (others => '0');
		else
			if rising_edge(clk) then
				if en = '1' then 
					if jump = '0' then
						address <= std_logic_vector(unsigned(address) + 1);
					else
						address <= address_in;
					end if;
				end if;
			end if;
		end if;
	end process;

	address_out <= address;

end architecture fetch_a;