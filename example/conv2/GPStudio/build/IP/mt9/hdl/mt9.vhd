library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
library std;

entity mt9 is
	generic (
		OUT_SIZE : integer := 8;
		CLK_PROC_FREQ : integer := 48000000;
		CLK_IMG_FREQ : integer := 9000000;
		CLK_50K_FREQ : integer := 50000;
		CLK_100K_FREQ : integer := 100000
	);
	port (
		clk_proc : in std_logic;
    	clk_img : in std_logic;
    	clk_50k : in std_logic;
    	clk_100k : in std_logic;
		reset_n : in std_logic;

		--------------------- external ports --------------------
		data_i : in std_logic_vector(11 downto 0);
		fval_i : in std_logic;
		lval_i : in std_logic;
		pixclk_i : in std_logic;
		extclk_o : out std_logic;
		reset_n_o : out std_logic;
		standby_o : out std_logic;
		oe_n_o : out std_logic;
		trigger_o : out std_logic;
		saddr_o : out std_logic;
		sdata_io : inout std_logic;
		sclk_o : out std_logic;

		------------------------ out flow -----------------------
		out_data : out std_logic_vector(7 downto 0);
		out_fv : out std_logic;
		out_dv : out std_logic;

		--======================= Slaves ========================

		------------------------- bus_sl ------------------------
		addr_rel_i : in std_logic_vector(4 downto 0);
		wr_i : in std_logic;
		rd_i : in std_logic;
		datawr_i : in std_logic_vector(31 downto 0);
		datard_o : out std_logic_vector(31 downto 0)
	);
end mt9;

architecture rtl of mt9 is

component mt9_config_slave
	port(
		clk_proc			: in std_logic;
		reset_n				: in std_logic;

		-- bus_sl
		addr_rel_i			: in std_logic_vector(4 downto 0);
		wr_i				: in std_logic;
		rd_i				: in std_logic;
		datawr_i			: in std_logic_vector(31 downto 0);
		datard_o			: out std_logic_vector(31 downto 0);

		-- connections to video sampler
		enable_o			: out std_logic;
		flowlength_o		: out std_logic_vector(31 downto 0);

		-- connections to mt9_config_i2c
		xstart_o 			: out std_logic_vector(15 downto 0);
		ystart_o 			: out std_logic_vector(15 downto 0);
		xend_o	 			: out std_logic_vector(15 downto 0);
		yend_o				: out std_logic_vector(15 downto 0);
		autoexp_o			: out std_logic;
		autoexptarget_o		: out std_logic_vector(15 downto 0);
		autoexpvmin_o		: out std_logic_vector(15 downto 0);
		autoexpvmax_o		: out std_logic_vector(15 downto 0);
		autoexpstepmin_o	: out std_logic_vector(15 downto 0);
		autoexpstepmax_o	: out std_logic_vector(15 downto 0);
		autoexpdampofset_o	: out std_logic_vector(15 downto 0);
		autoexpdampgain_o	: out std_logic_vector(15 downto 0);
		autoexpdampmax_o	: out std_logic_vector(15 downto 0);
		flipvert_o			: out std_logic;
		mirrorx_o			: out std_logic;
		binning_o			: out std_logic;
		integtime_o			: out std_logic_vector(15 downto 0);
		linelenght_o		: out std_logic_vector(15 downto 0);
		need_to_reconf_o	: out std_logic
	);
end component;

