--------------------------------------------------------------------------------
-- Company: United States Air Force Academy
-- Engineer: Ian Goodbody
--
-- Create Date:   14:02:59 02/07/2014
-- Design Name:	Adder Module
-- Module Name:   C:/Users/C16Ian.Goodbody/Documents/Classes/ECE281/Lab2_IRG/Full_Adder_TestBench.vhd
-- Project Name:  Lab2_IRG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.All;
 
ENTITY Full_Adder_TestBench IS
END Full_Adder_TestBench;
 
ARCHITECTURE behavior OF Full_Adder_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   --signal A : std_logic := '0';
   --signal B : std_logic := '0';
   --signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
 
	--Counter signal to cycle thorugh the 8 inputs
	signal Count : STD_LOGIC_VECTOR(2 downto 0) := "000";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder PORT MAP (
          A => count(0),
          B => count(1),
          Cin => count(2),
          S => S,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      --Loop signal 8 times through all signals
      for I in 0 to 7 loop
			wait for 100 ns;
			count <= count + 1; 
		end loop;
      wait;
   end process;

END;
