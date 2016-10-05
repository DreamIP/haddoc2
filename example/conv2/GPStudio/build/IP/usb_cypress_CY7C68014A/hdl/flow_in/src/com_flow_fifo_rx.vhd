-- **************************************************************************
--	ComFlowFifo
-- **************************************************************************
-- 
-- 16/10/2014 - creation
--------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity  com_flow_fifo_rx is
  generic (
	FIFO_DEPTH : POSITIVE := 1024;
	FLOW_ID : integer := 1
    );
  port(

	data_wr_i : in std_logic;
    data_i : in std_logic_vector(15 downto 0);
	rdreq_i : in std_logic;
	pktend_i : in std_logic;
	enable_i : in std_logic;
	
	data_o : out std_logic_vector(15 downto 0);
	flow_rdy_o: out std_logic;
	f_empty_o : out std_logic;
	fifos_f_o : out std_logic;
	flag_o : out std_logic_vector(7 downto 0);
  
	clk_in_i : in std_logic;
	clk_out_i :in std_logic;
	
	rst_n_i :in std_logic
    
    );
end com_flow_fifo_rx;

architecture rtl of com_flow_fifo_rx is

---------------------------------------------------------
--	COMPONENT DECLARATION
---------------------------------------------------------
 component fifo_com_rx IS
	GENERIC
	(
		DEPTH : POSITIVE := FIFO_DEPTH
	);
	PORT
	(
		aclr		: IN STD_LOGIC  := '0';
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		rdclk		: IN STD_LOGIC ;
		rdreq		: IN STD_LOGIC ;
		wrclk		: IN STD_LOGIC ;
		wrreq		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		rdempty		: OUT STD_LOGIC ;
		wrfull		: OUT STD_LOGIC 
	);
END component;

---------------------------------------------------------
--	SIGNALS
---------------------------------------------------------
-------------
-- FIFO 1 SIGNALS
-------------
	signal	fifo_1_data_s  : std_logic_vector(15 downto 0):=(others=>'0');
	signal	fifo_1_wrclk_s : std_logic:= '0';
	signal	fifo_1_wrreq_s : std_logic:= '0';
	signal	fifo_1_wrfull_s :	std_logic:= '0';
	
	signal	fifo_1_q_s: std_logic_vector(15 downto 0):=(others=>'0');
	signal	fifo_1_rdclk_s: std_logic:= '0';
	signal	fifo_1_rdreq_s: std_logic:= '0';
	signal	fifo_1_rdempty_s :	std_logic:= '0';

-- registers
	signal fifo_1_readable : std_logic:= '0';
	signal fifo_1_rdempty_r : std_logic:= '0';
	signal fifo_1_rdempty_rr : std_logic:= '0';
	signal flag_fifo1 : std_logic_vector(7 downto 0):=(others=>'0');
	signal fifo_1_aclr_s :std_logic:='0';
-------------
-- FIFO 2 SIGNALS
-------------
	signal	fifo_2_data_s  : std_logic_vector(15 downto 0):=(others=>'0');
	signal	fifo_2_wrclk_s : std_logic:= '0';
	signal	fifo_2_wrreq_s : std_logic:= '0';
	signal	fifo_2_wrfull_s :	std_logic:= '0';
	
	signal	fifo_2_q_s: std_logic_vector(15 downto 0):=(others=>'0');
	signal	fifo_2_rdclk_s: std_logic:= '0';
	signal	fifo_2_rdreq_s: std_logic:= '0';
	signal	fifo_2_rdempty_s :	std_logic:= '0';
	signal 	fifo_2_aclr_s :std_logic:='0';

-- registers

	signal fifo_2_readable : std_logic:= '0';
	signal fifo_2_rdempty_r : std_logic:= '0';
	signal fifo_2_rdempty_rr : std_logic:= '0';
	signal flag_fifo2 : std_logic_vector(7 downto 0):=(others=>'0');
	
-------------
-- FSM Signal
-------------
	type fsm_state_t is (Idle, DecodeFN, ReceivePacket, SwapFifos, Full,tmp);
	signal fsm_state : fsm_state_t := Idle;
	
	-- mux/demux fifos
	signal fifo_sel : std_logic:= '0';
	
	-- flag 
	signal data_wr_r :std_logic:= '0';
	signal frame_number : std_logic_vector(15 downto 0):=(others=>'0');
	
	signal cur_fifo_wrreq_s : std_logic:= '0';
	signal cur_fifo_data_s : std_logic_vector(15 downto 0):=(others=>'0');
	signal cur_fifo_readable : std_logic:= '0';
	signal cur_fifo_readable_r : std_logic:= '0';
	signal other_fifo_readable : std_logic := '0';
	signal cur_fifo_full_s : std_logic:= '0';
	
