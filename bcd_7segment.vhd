----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:25:01 05/01/2022 
-- Design Name: 
-- Module Name:    bcd_7segment - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
 
entity bcd_7segment is
Port ( BCDin : in STD_LOGIC_VECTOR (3 downto 0);
Seven_Segment : out STD_LOGIC_VECTOR (6 downto 0));
end bcd_7segment;
 
architecture Behavioral of bcd_7segment is
 
begin
 
process(BCDin)
begin
 
case BCDin is
when "0000" =>
Seven_Segment <= "0000001"; 
when "0001" =>
Seven_Segment <= "1001111"; 
when "0010" =>
Seven_Segment <= "0010010"; 
when "0011" =>
Seven_Segment <= "0000110"; 
when "0100" =>
Seven_Segment <= "1001100"; 
when "0101" =>
Seven_Segment <= "0100100"; 
when "0110" =>
Seven_Segment <= "0100000"; 
when "0111" =>
Seven_Segment <= "0001111"; 
when "1000" =>
Seven_Segment <= "0000000"; 
when "1001" =>
Seven_Segment <= "0000100"; 
when others =>
Seven_Segment <= "1111111"; 
end case;
 
end process;
 
end Behavioral;

