library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TB_CRONOMETRO is

end TB_CRONOMETRO;

architecture behavioral of TB_CRONOMETRO is

	component CRONOMETRO is
		port(
			i_clk 		: in std_logic;
			i_rst 		: in std_logic;
			i_start 		: in std_logic;
			i_stop 		: in std_logic;
			i_clear 		: in std_logic;
			o_count		: out std_logic_vector(15 downto 0);
			o_led 		: out std_logic
		);
	end component;
	
	signal w_clk 		:  std_logic;
	signal w_rst 		:  std_logic;
	signal w_start 	:  std_logic;
	signal w_stop 		:  std_logic;
	signal w_clear 	:  std_logic;
	signal w_count		:  std_logic_vector(15 downto 0);
	signal w_led 		:  std_logic;
	
begin

	UUT: CRONOMETRO 
	port map(
		i_clk 		=> w_clk,
		i_rst 		=> w_rst,
		i_start 		=> w_start,
		i_stop 		=> w_stop,
		i_clear 		=> w_clear,
		o_count		=> w_count,
		o_led 		=> w_led
	);
	
	-- clock
	process
	begin
		w_clk <= '0';
		wait for 10 NS;
		w_clk <= '1';
		wait for 10 NS;
	end process;

	-- reset
	process
	begin
		w_rst <= '1';
		wait for 10 NS;
		w_rst <= '0';
		wait;
	end process;
	
	-- teste cronometro
	process
	begin
		w_start <= '0';
		w_stop <='0';
		w_clear <='0';
		wait for 150 ns;
		w_start <='1';
		wait;
		
	end process;
end behavioral;