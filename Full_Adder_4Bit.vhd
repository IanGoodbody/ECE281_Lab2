----------------------------------------------------------------------------------
-- Company: United States Air Force Academy
-- Engineer: Ian Goodbody
-- 
-- Create Date:    14:40:22 02/08/2014 
-- Design Name: 
-- Module Name:    Full_Adder_4Bit - Structural 
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

--Adder will have take in Vector inputs
entity Full_Adder_4Bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           OvF: out  STD_LOGIC);
end Full_Adder_4Bit;

architecture Structural of Full_Adder_4Bit is

--Declare Adder Component
component Full_Adder is
	port(	A : in STD_LOGIC;
			B : in STD_LOGIC;
			Cin : in STD_LOGIC;
			S : out STD_LOGIC;
			Cout : out STD_LOGIC);
end component Full_Adder;

--Intermediate carry Signals
signal C0, C1, C2, C3 : STD_LOGIC;

begin
--Add single adders together in a ripple carry sequence
Add0: component Full_Adder
	port map(A => A(0),
				B => B(0),
				Cin => Cin,
				S => S(0),
				Cout => C0);

Add1: component Full_Adder
	port map(A => A(1),
				B => B(1),
				Cin => C0,
				S => S(1),
				Cout => C1);

Add2: component Full_Adder
	port map(A => A(2),
				B => B(2),
				Cin => C1,
				S => S(2),
				Cout => C2);

Add3: component Full_Adder
	port map(A => A(3),
				B => B(3),
				Cin => C2,
				S => S(3),
				Cout => C3);
	OvF <= C2 xor C3;
end Structural;

