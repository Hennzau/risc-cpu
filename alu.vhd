library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity alu is
	port 
	(
		en			: in std_logic;
		clk      : in std_logic;
		rst      : in std_logic;
 
		sel		: in std_logic_vector(2 downto 0); -- 0 ADD, 1 SUB, 2 MUL, 3 DIV, 4 INC, 5 DEC, 6 LSHIFT, 7 RSHIFT
 
		a			: in std_logic_vector(7 downto 0);
		b		   : in std_logic_vector(7 downto 0);
		
		result	: out std_logic_vector(7 downto 0);
		status  	: out std_logic_vector(1 downto 0) -- status(0) = nonzero, status(1) = positive
	);
end alu;

architecture alu_a of alu is

begin
	use_alu: process (rst, clk)
		variable a_signed : signed(7 downto 0);
		variable b_signed : signed(7 downto 0);
		variable temp_result : signed(15 downto 0);
	begin
		if rst = '1' then
			result <= (others => '0');
			status <= (others => '0');
		elsif rising_edge(clk) then
			if en = '1' then
				a_signed := signed(a);
				b_signed := signed(b);
				
				temp_result := to_signed(0, 16);
				
				case sel is
					when "000" => -- ADD
						temp_result(7 downto 0) := a_signed + b_signed;
						result <= std_logic_vector(temp_result(7 downto 0));
						
					when "001" => -- SUB
						temp_result(7 downto 0) := a_signed - b_signed;
						result <= std_logic_vector(temp_result(7 downto 0));

					when "010" => -- MUL
						temp_result(7 downto 0) := to_signed(to_integer(a_signed * b_signed), 8);
						result <= std_logic_vector(temp_result(7 downto 0));

					when "011" => -- DIV
						temp_result(7 downto 0) := a_signed / b_signed;
						result <= std_logic_vector(temp_result(7 downto 0));

					when "100" => -- INC
						if a_signed = 127 then
							result <= std_logic_vector(to_signed(127, 8));
						else
							result <= std_logic_vector(a_signed + 1);
						end if;

					when "101" => -- DEC
						if a_signed = -128 then
							result <= std_logic_vector(to_signed(-128, 8));
						else
							result <= std_logic_vector(a_signed - 1);
						end if;

					when "110" => -- LSHIFT (Logical Shift Left)
						result <= std_logic_vector(shift_left(a_signed, 1));

					when "111" => -- RSHIFT (Logical Shift Right)
						result <= std_logic_vector(shift_right(a_signed, 1));

					when others =>
						result <= (others => '0');
				end case;

				-- Set status bits
--				if temp_result /= 0 then
--					status(0) <= '1'; -- nonzero
--				else
--					status(0) <= '0';
--				end if;
--
--				if temp_result >= 0 then
--					status(1) <= '1'; -- positive
--				else
--					status(1) <= '0';
--				end if;
			end if;
		end if;
	end process use_alu;
end alu_a;
