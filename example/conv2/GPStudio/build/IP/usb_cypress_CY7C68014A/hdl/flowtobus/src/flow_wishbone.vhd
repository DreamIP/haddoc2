-- **************************************************************************
--	READ FLOW to params
-- *************************************************************************
-- Ce composant est connecte a un com_flow_fifo_rx en entree et gere une zone de params
-- 25/11/2014 - creation
--------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity "uses" the package   
use work.ComFlow_pkg.all;
use ieee.math_real.all;

entity flow_wishbone is
  generic (
  	FIFO_DEPTH : POSITIVE := 64;
	FLOW_ID_SET : integer := 12;
	--FLOW_ID_GET : integer := 13
	MASTER_ADDR_WIDTH : POSITIVE := 4
    );
  port(
	-- USB driver connexion
    data_wr_i : in std_logic;
    data_i : in std_logic_vector(15 downto 0);
	-- rdreq_i : in std_logic;
	pktend_i : in std_logic;
	fifo_full_o : out std_logic;
	
	-- signaux pour wishbone
	param_addr_o: out std_logic_vector(MASTER_ADDR_WIDTH-1 DOWNTO 0);
	param_data_o : out std_logic_vector(31 downto 0);
	param_wr_o : out std_logic;
	
	-- may add RAM arbiter connexion
	-- tmp signal to trigger caph update reg
	tmp_update_port_o : out std_logic;
	
	clk_in_i : in std_logic; -- clk_usb 
	clk_out_i :in std_logic; -- clk_design
	rst_n_i :in std_logic
    );
end flow_wishbone;

architecture rtl of flow_wishbone is

component  com_flow_fifo_rx
  generic (
	FIFO_DEPTH : POSITIVE := 64;
	FLOW_ID : integer := 12
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
end component;

-- GET PARAMS :: TODO 
------------------------------------------
-- On peut aussi faire sans ce composant: handshake manuel avec le driver USB + prise de bus memoire + depilage manuel

-- component  com_flow_fifo_tx
  -- generic (
	-- FIFO_DEPTH : POSITIVE := 1024;
	-- FLOW_ID : integer := 1;
	-- PACKET_SIZE : integer := 512; 
	-- FLAGS_CODES : my_array_t := InitFlagCodes
    -- );
  -- port(
	-- data_wr_i : in std_logic;
    -- data_i : in std_logic_vector(15 downto 0);
	-- rdreq_i : in std_logic;
	-- pktend_i : in std_logic;
	-- flag_i : in std_logic_vector(7 downto 0);
	-- data_o : out std_logic_vector(15 downto 0);
	-- flow_rdy_o: out std_logic;
	-- f_empty_o : out std_logic;
	-- fifos_f_o : out std_logic;
	-- clk_in_i : in std_logic;
	-- clk_out_i :in std_logic;
	-- rst_n_i :in std_logic
    -- );
-- end component;


component synchronizer 
  generic (
	CDC_SYNC_FF_CHAIN_DEPTH: integer := 2 -- CDC Flip flop Chain depth
    );
  port(
	signal_i : in std_logic;
	signal_o : out std_logic;
	clk_i: in std_logic;
	clk_o: in std_logic
    );
end component;

component params_flow_decoder 
	generic (MASTER_ADDR_WIDTH : POSITIVE := 10);

  port(
    data_i : in std_logic_vector(15 downto 0);
	flow_rdy_i: in std_logic;
	f_empty_i : in std_logic;
	flag_i : in std_logic_vector(7 downto 0);
	read_data_o : out std_logic;
	-- signaux pour wishbone
	param_addr_o: out std_logic_vector(MASTER_ADDR_WIDTH-1 DOWNTO 0);
	param_data_o : out std_logic_vector(31 downto 0);
	param_wr_o : out std_logic;
	update_port_o: out std_logic;

	
	clk_i :in std_logic;
	rst_n_i :in std_logic
    );
end component;

-- SIGNAUX INTERNES POUR CONNEXION ENTRE COM_FLOW_FIFO_RW et READPARAMS
	signal data_s :  std_logic_vector(15 downto 0);
	signal flow_rdy_s:  std_logic:='0';
	signal flow_rdy_resync_s: std_logic :='0';
	signal f_empty_s :  std_logic:='0';
	signal flag_s :  std_logic_vector(7 downto 0);
	signal rdreq_s:std_logic:='0';
	
	signal param_data_s:std_logic_vector(31 downto 0);
begin

-- MAP COM_FLOW_FIFO_RX
COM_RX_PARAMS: component  com_flow_fifo_rx
  generic map(
	FIFO_DEPTH => FIFO_DEPTH,
	FLOW_ID => FLOW_ID_SET
    )
  port map(
	data_wr_i =>data_wr_i,
    data_i => data_i,
	rdreq_i => rdreq_s,
	pktend_i => pktend_i,
	enable_i => '1',
	data_o => data_s,
	flow_rdy_o => flow_rdy_s,
	f_empty_o => f_empty_s,
	fifos_f_o => fifo_full_o,
	flag_o => flag_s,

	clk_in_i => clk_in_i,
	clk_out_i => clk_out_i,
	rst_n_i => rst_n_i
    );

-- MAP CLOCK DOMAIN CROSSING Synchronizer
-- CDC Synchronizer
Sync_inst : component synchronizer
 generic map (CDC_SYNC_FF_CHAIN_DEPTH=>2)
 port map(
	signal_i => flow_rdy_s,
	signal_o => flow_rdy_resync_s,
	clk_i =>clk_in_i,
	clk_o => clk_out_i
 );
 
-- MAP COMPONENT READFLOW TO params
-- pour le get params faire un flag particulier qui va declencher une reecriture sur le flow de sortie
decoder_inst :component params_flow_decoder
  generic map(MASTER_ADDR_WIDTH => MASTER_ADDR_WIDTH)
  port map(
    data_i =>data_s,
	flow_rdy_i=>flow_rdy_resync_s,
	f_empty_i =>f_empty_s,
	flag_i => flag_s,
	read_data_o => rdreq_s,
	param_addr_o => param_addr_o,
	param_data_o => param_data_s,
	param_wr_o  =>param_wr_o,
	update_port_o => tmp_update_port_o,
	clk_i => clk_out_i,
	rst_n_i => rst_n_i
    );

param_data_o <= param_data_s;

end rtl;

