library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.ComFlow_pkg.all;

-- Top level du driver USB
-- 4 output flows max
-- 2 input flow max

-- TODO
-- PASSER LES Identifiants de FLOW en générique du driver:
-- ca permettrait de specifier les valeurs des identifiants des trames par GPStudio

-- Header trame USB
-- TRAME USB 16 bits	: permier mot header:  FLOW ID/FLAG  (8b/8b)
--						: second mot header :  Packet number  (16b)

entity usb_cypress_CY7C68014A is
	generic(
		MASTER_ADDR_WIDTH : integer;
		IN0_SIZE: integer :=8;
		IN1_SIZE: integer :=8;
		IN2_SIZE: integer :=8;
		IN3_SIZE: integer :=8;
		OUT0_SIZE: integer :=16;
		OUT1_SIZE: integer :=16;
		IN0_NBWORDS: integer := 32768;
		IN1_NBWORDS: integer := 32768;
		IN2_NBWORDS: integer := 1280; 
		IN3_NBWORDS: integer := 1280;
		OUT0_NBWORDS : integer := 1024;
		OUT1_NBWORDS : integer := 1024;
		CLK_PROC_FREQ : integer := 48000000
	);
	port(
		clk_proc : in std_logic;
		clk_usb : out std_logic;
		reset : out std_logic;

		------ external ports ------
		rst : in std_logic;
		ifclk : in std_logic;
		flaga : in std_logic;
		flagb : in std_logic;
		flagc : in std_logic;
		flagd : in std_logic;
		fd_io : inout std_logic_vector(15 downto 0);
		sloe : out std_logic;
		slrd : out std_logic;
		slwr : out std_logic;
		pktend : out std_logic;
		addr : out std_logic_vector(1 downto 0);

		------ in0 flow ------
		in0_data : in std_logic_vector(IN0_SIZE-1 downto 0);
		in0_fv : in std_logic;
		in0_dv : in std_logic;
		------ in1 flow ------
		in1_data : in std_logic_vector(IN1_SIZE-1 downto 0);
		in1_fv : in std_logic;
		in1_dv : in std_logic;
		------ in2 flow ------
		in2_data : in std_logic_vector(IN2_SIZE-1 downto 0);
		in2_fv : in std_logic;
		in2_dv : in std_logic;
		------ in3 flow ------
		in3_data : in std_logic_vector(IN3_SIZE-1 downto 0);
		in3_fv : in std_logic;
		in3_dv : in std_logic;


		------ out0 flow ------
		out0_data : out std_logic_vector(OUT0_SIZE-1 downto 0);
		out0_fv : out std_logic;
		out0_dv : out std_logic;

		------ out1 flow ------
		out1_data : out std_logic_vector(OUT1_SIZE-1 downto 0);
		out1_fv : out std_logic;
		out1_dv : out std_logic;

		---- ===== Masters =====

		------ bus_master ------
		master_addr_o : out std_logic_vector(MASTER_ADDR_WIDTH-1 downto 0);
		master_wr_o : out std_logic;
		master_rd_o : out std_logic;
		master_datawr_o : out std_logic_vector(31 downto 0);
		master_datard_i : in std_logic_vector(31 downto 0);

		---- ===== Slaves =====

		------ bus_sl ------
		addr_rel_i : in std_logic_vector(3 downto 0);
		wr_i : in std_logic;
		rd_i : in std_logic;
		datawr_i : in std_logic_vector(31 downto 0);
		datard_o : out std_logic_vector(31 downto 0)
	);
end entity;


architecture rtl of usb_cypress_CY7C68014A is


-- SLAVE BUS 
	signal enable_s : std_logic :='0';
	signal enable_in0_s : std_logic :='0';
	signal enable_in1_s : std_logic :='0';
	signal enable_in2_s : std_logic :='0';
	signal enable_in3_s : std_logic :='0';
	
	signal enable_in0_s_sync : std_logic :='0';
	signal enable_in1_s_sync : std_logic :='0';
	signal enable_in2_s_sync : std_logic :='0';
	signal enable_in3_s_sync : std_logic :='0';

-- SYNC BUS
	signal enable_s_fvsync : std_logic:='0';
	
