----------------------------------------------------------------------------------
-- Company: United States Air Force Academy
-- Engineer: Ian Goodbody
-- 
-- Create Date:    15:05:55 02/08/2014 
-- Design Name: 
-- Module Name:    Add_Sub_4Bit - Behavioral 
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


entity Add_Sub_4Bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           SubIn : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end Add_Sub_4Bit;

architecture Behavioral of Add_Sub_4Bit is

--Add Adder, Inverter, and Mux Components

component Full_Adder_4Bit is
	port(	A : in STD_LOGIC_VECTOR (3 downto 0);
			B : in STD_LOGIC_VECTOR (3 downto 0);
			Cin : in STD_LOGIC;
			S : out STD_LOGIC_VECTOR (3 downto 0);
			Cout : out STD_LOGIC);
end component Full_Adder_4Bit;

component Inv_4Bit is
	port(	A : in STD_LOGIC_VECTOR (3 downto 0);
			X : out STD_LOGIC_VECTOR (3 downto 0));
end component Inv_4Bit;
	
component Mux_4Bit is
	port(	A : in STD_LOGIC_VECTOR (3 downto 0);
			B : in STD_LOGIC_VECTOR (3 downto 0);
			X : out STD_LOGIC_VECTOR (3 downto 0);
			S : in STD_LOGIC);
end component Mux_4Bit;

--Intermediate signals, Mux output, adn inverted B

signal MuxOut, InvB : STD_LOGIC_VECTOR (3 downto 0);

begin

Inverter: component Inv_4Bit
	port map(A => B,
				X => InvB);

SubSelectMux: component Mux_4Bit
	port map(A => B,
				B => InvB,
				X => MuxOut,
				S => SubIn);

AddModule: component Full_Adder_4Bit
	port map(A => A,
				B => MuxOut,
				Cin => SubIn,
				S => S,
				Cout => Cout);

end Behavioral;

