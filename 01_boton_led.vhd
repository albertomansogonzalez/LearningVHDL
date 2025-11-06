----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2025 17:19:47
-- Design Name: 
-- Module Name: boton_led - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity boton_led is
    Port ( BTN : in STD_LOGIC;
           LED : out STD_LOGIC);
end boton_led;

architecture Behavioral of boton_led is

begin

    LED <= BTN; -- Al activarse el boton, se activa el led.

end Behavioral;
