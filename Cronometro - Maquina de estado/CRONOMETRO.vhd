library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CRONOMETRO is
	port(
		i_clk 		: in std_logic;
		i_rst 		: in std_logic;
		i_start 		: in std_logic;
		i_stop 		: in std_logic;
		i_clear 		: in std_logic;
		o_count		: out std_logic_vector(15 downto 0);
		o_led 		: out std_logic
	);
end CRONOMETRO;

architecture behavioral of CRONOMETRO is

-- Sinais internos
	type Estado is (st_IDLE, st_CONTAR, st_PARAR);
	attribute syn_encoding : string;
	attribute syn_encoding of Estado : type is "safe";
	signal w_STATE : Estado;
	signal w_count : std_logic_vector(15 downto 0);

begin
	process(i_rst,i_clk)
	begin
		if (i_rst = '1') then
			w_count <= (others => '0');
			o_led <= '0';
			w_STATE <= st_IDLE;
		else
			if (rising_edge(i_clk)) then
				case w_STATE is
					when st_IDLE =>
						if (i_start = '1') then
							w_STATE <= st_CONTAR;
							w_count <= w_count + 1;
						else
							w_STATE <= st_IDLE;
						end if;
					when st_CONTAR => 
						if (i_stop = '1') then
							w_STATE <= st_PARAR;
						else
							if (i_clear = '1') then
								w_count <= (others => '0');
								w_STATE <= st_IDLE;
							else
								w_STATE <= st_CONTAR;
								w_count <= w_count + 1;
							end if;
						end if;
					when st_PARAR =>	
						if (i_start = '1') then
							w_count <= (others => '0');
							w_STATE <= st_CONTAR;
						else
							if (i_clear <= '1') then
								w_count <= (others => '0');
								w_STATE <= st_IDLE;
							else
								w_STATE <= st_PARAR;
							end if;
						end if;
					when others => w_STATE <= st_IDLE;
				end case;
			end if;
		end if; 
	end process;

	-- passa o contador para a saida
	o_count <= w_count;
end behavioral;