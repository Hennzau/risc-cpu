library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dig2dec is
	port 
	(
		data_a  	: in std_logic_vector(7 downto 0);
		data_b	: in std_logic_vector(5 downto 0);
		
		seg0 : out STD_LOGIC_VECTOR(3 downto 0);
		seg1 : out STD_LOGIC_VECTOR(3 downto 0);
		seg2 : out STD_LOGIC_VECTOR(3 downto 0);
		seg3 : out STD_LOGIC_VECTOR(3 downto 0);
		seg4 : out STD_LOGIC_VECTOR(3 downto 0);
		seg5 : out STD_LOGIC_VECTOR(3 downto 0)
	);
end entity;

architecture rtl of dig2dec is

begin
	process (data_a, data_b)
		variable b1 : unsigned(5 downto 0); -- La valeur initiale (6 bits)
		variable b4 : unsigned(3 downto 0); -- E(data_b/10) : les dizaines (4 bits)
		variable b3 : unsigned(3 downto 0); -- data_b - b4*10 : les unités (4 bits)
		
		variable a_abs : unsigned(7 downto 0); -- Valeur absolue de data_a (8 bits)
		variable a3 : unsigned(3 downto 0); -- Les centaines (4 bits)
		variable a2 : unsigned(3 downto 0); -- Les dizaines (4 bits)
		variable a1 : unsigned(3 downto 0); -- Les unités (4 bits)
	begin
		b1 := unsigned(data_b);
		
		b4 := resize(b1 / 10, b4'length); -- Les dizaines
		b3 := resize(b1 - b4 * 10, b3'length); -- Les unités
		
		if b1 >= 10 then
			seg5 <= std_logic_vector(b4); -- Les dizaines
		else 
			seg5 <= X"B";
		end if;
		
		seg4 <= std_logic_vector(b3); -- Les unités		
		
		a_abs := unsigned(abs(signed(data_a))); -- Convertir en valeur absolue et en unsigned
		a3 := resize(a_abs / 100, a3'length); -- Les centaines
		a2 := resize((a_abs / 10) mod 10, a2'length); -- Les dizaines
		a1 := resize(a_abs mod 10, a1'length); -- Les unités		
		
		if a_abs >= 100 then
			seg2 <= std_logic_vector(a3); -- Les centaines
		else
			seg2 <= X"B"; -- Vide
		end if;
		
		if a_abs >= 10 then
			seg1 <= std_logic_vector(a2); -- Les dizaines
		else
			seg1 <= X"B"; -- Vide
		end if;
		
		seg0 <= std_logic_vector(a1); -- Toujours affiché pour les unités
		
		if signed(data_a) < 0 then
			seg3 <= X"a";
		else
			seg3 <= X"b";
		end if;

	end process;

end architecture;