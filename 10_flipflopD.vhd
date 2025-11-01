library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflopD is
	port(
		clk, reset: in std_logic;
		d: in std_logic;
		q: out std_logic
	);
end flipflopD;

architecture arch of flipflopD is
begin
    process(clk,reset)	--cambio en clk o reset disparan el proceso
	begin
		if (reset = '1') then -- el reset es asincrono tiene prioridad
			q <= '0';
		elsif (clk'event and clk = '1') then -- cambio de clk=1
			q <= d;	-- funcionamiento del flip flop tipo D
		end if;
	end process;
end arch;
