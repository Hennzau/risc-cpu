library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity rom is

    port (
        en  : in std_logic;
        clk : in std_logic;
        rst : in std_logic;

        address : in std_logic_vector(7 downto 0);

        data : out std_logic_vector(25 downto 0) := "00000000000000000000000000"
    );

end rom;

architecture Behavioral of rom is

    type alu_op_type is (ADD, SUB, MUL, DIV, RSHIFT, LSHIFT, INC, DEC);

    type alu_op_table is array (alu_op_type) of std_logic_vector(4 downto 0);
    constant ALU : alu_op_table := (
        ADD => "00000",
        SUB => "00001",
        MUL => "00010",
        DIV => "00011",

        INC => "00100",
        DEC => "00101",

        LSHIFT => "00110",
        RSHIFT => "00111"
    );

    type format_type is (REG, IMM, BOTH);

    type format_table is array (format_type) of std_logic_vector(1 downto 0);
    constant FORMAT : format_table := (
        REG  => "00",
        IMM  => "01",
        BOTH => "10"
    );

    constant MOV   : std_logic_vector(4 downto 0) := "10001";
    constant PRINT : std_logic_vector(7 downto 0) := "10011" & "000";
    constant SPRINT : std_logic_vector(7 downto 0) := "01011" & "000";

    type ram_type is (FROM_REG, TO_REG);

    type ram_table is array (ram_type) of std_logic_vector(6 downto 0);
    constant RAM : ram_table := (
        FROM_REG => "00" & "10100",
        TO_REG   => "00" & "10101"
    );

    type jump_type is (ADDR, Z, NZ, P, NP);

    type jump_table is array (jump_type) of std_logic_vector(7 downto 0);
    constant JUMP : jump_table := (
        ADDR => "01100" & "000",
        Z    => "01101" & "000",
        NZ   => "01110" & "000",
        P    => "01111" & "000",
        NP   => "10000" & "000"
    );

    constant R0 : std_logic_vector(2 downto 0) := "000";
    constant R1 : std_logic_vector(2 downto 0) := "001";
    constant R2 : std_logic_vector(2 downto 0) := "010";
    constant R3 : std_logic_vector(2 downto 0) := "011";
    constant R4 : std_logic_vector(2 downto 0) := "100";
    constant R5 : std_logic_vector(2 downto 0) := "101";
    constant R6 : std_logic_vector(2 downto 0) := "110";
    constant R7 : std_logic_vector(2 downto 0) := "111";

    constant R0_8 : std_logic_vector(7 downto 0) := "00000000";
    constant R1_8 : std_logic_vector(7 downto 0) := "00000001";
    constant R2_8 : std_logic_vector(7 downto 0) := "00000010";
    constant R3_8 : std_logic_vector(7 downto 0) := "00000011";
    constant R4_8 : std_logic_vector(7 downto 0) := "00000100";
    constant R5_8 : std_logic_vector(7 downto 0) := "00000101";
    constant R6_8 : std_logic_vector(7 downto 0) := "00000110";
    constant R7_8 : std_logic_vector(7 downto 0) := "00000111";

    constant NOP    : std_logic_vector(25 downto 0) := "00" & "10010" & "000" & "00000000" & "00000000";
    constant IGNORE : std_logic_vector(7 downto 0)  := "00000000";

    constant LOAD_PC : std_logic_vector(6 downto 0) := "00" & "01000";
    constant LOAD_SW : std_logic_vector(6 downto 0) := "00" & "01001";
    constant LOAD_KEY : std_logic_vector(6 downto 0) := "00" & "01010";

    function imm(value : integer) return std_logic_vector is
    begin
        return std_logic_vector(to_signed(value, 8));
    end function;

    function addr(value : integer) return std_logic_vector is
    begin
        return std_logic_vector(to_unsigned(value, 8));
    end function;

    type rom is array(0 to 255) of std_logic_vector(25 downto 0);

    signal rom_data : rom := (
            -- Program list and mapping. total of 0 -> 8 programs.
            FORMAT(IMM)     &           JUMP(ADDR)          &   addr(8)     &       IGNORE,    -- Selector
            FORMAT(IMM)     &           JUMP(ADDR)          &   addr(24)    &       IGNORE,    -- Addition
            FORMAT(IMM)     &           JUMP(ADDR)          &   addr(24)    &       IGNORE,
            FORMAT(IMM)     &           JUMP(ADDR)          &   addr(24)    &       IGNORE,
            FORMAT(IMM)     &           JUMP(ADDR)          &   addr(24)    &       IGNORE,
            FORMAT(IMM)     &           JUMP(ADDR)          &   addr(24)    &       IGNORE,
            FORMAT(IMM)     &           JUMP(ADDR)          &   addr(24)    &       IGNORE,
            FORMAT(IMM)     &           JUMP(ADDR)          &   addr(24)    &       IGNORE,

            -- Selector Program, starts at address 8 (8th instruction).
                -- Load the SW and print it
                LOAD_SW                         &   R0          &   IGNORE      &       IGNORE,
                FORMAT(REG)         &   PRINT                   &   R0_8        &       IGNORE,

                -- Load the KEY and compare it : Zero means pressed.
                LOAD_KEY                        &   R1          &   IGNORE      &       IGNORE,
                FORMAT(BOTH)    &   ALU(SUB)    &   R1          &   R1_8        &       imm(1),

                FORMAT(IMM)     &           JUMP(Z)             &   addr(0)     &       IGNORE,

                -- We pass this when pressed but to avoid looping we wait for unpressed to go further
                LOAD_PC                         &   R0          &   IGNORE      &       IGNORE,
                LOAD_KEY                        &   R1          &   IGNORE      &       IGNORE,
                FORMAT(BOTH)    &   ALU(SUB)    &   R1          &   R1_8        &       imm(1),

                FORMAT(REG)     &           JUMP(NZ)            &   R0_8        &       IGNORE,

                -- We get the current SW and we will perform some conditions to only validate
                -- a program number in [0, 7]
                LOAD_SW                         &   R0          &   IGNORE      &       IGNORE,

                FORMAT(BOTH)    &   ALU(SUB)    &   R1          &   R0_8        &       imm(0),
                FORMAT(IMM)     &       JUMP(NP)                &   addr(0)     &       IGNORE, -- restart from the begining if negative
                FORMAT(BOTH)    &   ALU(SUB)    &   R1          &   R0_8        &       imm(8),
                FORMAT(IMM)     &       JUMP(P)                 &   addr(0)     &       IGNORE, -- restart from the begining more than 7

                FORMAT(REG)     &       SPRINT                  &   R0_8        &       IGNORE,
                FORMAT(REG)     &       JUMP(ADDR)              &   R0_8        &       IGNORE,

            -- Addition
                -- Load the SW and print it. Variable X
                LOAD_PC                         &   R7          &   IGNORE      &       IGNORE,
                LOAD_SW                         &   R0          &   IGNORE      &       IGNORE,
                FORMAT(REG)         &   PRINT                   &   R0_8        &       IGNORE,

                -- Load the KEY and compare it : Zero means pressed.
                LOAD_KEY                        &   R2          &   IGNORE      &       IGNORE,
                FORMAT(BOTH)    &   ALU(SUB)    &   R2          &   R2_8        &       imm(1),

                FORMAT(REG)     &           JUMP(Z)             &   R7_8        &       IGNORE,

                -- We pass this when pressed but to avoid looping we wait for unpressed to go further
                LOAD_PC                         &   R7          &   IGNORE      &       IGNORE,
                LOAD_KEY                        &   R2          &   IGNORE      &       IGNORE,
                FORMAT(BOTH)    &   ALU(SUB)    &   R2          &   R2_8        &       imm(1),

                FORMAT(REG)     &           JUMP(NZ)            &   R7_8        &       IGNORE,

                -- Load the SW and print it. Variable Y
                LOAD_PC                         &   R7          &   IGNORE      &       IGNORE,
                LOAD_SW                         &   R1          &   IGNORE      &       IGNORE,
                FORMAT(REG)         &   PRINT                   &   R1_8        &       IGNORE,

                -- Load the KEY and compare it : Zero means pressed.
                LOAD_KEY                        &   R2          &   IGNORE      &       IGNORE,
                FORMAT(BOTH)    &   ALU(SUB)    &   R2          &   R2_8        &       imm(1),

                FORMAT(REG)     &           JUMP(Z)             &   R7_8        &       IGNORE,

                -- We pass this when pressed but to avoid looping we wait for unpressed to go further
                LOAD_PC                         &   R7          &   IGNORE      &       IGNORE,
                LOAD_KEY                        &   R2          &   IGNORE      &       IGNORE,
                FORMAT(BOTH)    &   ALU(SUB)    &   R2          &   R2_8        &       imm(1),

                FORMAT(REG)     &           JUMP(NZ)            &   R7_8        &       IGNORE,

                FORMAT(REG)     &   ALU(ADD)    &   R2          &   R0_8        &       R1_8,
                FORMAT(REG)         &   PRINT                   &   R2_8        &       IGNORE,

            -- Loop at the end
            FORMAT(IMM)     &       SPRINT                  &   imm(0)      &       IGNORE,
            LOAD_PC                         &   R0          &   IGNORE      &       IGNORE,
            FORMAT(REG)     &           JUMP(NZ)            &   R0_8        &       IGNORE,

        others => NOP
    );

begin
    process (rst, clk)
    begin
        if rst /= '1' then
            if rising_edge(clk) then
                if en = '1' then
                    data <= rom_data(to_integer(unsigned(address)));
                end if;

            end if;
        end if;

    end process;

end architecture;
