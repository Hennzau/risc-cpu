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
		
		fetch_jump		: out std_logic;
		fetch_address	: out std_logic_vector(7 downto 0);
		
		reg_address		: out std_logic_vector(3 downto 0);
		reg_address_a	: out std_logic_vector(3 downto 0);
		reg_address_b	: out std_logic_vector(3 downto 0);
		
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
	begin
		if rising_edge(clk) then
			if en = '1' then
				format <= instruction(25 downto 24);
				op <= instruction(23 downto 19);
				reg <= instruction(18 downto 16);
				A <= instruction(15 downto 8);
				B <= instruction(7 downto 0);
				
				case format is
					when "00" =>
						case op is
							when "10010" =>
								null; -- NOP
							when others =>
								null;
						end case;
					when "01" =>
						case op is
							when "10011" =>
								decoder_out <= A;
							when others =>
								null;
						end case;
					when "10" =>
						null;
					when others =>
						null;
				end case;
			end if;
		end if;
	end process;

end architecture;