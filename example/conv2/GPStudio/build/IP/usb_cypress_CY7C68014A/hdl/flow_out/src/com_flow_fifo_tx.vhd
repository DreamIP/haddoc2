-- **************************************************************************
--	ComFlowFifo
-- **************************************************************************
-- 
-- 16/10/2014 - creation
--------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.ComFlow_pkg.all;

entity  com_flow_fifo_tx is
  generic (
	FIFO_DEPTH : integer := 1024;
	FLOW_ID : integer := 1;
	PACKET_SIZE : integer := 256; 
	FLAGS_CODES : my_array_t := InitFlagCodes
    );
  port(

	data_wr_i : in std_logic;
	data_i : in std_logic_vector(15 downto 0);
	rdreq_i : in std_logic;
	flag_wr_i : in std_logic;
	flag_i : in std_logic_vector(7 downto 0);
	
	-- fifo pkt inputs
	fifo_pkt_wr_i : in std_logic;
	fifo_pkt_data_i : in std_logic_vector(15 downto 0);
	
	data_o : out std_logic_vector(15 downto 0);
	flow_rdy_o: out std_logic;
	f_empty_o : out std_logic;
	fifos_f_o : out std_logic;
	
	clk_in_i : in std_logic;
	clk_out_i :in std_logic;
	
	rst_n_i :in std_logic 
    );
end com_flow_fifo_tx;

architecture rtl of com_flow_fifo_tx is

-- Calcul de la largeur de bus en fonction de la profondeur de la Fifo 
 --constant WIDTHU : integer := integer(ceil(log2(real(FIFO_DEPTH))));
 
 constant WIDTHU : integer := clog2(FIFO_DEPTH);
 constant FIFO_PKT_SIZE: integer := integer(ceil(real(FIFO_DEPTH/PACKET_SIZE))) + 1;

---------------------------------------------------------
--	COMPONENT DECLARATION
---------------------------------------------------------
component fifo_com_tx
GENERIC
	(
		DEPTH : POSITIVE := 1024
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
		rdusedw		: OUT STD_LOGIC_VECTOR (clog2(DEPTH)-1 DOWNTO 0);
		wrfull		: OUT STD_LOGIC ;
		wrusedw		: OUT STD_LOGIC_VECTOR (clog2(DEPTH)-1 DOWNTO 0)
	);
END component;

---------------------------------------------------------
--	SIGNALS
---------------------------------------------------------

-------------
-- FIFO 1 SIGNALS
-------------

	signal	fifo_1_wrreq_s : std_logic:= '0';
	signal	fifo_1_wrfull_s :	std_logic:= '0';
	signal	fifo_1_rdreq_s: std_logic:= '0';
	signal	fifo_1_rdempty_s :	std_logic:= '0';

-- registers
	signal fifo_1_rdempty_r : std_logic:= '0';
	signal flag_s: std_logic_vector(15 downto 0):=(others=>'0');
	
	signal fifo_1_q_s: std_logic_vector(15 downto 0):=(others=>'0');
	signal fifo_flag_q_s: std_logic_vector(15 downto 0):=(others=>'0');
	signal fifo_flag_rdreq_s:std_logic:='0';

-------------
-- FSM Signal
-------------
	type fsm_state_t is (Idle,WritePacket);
	signal fsm_state : fsm_state_t := Idle;

	type RDUSB_fsm_state_t is (Idle,WaitoneClk,WaitSyncPktSize,FlowRdy,UnpileHeader,Unpile);
	signal RDUSB_state : RDUSB_fsm_state_t := Idle;

	signal data_wr_r :std_logic:= '0';
	signal fifo_1_rdusedw_s	: std_logic_vector(integer(ceil(log2(real(FIFO_DEPTH))))-1 DOWNTO 0):=(others=>'0');
	signal fifo_1_wrusedw_s	: std_logic_vector(integer(ceil(log2(real(FIFO_DEPTH))))-1 DOWNTO 0):=(others=>'0');
	
	signal fifo_flag_rdusedw_s	: std_logic_vector(integer(ceil(log2(real(FIFO_PKT_SIZE))))-1 DOWNTO 0):=(others=>'0');
	signal fifo_flag_wrusedw_s	: std_logic_vector(integer(ceil(log2(real(FIFO_PKT_SIZE))))-1 DOWNTO 0):=(others=>'0');
	signal fifo_flag_wrfull_s 	: std_logic:= '0';
	signal fifo_flag_rdempty_s 	: std_logic:= '0';
	
	signal fifo_pkt_rdusedw_s	: std_logic_vector(integer(ceil(log2(real(FIFO_PKT_SIZE))))-1 DOWNTO 0):=(others=>'0');
	signal fifo_pkt_wrusedw_s	: std_logic_vector(integer(ceil(log2(real(FIFO_PKT_SIZE))))-1 DOWNTO 0):=(others=>'0');
	signal fifo_pkt_wrfull_s 	: std_logic:= '0';
	signal fifo_pkt_rdempty_s 	: std_logic:= '0';
	signal fifo_pkt_wr_s 		: std_logic:= '0';
	signal fifo_pkt_rdreq_s		: std_logic:='0';
	signal fifo_pkt_data_s : std_logic_vector(15 downto 0):=(others=>'0'); 
	signal fifo_pkt_q_s : std_logic_vector(15 downto 0):=(others=>'0'); 
	
	signal aclr : std_logic :='0';
	signal packet_counter : unsigned(15 downto 0):=(others=>'0');
	signal data_s : std_logic_vector(15 downto 0):=(others=>'0');
	
	
begin

