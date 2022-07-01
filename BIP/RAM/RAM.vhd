library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAM is
	Generic(
		p_tipo_memoria		: string  := "INTEL"; -- outra opção é BL_LOGICO
		p_data_width		: integer := 16;
		p_add_width 		: integer := 12
	);
	Port(
		-- clock
		i_clk 				: in 	std_logic;
		
		-- entrada
		i_data 				: in 	std_logic_vector((p_data_width-1) downto 0);
		
		-- pino LD do logisim
			-- se 1 → bota na saida o que ta no endereço
			-- se 0 → escreve no endereço o que ta na entrada de dados
		i_wr					: in 	std_logic;
		
		-- pino SEL do logisim
			-- Se a ram ta ligada
		i_en 					: in 	std_logic;
		
		-- apenas uma entrada de endereço, pois estou usando o mesmo modelo do logisim
		i_add 				: in 	std_logic_vector((p_add_width-1) downto 0);
		
		-- botão de reset da ram
		i_clr					: in 	std_logic;
		
		-- saida
		o_data 				: out std_logic_vector((p_data_width-1) downto 0)
	);
end RAM;

architecture Behavioral of RAM is
	type mem_type is array(i_add'range) of std_logic_vector(i_data'range);
	signal w_memoria_ram : mem_type;
	signal w_wr : std_logic;
	component MEMORIA_INTEL
	PORT
	(
		aclr					: IN STD_LOGIC  := '0';
		address				: IN STD_LOGIC_VECTOR ((p_add_width-1) DOWNTO 0);
		clken					: IN STD_LOGIC  := '1';
		clock					: IN STD_LOGIC  := '1';
		data					: IN STD_LOGIC_VECTOR ((p_data_width-1) DOWNTO 0);
		wren					: IN STD_LOGIC ;
		q						: OUT STD_LOGIC_VECTOR ((p_data_width-1) DOWNTO 0)
	);
end component;

begin
	
	intel : if(p_tipo_memoria = "INTEL") generate
		U01 : MEMORIA_INTEL PORT MAP (
			aclr	 			=> i_clr,
			address			=> i_add,
			clken	 			=> i_en,
			clock	 			=> i_clk,
			data	 			=> i_data,
			wren	 			=> w_wr,
			q	 				=> o_data
		);
	end generate;
	
	-- A logica do wren para configurar escrita é inversa do BIP
	w_wr <= not i_wr;
	

	bl_logico : if(p_tipo_memoria = "BL_LOGICO") generate	
	-- Memória com blocos logicos
		process(i_clk)
		begin
			if(rising_edge(i_clk)) then
				if(i_en = '1') then
					if (i_wr = '1') then
						o_data <= w_memoria_ram(conv_integer(i_add));
					else
						w_memoria_ram(conv_integer(i_add)) <= i_data;
					end if;
				else
					o_data <= (others =>'z');
				end if;

			end if;
			
		
		end process;
	end generate;
	
end Behavioral;