-- USBFLOW_IN
	signal flow_in1_data_s  : std_logic_vector(15 downto 0):=(others=>'0');
	signal flow_in1_wr_s : std_logic:='0';
	signal flow_in1_full_s :	std_logic:='0';
	signal flow_in1_pktend_s : std_logic:='0';
	
-- USBFLOW OUT
	signal flow_out_data_s : std_logic_vector(15 downto 0):=(others=>'0');
	signal flow_out_empty_s : std_logic:='0';
	signal flow_out_rd_s : std_logic:='0';
	signal flow_out_rdy_s : std_logic:='0';
	
	signal flow_out_data_0_s : std_logic_vector(15 downto 0):=(others=>'0');
	signal flow_out_empty_0_s : std_logic:='0';
	signal flow_out_rd_0_s : std_logic:='0';
	signal flow_out_rdy_0_s : std_logic:='0';
	
	signal flow_out_data_1_s : std_logic_vector(15 downto 0):=(others=>'0');
	signal flow_out_empty_1_s : std_logic:='0';
	signal flow_out_rd_1_s : std_logic:='0';
	signal flow_out_rdy_1_s : std_logic:='0';

	signal flow_out_data_2_s : std_logic_vector(15 downto 0):=(others=>'0');
	signal flow_out_empty_2_s : std_logic:='0';
	signal flow_out_rd_2_s : std_logic:='0';
	signal flow_out_rdy_2_s : std_logic:='0';
	
	signal flow_out_data_3_s : std_logic_vector(15 downto 0):=(others=>'0');
	signal flow_out_empty_3_s : std_logic:='0';
	signal flow_out_rd_3_s : std_logic:='0';
	signal flow_out_rdy_3_s : std_logic:='0';
	

	-- FLOW_PARAMS
		signal update_port_s : std_logic:='0';

	-- USB_8TO16bits SIGNAUX
	signal in0_fv_s: std_logic :='0';
	signal in0_dv_s: std_logic :='0';
	signal in0_data_s: std_logic_vector(15 downto 0):=(others=>'0');

	signal in1_fv_s: std_logic :='0';
	signal in1_dv_s: std_logic :='0';
	signal in1_data_s: std_logic_vector(15 downto 0):=(others=>'0');

	signal in2_fv_s: std_logic :='0';
	signal in2_dv_s: std_logic :='0';
	signal in2_data_s: std_logic_vector(15 downto 0):=(others=>'0');

	signal in3_fv_s: std_logic :='0';
	signal in3_dv_s: std_logic :='0';
	signal in3_data_s: std_logic_vector(15 downto 0):=(others=>'0');
	
begin

reset <= rst;
		
USB_SM_INST : usb_sm
    port map (
		usb_ifclk    => ifclk,
		usb_flaga    => flaga,
		usb_flagb    => flagb,
		usb_flagc    => flagc,
		usb_flagd    => flagd,
		usb_fd_io    => fd_io,
		usb_sloe     => sloe,
		usb_slrd     => slrd,
		usb_slwr     => slwr,
		usb_pktend   => pktend,
		usb_rst		 => rst,
		usb_addr     => addr,

		flow_in_data_o  => flow_in1_data_s,
		flow_in_wr_o => flow_in1_wr_s,
		flow_in_full_i => flow_in1_full_s,
		flow_in_end_o =>  flow_in1_pktend_s,

		flow_out_data_i  => flow_out_data_s,
		flow_out_rd_o => flow_out_rd_s,
		flow_out_empty_i => flow_out_empty_s,
		flow_out_rdy_i => flow_out_rdy_s
		);
		
SLAVE_BUS_INST: component slave_usb
		generic map(
			DATA_WIDTH => 32
		)
		port map (
			clk_i => clk_proc,
			rst_n_i => rst,	
			addr_i => addr_rel_i,		--(addr_rel_0_o),
			wr_i => wr_i,				--(wr_0_o),
			datawr_i => datawr_i, 		--(data_wr_0_o)	
			enable_usb_o => enable_s,
			enable_in0_o => enable_in0_s,
			enable_in1_o => enable_in1_s,
			enable_in2_o => enable_in2_s,
			enable_in3_o => enable_in3_s
			);
		
