library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

entity cnn_slave is
	port(
		clk_proc		: in std_logic;
		reset_n			: in std_logic;
		addr_rel_i		: in  std_logic_vector(1 downto 0);
		wr_i			: in  std_logic;
		rd_i			: in  std_logic;
		datawr_i		: in  std_logic_vector(31 downto 0);
		datard_o		: out std_logic_vector(31 downto 0);
		select_o		: out std_logic_vector(31 downto 0);
		enable_o		: out std_logic
	);
end cnn_slave;

architecture rtl of cnn_slave is

	constant ENABLE_REG_ADDR	: natural := 0;
	constant SEL_REG_ADDR	    : natural := 1;
	signal   enable_reg 		: std_logic;
	signal   sel_reg 		    : std_logic_vector(31 downto 0);



begin

	write_reg : process (clk_proc, reset_n)
	begin
		if(reset_n='0') then
			enable_reg <= '0';

		elsif(rising_edge(clk_proc)) then
			if(wr_i='1') then
			case addr_rel_i is
				when std_logic_vector(to_unsigned(ENABLE_REG_ADDR, 2))	=>	enable_reg 		<= datawr_i(0);
				when std_logic_vector(to_unsigned(SEL_REG_ADDR, 2))	    =>	sel_reg 		<= datawr_i;
				when others=>
				end case;
			end if;
		end if;
	end process;

	enable_o 	<= enable_reg;
	select_o 	<= sel_reg;

end rtl;
