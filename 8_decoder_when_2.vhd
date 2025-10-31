library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
	port(	A : in bit_vector (2 downto 0);
		Y : out bit_vector(7 downto 0));
end entity;

architecture arch of decoder is
begin
    Y(0) <= '1' when A = "000" else '0';
    Y(1) <= '1' when A = "001" else '0';
    Y(2) <= '1' when A = "010" else '0';
    Y(3) <= '1' when A = "011" else '0';
    Y(4) <= '1' when A = "100" else '0';
    Y(5) <= '1' when A = "101" else '0';
    Y(6) <= '1' when A = "110" else '0';
    Y(7) <= '1' when A = "111" else '0';
end arch;