-- SYNC SIGNALS FOR SLAVE REG WITH THE FLOW VALID
---------------------------------------------
ENABLE_S_INST: component fv_synchro_signal
	  port map(
		fv_i => in0_fv,
		signal_i => enable_s,
		signal_o => enable_s_fvsync,
		clk_i => clk_proc,
		rst_n_i => rst
	);
	
Sync_fv0 : if IN0_NBWORDS > 0 generate
	ENABLE_IN0_INST: component fv_synchro_signal
	  port map(
		fv_i => in0_fv,
		signal_i => enable_in0_s,
		signal_o => enable_in0_s_sync,
		clk_i => clk_proc,
		rst_n_i => rst
	);
end generate Sync_fv0;

Sync_fv1 : if IN1_NBWORDS > 0 generate
	ENABLE_IN1_INST: component fv_synchro_signal
	  port map(
		fv_i => in1_fv,
		signal_i => enable_in1_s,
		signal_o => enable_in1_s_sync,
		clk_i => clk_proc,
		rst_n_i => rst
	);
end generate Sync_fv1;

Sync_fv2 : if IN2_NBWORDS > 0 generate
	ENABLE_IN2_INST: component fv_synchro_signal
	  port map(
		fv_i => in2_fv,
		signal_i => enable_in2_s,
		signal_o => enable_in2_s_sync,
		clk_i => clk_proc,
		rst_n_i => rst
	);
end generate Sync_fv2;

Sync_fv3 : if IN3_NBWORDS > 0 generate
	ENABLE_IN3_INST: component fv_synchro_signal
	  port map(
		fv_i => in3_fv,
		signal_i => enable_in3_s,
		signal_o => enable_in3_s_sync,
		clk_i => clk_proc,
		rst_n_i => rst
	);
end generate Sync_fv3;

--FLOW_IN 0
FI0_label0 : if OUT0_NBWORDS = 0 generate
	out0_data <= (others=>'0');
	out0_fv <= '0';
	out0_dv <= '0';
end generate FI0_label0;

FI0_label1 : if OUT0_NBWORDS > 0 generate
USBFLOW_IN0: component flow_in
  generic map(
	FIFO_DEPTH => OUT0_NBWORDS,
	FLOW_ID => 1,
	FLAGS_CODES => InitFlagCodes,
	OUTPUT_SIZE => OUT0_SIZE
    )
  port map(
	data_wr_i =>flow_in1_wr_s,
	data_i => flow_in1_data_s,
	pktend_i => flow_in1_pktend_s,
	enable_i => enable_s_fvsync,

	data_o => out0_data,
	fv_o => out0_fv,
	dv_o => out0_dv,
	flow_full_o => open,
		
	clk_in_i =>ifclk,
	clk_out_i => clk_proc,
	rst_n_i =>rst
    );
end generate FI0_label1;

	

--FLOW_IN 1
FI1_label0 : if OUT1_NBWORDS = 0 generate
	out1_data <= (others=>'0');
	out1_fv <= '0';
	out1_dv <= '0';
end generate FI1_label0;

FI1_label1 : if OUT1_NBWORDS > 0 generate
USBFLOW_IN1: component flow_in
  generic map(
	FIFO_DEPTH => OUT1_NBWORDS,
	FLOW_ID => 2,
	FLAGS_CODES => InitFlagCodes,
	OUTPUT_SIZE => OUT1_SIZE
    )
  port map(
	data_wr_i =>flow_in1_wr_s,
	data_i => flow_in1_data_s,
	pktend_i => flow_in1_pktend_s,
	enable_i => enable_s_fvsync,

	data_o => out1_data,
	fv_o => out1_fv,
	dv_o => out1_dv,
	flow_full_o => open,
		
	clk_in_i =>ifclk,
	clk_out_i => clk_proc,
	rst_n_i =>rst
    );
end generate FI1_label1;
------------------------------------------------------------
--FLOW OUT 0
-- FO0_label1 : if IN0_SIZE = 8 and IN0_NBWORDS > 0 generate
	-- USB8TO16_FLOW0: component usb8to16bits 
		-- port map( 
			-- rst_n_i  		=> rst,
			-- clk_i  			=> clk_proc,	
			-- frame_valid_i	=> in0_fv,
			-- data_valid_i	=> in0_dv,
			-- data_i			=> in0_data,
			-- frame_valid_o	=> in0_fv_s,
			-- data_valid_o	=> in0_dv_s,
			-- data_o			=> in0_data_s
		-- );