component mt9_config_i2c
	port(
		reset_n				: in	std_logic;
		mt9_extclk 			: in	std_logic;
		mt9_sclk 			: in	std_logic;
		mt9_sclkdouble		: in	std_logic;

		mt9_extclk_o		: out std_logic;
		mt9_reset_n_o		: out std_logic;
		mt9_standby_o		: out std_logic;
		mt9_oe_n_o			: out std_logic;
		mt9_trigger_o		: out std_logic;
		mt9_saddr_o			: out std_logic;
		mt9_sdata_io		: inout std_logic;
		mt9_sclk_o			: out std_logic;

		-- connections from mt9_config_i2c
		xstart_i			: in std_logic_vector(15 downto 0);
		ystart_i			: in std_logic_vector(15 downto 0);
		xend_i				: in std_logic_vector(15 downto 0);
		yend_i				: in std_logic_vector(15 downto 0);
		autoexp_i			: in std_logic;
		autoexptarget_i		: in std_logic_vector(15 downto 0);
		autoexpvmin_i		: in std_logic_vector(15 downto 0);
		autoexpvmax_i		: in std_logic_vector(15 downto 0);
		autoexpstepmin_i	: in std_logic_vector(15 downto 0);
		autoexpstepmax_i	: in std_logic_vector(15 downto 0);
		autoexpdampofset_i	: in std_logic_vector(15 downto 0);
		autoexpdampgain_i	: in std_logic_vector(15 downto 0);
		autoexpdampmax_i	: in std_logic_vector(15 downto 0);
		flipvert_i			: in std_logic;
		mirrorx_i			: in std_logic;
		binning_i			: in std_logic;
		integtime_i			: in std_logic_vector(15 downto 0);
		linelenght_i		: in std_logic_vector(15 downto 0);
		send_reconf_i		: in std_logic;

		mt9_conf_done_o : out std_logic
	);
end component;

component VideoSampler
	generic(
		DATA_WIDTH			: integer;
		PIXEL_WIDTH			: integer;
		FIFO_DEPTH			: integer;
		DEFAULT_SCR			: integer;
		DEFAULT_FLOWLENGHT	: integer;
    	HREF_POLARITY		: string;
    	VSYNC_POLARITY		: string
	);
	port(
		-- input from CLOCK50 domain
		clk_i 				: in	std_logic;
		reset_n_i 			: in	std_logic;

		-- inputs from camera
		pclk_i				: in	std_logic;
		href_i				: in	std_logic;
		vsync_i				: in	std_logic;
		pixel_i				: in std_logic_vector(7 downto 0);

		-- params from slave
		enable_i			: in std_logic;
		flowlength_i		: in std_logic_vector(31 downto 0);

		-- Stream interface
		data_o				: out std_logic_vector(7 downto 0);
		dv_o				: out std_logic;
		fv_o				: out std_logic
	);
end component;

-- signals part

	signal ext_clk_9M_s			: std_logic;
	signal sclk_100k_s			: std_logic;
	signal sclk_50k_s			: std_logic;

	signal enable_s				: std_logic;
	signal flowlength_s			: std_logic_vector(31 downto 0);

	signal xstart_s				: std_logic_vector(15 downto 0);
	signal ystart_s				: std_logic_vector(15 downto 0);
	signal xend_s				: std_logic_vector(15 downto 0);
	signal yend_s				: std_logic_vector(15 downto 0);
	signal autoexp_s			: std_logic;
	signal autoexptarget_s		: std_logic_vector(15 downto 0);
	signal autoexpvmin_s		: std_logic_vector(15 downto 0);
	signal autoexpvmax_s		: std_logic_vector(15 downto 0);
	signal autoexpstepmin_s		: std_logic_vector(15 downto 0);
	signal autoexpstepmax_s		: std_logic_vector(15 downto 0);
	signal autoexpdampofset_s	: std_logic_vector(15 downto 0);
	signal autoexpdampgain_s	: std_logic_vector(15 downto 0);
	signal autoexpdampmax_s		: std_logic_vector(15 downto 0);
	signal flipvert_s			: std_logic;
	signal mirrorx_s			: std_logic;
	signal binning_s			: std_logic;
	signal integtime_s			: std_logic_vector(15 downto 0);
	signal linelenght_s			: std_logic_vector(15 downto 0);

	signal need_to_reconf_s		: std_logic;
	signal send_reconf_s		: std_logic;
	signal mt9_conf_done_s		: std_logic;
	signal mt9_conf_done_prev_s	: std_logic;

