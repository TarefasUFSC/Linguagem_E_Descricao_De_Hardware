library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ex2 is
	Port (
		i_A 	: in 	STD_LOGIC;
		i_B 	: in 	STD_LOGIC;
		i_C 	: in 	STD_LOGIC;
		o_S 	: out STD_LOGIC;
		o_Crr : out STD_LOGIC
	);
end Ex2;

architecture Behavioral of Ex2 is
	SIGNAL w_S1 : STD_LOGIC;
	SIGNAL w_C1 : STD_LOGIC;
	SIGNAL w_C2 : STD_LOGIC;
begin
	w_S1 <= i_A xor i_B;
	w_C1 <= i_A and i_B;
	o_S <= w_S1 xor i_C;
	w_C2 <= w_S1 and i_C;
	o_Crr <= w_C2 or w_C1;

end Behavioral;