-- end generate FO0_label1;

-- FO0_label2 : if IN0_SIZE = 16 and IN0_NBWORDS > 0 generate
	-- in0_fv_s <= in0_fv;
	-- in0_dv_s <= in0_dv;
	-- in0_data_s <= in0_data;
-- end generate FO0_label2;

--Disable flow if not used
FO0_label3 : if IN0_NBWORDS = 0 generate		
	flow_out_rdy_0_s <= '0';
	flow_out_empty_0_s <='0';
	flow_out_data_0_s <= (others=>'0');
end generate FO0_label3;


FO0_label4 : if IN0_NBWORDS > 0 generate

	-- Adapt input flow size to 16 bits 
	USBFLOW_OUT0_BUSADAPTER: component usbnto16bits
			generic map (
				INPUT_SIZE => IN0_SIZE,
				FIFO_DEPTH => 128
			)
			port map( 
				rst_n_i  		=> rst,
				clk_i  			=> clk_proc,
				frame_valid_i	=> in0_fv,			
				data_valid_i	=> in0_dv,				
				data_i			=> in0_data,
				frame_valid_o	=> in0_fv_s,
				data_valid_o	=> in0_dv_s,
				data_o			=> in0_data_s
			);

	USBFLOW_OUT0: component flow_out 
	  generic map (
		FIFO_DEPTH => IN0_NBWORDS,
		FLOW_ID => 128,
		PACKET_SIZE => 256, -- header inclus
		FLAGS_CODES => InitFlagCodes
		)
	  port map(
		data_i => in0_data_s,
		fv_i => in0_fv_s,
		dv_i => in0_dv_s,
		rdreq_i => flow_out_rd_0_s,-- to arb
		enable_i => enable_s_fvsync and enable_in0_s_sync,
		data_o => flow_out_data_0_s,-- to arb
		flow_rdy_o=> flow_out_rdy_0_s,-- to arb
		f_empty_o => flow_out_empty_0_s,-- to arb
		
		clk_in_i => clk_proc, 
		clk_out_i => ifclk,
		rst_n_i=> rst
);
end generate FO0_label4;
------------------------------------------------------------

------------------------------------------------------------
--FLOW OUT 1
-- FO1_label1 : if IN1_SIZE = 8 and IN1_NBWORDS > 0 generate
	-- USB8TO16_FLOW1: component usb8to16bits 
		-- port map( 
			-- rst_n_i  		=> rst,
			-- clk_i  			=> clk_proc,	
			-- frame_valid_i	=> in1_fv,
			-- data_valid_i	=> in1_dv,
			-- data_i			=> in1_data,
			-- frame_valid_o	=> in1_fv_s,
			-- data_valid_o	=> in1_dv_s,
			-- data_o			=> in1_data_s
		-- );
-- end generate FO1_label1;

-- FO1_label2 : if IN1_SIZE = 16 and IN1_NBWORDS > 0 generate
	-- in1_fv_s <= in1_fv;
	-- in1_dv_s <= in1_dv;
	-- in1_data_s <= in1_data;
-- end generate FO1_label2;


FO1_label3 : if IN1_NBWORDS = 0 generate		
	flow_out_rdy_1_s <= '0';
	flow_out_empty_1_s <='0';
	flow_out_data_1_s <= (others=>'0');
end generate FO1_label3;

FO1_label4 : if IN1_NBWORDS > 0 generate

	-- Adapt input flow size to 16 bits 
	USBFLOW_OUT1_BUSADAPTER: component usbnto16bits
			generic map (
				INPUT_SIZE => IN1_SIZE,
				FIFO_DEPTH => 128
			)
			port map( 
				rst_n_i  		=> rst,
				clk_i  			=> clk_proc,
				frame_valid_i	=> in1_fv,			
				data_valid_i	=> in1_dv,				
				data_i			=> in1_data,
				frame_valid_o	=> in1_fv_s,
				data_valid_o	=> in1_dv_s,
				data_o			=> in1_data_s
			);
	USBFLOW_OUT1: component flow_out 
	  generic map (
		FIFO_DEPTH => IN1_NBWORDS,
		FLOW_ID => 129,
		PACKET_SIZE => 256, -- header inclus
		FLAGS_CODES => InitFlagCodes
		)
	  port map(
		data_i => in1_data_s,
		fv_i => in1_fv_s,
		dv_i => in1_dv_s,

		rdreq_i => flow_out_rd_1_s, -- to arb
		enable_i => enable_s_fvsync and enable_in1_s_sync,
		data_o => flow_out_data_1_s, -- to arb
		flow_rdy_o=> flow_out_rdy_1_s, -- to arb
		f_empty_o => flow_out_empty_1_s, -- to arb
		
		clk_in_i => clk_proc, 
		clk_out_i => ifclk,
		rst_n_i=> rst
		);