begin

	mt9_config_slave_inst : mt9_config_slave
    port map (
		clk_proc	=>	clk_proc,
		reset_n		=>	reset_n,

		-- bus_sl
		addr_rel_i	=>	addr_rel_i,
		wr_i		=>	wr_i,
		rd_i		=>	rd_i,
		datawr_i	=>	datawr_i,
		datard_o	=>	datard_o,

		-- connections to video sampler
		enable_o			=>	enable_s,
		flowlength_o		=>	flowlength_s,

		-- connections to slave i2c
		xstart_o			=>	xstart_s,
		ystart_o			=>	ystart_s,
		xend_o				=>	xend_s,
		yend_o				=>	yend_s,
		autoexp_o			=> autoexp_s,
		autoexptarget_o		=> autoexptarget_s,
		autoexpvmin_o		=> autoexpvmin_s,
		autoexpvmax_o		=> autoexpvmax_s,
		autoexpstepmin_o	=> autoexpstepmin_s,
		autoexpstepmax_o	=> autoexpstepmax_s,
		autoexpdampofset_o	=> autoexpdampofset_s,
		autoexpdampgain_o	=> autoexpdampgain_s,
		autoexpdampmax_o	=> autoexpdampmax_s,
		flipvert_o			=> flipvert_s,
		mirrorx_o			=> mirrorx_s,
		binning_o			=> binning_s,
		integtime_o			=> integtime_s,
		linelenght_o		=> linelenght_s,
		need_to_reconf_o	=>	need_to_reconf_s
	);

	mt9_config_i2c_inst : mt9_config_i2c
    port map (
		reset_n				=>	reset_n,
		mt9_extclk			=>	ext_clk_9M_s,
		mt9_sclk			=>	sclk_50k_s,
		mt9_sclkdouble		=>	sclk_100k_s,

		mt9_extclk_o		=>	extclk_o,
		mt9_reset_n_o		=>	reset_n_o,
		mt9_standby_o		=>	standby_o,
		mt9_oe_n_o			=>	oe_n_o,
		mt9_trigger_o		=>	trigger_o,
		mt9_saddr_o			=>	saddr_o,
		mt9_sdata_io		=>	sdata_io,
		mt9_sclk_o			=>	sclk_o,

		-- connections from mt9_config_slave
		xstart_i			=>	xstart_s,
		ystart_i			=>	ystart_s,
		xend_i				=>	xend_s,
		yend_i				=>	yend_s,
		autoexp_i			=>	autoexp_s,
		autoexptarget_i		=> autoexptarget_s,
		autoexpvmin_i		=> autoexpvmin_s,
		autoexpvmax_i		=> autoexpvmax_s,
		autoexpstepmin_i	=> autoexpstepmin_s,
		autoexpstepmax_i	=> autoexpstepmax_s,
		autoexpdampofset_i	=> autoexpdampofset_s,
		autoexpdampgain_i	=> autoexpdampgain_s,
		autoexpdampmax_i	=> autoexpdampmax_s,
		flipvert_i			=>	flipvert_s,
		mirrorx_i			=>	mirrorx_s,
		binning_i			=> binning_s,
		integtime_i			=> integtime_s,
		linelenght_i		=>	linelenght_s,
		send_reconf_i		=>	send_reconf_s,

		mt9_conf_done_o 	=> mt9_conf_done_s
	);

	VideoSampler_inst : VideoSampler
    generic map (
    	PIXEL_WIDTH	=>	OUT_SIZE,
    	DATA_WIDTH	=>	32,
    	FIFO_DEPTH	=>	4096*4,
    	DEFAULT_SCR	=>	0,
    	DEFAULT_FLOWLENGHT	=>	254*254,
    	HREF_POLARITY => "high",
    	VSYNC_POLARITY => "high"
	)
    port map (
    	reset_n_i	=>	reset_n,
    	clk_i	=>	clk_proc,
    	pclk_i	=>	pixclk_i,
    	href_i	=>	lval_i,
    	vsync_i	=>	fval_i,
    	pixel_i	=>	data_i(11 downto 4),

    	enable_i	=>	enable_s,
    	flowlength_i	=>	flowlength_s,

		data_o	=>	out_data,
		dv_o	=>	out_dv,
		fv_o	=>	out_fv
	);
	
	ext_clk_9M_s	<= clk_img;
	sclk_100k_s		<= clk_100k;
	sclk_50k_s		<= clk_50k;

	process(clk_proc, need_to_reconf_s, mt9_conf_done_s, mt9_conf_done_prev_s)
	begin
		if(rising_edge(clk_proc)) then
			if(need_to_reconf_s = '1') then
				send_reconf_s <= '1';
			elsif(mt9_conf_done_prev_s='0' and mt9_conf_done_s = '1') then
				send_reconf_s <= '0';
			end if;
			mt9_conf_done_prev_s <= mt9_conf_done_s;
		end if;
	end process;

end rtl;
