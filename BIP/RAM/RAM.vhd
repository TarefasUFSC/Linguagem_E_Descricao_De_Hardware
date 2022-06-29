library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAM is
	Generic(
		p_data_width: 		integer := 16;
		p_add_width : 		integer := 12
	);
	Port(
		i_clk 		: in 	std_logic;
		i_data 		: in 	std_logic_vector((p_data_width-1) downto 0);
		i_we 			: in 	std_logic;
		i_addr 		: in 	std_logic_vector((p_add_width-1) downto 0);
		i_addw 		: in 	std_logic_vector((p_add_width-1) downto 0);
		o_data 		: out std_logic_vector((p_data_width-1) downto 0)
	);
end RAM;

architecture Behavioral of RAM is
	type mem_type is array(i_addr'range) of std_logic_vector(i_data'range);
	signal w_memoria_ram : mem_type;
begin
	
	-- Process da RAM
	-- isso aqui ta diferente do que ele mostra no grafico do pdf...
		-- La ele da apenas uma entrada de endereço
		-- ele enfiou o wr no cu?? e we == en???
	process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			if(i_we = '1') then
				w_memoria_ram(conv_integer(i_addw)) <= i_data;
			end if
			o_data <= w_memoria_ram(conv_integer(i_addr))
			end if
	end process;
	
end Behavioral;