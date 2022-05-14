library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Ex1 is
	Port (
		i_A : in STD_LOGIC;
		i_B : in STD_LOGIC;
		i_C : in STD_LOGIC;
		i_D : in STD_LOGIC;
		o_Sa : out STD_LOGIC;
		o_Sb : out STD_LOGIC
	);
end Ex1;

architecture Behavioral of Ex1 is

	SIGNAL w_E : STD_LOGIC;
	SIGNAL w_F : STD_LOGIC;
	SIGNAL w_G : STD_LOGIC;

begin

	w_E <= i_A and not i_B;
	w_F <= not(i_C and i_D);
	o_Sa <=  w_E or w_F ;
	
	w_G <= i_A and i_B and (not i_C);
	o_Sb <= not ((w_G or  w_F) xor i_D);
end Behavioral; 