end generate FO1_label4;
------------------------------------------------------------

------------------------------------------------------------
--FLOW OUT 2
-- FO2_label1 : if IN2_SIZE = 8 and IN2_NBWORDS > 0 generate
	-- USB8TO16_FLOW2: component usb8to16bits 
		-- port map( 
			-- rst_n_i  		=> rst,
			-- clk_i  			=> clk_proc,	
			-- frame_valid_i	=> in2_fv,
			-- data_valid_i	=> in2_dv,
			-- data_i			=> in2_data,
			-- frame_valid_o	=> in2_fv_s,
			-- data_valid_o	=> in2_dv_s,
			-- data_o			=> in2_data_s
	-- );
-- end generate FO2_label1;
-- FO2_label2 : if IN2_SIZE = 16 and IN2_NBWORDS > 0  generate
	-- in2_fv_s <= in2_fv;
	-- in2_dv_s <= in2_dv;
	-- in2_data_s <= in2_data;	
-- end generate FO2_label2;

FO2_label3 : if IN2_NBWORDS = 0 generate		
	flow_out_rdy_2_s <= '0';
	flow_out_empty_2_s <='0';
	flow_out_data_2_s <= (others=>'0');
end generate FO2_label3;

FO2_label4 : if IN2_NBWORDS > 0 generate
-- Adapt input flow size to 16 bits 
	USBFLOW_OUT2_BUSADAPTER: component usbnto16bits
			generic map (
				INPUT_SIZE => IN2_SIZE,
				FIFO_DEPTH => 128
			)
			port map( 
				rst_n_i  		=> rst,
				clk_i  			=> clk_proc,
				frame_valid_i	=> in2_fv,			
				data_valid_i	=> in2_dv,				
				data_i			=> in2_data,
				frame_valid_o	=> in2_fv_s,
				data_valid_o	=> in2_dv_s,
				data_o			=> in2_data_s
			);
	USBFLOW_OUT2: component flow_out 
		generic map (
			FIFO_DEPTH => IN2_NBWORDS,
			FLOW_ID => 130,
			PACKET_SIZE => 256, -- header inclus
			FLAGS_CODES => InitFlagCodes
		)
		port map(
			data_i => in2_data_s,
			fv_i => in2_fv_s,
			dv_i => in2_dv_s,
			rdreq_i => flow_out_rd_2_s, -- to arb
			enable_i => enable_s_fvsync and enable_in2_s_sync,
			data_o => flow_out_data_2_s, -- to arb
			flow_rdy_o=> flow_out_rdy_2_s, -- to arb
			f_empty_o => flow_out_empty_2_s, -- to arb
			clk_in_i => clk_proc, 
			clk_out_i => ifclk,
			rst_n_i=> rst
		);
end generate FO2_label4;
------------------------------------------------------------
------------------------------------------------------------
--FLOW OUT 3

-- FO3_label1 : if IN3_SIZE = 8 and IN3_NBWORDS > 0  generate
	-- USB8TO16_FLOW3: component usb8to16bits 
		-- port map( 
			-- rst_n_i  		=> rst,
			-- clk_i  			=> clk_proc,	
			-- frame_valid_i	=> in3_fv,
			-- data_valid_i	=> in3_dv,
			-- data_i			=> in3_data,
			-- frame_valid_o	=> in3_fv_s,
			-- data_valid_o	=> in3_dv_s,
			-- data_o			=> in3_data_s
		-- );
-- end generate FO3_label1;

-- FO3_label2 : if IN3_SIZE = 16 and IN3_NBWORDS > 0  generate
		-- in3_fv_s <= in3_fv;
		-- in3_dv_s <= in3_dv;
		-- in3_data_s <= in3_data;	
