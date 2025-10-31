----------------------------------------------------------------------------------
-- Ejemplo logica concurrente (sin memoria) Libro Free_range_vhdl
-- Se aprende: señales locales (o intermedias)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity my_circuit is
    Port ( A1,  A2, B1, B2, D1: in STD_LOGIC; -- Entrada 1
           E : out STD_LOGIC); -- salida
end my_circuit;

architecture Behavioral of my_circuit is
    signal A, B, C : STD_LOGIC; -- señal local o intermedia (ni input ni output)
begin
    A <= A1 and A2;
    B <= B1 or B2;
    C <= (not D1) and B2;
    E <= A or B or C;
end Behavioral;
