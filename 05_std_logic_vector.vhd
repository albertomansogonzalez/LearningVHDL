----------------------------------------------------------------------------------
-- Ejemplo std_logic_vector
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity my_circuit is
    Port ( entrada: in STD_LOGIC_VECTOR(7 downto 0);
           salida : out STD_LOGIC_VECTOR(7 downto 0);
           y : out STD_LOGIC);
end my_circuit;

architecture Behavioral of my_circuit is
begin
    salida <= not entrada; -- asignacion de std_logic_vector bit a bit
    y <= entrada(3); -- hace referencia al bit tercer bit del vector.
end Behavioral;