-- end generate FO3_label2;


FO3_label3 : if IN3_NBWORDS = 0 generate		
	flow_out_rdy_3_s <= '0';
	flow_out_empty_3_s <='0';
	flow_out_data_3_s <= (others=>'0');
end generate FO3_label3;

FO3_label4 : if IN3_NBWORDS > 0 generate

-- Adapt input flow size to 16 bits 
	USBFLOW_OUT3_BUSADAPTER: component usbnto16bits
			generic map (
				INPUT_SIZE => IN3_SIZE,
				FIFO_DEPTH => 128
			)
			port map( 
				rst_n_i  		=> rst,
				clk_i  			=> clk_proc,
				frame_valid_i	=> in3_fv,			
				data_valid_i	=> in3_dv,				
				data_i			=> in3_data,
				frame_valid_o	=> in3_fv_s,
				data_valid_o	=> in3_dv_s,
				data_o			=> in3_data_s
			);
			
	USBFLOW_OUT3: component flow_out 
		generic map (
			FIFO_DEPTH => IN3_NBWORDS,
			FLOW_ID => 131,
			PACKET_SIZE => 256, -- header inclus
			FLAGS_CODES => InitFlagCodes
		)
		port map(
			data_i => in3_data_s,
			fv_i => in3_fv_s,
			dv_i => in3_dv_s,
			rdreq_i => flow_out_rd_3_s, -- to arb
			enable_i => enable_s_fvsync and enable_in3_s_sync,
			data_o => flow_out_data_3_s, -- to arb
			flow_rdy_o=> flow_out_rdy_3_s, -- to arb
			f_empty_o => flow_out_empty_3_s, -- to arb
			clk_in_i => clk_proc, 
			clk_out_i => ifclk,
			rst_n_i=> rst
	);
end generate FO3_label4;
------------------------------------------------------------

-- component flow_out_arbiter 
	
USBFLOW_ARB : component flow_out_arb4
 port map(
		-- fv 0 signals
		rdreq_0_o => flow_out_rd_0_s,
		data_0_i => flow_out_data_0_s,
		flow_rdy_0_i => flow_out_rdy_0_s,
		f_empty_0_i  => flow_out_empty_0_s,
	
		-- fv 1 signals
		rdreq_1_o => flow_out_rd_1_s,
		data_1_i => flow_out_data_1_s,
		flow_rdy_1_i=> flow_out_rdy_1_s,
		f_empty_1_i => flow_out_empty_1_s,

		-- fv 2 signals
		rdreq_2_o => flow_out_rd_2_s,
		data_2_i => flow_out_data_2_s,
		flow_rdy_2_i => flow_out_rdy_2_s,
		f_empty_2_i  => flow_out_empty_2_s,
	
		-- fv 3 signals
		rdreq_3_o => flow_out_rd_3_s,
		data_3_i => flow_out_data_3_s,
		flow_rdy_3_i=> flow_out_rdy_3_s,
		f_empty_3_i => flow_out_empty_3_s,

		-- fv usb signals
		rdreq_usb_i => flow_out_rd_s,
		data_usb_o => flow_out_data_s,
		flow_rdy_usb_o =>flow_out_rdy_s,
		f_empty_usb_o =>flow_out_empty_s,
		
		clk_i => ifclk,
		rst_n_i => rst
	);



--  FLOW_PARAMS module --> Bus Interconnect Master
FLOW_PARAMS: component flow_wishbone 
		generic map(
		FIFO_DEPTH => 64, 
		FLOW_ID_SET => 15,
		MASTER_ADDR_WIDTH=>MASTER_ADDR_WIDTH
		)
		port map(
			data_wr_i => flow_in1_wr_s,
			data_i => flow_in1_data_s,
			pktend_i => flow_in1_pktend_s,
			fifo_full_o => flow_in1_full_s,
			
			param_addr_o => master_addr_o,
			param_data_o => master_datawr_o,
			param_wr_o => master_wr_o,
			
			-- rajouter fin d'ecriture dans la memoire...
			--~ tmp_update_port_o => update_port_s,
			clk_in_i => ifclk,
			clk_out_i => clk_proc, 
			rst_n_i => rst
		);
		
		clk_usb <= ifclk;
end rtl;
