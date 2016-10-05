library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FirstLayer_slave is
	port (
		clk_proc		: in std_logic;
		reset_n			: in std_logic;
		addr_rel_i		: in  std_logic_vector(1 downto 0);
		wr_i			: in  std_logic;
		rd_i			: in  std_logic;
		datawr_i		: in  std_logic_vector(31 downto 0);
		datard_o		: out std_logic_vector(31 downto 0);
		enable_o		: out std_logic

	);
end FirstLayer_slave;

architecture rtl of FirstLayer_slave is

	constant ENABLE_REG_ADDR	: natural := 0;
	signal enable_reg 			: std_logic;



begin

	write_reg : process (clk_proc, reset_n)
	begin
		if(reset_n='0') then
			enable_reg <= '0';

		elsif(rising_edge(clk_proc)) then
			if(wr_i='1') then
			case addr_rel_i is
				when std_logic_vector(to_unsigned(ENABLE_REG_ADDR, 2))	=>	enable_reg 		<= datawr_i(0);
				when others=>
				end case;
			end if;
		end if;
	end process;

	enable_o 	<= enable_reg;
end rtl;