-------
-- MAP CLK 
-------

	f_empty_o <= fifo_1_rdempty_s;
	fifos_f_o <= fifo_1_wrfull_s;
	aclr <= not(rst_n_i);

	FIFO_1 : component fifo_com_tx
	GENERIC MAP(DEPTH => FIFO_DEPTH)
	PORT map 
	(
		data		=> data_i,
		rdclk		=> clk_out_i,
		rdreq		=> fifo_1_rdreq_s,
		wrclk		=> clk_in_i,
		wrreq		=> data_wr_i,
		aclr 		=> aclr,
		q			=> fifo_1_q_s,
		rdempty => fifo_1_rdempty_s,
		rdusedw	=> fifo_1_rdusedw_s,
		wrusedw	=> fifo_1_wrusedw_s, 
		wrfull	=> fifo_1_wrfull_s
	);
	
	flag_s <= X"00"& flag_i;
	FIFO_FLAG : component fifo_com_tx
	GENERIC MAP(DEPTH => FIFO_PKT_SIZE)
	PORT map 
	(
		--data		=> X"00"& flag_i,
		data		=> flag_s,
		rdclk		=> clk_out_i,
		rdreq		=> fifo_flag_rdreq_s,
		wrclk		=> clk_in_i,
		wrreq		=> flag_wr_i,
		aclr 		=> aclr,
		q			=> fifo_flag_q_s,
		rdempty => fifo_flag_rdempty_s,
		rdusedw	=> fifo_flag_rdusedw_s,
		wrusedw	=> fifo_flag_wrusedw_s, 
		wrfull	=> fifo_flag_wrfull_s
	);
	
	
	FIFO_PKT : component fifo_com_tx
	GENERIC MAP(DEPTH => FIFO_PKT_SIZE)
	PORT map 
	(
		data		=> fifo_pkt_data_i,
		rdclk		=> clk_out_i,
		rdreq		=> fifo_pkt_rdreq_s,
		wrclk		=> clk_in_i,
		wrreq		=> fifo_pkt_wr_i,
		aclr 		=> aclr,
		q			=> fifo_pkt_q_s,
		rdempty => fifo_pkt_rdempty_s,
		rdusedw	=> fifo_pkt_rdusedw_s,
		wrusedw	=> fifo_pkt_wrusedw_s, 
		wrfull	=> fifo_pkt_wrfull_s
	);

--- Connexion au composant USB SM
RDUSB : process (clk_out_i, rst_n_i) 
variable cpt : integer range 0 to PACKET_SIZE:=0;
variable pkt_cpt : std_logic_vector(15 downto 0):=(others=>'0');
variable packet_number : std_logic_vector(15 downto 0):=(others=>'0');
variable counter : integer range 0 to 4 :=0;
begin
	if (rst_n_i = '0') then	
		flow_rdy_o <='0';
		packet_number := X"0000";
		data_s <= (others=>'0');
		fifo_flag_rdreq_s <= '0';
		fifo_pkt_rdreq_s <= '0';
		pkt_cpt := (others=>'0');
		counter:= 0;
	elsif rising_edge(clk_out_i) then
		case RDUSB_state is
			when Idle =>
				flow_rdy_o <= '0';
				fifo_flag_rdreq_s <= '0';
				fifo_pkt_rdreq_s <= '0';
				if ( fifo_flag_rdusedw_s > std_logic_vector(to_unsigned(0,widthu)) ) then
					RDUSB_state <= WaitSyncPktSize;
				end if;
				
			when WaitSyncPktSize =>
				fifo_flag_rdreq_s <= '0';
				counter := counter + 1;
				if(counter = 4 ) then
					fifo_flag_rdreq_s <= '1';
					fifo_pkt_rdreq_s <= '1';
					RDUSB_state <= WaitoneClk;
				end if;
				
			when WaitoneClk =>
				RDUSB_state <= FlowRdy;
				fifo_flag_rdreq_s <= '0';
				fifo_pkt_rdreq_s <= '0';
				
			when FlowRdy => -- si la fifo est depilable on monte le flag de flow rdy
				flow_rdy_o <='1';
				
				if(rdreq_i='1') then -- si l'usb est pret
					
					pkt_cpt := fifo_pkt_q_s;
					cpt:=0;				
					-- header 1 en sortie
					data_s <= std_logic_vector(to_unsigned(FLOW_ID,8)) & fifo_flag_q_s(7 downto 0);
					-- assert fifo request here to be ready for Unpile state
					fifo_1_rdreq_s <= '1';
					-- go to unpile packet number
					RDUSB_state <= UnpileHeader;
					cpt:=cpt+1;
				--	pkt_cpt := std_logic_vector(unsigned(pkt_cpt) - X"0001");
				end if;


			when UnpileHeader =>   			
					-- ne marche pas car flag = BC au moment de dépiler ... 
					if (fifo_flag_q_s(7 downto 0) =  FLAGS_CODES(SoF)) then
						packet_number := X"0000";
					else
						packet_number := std_logic_vector(unsigned(packet_number) + X"0001");
					end if;
					
					data_s <= packet_number;
					RDUSB_state <= Unpile;
					cpt:=cpt+1;
				--	pkt_cpt := std_logic_vector(unsigned(pkt_cpt) - X"0001");
					
			
			when Unpile =>
				 data_s <= fifo_1_q_s;
			
				cpt:=cpt+1;
				pkt_cpt := std_logic_vector(unsigned(pkt_cpt) - X"0001");
				--if (cpt = PACKET_SIZE or fifo_1_rdempty_s='1') then
				if (pkt_cpt = X"0001") then
					fifo_1_rdreq_s <= '0';
				end if;
				
				if (pkt_cpt = X"0000") then
					flow_rdy_o <='0';
					--fifo_1_rdreq_s <= '0';
					RDUSB_state <= Idle;
				end if;
		end case;
	end if;
end process;

data_o <= data_s;
end rtl;
