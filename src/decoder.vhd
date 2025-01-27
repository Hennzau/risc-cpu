library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity decoder is

    port (
        en  : in std_logic;
        clk : in std_logic;

        instruction : in std_logic_vector(25 downto 0);
        reg_value_a : in std_logic_vector(7 downto 0);
        reg_value_b : in std_logic_vector(7 downto 0);
        ram_value   : in std_logic_vector(7 downto 0);
        status      : in std_logic_vector(1 downto 0);

        decoder_pc  : in std_logic_vector(7 downto 0);
        decoder_sw  : in std_logic_vector(7 downto 0);

        alu_sel : out std_logic_vector(2 downto 0) := "000";
        alu_a   : out std_logic_vector(7 downto 0) := "00000000";
        alu_b   : out std_logic_vector(7 downto 0) := "00000000";

        fetch_jump    : out std_logic                    := '0';
        fetch_address : out std_logic_vector(7 downto 0) := "00000000";

        reg_rw        : out std_logic                    := '0';
        reg_address   : out std_logic_vector(2 downto 0) := "000";
        reg_address_a : out std_logic_vector(2 downto 0) := "000";
        reg_address_b : out std_logic_vector(2 downto 0) := "000";

        ram_rw      : out std_logic                    := '0';
        ram_address : out std_logic_vector(7 downto 0) := "00000000";
        ram_data_in : out std_logic_vector(7 downto 0) := "00000000";

        decoder_out_l : out std_logic_vector(7 downto 0) := "00000000";
        decoder_out_s : out std_logic_vector(7 downto 0) := "00000000"
    );

end entity;

architecture Behavioral of decoder is

begin
    decode : process (clk)

        variable alu_op : std_logic_vector(2 downto 0);

        variable format : std_logic_vector(1 downto 0);
        variable op     : std_logic_vector(4 downto 0);
        variable reg    : std_logic_vector(2 downto 0);
        variable A      : std_logic_vector(7 downto 0);
        variable B      : std_logic_vector(7 downto 0);

    begin
        if rising_edge(clk) then
            if en = '1' then
                format := instruction(25 downto 24);
                op     := instruction(23 downto 19);
                reg    := instruction(18 downto 16);
                A      := instruction(15 downto 8);
                B      := instruction(7 downto 0);

                if op(4) = '0' and op(3) = '0' then -- ALU operation
                    alu_op := op(2 downto 0);

                    reg_rw <= '1'; -- always write on reg when ALU operation
                    ram_rw <= '0';

                    reg_address   <= reg;
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
                    reg_address_a <= A(2 downto 0);
                    alu_b         <= (others => '0');
                    alu_sel       <= "000";
                    reg_address   <= reg;

                    reg_rw     <= '0';
                    ram_rw     <= '0';
                    fetch_jump <= '0';

                    case op is
                        when "10010" => -- NOP
                            reg_rw <= '0';
                            ram_rw <= '0';

                        when "10011" => -- PRINT
                            reg_rw <= '0';
                            ram_rw <= '0';

                            case format is
                                when "00" => -- ALL REG
                                    decoder_out_l <= reg_value_a;
                                when "01" => -- ALL IMM
                                    decoder_out_l <= A;
                                when "10" => -- Duplicated from 00
                                    decoder_out_l <= reg_value_a;
                                when others =>
                                    null;
                            end case;

                        when "10001" => -- MOV
                            reg_rw <= '1';
                            ram_rw <= '0';

                            case format is
                                when "00" => -- ALL REG
                                    alu_a <= reg_value_a;
                                when "01" =>
                                    alu_a <= A;
                                when "10" => -- Duplicated from 00
                                    alu_a <= reg_value_a;
                                when others =>
                                    null;
                            end case;
                        when "10100" => -- REG2RAM
                            ram_rw <= '1';
                            reg_rw <= '0';

                            ram_address   <= A;
                            ram_data_in   <= reg_value_a;
                            reg_address_a <= reg;
                        when "10101" => -- RAM2REG
                            ram_rw <= '0';
                            reg_rw <= '1';

                            ram_address <= A;

                            alu_a <= ram_value;
                        when "01100" => -- JUMP
                            ram_rw <= '0';
                            reg_rw <= '0';

                            case format is
                                when "00" =>
                                    fetch_jump    <= '1';
                                    fetch_address <= reg_value_a;
                                when "01" =>
                                    fetch_jump    <= '1';
                                    fetch_address <= A;
                                when "10" =>
                                    fetch_jump    <= '1';
                                    fetch_address <= reg_value_a;
                                when others =>
                                    null;
                            end case;
                        when "01101" => -- ZJMP
                            ram_rw <= '0';
                            reg_rw <= '0';

                            if status(0) = '0' then
                                case format is
                                    when "00" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= reg_value_a;
                                    when "01" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= A;
                                    when "10" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= reg_value_a;
                                    when others =>
                                        null;
                                end case;
                            end if;
                        when "01110" => -- NZJMP
                            ram_rw <= '0';
                            reg_rw <= '0';

                            if status(0) = '1' then
                                case format is
                                    when "00" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= reg_value_a;
                                    when "01" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= A;
                                    when "10" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= reg_value_a;
                                    when others =>
                                        null;
                                end case;
                            end if;
                        when "01111" => -- PJMP
                            ram_rw <= '0';
                            reg_rw <= '0';
                            if status(1) = '1' then
                                case format is
                                    when "00" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= reg_value_a;
                                    when "01" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= A;
                                    when "10" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= reg_value_a;
                                    when others =>
                                        null;
                                end case;
                            end if;
                        when "10000" => -- NPJMP
                            ram_rw <= '0';
                            reg_rw <= '0';
                            if status(1) = '0' then
                                case format is
                                    when "00" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= reg_value_a;
                                    when "01" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= A;
                                    when "10" =>
                                        fetch_jump    <= '1';
                                        fetch_address <= reg_value_a;
                                    when others =>
                                        null;
                                end case;
                            end if;
                        when others =>
                            null;
                    end case;
                end if;
            end if;
        end if;
    end process;

end architecture;
