-- **************************************************************************
--	READ FLOW
-- **************************************************************************
-- Ce composant est connect� � un com_flow_fifo en entr�e et � un processing (FV/LV/Data) en sortie
--
-- 16/10/2014 - creation
--------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity "uses" the package   
use work.ComFlow_pkg.all;

entity read_flow is
  generic (
	FLAGS_CODES : my_array_t := InitFlagCodes
    );
  port(
  
   data_i : in std_logic_vector(15 downto 0);
	flow_rdy_i: in std_logic;
	f_empty_i : in std_logic;
	enable_i : in std_logic;
	flag_i :in  std_logic_vector(7 downto 0);
	
	read_data_o : out std_logic;
	data_o : out std_logic_vector(15 downto 0);
	fv_o: out std_logic;
	dv_o : out std_logic;

	clk_i :in std_logic;
	rst_n_i :in std_logic
    
    );
end read_flow;

architecture rtl of read_flow is
---------------------------------------------------------
--	SIGNALS
---------------------------------------------------------

-------------
-- FSM Signal
-------------
	type fsm_state_t is (Idle, ReadFlow, Waiting_one_cycle, DecodeFlag, DeassertDV);
	signal fsm_state : fsm_state_t := Idle;
	signal f_empty_r : std_logic:='0';
	signal flow_rdy_r : std_logic:='0';
	
begin

FSM:process (clk_i, rst_n_i) 
variable last_packet: std_logic := '0';

begin
	if (rst_n_i = '0') then	
		fsm_state <= Idle; 
		read_data_o <='0';
		fv_o <='0';
		dv_o <='0';
		last_packet :='0';
		flow_rdy_r <='0';
	elsif rising_edge(clk_i) then
		f_empty_r <= f_empty_i; -- reg pour detecter rising/falling edge du signal
		flow_rdy_r <= flow_rdy_i;
		
		case fsm_state is
			when Idle =>		
				dv_o <='0';
				read_data_o <= '0';
				last_packet :='0';

				if (enable_i ='1' and flow_rdy_r='0' and flow_rdy_i='1') then -- si le flow est rdy
					--read_data_o <= '1';
					--fsm_state <= ReadFlow;
					fsm_state <= DecodeFlag;
				end if;
				
			when DecodeFlag =>
			
				if (flag_i = FLAGS_CODES(SoF)) then fv_o <= '1'; end if; -- si debut d'image on monte le fv
				if (flag_i = FLAGS_CODES(EoF)) then last_packet :='1' ; end if;
				
				read_data_o <= '1';
				fsm_state <= Waiting_one_cycle; 

			-- one cycle delay between read_data request and data presence as input
			when Waiting_one_cycle =>			
				fsm_state <= ReadFlow;
				
			when ReadFlow =>
				dv_o <='1';
				data_o <= data_i;
				
				if (f_empty_r='0' and f_empty_i='1') then
					read_data_o <='0';
				--	dv_o <= '0'; -- release Data valid
					fsm_state <= DeassertDV;
				end if;
				
			when DeassertDV =>
				dv_o <= '0'; -- release Data valid
				
				if (last_packet = '1') then  
					fv_o <= '0'; 
				end if;
				fsm_state <= Idle;

		end case;
	end if;
end process;


end rtl;

