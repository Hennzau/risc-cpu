library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity decoder is

	port 
	(
		en		  : in std_logic;
		clk     : in std_logic;
		
		instruction : in std_logic_vector(25 downto 0);
		reg_value_a	: in std_logic_vector(7 downto 0);
		reg_value_b	: in std_logic_vector(7 downto 0);
		ram_value	: in std_logic_vector(7 downto 0);
		status		: in std_logic_vector(1 downto 0);
		
		alu_sel		: out std_logic_vector(2 downto 0);
		alu_a			: out std_logic_vector(7 downto 0);
		alu_b			: out std_logic_vector(7 downto 0);
		
		fetch_jump		: out std_logic := '0';
		fetch_address	: out std_logic_vector(7 downto 0);
		
		reg_rw			: out std_logic;
		reg_address		: out std_logic_vector(2 downto 0);
		reg_address_a	: out std_logic_vector(2 downto 0);
		reg_address_b	: out std_logic_vector(2 downto 0);
		
		ram_rw		: out std_logic;
		ram_address : out std_logic_vector(7 downto 0);
		ram_data_in	: out std_logic_vector(7 downto 0);
		
		decoder_out	: out std_logic_vector(7 downto 0)
	);

end entity;

architecture decoder_a of decoder is

	signal format	: std_logic_vector(1 downto 0);
	signal op		: std_logic_vector(4 downto 0);	
	signal reg		: std_logic_vector(2 downto 0);
	signal A			: std_logic_vector(7 downto 0);
	signal B			: std_logic_vector(7 downto 0);

begin
	decode: process (clk)
	
		variable alu_op	: std_logic_vector(2 downto 0);
		
	begin
		if rising_edge(clk) then
			if en = '1' then
				format <= instruction(25 downto 24);
				op <= instruction(23 downto 19);
				reg <= instruction(18 downto 16);
				A <= instruction(15 downto 8);
				B <= instruction(7 downto 0);

				if op(4) = '0' and op(3) = '0' then -- ALU operation
					alu_op := op(2 downto 0);					
					
					reg_rw <= '1'; -- always write on reg when ALU operation
					ram_rw <= '0';
					
					reg_address <= reg;
					reg_address_a <= A(2 downto 0);
					reg_address_b <= B(2 downto 0);
					
					alu_sel <= alu_op;
					
					case format is
						when "00" =>
							alu_a <= reg_value_a;
							alu_b <= reg_value_b;
						when "01" =>
							alu_a <= A;
							alu_b <= B;
						when "10" =>
							alu_a <= reg_value_a;
							alu_b <= B;
						when others =>
							null;
					end case;
				else -- Not an ALU OP
					case op is
						when "10010" => -- NOP
							null;
						
						when "10011" => -- OUT
							reg_rw <= '0';
							ram_rw <= '0';

							case format is
								when "00" => -- ALL REG								
									reg_address_a <= A(2 downto 0);
									decoder_out <= reg_value_a;
								when "01" => -- ALL IMM
									decoder_out <= A;
								when others =>
									null;
							end case;
							
						when "10001" => -- MOV
							reg_rw <= '1';
							ram_rw <= '0';
							
							case format is
								when "00" => -- ALL REG
									reg_address <= reg;
									
									reg_address_a <= A(2 downto 0);
									
									alu_a <= reg_value_a;
									
									alu_b <= (others => '0');
									alu_sel <= "000";
								when "01" =>
									reg_address <= reg;
									
									alu_a <= A;
									alu_b <= (others => '0');
									alu_sel <= "000";
								when others =>
									null;
							end case;
						when "10100" => -- REG2RAM
							ram_rw <= '1';
							reg_rw <='0';
							
							ram_address <= A;
							ram_data_in <= reg_value_a;
							reg_address_a <= reg;
						when "10101" => -- RAM2REG
							ram_rw <= '0';
							reg_rw <= '1';
							
							reg_address <= reg;
							ram_address <= A;
							
							alu_a <= ram_value;
							alu_b <= (others => '0');
							alu_sel <= "000";
