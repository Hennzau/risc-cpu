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

    type alu_op_type is (ADD, SUB, MUL, DIV, RSHIFT, LSHIFT, INC, DEC);

    type alu_op_table is array (alu_op_type) of std_logic_vector(4 downto 0);
    constant ALU: alu_op_table := (
        ADD     => "00001",
        SUB     => "00010",
        MUL     => "00011",
        DIV     => "00100",
        RSHIFT  => "00101",
        LSHIFT  => "00110",
        INC     => "00111",
        DEC     => "01000"
    );

	 type format_type is (REG, IMM, BOTH);

    type format_table is array (format_type) of std_logic_vector(1 downto 0);
    constant FORMAT: format_table := (
        REG => "00",
		  IMM => "01",
		  BOTH => "10"
    );
	 
	 type op_type is (MOV, PRINT);

    type op_table is array (op_type) of std_logic_vector(4 downto 0);
    constant OP: op_table := (
        MOV 	=> "10001",
		  PRINT 	=> "10011"
    );
	 
	 type ram_type is (FROM_REG, TO_REG);

    type ram_table is array (ram_type) of std_logic_vector(6 downto 0);
    constant RAM: ram_table := (
        FROM_REG 	=> "00" & "10100",
		  TO_REG 	=> "00" & "10101"
    );
	 
	constant R0: std_logic_vector(2 downto 0) := "000";
	constant R1: std_logic_vector(2 downto 0) := "001";
	constant R2: std_logic_vector(2 downto 0) := "010";
	constant R3: std_logic_vector(2 downto 0) := "011";
	constant R4: std_logic_vector(2 downto 0) := "100";
	constant R5: std_logic_vector(2 downto 0) := "101";
	constant R6: std_logic_vector(2 downto 0) := "110";
	constant R7: std_logic_vector(2 downto 0) := "111";

	constant R0_8: std_logic_vector(7 downto 0) := "00000000";
	constant R1_8: std_logic_vector(7 downto 0) := "00000001";
	constant R2_8: std_logic_vector(7 downto 0) := "00000010";
	constant R3_8: std_logic_vector(7 downto 0) := "00000011";
	constant R4_8: std_logic_vector(7 downto 0) := "00000100";
	constant R5_8: std_logic_vector(7 downto 0) := "00000101";
	constant R6_8: std_logic_vector(7 downto 0) := "00000110";
	constant R7_8: std_logic_vector(7 downto 0) := "00000111";

	constant NOP: std_logic_vector(25 downto 0) := "00" & "10010" & "000" & "00000000" & "00000000";
	constant ZERO: std_logic_vector(7 downto 0) := "00000000";
	 
	 function imm(value : integer) return std_logic_vector is
    begin
        return std_logic_vector(to_signed(value, 8));
    end function;
	 
	type rom is array(0 to 255) of std_logic_vector(25 downto 0);
	
	signal rom_data : rom := (
	--						FORMAT			OPCODE		REG DEST    A	       B
						FORMAT(IMM)		&	OP(MOV)		&	R0	&	imm(10)	&	ZERO,
						FORMAT(BOTH)	&	ALU(ADD)		&	R1	&	R0_8		&	imm(20),
						FORMAT(REG)		&	ALU(SUB)		&	R2	&	R1_8		&	R0_8,
						FORMAT(BOTH)	&	ALU(MUL)		&	R3 &	R2_8		&	imm(2),
						FORMAT(REG)		&	ALU(DIV)		&	R4	&	R3_8		&	R0_8,
						FORMAT(REG)		&	ALU(RSHIFT)	&	R5	&	R4_8		&	ZERO,
						
		others => 	NOP
--						"01" & "10001" & "000" & std_logic_vector(to_signed(10, 8)) & "00000000", -- MOV 10 to REG 000
--						
--						"01" & "10001" & "001" & std_logic_vector(to_signed(12, 8))  & "00000000", -- MOV +13 to REG 001

--						"00" & "10001" & "001" & "00000000" & "00000000", -- MOV V(REG 000) to REG 001
--						
--						"00" & "10100" & "001" & "00001000" & "00000000", -- REG (001) to RAM(00001000)
--						"00" & "10101" & "100" & "00001000" & "00000000", -- RAM (00001000) to REG(100)
--						
--						"00" & "00010" & "010" & "00000010" & "00000001", -- MUL V(REG 001) and V(REG 010) and put into REG 100
--						
--						"00" & "10011" & "000" & "00000010" & "00000000", -- OUT REG 100
--						
--		others => 	"00" & "10010" & "000" & "00000000" & "00000000" -- NOP
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