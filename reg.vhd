library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
entity reg is
	port 
	(
		en         : in std_logic;
		clk        : in std_logic;
		rst        : in std_logic;
 
		address    : in std_logic_vector(3 downto 0);
 
		address_a  : in std_logic_vector(3 downto 0);
		address_b  : in std_logic_vector(3 downto 0);
 
		data_in    : in std_logic_vector(7 downto 0);
 
		data_out_a : out std_logic_vector(7 downto 0);
		data_out_b : out std_logic_vector(7 downto 0)
	);
end reg;

architecture reg_a of reg is

	type reg is array(0 to 7) of std_logic_vector(7 downto 0);

	signal data_reg : reg;

begin
	acces_reg : process (rst, clk)
	begin
		if rst = '1' then
			for k in 0 to 7 loop
				data_reg(k) <= (others => '0');
			end loop;
		else
			if rising_edge(clk) then
				if en = '1' then
					data_reg(to_integer(unsigned(address))) <= data_in;
				else
					data_out_a <= data_reg(to_integer(unsigned(address_a)));
					data_out_b <= data_reg(to_integer(unsigned(address_b)));
				end if;
			end if;
		end if;
 
	end process acces_reg;

end reg_a;