--						when "00000" => -- ADD
--							reg_rw <= '1';
--							ram_rw <= '0';
--							reg_address <= reg;
--
--							case format is
--								when "00" =>
--									reg_address_a <= A(2 downto 0);
--									reg_address_b <= B(2 downto 0);
--									
--									alu_a <= reg_value_a;
--									alu_b <= reg_value_b;
--									alu_sel <= "000";
--								when "01" =>
--									alu_a <= A;
--									alu_b <= B;
--									alu_sel <= "000";
--								when "10" =>
--									reg_address_a <= A(2 downto 0);
--									alu_a <= reg_value_a;
--									alu_b <= B;
--									alu_sel <= "000";
--								when others =>
--									null;
--							end case;
--						when "00001" => -- SUB
--							reg_rw <= '1';
--							ram_rw <= '0';
--							reg_address <= reg;
--
--							case format is
--								when "00" =>
--									reg_address_a <= A(2 downto 0);
--									reg_address_b <= B(2 downto 0);
--									
--									alu_a <= reg_value_a;
--									alu_b <= reg_value_b;
--									alu_sel <= "001";
--								when "01" =>
--									alu_a <= A;
--									alu_b <= B;
--									alu_sel <= "001";
--								when "10" =>
--									reg_address_a <= A(2 downto 0);
--									alu_a <= reg_value_a;
--									alu_b <= B;
--									alu_sel <= "001";
--								when others =>
--									null;
--							end case;
--						when "00010" => -- MUL
--							reg_rw <= '1';
--							ram_rw <= '0';
--							reg_address <= reg;
--
--							case format is
--								when "00" =>
--									reg_address_a <= A(2 downto 0);
--									reg_address_b <= B(2 downto 0);
--									
--									alu_a <= reg_value_a;
--									alu_b <= reg_value_b;
--									alu_sel <= "010";
--								when "01" =>
--									alu_a <= A;
--									alu_b <= B;
--									alu_sel <= "010";
--								when "10" =>
--									reg_address_a <= A(2 downto 0);
--									alu_a <= reg_value_a;
--									alu_b <= B;
--									alu_sel <= "010";
--								when others =>
--									null;
--							end case;
--						when "00011" => -- DIV
--							reg_rw <= '1';
--							ram_rw <= '0';
--							reg_address <= reg;
--
--							case format is
--								when "00" =>
--									reg_address_a <= A(2 downto 0);
--									reg_address_b <= B(2 downto 0);
--									
--									alu_a <= reg_value_a;
--									alu_b <= reg_value_b;
--									alu_sel <= "011";
--								when "01" =>
--									alu_a <= A;
--									alu_b <= B;
--									alu_sel <= "011";
--								when "10" =>
--									reg_address_a <= A(2 downto 0);
--									alu_a <= reg_value_a;
--									alu_b <= B;
--									alu_sel <= "011";
--								when others =>
--									null;
--							end case;
--						when "00100" => -- INC
--							reg_rw <= '1';
--							ram_rw <= '0';
--							reg_address <= reg;
--							
--							case format is
--								when "00" =>
--									reg_address_a <= A(2 downto 0);
--									
--									alu_a <= reg_value_a;
--									alu_b <= (others => '0');
--									alu_sel <= "100";
--								when others =>
--									null;
--							end case;
--						when "00101" => -- DEC
--							reg_rw <= '1';
--							ram_rw <= '0';
--							reg_address <= reg;
--							
--							case format is
--								when "00" =>
--									reg_address_a <= A(2 downto 0);
--									
--									alu_a <= reg_value_a;
--									alu_b <= (others => '0');
--									alu_sel <= "101";
--								when others =>
--									null;
--							end case;
--						when "00110" => -- LSHIFT
--							reg_rw <= '1';
--							ram_rw <= '0';
--							reg_address <= reg;
--							
--							case format is
--								when "00" =>
--									reg_address_a <= A(2 downto 0);
--									
--									alu_a <= reg_value_a;
--									alu_b <= (others => '0');
--									alu_sel <= "110";
--								when "01" =>
--									alu_a <= A;
--									alu_b <= (others => '0');
--									alu_sel <= "110";
--								when others =>
--									null;
--							end case;
--						when "00111" => -- RSHIFT
--							reg_rw <= '1';
--							ram_rw <= '0';
--							reg_address <= reg;
--							
--							case format is
--								when "00" =>
--									reg_address_a <= A(2 downto 0);
--									
--									alu_a <= reg_value_a;
--									alu_b <= (others => '0');
--									alu_sel <= "111";
--								when "01" =>
--									alu_a <= A;
--									alu_b <= (others => '0');
--									alu_sel <= "111";
--								when others =>
--									null;
--							end case;
						when others =>
							null;
					end case;
				end if;
			end if;
		end if;
	end process;

end architecture;