library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TB_BIP is
	Generic(
		p_data_width			: integer := 16;
		p_add_width 			: integer := 12
	);
end TB_BIP;

architecture behavioral of TB_BIP is

	component BIP is
		
		port(
			i_clk 					: in std_logic; -- remover depois que criar o pll
			i_switches 				: in std_logic_vector(p_add_width-1 downto 0);
			--i_add_tst				: in std_logic_vector(p_add_width-1 downto 0);
			i_rst 					: in std_logic -- remover depois que criar o pll
		);
	end component;
	
	-- cria um signal w_x pra cada port
	SIGNAL w_clk 					: std_logic; -- remover depois que criar o pll
	SIGNAL w_rst 					: std_logic; -- remover depois que criar o pll
	SIGNAL w_switches 				:  std_logic_vector(p_add_width-1 downto 0);
	--SIGNAL w_add_tst 				:  std_logic_vector(p_add_width-1 downto 0);
begin

	UUT: BIP
	port map(
		-- Só lembra que aqui a seta é: pino_do_componente => w_x equivalente
		i_clk 						=> w_clk,
		i_switches					=> w_switches,
		--i_add_tst					=> w_add_tst,
		i_rst 						=> w_rst
	);
	

	w_switches <= x"007";
-- Sinais
	-- clock
	process
	begin
		w_clk <= '1';
		wait for 10 NS;
		w_clk <= '0';
		wait for 10 NS;
	end process;

	-- reset
	process
	begin
		w_rst <= '0';
		wait for 10 NS;
		w_rst <= '1';
		wait;
	end process;

	-- process
	-- begin
	-- 	wait for 20 NS;
	-- 	w_add_tst <= x"000";
	-- 	wait for 20 NS;
	-- 	w_add_tst <= x"001";
	-- 	wait for 20 NS;
	-- 	w_add_tst <= x"002";
	-- 	wait for 20 NS;
	-- 	w_add_tst <= x"003";
	-- 	wait for 20 NS;
	-- end process;
	


end behavioral;