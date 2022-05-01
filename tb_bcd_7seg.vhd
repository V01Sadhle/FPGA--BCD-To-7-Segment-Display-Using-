--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:42:48 05/01/2022
-- Design Name:   
-- Module Name:   C:/Users/Admin/bcd_7segment/tb_bcd_7seg.vhd
-- Project Name:  bcd_7segment
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcd_7segment
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_bcd_7seg IS
END tb_bcd_7seg;
 
ARCHITECTURE behavior OF tb_bcd_7seg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_7segment
    PORT(
         BCDin : IN  std_logic_vector(3 downto 0);
         Seven_Segment : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BCDin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Seven_Segment : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_7segment PORT MAP (
          BCDin => BCDin,
          Seven_Segment => Seven_Segment
        );
   -- Stimulus process
   stim_proc: process
  begin 
	BCDin <= "0000";
	wait for 100 ns;
	BCDin <= "0001";
	wait for 100 ns;
	BCDin <= "0010";
	wait for 100 ns;
	BCDin <= "0011";
	wait for 100 ns;
	BCDin <= "0100";
	wait for 100 ns;
	BCDin <= "0101";
	wait for 100 ns;
	BCDin <= "0110";
	wait for 100 ns;
	BCDin <= "0111";
	wait for 100 ns;
	BCDin <= "1000";
	wait for 100 ns;
	BCDin <= "1001";
	wait for 100 ns;
	end process;


END;
