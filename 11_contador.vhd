
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador is
    Port ( 
        clk : in std_logic;
        led : out std_logic);
end contador;

architecture Behavioral of contador is
     -- Contador de 25 millones
    constant MAX_COUNT : natural := 25000000;  
    signal counter : natural := 0;
    signal led_reg : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if counter = MAX_COUNT then
                counter <= 0; -- reiniciar contador
                led_reg <= not led_reg; -- Toggle LED (blinking)
            else
                counter <= counter + 1; -- incrementar el contador
            end if;
        end if;
    end process;

    led <= led_reg;

end Behavioral;
