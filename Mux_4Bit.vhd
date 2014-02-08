----------------------------------------------------------------------------------
-- Company: Untited States Air Force Academy
-- Engineer: Ian Goodbody
-- 
-- Create Date:    14:54:08 02/08/2014 
-- Design Name: 
-- Module Name:    Mux_4Bit - Behavioral 
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


entity Mux_4Bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           X : out  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC);
end Mux_4Bit;

architecture Behavioral of Mux_4Bit is

begin
	
	X <= A when S = '0' else
		  B;

end Behavioral;

