library ieee;

use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity fetch is
    port (
        en  : in std_logic;
        clk : in std_logic;
        rst : in std_logic := '0';

        jump : in std_logic := '0';

        address_in  : in std_logic_vector(7 downto 0);

        address_out : out std_logic_vector(7 downto 0) := "00000000"
    );
end entity;

architecture Behavioral of fetch is

    signal address : std_logic_vector(7 downto 0) := "00000000";

begin
    process (rst, clk)
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

end architecture;