begin

-------
-- MAP CLK 
-------
fifo_1_wrclk_s <= clk_in_i;
fifo_2_wrclk_s <= clk_in_i;

fifo_1_rdclk_s <= clk_out_i;
fifo_2_rdclk_s <= clk_out_i;

flow_rdy_o <= fifo_1_readable or fifo_2_readable;

  FIFO_1 : fifo_com_rx
	GENERIC MAP(
		DEPTH => FIFO_DEPTH
	)
	PORT map 
	(
		aclr 		=> fifo_1_aclr_s,
		data		=> fifo_1_data_s,
		rdclk		=> fifo_1_rdclk_s,
		rdreq		=> fifo_1_rdreq_s,
		wrclk		=> fifo_1_wrclk_s,
		wrreq		=> fifo_1_wrreq_s,
		q			=> fifo_1_q_s,
		rdempty => fifo_1_rdempty_s,
		wrfull	=> fifo_1_wrfull_s
	);

  FIFO_2 : fifo_com_rx 
  	GENERIC MAP(
		DEPTH => FIFO_DEPTH
	)
	PORT map 
	(
		aclr 		=> fifo_2_aclr_s,
		data		=> fifo_2_data_s,
		rdclk		=> fifo_2_rdclk_s,
		rdreq		=> fifo_2_rdreq_s,
		wrclk		=> fifo_2_wrclk_s,
		wrreq		=> fifo_2_wrreq_s,
		q			=> fifo_2_q_s,
		rdempty => fifo_2_rdempty_s,
		wrfull	=> fifo_2_wrfull_s
	);
	

fifo_1_aclr_s <= not(rst_n_i or enable_i);
fifo_2_aclr_s <= not(rst_n_i or enable_i);
	
FSM:process (clk_in_i, rst_n_i) 
begin
	if (rst_n_i = '0') then	
		cur_fifo_wrreq_s <= '0';	
		fifos_f_o <='0';
		cur_fifo_readable <= '0';

		fifo_sel <= '0';
		fsm_state <= Idle; 
	--	flag_s <= (others=>'0');
	--	data_wr_r <='0';
		frame_number <= (others=>'0');
		
	elsif rising_edge(clk_in_i) then
		data_wr_r <= data_wr_i;
		
		case fsm_state is
		
			when Idle =>
				-- si un packet vient de l USB
				if (enable_i='1' and data_wr_r ='0' and data_wr_i ='1') then 
	--				flag_s <= data_i; le flag est gere dans un process specifique
					
					-- on check si le paquet est  pour nous
					if (data_i(15 downto 8) = std_logic_vector(to_unsigned(FLOW_ID,8)) ) then
						fsm_state <= DecodeFN;
						
					else 
						fsm_state <= Idle;
					end if;
				end if;
				
			-- on lit le frane number
			when DecodeFN =>
				frame_number <= data_i;
				fsm_state <= ReceivePacket;
				
			-- reception du packet USB
			when ReceivePacket =>
			
				cur_fifo_wrreq_s <= '1'; -- on ecrit la fifo courante
				cur_fifo_data_s <= data_i;
				
				if (cur_fifo_full_s = '1' or pktend_i = '1') then
					-- si le paquet est arrive on indique que
					-- la fifo courante est disponible Ã  la lecture en sortie
					cur_fifo_readable <='1';
					cur_fifo_wrreq_s <= '0'; -- deassert cur_fifo_wrreq
					
					-- si les deux fifos sont full => etat FULL
					if (other_fifo_readable ='1') then 
						fsm_state <= Full;
					else -- sinon on swap les deux fifos
					
						-- fifo_sel <= not (fifo_sel);
						-- fsm_state <= Idle;
						fsm_state <= SwapFifos;
					end if;
					
				end if;
										
			when SwapFifos =>
				cur_fifo_readable <='0';
				fifo_sel <= not (fifo_sel);
				fsm_state <= Idle;
				
			when Full =>
				fifos_f_o <='1';
				if (other_fifo_readable='0') then
					-- fifo_sel <= not (fifo_sel);
					-- fsm_state <= tmp;
					
					fifos_f_o <='0';
					cur_fifo_readable <= '0';
					fifo_sel <= not (fifo_sel);
					fsm_state <= Idle;		
					
				end if;
				
			-- TODO A enlever: creer un coup d'horloge d'attente apres une fin de full
			when tmp =>
				fifos_f_o <='0';
				cur_fifo_readable <= '0';
				fifo_sel <= not (fifo_sel);
				fsm_state <= Idle;		
		end case;
	end if;
end process;

 -- Gere l'etat des flags fifos pretes a etre lues
