----------------------------------------------------------------------------------
-- Multiplexor de 2 entradas a 1 salida
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
    Port ( a : in STD_LOGIC; -- Entrada 1
           b : in STD_LOGIC; -- Entrada 2
           sel : in STD_LOGIC; -- selector del multiplexor
           y : out STD_LOGIC); -- salida
end mux2to1;

architecture Behavioral of mux2to1 is
begin

    -- Si sel='0' entonces y<=a, si no y<=b
    y <= a when sel = '0' else b;

end Behavioral;
