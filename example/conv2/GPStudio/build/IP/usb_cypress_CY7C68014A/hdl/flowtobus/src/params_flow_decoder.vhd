-- **************************************************************************
--
-- **************************************************************************
-- 28/11/2014 - creation
--------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

--Mode burst flag ...
use work.ComFlow_pkg.BURSTMODE;

entity params_flow_decoder is
	generic (MASTER_ADDR_WIDTH : INTEGER := 10);
  port(
  
    data_i : in std_logic_vector(15 downto 0);
	flow_rdy_i: in std_logic;
	f_empty_i : in std_logic;
	flag_i : in std_logic_vector(7 downto 0);
	
	read_data_o : out std_logic;
	
	-- signaux pour wishbone
	-- Addr must be < 16^2
	param_addr_o: buffer std_logic_vector(MASTER_ADDR_WIDTH-1 DOWNTO 0);
	param_data_o : out std_logic_vector(31 downto 0);
	param_wr_o : out std_logic;
	update_port_o: out std_logic;
	
	clk_i :in std_logic;
	rst_n_i :in std_logic
    );
end params_flow_decoder;

architecture rtl of params_flow_decoder is
---------------------------------------------------------
--	SIGNALS
---------------------------------------------------------
	signal param_addr_s : std_logic_vector(31 DOWNTO 0);

-------------
-- FSM Signal
-------------
	type fsm_state_t is (Idle, Waiting_one_cycle, DecodeFlag, ReadAddrMSB, ReadAddrLSB, ReadDataMSB, ReadDataLSB);
	signal fsm_state : fsm_state_t := Idle;
	signal f_empty_r : std_logic:='0';
	signal flow_rdy_r : std_logic:='0';
	
begin

FSM:process (clk_i, rst_n_i) 
begin
	if (rst_n_i = '0') then	
		fsm_state <= Idle; 
		read_data_o <='0';


		flow_rdy_r <='0';
		
		param_wr_o <= '0';
		param_addr_o<= (others=>'0');
		param_data_o<= (others=>'0');
		update_port_o<='0';
		
	elsif rising_edge(clk_i) then
		f_empty_r <= f_empty_i; -- reg pour detecter rising/falling edge du signal
		flow_rdy_r <= flow_rdy_i;
		
		case fsm_state is
			when Idle =>		
				read_data_o <= '0';
				param_wr_o <= '0';
				update_port_o<='0';
				
				if (flow_rdy_r='0' and flow_rdy_i='1') then -- si le flow est rdy
					fsm_state <= DecodeFlag;
				end if;
				
			--Flag pour mode burst ?
			when DecodeFlag =>
				read_data_o <= '1';
				fsm_state <= Waiting_one_cycle; 

			-- one cycle delay between read_data request and data presence as input
			when Waiting_one_cycle =>	
				fsm_state <= ReadAddrMSB;
							
				
			when ReadAddrMSB =>
				param_addr_s(31 downto 16) <= data_i;
				param_wr_o <= '0';
		
				-- escape if case of bad trame
				if (f_empty_r='0' and f_empty_i='1' ) then
					read_data_o <='0';
					fsm_state <= Idle;
					update_port_o<='1';
				else
					fsm_state <= ReadAddrLSB;
				end if;
			when ReadAddrLSB =>
				param_addr_s(15 downto 0) <= data_i;
				param_wr_o <= '0';
		
				-- escape if case of bad trame
				if (f_empty_r='0' and f_empty_i='1' ) then
					read_data_o <='0';
					fsm_state <= Idle;
					update_port_o<='1';
				else
					fsm_state <= ReadDataMSB;
				end if;
		
			when ReadDataMSB =>	
				param_data_o(31 downto 16) <= data_i;
				param_wr_o <= '0';
				param_addr_o <= param_addr_s(MASTER_ADDR_WIDTH-1 downto 0);
				
				if (f_empty_r='0' and f_empty_i='1' ) then
					read_data_o <='0';
					fsm_state <= Idle;
					update_port_o<='1';
				end if;
				
				fsm_state <= ReadDataLSB;
		
			when ReadDataLSB =>	
			
				param_data_o(15 downto 0) <= data_i;
				param_wr_o <= '1';
				
				if (f_empty_r='0' and f_empty_i='1' ) then
					read_data_o <='0';
					fsm_state <= Idle;
					update_port_o<='1';
					
				elsif (flag_i = BURSTMODE) then
					fsm_state <= ReadDataMSB;
					param_addr_o <= std_logic_vector( unsigned(param_addr_o) + "1");
				else
					fsm_state <= ReadAddrMSB;
				end if;
				
		end case;
	end if;
end process;


end rtl;