READABLE_PROCESS: process(clk_in_i, rst_n_i) 
begin
	if (rst_n_i = '0') then	
		fifo_1_readable <='0';
		fifo_2_readable <='0';		
	elsif rising_edge(clk_in_i) then
	
		-- register values for rising/falling edge detection on signals
		fifo_1_rdempty_r <= fifo_1_rdempty_s;
		fifo_1_rdempty_rr <= fifo_1_rdempty_r; -- double registert to prevent for CDC metastability
		fifo_2_rdempty_r <= fifo_2_rdempty_s;
		fifo_2_rdempty_rr <= fifo_2_rdempty_r;

		--~ if (fifo_1_rdempty_r ='0' and fifo_1_rdempty_s='1') then
		if (fifo_1_rdempty_rr ='0' and fifo_1_rdempty_r='1') then
			fifo_1_readable <= '0';
		end if;
		
		--~ if (fifo_2_rdempty_r ='0' and fifo_2_rdempty_s='1') then
		if (fifo_2_rdempty_rr ='0' and fifo_2_rdempty_r='1') then
			fifo_2_readable <= '0';
		end if;
		

		case (fifo_sel) is -- mise a jour
			when '0' =>
				fifo_1_readable <= cur_fifo_readable;
				-- fifo_2_readable <= fifo_2_readable;

			when '1' =>
				-- fifo_1_readable <= fifo_1_readable;
				fifo_2_readable <= cur_fifo_readable;

			when others =>
				fifo_1_readable <= '0';
				fifo_2_readable <= '0';
			end case;

	end if;	
end process;

-- 
FLAG_PROCESS: process(clk_in_i, rst_n_i) 

begin
	if (rst_n_i = '0') then	
		flag_fifo1 <= (others=>'0');
		flag_fifo2 <= (others=>'0');
	elsif rising_edge(clk_in_i) then
		
		--data_wr_r <= data_wr_i; -- deja fait dans le FSM Process
		if (data_wr_r ='0' and data_wr_i = '1') then 
			case (fifo_sel) is -- mise a jour
				when '0' =>
					-- le flag est situÃƒÂ© dans les 8 LSB du premier mot qui arrive dans l'USB
					flag_fifo1 <= data_i(7 downto 0);
				when '1' =>
					flag_fifo2 <= data_i(7 downto 0);
				when others =>
					flag_fifo1 <= (others=>'0');
					flag_fifo2 <= (others=>'0');
			end case;
		else
			flag_fifo1 <= flag_fifo1;
			flag_fifo2 <= flag_fifo2;
		end if;
		
		
	end if;	
end process;

-- en cas de dysfonctionnement, gerer le flag_o dans le process FLAG_PROCESS
-- utiliser le signal de lecture pour mettre ÃƒÂ  jour le registre flag_o
with fifo_sel select
	flag_o <= flag_fifo1 when '1',
			  flag_fifo2 when '0',
			  (others=>'0') when others;


-- fifos connection according to sel position		
FIFO_SEL_MUX:process (fifo_sel,cur_fifo_data_s,cur_fifo_wrreq_s,fifo_1_readable,fifo_2_readable,fifo_1_wrfull_s,fifo_2_wrfull_s,rdreq_i,fifo_1_q_s,fifo_2_q_s,fifo_1_rdempty_s,fifo_2_rdempty_s) 
begin
	case (fifo_sel) is
		when '0' =>
			fifo_1_wrreq_s <= cur_fifo_wrreq_s;
			fifo_1_data_s <= cur_fifo_data_s;
			fifo_2_data_s <= (others=>'0');
			
			fifo_2_wrreq_s <= '0';
			
			other_fifo_readable <= fifo_2_readable;	
			cur_fifo_full_s <= fifo_1_wrfull_s;
				
			-- Flag et signaux pour lecture dans fifos
			fifo_1_rdreq_s <= '0';
			fifo_2_rdreq_s <= rdreq_i;
			
			data_o <= fifo_2_q_s;
			f_empty_o <= fifo_2_rdempty_s;
			
		when '1' =>

			fifo_1_wrreq_s <= '0';
			fifo_2_wrreq_s <= cur_fifo_wrreq_s;
			
			fifo_1_data_s <= (others=>'0');
			fifo_2_data_s <= cur_fifo_data_s;

			other_fifo_readable <= fifo_1_readable;
			cur_fifo_full_s <= fifo_2_wrfull_s;
		
			-- Flag et signaux pour lecture dans fifos
			fifo_1_rdreq_s <= rdreq_i;
			fifo_2_rdreq_s <= '0';
			
			data_o <= fifo_1_q_s;
			f_empty_o <= fifo_1_rdempty_s;
			
		when others =>
			fifo_1_wrreq_s <= cur_fifo_wrreq_s;
			fifo_2_wrreq_s <= '0';
	end case;

end process;
	
end rtl;

