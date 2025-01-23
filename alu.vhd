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
		variable a_signed : unsigned(7 downto 0);
		variable b_signed : unsigned(7 downto 0);
		variable temp_result : unsigned(7 downto 0);
	begin
		if rst = '1' then
			result <= (others => '0');
			status <= (others => '0');
		elsif rising_edge(clk) then
			if en = '1' then
				a_signed := unsigned(a);
				b_signed := unsigned(b);
				
				case sel is
					when "000" => -- ADD
						temp_result := a_signed + b_signed;
						result <= std_logic_vector(temp_result);
--					
--					when "001" => -- SUB
--						temp_result := a_signed - b_signed;
--						result <= std_logic_vector(temp_result);
--					
--					when "010" => -- MUL (4 bits signed)
--						if a(7 downto 4) = "0000" and b(7 downto 4) = "0000" then
--							temp_result := signed(a(3 downto 0)) * signed(b(3 downto 0));
--							result <= std_logic_vector(resize(temp_result, 8));
--						else
--							result <= (others => '0'); -- Overflow, set to 0
--						end if;
--					
--					when "011" => -- DIV
--						if b /= "00000000" then
--							temp_result := a_signed / b_signed;
--							result <= std_logic_vector(temp_result);
--						else
--							result <= (others => '0'); -- Division by zero, set to 0
--						end if;
--
--					when "100" => -- INC (Increment with cap)
--						if a_signed = 127 then
--							temp_result := to_signed(127, 8);
--						else
--							temp_result := a_signed + 1;
--						end if;
--						result <= std_logic_vector(temp_result);
--
--					when "101" => -- DEC (Decrement)
--						if a_signed = -128 then
--							temp_result := to_signed(-128, 8);
--						else
--							temp_result := a_signed - 1;
--						end if;
--						result <= std_logic_vector(temp_result);
--
--					when "110" => -- LSHIFT (Logical Shift Left)
--						temp_result := shift_left(a_signed, 1);
--						result <= std_logic_vector(temp_result);
--
--					when "111" => -- RSHIFT (Logical Shift Right)
--						temp_result := shift_right(a_signed, 1);
--						result <= std_logic_vector(temp_result);
--					
					when others =>
						result <= (others => '0');
				end case;
				
--				-- Set status bits
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
