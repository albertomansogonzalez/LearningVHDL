library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
	port(	A : in bit_vector (2 downto 0);
		Y : out bit_vector(7 downto 0));
end entity;

architecture arch of decoder is
begin
Y <= "00000001" when (A = "000") else
	 "00000010" when (A = "001") else
	 "00000100" when (A = "010") else
	 "00001000" when (A = "011") else
	 "00010000" when (A = "100") else
	 "00100000" when (A = "101") else
	 "01000000" when (A = "110") else
	 "10000000" when (A = "111");
end arch;
