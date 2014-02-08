----------------------------------------------------------------------------------
-- Company: United States Air Forec Academy
-- Engineer: Ian Goodbody
-- 
-- Create Date:    13:47:24 02/07/2014 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
	
begin
	S <= A xor B xor Cin;
	Cout <= ((A or B) and Cin) or (A and B);
end Behavioral;

