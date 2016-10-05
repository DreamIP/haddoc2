

-- **************************************************************************
--	READ FLOW
-- **************************************************************************
-- Ce composant est connect? ? un com_flow_fifo en entr?e et ? un processing (FV/LV/Data) en sortie
--
-- 16/10/2014 - creation
--------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity "uses" the package   
use work.ComFlow_pkg.all;

entity read_flow_nbits is
  generic (
	FLAGS_CODES : my_array_t := InitFlagCodes;
	DATA_SZ :integer
    );
  port(
  
   data_i : in std_logic_vector(15 downto 0);
   flow_rdy_i: in std_logic;
	f_empty_i : in std_logic;
	enable_i : in std_logic;
	flag_i :in  std_logic_vector(7 downto 0);
	
	read_data_o : out std_logic;
	data_o : out std_logic_vector(DATA_SZ-1 downto 0);
	fv_o: out std_logic;
	dv_o : out std_logic;

	clk_i :in std_logic;
	rst_n_i :in std_logic
    
    );
end read_flow_nbits;

architecture rtl of read_flow_nbits is
---------------------------------------------------------
--	SIGNALS
---------------------------------------------------------

	constant CPT_MAX : integer := 16/DATA_SZ;
-------------
-- FSM Signal
-------------
	type fsm_state_t is (Idle, DecodeFlag, ReadFlow, StartRead,ClkCycle , EndFlow);
	signal fsm_state : fsm_state_t := Idle;
	signal f_empty_r : std_logic:='0';
	signal flow_rdy_r : std_logic:='0';
	signal tmp : unsigned(15 downto 0);
	signal cpt_s : integer range 0 to CPT_MAX := 1;
	
	
begin

FSM:process (clk_i, rst_n_i) 
variable last_packet: std_logic := '0';
--variable cpt : integer range 0 to CPT_MAX :=0;
begin
	if (rst_n_i = '0') then	
		fsm_state <= Idle; 
		read_data_o <='0';
		fv_o <='0';
		dv_o <='0';
		last_packet :='0';
		flow_rdy_r <='0';
		cpt_s <= CPT_MAX;
	elsif rising_edge(clk_i) then
		f_empty_r <= f_empty_i; -- reg pour detecter rising/falling edge du signal
		flow_rdy_r <= flow_rdy_i;
		
		case fsm_state is
			when Idle =>		
				dv_o <='0';
				read_data_o <= '0';
				last_packet :='0';

				if (enable_i ='1' and flow_rdy_r='0' and flow_rdy_i='1') then -- si le flow est rdy
					fsm_state <= DecodeFlag;
				end if;
				
			when DecodeFlag =>
				if (flag_i = FLAGS_CODES(SoF)) then fv_o <= '1'; end if; -- si debut d'image on monte le fv
				if (flag_i = FLAGS_CODES(EoF)) then last_packet :='1' ; end if;
				read_data_o <= '1';
				fsm_state <= ClkCycle; 

			-- one cycle delay between read_data request and data presence as input
			when StartRead =>
				read_data_o <= '1';
				cpt_s <= CPT_MAX;
				fsm_state <= ClkCycle;
				
			when ClkCycle =>
				read_data_o <= '0';
				cpt_s <= CPT_MAX;
				fsm_state <= ReadFlow;
			
			when ReadFlow =>
				
				dv_o <='1';
				
				for i in 0 to DATA_SZ-1 loop
					data_o(i) <= data_i(i+DATA_SZ*(cpt_s-1));
				end loop;
				
				cpt_s <= cpt_s - 1;
				
				if(cpt_s = 0) then
					dv_o <='0';
					if(f_empty_i='1') then
						fsm_state <= EndFlow;
					else
						fsm_state <= StartRead;
					end if;
				end if;

				
			when EndFlow =>
				dv_o <= '0'; -- release Data valid
				
				if (last_packet = '1') then  
					fv_o <= '0'; 
				end if;
				fsm_state <= Idle;

		end case;
	end if;
end process;


end rtl;

