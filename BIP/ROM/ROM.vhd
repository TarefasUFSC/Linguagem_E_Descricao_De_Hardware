library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity ROM is
	Generic(
		p_tipo_memoria		: string  := "INTEL"; -- Opções são INTEL e BL_LOGICO
		p_data_width		: integer := 16;
		p_add_width 		: integer := 12
	);
	Port(
		-- clock
		i_clk 				: in 	std_logic;
				
		-- pino SEL do logisim
			-- Se a ROM ta ligada
		i_en 					: in 	std_logic;
		
		-- entrada de endereço
		i_add 				: in 	std_logic_vector((p_add_width-1) downto 0);
		
		-- saida
		o_data 				: out std_logic_vector((p_data_width-1) downto 0)
	);
end ROM;

architecture Behavioral of ROM is
	type mem_type is array(i_add'range) of std_logic_vector(o_data'range);
	signal w_memoria_rom : mem_type;
	
	component MEMORIA_ROM
	PORT
	(
		address		: IN STD_LOGIC_VECTOR ((p_add_width-1) DOWNTO 0);
		clken			: IN STD_LOGIC  := '1';
		clock			: IN STD_LOGIC  := '1';
		q				: OUT STD_LOGIC_VECTOR ((p_data_width-1) DOWNTO 0)
	);
end component;

	
begin

	intel : if(p_tipo_memoria = "INTEL") generate	
		U01 : MEMORIA_ROM PORT MAP (
			address	=> i_add,
			clken	 	=> i_en,
			clock	 	=> i_clk,
			q	 		=> o_data
	);

	
	end generate;
	
	
	bl_logico : if(p_tipo_memoria = "BL_LOGICO") generate	

----------------------- Funcionamento--------------------------
	-- Memória com blocos logicos 
	-- Quando o a ROM estiver desativada a saída fica em 0
---------------------------------------------------------------
		process(i_clk)
		begin
			
			if(rising_edge(i_clk)) then
				
				if(i_en = '1') then
					
						o_data <= w_memoria_rom(conv_integer(i_add));
						
					end if;
				
			end if;
				
		end process;
	
	end generate;
	
end Behavioral;