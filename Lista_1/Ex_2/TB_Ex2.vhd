library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TB_Ex2 is
	
end TB_Ex2;

architecture Behavioral of TB_Ex2 is

	COMPONENT Ex2 is
	Port (
		i_A 			: in 	STD_LOGIC;
		i_B 			: in 	STD_LOGIC;
		i_C 			: in 	STD_LOGIC;
		o_S 			: out STD_LOGIC;
		o_Crr 		: out STD_LOGIC
	);
	end COMPONENT;
	
	signal w_A 		: std_logic;
	signal w_B 		: std_logic;
	signal w_C 		: std_logic;
	signal w_S 		: std_logic;
	signal w_Crr 	: std_logic;

begin
	UUT: Ex2 
	Port map (
		i_A 	=> 	w_A,
		i_B 	=>		w_B,
		i_C 	=>		w_C,
		o_S 	=>		w_S,
		o_Crr =>		w_Crr
	);

	PROCESS
	begin
		w_A <= '0';
		w_B <= '0';
		w_C <= '0';
		wait for 10 NS;
		w_A <= '0';
		w_B <= '1';
		w_C <= '0';
		wait for 10 NS;
		w_A <= '1';
		w_B <= '0';
		w_C <= '0';
		wait for 10 NS;
		w_A <= '1';
		w_B <= '1';
		w_C <= '0';
		wait for 10 NS;
		
		w_A <= '0';
		w_B <= '0';
		w_C <= '1';
		wait for 10 NS;
		w_A <= '0';
		w_B <= '1';
		w_C <= '1';
		wait for 10 NS;
		w_A <= '1';
		w_B <= '0';
		w_C <= '1';
		wait for 10 NS;
		w_A <= '1';
		w_B <= '1';
		w_C <= '1';
		wait for 10 NS;
	end process;
	
end Behavioral;