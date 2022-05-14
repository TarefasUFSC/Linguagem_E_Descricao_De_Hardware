library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ex3 is
	Port (
	-- Entradas
		i_A, i_B : in STD_LOGIC_VECTOR(0 to 7);
		
		-- Saidas
		o_S 	: out STD_LOGIC_VECTOR(0 to 7);
		o_Crr : out STD_LOGIC
	);
end Ex3;

architecture Behavioral of Ex3 is

	component Ex2 is
		PORT (
			i_A 	: in 	STD_LOGIC;
			i_B 	: in 	STD_LOGIC;
			i_C 	: in 	STD_LOGIC;
			o_S 	: out STD_LOGIC;
			o_Crr : out STD_LOGIC
		);
	end component;

	SIGNAL w_C: STD_LOGIC_VECTOR(0 to 7);
begin

	U01: Ex2
	PORT MAP (
		i_A => i_A(0),
		i_B => i_B(0),
		i_C => w_C(0),
		o_S => o_S(0),
		o_Crr => w_C(1)
	);
	U02: Ex2
	PORT MAP (
		i_A => i_A(1),
		i_B => i_B(1),
		i_C => w_C(1),
		o_S => o_S(1),
		o_Crr => w_C(2)
	);
	U03: Ex2
	PORT MAP (
		i_A => i_A(2),
		i_B => i_B(2),
		i_C => w_C(2),
		o_S => o_S(2),
		o_Crr => w_C(3)
	);
	U04: Ex2
	PORT MAP (
		i_A => i_A(3),
		i_B => i_B(3),
		i_C => w_C(3),
		o_S => o_S(3),
		o_Crr => w_C(4)
	);
	U05: Ex2
	PORT MAP (
		i_A => i_A(4),
		i_B => i_B(4),
		i_C => w_C(4),
		o_S => o_S(4),
		o_Crr => w_C(5)
	);
	U06: Ex2
	PORT MAP (
		i_A => i_A(5),
		i_B => i_B(5),
		i_C => w_C(5),
		o_S => o_S(5),
		o_Crr => w_C(6)
	);
	U07: Ex2
	PORT MAP (
		i_A => i_A(6),
		i_B => i_B(6),
		i_C => w_C(6),
		o_S => o_S(6),
		o_Crr => w_C(7)
	);
	U08: Ex2
	PORT MAP (
		i_A => i_A(7),
		i_B => i_B(7),
		i_C => w_C(7),
		o_S => o_S(7),
		o_Crr => o_Crr
	);

end Behavioral;