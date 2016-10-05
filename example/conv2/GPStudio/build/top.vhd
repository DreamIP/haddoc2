library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
library std;

entity top is
	port (
		clk_50M_i     : in std_logic;
		clk_125M_i    : in std_logic;

		------------------------ mt9 flow -----------------------
		mt9_data_i    : in std_logic_vector(11 downto 0);
		mt9_fval_i    : in std_logic;
		mt9_lval_i    : in std_logic;
		mt9_pixclk_i  : in std_logic;
		mt9_extclk_o  : out std_logic;
		mt9_reset_n_o : out std_logic;
		mt9_standby_o : out std_logic;
		mt9_oe_n_o    : out std_logic;
		mt9_trigger_o : out std_logic;
		mt9_saddr_o   : out std_logic;
		mt9_sdata_io  : inout std_logic;
		mt9_sclk_o    : out std_logic;

		------------------------ usb flow -----------------------
		usb_rst       : in std_logic;
		usb_ifclk     : in std_logic;
		usb_flaga     : in std_logic;
		usb_flagb     : in std_logic;
		usb_flagc     : in std_logic;
		usb_flagd     : in std_logic;
		usb_fd_io     : inout std_logic_vector(15 downto 0);
		usb_sloe      : out std_logic;
		usb_slrd      : out std_logic;
		usb_slwr      : out std_logic;
		usb_pktend    : out std_logic;
		usb_addr      : out std_logic_vector(1 downto 0)
	);
end top;

architecture rtl of top is
component mt9
	generic (
		CLK_PROC_FREQ : integer;
		CLK_IMG_FREQ  : integer;
		CLK_50K_FREQ  : integer;
		CLK_100K_FREQ : integer;
		OUT_SIZE      : integer
	);
	port (
		clk_proc   : in std_logic;
		clk_img    : in std_logic;
		clk_50k    : in std_logic;
		clk_100k   : in std_logic;
		reset_n    : in std_logic;

		--------------------- external ports --------------------
		data_i     : in std_logic_vector(11 downto 0);
		fval_i     : in std_logic;
		lval_i     : in std_logic;
		pixclk_i   : in std_logic;
		extclk_o   : out std_logic;
		reset_n_o  : out std_logic;
		standby_o  : out std_logic;
		oe_n_o     : out std_logic;
		trigger_o  : out std_logic;
		saddr_o    : out std_logic;
		sdata_io   : inout std_logic;
		sclk_o     : out std_logic;

		------------------------ out flow -----------------------
		out_data   : out std_logic_vector(OUT_SIZE-1 downto 0);
		out_fv     : out std_logic;
		out_dv     : out std_logic;

		--======================= Slaves ========================

		------------------------- bus_sl ------------------------
		addr_rel_i : in std_logic_vector(4 downto 0);
		wr_i       : in std_logic;
		rd_i       : in std_logic;
		datawr_i   : in std_logic_vector(31 downto 0);
		datard_o   : out std_logic_vector(31 downto 0)
	);
end component;

component usb_cypress_CY7C68014A
	generic (
		IN0_NBWORDS       : integer;
		IN1_NBWORDS       : integer;
		IN2_NBWORDS       : integer;
		IN3_NBWORDS       : integer;
		OUT0_NBWORDS      : integer;
		OUT1_NBWORDS      : integer;
		MASTER_ADDR_WIDTH : integer;
		CLK_PROC_FREQ     : integer;
		IN0_SIZE          : integer;
		IN1_SIZE          : integer;
		IN2_SIZE          : integer;
		IN3_SIZE          : integer;
		OUT0_SIZE         : integer;
		OUT1_SIZE         : integer
	);
	port (
		clk_proc        : in std_logic;
		clk_usb         : out std_logic;
		reset           : out std_logic;

		--------------------- external ports --------------------
		rst             : in std_logic;
		ifclk           : in std_logic;
		flaga           : in std_logic;
		flagb           : in std_logic;
		flagc           : in std_logic;
		flagd           : in std_logic;
		fd_io           : inout std_logic_vector(15 downto 0);
		sloe            : out std_logic;
		slrd            : out std_logic;
		slwr            : out std_logic;
		pktend          : out std_logic;
		addr            : out std_logic_vector(1 downto 0);

		------------------------ in0 flow -----------------------
		in0_data        : in std_logic_vector(IN0_SIZE-1 downto 0);
		in0_fv          : in std_logic;
		in0_dv          : in std_logic;

		------------------------ in1 flow -----------------------
		in1_data        : in std_logic_vector(IN1_SIZE-1 downto 0);
		in1_fv          : in std_logic;
		in1_dv          : in std_logic;

		------------------------ in2 flow -----------------------
		in2_data        : in std_logic_vector(IN2_SIZE-1 downto 0);
		in2_fv          : in std_logic;
		in2_dv          : in std_logic;

		------------------------ in3 flow -----------------------
		in3_data        : in std_logic_vector(IN3_SIZE-1 downto 0);
		in3_fv          : in std_logic;
		in3_dv          : in std_logic;

		------------------------ out0 flow ----------------------
		out0_data       : out std_logic_vector(OUT0_SIZE-1 downto 0);
		out0_fv         : out std_logic;
		out0_dv         : out std_logic;

		------------------------ out1 flow ----------------------
		out1_data       : out std_logic_vector(OUT1_SIZE-1 downto 0);
		out1_fv         : out std_logic;
		out1_dv         : out std_logic;

		--======================= Masters =======================

		----------------------- bus_master ----------------------
		master_addr_o   : out std_logic_vector(5 downto 0);
		master_wr_o     : out std_logic;
		master_rd_o     : out std_logic;
		master_datawr_o : out std_logic_vector(31 downto 0);
		master_datard_i : in std_logic_vector(31 downto 0);

		--======================= Slaves ========================

		------------------------- bus_sl ------------------------
		addr_rel_i      : in std_logic_vector(3 downto 0);
		wr_i            : in std_logic;
		rd_i            : in std_logic;
		datawr_i        : in std_logic_vector(31 downto 0);
		datard_o        : out std_logic_vector(31 downto 0)
	);
end component;

component conv2
	generic (
		IMAGE_WIDTH   : integer;
		CLK_PROC_FREQ : integer;
		IN_SIZE       : integer;
		OUT1_SIZE     : integer;
		OUT2_SIZE     : integer;
		OUT3_SIZE     : integer
	);
	port (
		clk_proc   : in std_logic;
		reset_n    : in std_logic;

		------------------------- in flow -----------------------
		in_data    : in std_logic_vector(IN_SIZE-1 downto 0);
		in_fv      : in std_logic;
		in_dv      : in std_logic;

		------------------------ out1 flow ----------------------
		out1_data  : out std_logic_vector(OUT1_SIZE-1 downto 0);
		out1_fv    : out std_logic;
		out1_dv    : out std_logic;

		------------------------ out2 flow ----------------------
		out2_data  : out std_logic_vector(OUT2_SIZE-1 downto 0);
		out2_fv    : out std_logic;
		out2_dv    : out std_logic;

		------------------------ out3 flow ----------------------
		out3_data  : out std_logic_vector(OUT3_SIZE-1 downto 0);
		out3_fv    : out std_logic;
		out3_dv    : out std_logic;

		--======================= Slaves ========================

		------------------------- bus_sl ------------------------
		addr_rel_i : in std_logic_vector(1 downto 0);
		wr_i       : in std_logic;
		rd_i       : in std_logic;
		datawr_i   : in std_logic_vector(31 downto 0);
		datard_o   : out std_logic_vector(31 downto 0)
	);
end component;

component fi
	generic (
		CLK_PROC_FREQ   : integer;
		MT9_OUT_SIZE    : integer;
		USB_IN0_SIZE    : integer;
		USB_IN1_SIZE    : integer;
		USB_IN2_SIZE    : integer;
		USB_IN3_SIZE    : integer;
		USB_OUT0_SIZE   : integer;
		USB_OUT1_SIZE   : integer;
		CONV2_IN_SIZE   : integer;
		CONV2_OUT1_SIZE : integer;
		CONV2_OUT2_SIZE : integer;
		CONV2_OUT3_SIZE : integer
	);
	port (
		clk_proc        : in std_logic;
		reset           : in std_logic;

		------------------------- mt9_out -----------------------
		mt9_out_data    : in std_logic_vector(MT9_OUT_SIZE-1 downto 0);
		mt9_out_fv      : in std_logic;
		mt9_out_dv      : in std_logic;

		------------------------- usb_in0 -----------------------
		usb_in0_data    : out std_logic_vector(USB_IN0_SIZE-1 downto 0);
		usb_in0_fv      : out std_logic;
		usb_in0_dv      : out std_logic;

		------------------------- usb_in1 -----------------------
		usb_in1_data    : out std_logic_vector(USB_IN1_SIZE-1 downto 0);
		usb_in1_fv      : out std_logic;
		usb_in1_dv      : out std_logic;

		------------------------- usb_in2 -----------------------
		usb_in2_data    : out std_logic_vector(USB_IN2_SIZE-1 downto 0);
		usb_in2_fv      : out std_logic;
		usb_in2_dv      : out std_logic;

		------------------------- usb_in3 -----------------------
		usb_in3_data    : out std_logic_vector(USB_IN3_SIZE-1 downto 0);
		usb_in3_fv      : out std_logic;
		usb_in3_dv      : out std_logic;

		------------------------ usb_out0 -----------------------
		usb_out0_data   : in std_logic_vector(USB_OUT0_SIZE-1 downto 0);
		usb_out0_fv     : in std_logic;
		usb_out0_dv     : in std_logic;

		------------------------ usb_out1 -----------------------
		usb_out1_data   : in std_logic_vector(USB_OUT1_SIZE-1 downto 0);
		usb_out1_fv     : in std_logic;
		usb_out1_dv     : in std_logic;

		------------------------ conv2_in -----------------------
		conv2_in_data   : out std_logic_vector(CONV2_IN_SIZE-1 downto 0);
		conv2_in_fv     : out std_logic;
		conv2_in_dv     : out std_logic;

		----------------------- conv2_out1 ----------------------
		conv2_out1_data : in std_logic_vector(CONV2_OUT1_SIZE-1 downto 0);
		conv2_out1_fv   : in std_logic;
		conv2_out1_dv   : in std_logic;

		----------------------- conv2_out2 ----------------------
		conv2_out2_data : in std_logic_vector(CONV2_OUT2_SIZE-1 downto 0);
		conv2_out2_fv   : in std_logic;
		conv2_out2_dv   : in std_logic;

		----------------------- conv2_out3 ----------------------
		conv2_out3_data : in std_logic_vector(CONV2_OUT3_SIZE-1 downto 0);
		conv2_out3_fv   : in std_logic;
		conv2_out3_dv   : in std_logic
	);
end component;

component ci
	generic (
		CLK_PROC_FREQ   : integer;
		CLK_50M_I_FREQ  : integer;
		CLK_125M_I_FREQ : integer;
		CLK_USB_FREQ    : integer
	);
	port (
		clk_proc     : in std_logic;
		clk_50M_i    : in std_logic;
		clk_125M_i   : in std_logic;
		clk_usb      : in std_logic;
		clk_9M       : out std_logic;
		clk_50k      : out std_logic;
		clk_100k_180 : out std_logic;
		reset        : in std_logic
	);
end component;

component pi
	generic (
		CLK_PROC_FREQ : integer
	);
	port (
		clk_proc            : in std_logic;
		reset               : in std_logic;

		--======================= Masters =======================

		--------------------- bus_master_usb --------------------
		usb_master_addr_i   : in std_logic_vector(5 downto 0);
		usb_master_wr_i     : in std_logic;
		usb_master_rd_i     : in std_logic;
		usb_master_datawr_i : in std_logic_vector(31 downto 0);
		usb_master_datard_o : out std_logic_vector(31 downto 0);

		--======================= Slaves ========================

		----------------------- bus_sl_mt9 ----------------------
		mt9_addr_rel_o      : out std_logic_vector(4 downto 0);
		mt9_wr_o            : out std_logic;
		mt9_rd_o            : out std_logic;
		mt9_datawr_o        : out std_logic_vector(31 downto 0);
		mt9_datard_i        : in std_logic_vector(31 downto 0);

		----------------------- bus_sl_usb ----------------------
		usb_addr_rel_o      : out std_logic_vector(3 downto 0);
		usb_wr_o            : out std_logic;
		usb_rd_o            : out std_logic;
		usb_datawr_o        : out std_logic_vector(31 downto 0);
		usb_datard_i        : in std_logic_vector(31 downto 0);

		---------------------- bus_sl_conv2 ---------------------
		conv2_addr_rel_o    : out std_logic_vector(1 downto 0);
		conv2_wr_o          : out std_logic;
		conv2_rd_o          : out std_logic;
		conv2_datawr_o      : out std_logic_vector(31 downto 0);
		conv2_datard_i      : in std_logic_vector(31 downto 0)
	);
end component;


	--===================== clocks part =====================
	signal clk_50M             : std_logic;
	signal clk_125M            : std_logic;
	signal clk_48M             : std_logic;
	signal clk_9M              : std_logic;
	signal clk_50k             : std_logic;
	signal clk_100k_180        : std_logic;

	--===================== resets part =====================
	signal reset_n             : std_logic;

	--===================== flows part ======================

	--------------------------- mt9 -------------------------
	signal mt9_out_data_s      : std_logic_vector (7 downto 0);
	signal mt9_out_fv_s        : std_logic;
	signal mt9_out_dv_s        : std_logic;

	--------------------------- usb -------------------------
	signal usb_in0_data_s      : std_logic_vector (7 downto 0);
	signal usb_in0_fv_s        : std_logic;
	signal usb_in0_dv_s        : std_logic;
	signal usb_in1_data_s      : std_logic_vector (7 downto 0);
	signal usb_in1_fv_s        : std_logic;
	signal usb_in1_dv_s        : std_logic;
	signal usb_in2_data_s      : std_logic_vector (7 downto 0);
	signal usb_in2_fv_s        : std_logic;
	signal usb_in2_dv_s        : std_logic;
	signal usb_in3_data_s      : std_logic_vector (7 downto 0);
	signal usb_in3_fv_s        : std_logic;
	signal usb_in3_dv_s        : std_logic;
	signal usb_out0_data_s     : std_logic_vector (7 downto 0);
	signal usb_out0_fv_s       : std_logic;
	signal usb_out0_dv_s       : std_logic;
	signal usb_out1_data_s     : std_logic_vector (7 downto 0);
	signal usb_out1_fv_s       : std_logic;
	signal usb_out1_dv_s       : std_logic;

	-------------------------- conv2 ------------------------
	signal conv2_in_data_s     : std_logic_vector (7 downto 0);
	signal conv2_in_fv_s       : std_logic;
	signal conv2_in_dv_s       : std_logic;
	signal conv2_out1_data_s   : std_logic_vector (7 downto 0);
	signal conv2_out1_fv_s     : std_logic;
	signal conv2_out1_dv_s     : std_logic;
	signal conv2_out2_data_s   : std_logic_vector (7 downto 0);
	signal conv2_out2_fv_s     : std_logic;
	signal conv2_out2_dv_s     : std_logic;
	signal conv2_out3_data_s   : std_logic_vector (7 downto 0);
	signal conv2_out3_fv_s     : std_logic;
	signal conv2_out3_dv_s     : std_logic;

	--====================== bus part =======================

	----------------------- mt9 bus_sl ----------------------
	signal mt9_addr_rel_s      : std_logic_vector (4 downto 0);
	signal mt9_wr_s            : std_logic;
	signal mt9_rd_s            : std_logic;
	signal mt9_datawr_s        : std_logic_vector (31 downto 0);
	signal mt9_datard_s        : std_logic_vector (31 downto 0);

	----------------------- usb bus_sl ----------------------
	signal usb_addr_rel_s      : std_logic_vector (3 downto 0);
	signal usb_wr_s            : std_logic;
	signal usb_rd_s            : std_logic;
	signal usb_datawr_s        : std_logic_vector (31 downto 0);
	signal usb_datard_s        : std_logic_vector (31 downto 0);

	--------------------- usb bus_master --------------------
	signal usb_master_addr_s   : std_logic_vector (5 downto 0);
	signal usb_master_wr_s     : std_logic;
	signal usb_master_rd_s     : std_logic;
	signal usb_master_datawr_s : std_logic_vector (31 downto 0);
	signal usb_master_datard_s : std_logic_vector (31 downto 0);

	---------------------- conv2 bus_sl ---------------------
	signal conv2_addr_rel_s    : std_logic_vector (1 downto 0);
	signal conv2_wr_s          : std_logic;
	signal conv2_rd_s          : std_logic;
	signal conv2_datawr_s      : std_logic_vector (31 downto 0);
	signal conv2_datard_s      : std_logic_vector (31 downto 0);

begin
	mt9_inst : mt9
    generic map (
		CLK_PROC_FREQ => 50000000,
		CLK_IMG_FREQ  => 9000000,
		CLK_50K_FREQ  => 50000,
		CLK_100K_FREQ => 100000,
		OUT_SIZE      => 8
	)
    port map (
		clk_proc   => clk_50M,
		clk_img    => clk_9M,
		clk_50k    => clk_50k,
		clk_100k   => clk_100k_180,
		reset_n    => reset_n,
		data_i     => mt9_data_i,
		fval_i     => mt9_fval_i,
		lval_i     => mt9_lval_i,
		pixclk_i   => mt9_pixclk_i,
		extclk_o   => mt9_extclk_o,
		reset_n_o  => mt9_reset_n_o,
		standby_o  => mt9_standby_o,
		oe_n_o     => mt9_oe_n_o,
		trigger_o  => mt9_trigger_o,
		saddr_o    => mt9_saddr_o,
		sdata_io   => mt9_sdata_io,
		sclk_o     => mt9_sclk_o,
		out_data   => mt9_out_data_s,
		out_fv     => mt9_out_fv_s,
		out_dv     => mt9_out_dv_s,
		addr_rel_i => mt9_addr_rel_s,
		wr_i       => mt9_wr_s,
		rd_i       => mt9_rd_s,
		datawr_i   => mt9_datawr_s,
		datard_o   => mt9_datard_s
	);

	usb : usb_cypress_CY7C68014A
    generic map (
		CLK_PROC_FREQ     => 50000000,
		IN0_NBWORDS       => 32768,
		IN1_NBWORDS       => 32768,
		IN2_NBWORDS       => 32768,
		IN3_NBWORDS       => 32768,
		OUT0_NBWORDS      => 1024,
		OUT1_NBWORDS      => 1024,
		MASTER_ADDR_WIDTH => 6,
		IN0_SIZE          => 8,
		IN1_SIZE          => 8,
		IN2_SIZE          => 8,
		IN3_SIZE          => 8,
		OUT0_SIZE         => 8,
		OUT1_SIZE         => 8
	)
    port map (
		clk_proc        => clk_50M,
		clk_usb         => clk_48M,
		reset           => reset_n,
		rst             => usb_rst,
		ifclk           => usb_ifclk,
		flaga           => usb_flaga,
		flagb           => usb_flagb,
		flagc           => usb_flagc,
		flagd           => usb_flagd,
		fd_io           => usb_fd_io,
		sloe            => usb_sloe,
		slrd            => usb_slrd,
		slwr            => usb_slwr,
		pktend          => usb_pktend,
		addr            => usb_addr,
		in0_data        => usb_in0_data_s,
		in0_fv          => usb_in0_fv_s,
		in0_dv          => usb_in0_dv_s,
		in1_data        => usb_in1_data_s,
		in1_fv          => usb_in1_fv_s,
		in1_dv          => usb_in1_dv_s,
		in2_data        => usb_in2_data_s,
		in2_fv          => usb_in2_fv_s,
		in2_dv          => usb_in2_dv_s,
		in3_data        => usb_in3_data_s,
		in3_fv          => usb_in3_fv_s,
		in3_dv          => usb_in3_dv_s,
		out0_data       => usb_out0_data_s,
		out0_fv         => usb_out0_fv_s,
		out0_dv         => usb_out0_dv_s,
		out1_data       => usb_out1_data_s,
		out1_fv         => usb_out1_fv_s,
		out1_dv         => usb_out1_dv_s,
		addr_rel_i      => usb_addr_rel_s,
		wr_i            => usb_wr_s,
		rd_i            => usb_rd_s,
		datawr_i        => usb_datawr_s,
		datard_o        => usb_datard_s,
		master_addr_o   => usb_master_addr_s,
		master_wr_o     => usb_master_wr_s,
		master_rd_o     => usb_master_rd_s,
		master_datawr_o => usb_master_datawr_s,
		master_datard_i => usb_master_datard_s
	);

	conv2_inst : conv2
    generic map (
		CLK_PROC_FREQ => 50000000,
		IMAGE_WIDTH   => 320,
		IN_SIZE       => 8,
		OUT1_SIZE     => 8,
		OUT2_SIZE     => 8,
		OUT3_SIZE     => 8
	)
    port map (
		clk_proc   => clk_50M,
		reset_n    => reset_n,
		in_data    => conv2_in_data_s,
		in_fv      => conv2_in_fv_s,
		in_dv      => conv2_in_dv_s,
		out1_data  => conv2_out1_data_s,
		out1_fv    => conv2_out1_fv_s,
		out1_dv    => conv2_out1_dv_s,
		out2_data  => conv2_out2_data_s,
		out2_fv    => conv2_out2_fv_s,
		out2_dv    => conv2_out2_dv_s,
		out3_data  => conv2_out3_data_s,
		out3_fv    => conv2_out3_fv_s,
		out3_dv    => conv2_out3_dv_s,
		addr_rel_i => conv2_addr_rel_s,
		wr_i       => conv2_wr_s,
		rd_i       => conv2_rd_s,
		datawr_i   => conv2_datawr_s,
		datard_o   => conv2_datard_s
	);

	fi_inst : fi
    generic map (
		CLK_PROC_FREQ   => 50000000,
		MT9_OUT_SIZE    => 8,
		USB_IN0_SIZE    => 8,
		USB_IN1_SIZE    => 8,
		USB_IN2_SIZE    => 8,
		USB_IN3_SIZE    => 8,
		USB_OUT0_SIZE   => 8,
		USB_OUT1_SIZE   => 8,
		CONV2_IN_SIZE   => 8,
		CONV2_OUT1_SIZE => 8,
		CONV2_OUT2_SIZE => 8,
		CONV2_OUT3_SIZE => 8
	)
    port map (
		clk_proc        => clk_50M,
		reset           => reset_n,
		mt9_out_data    => mt9_out_data_s,
		mt9_out_fv      => mt9_out_fv_s,
		mt9_out_dv      => mt9_out_dv_s,
		usb_in0_data    => usb_in0_data_s,
		usb_in0_fv      => usb_in0_fv_s,
		usb_in0_dv      => usb_in0_dv_s,
		usb_in1_data    => usb_in1_data_s,
		usb_in1_fv      => usb_in1_fv_s,
		usb_in1_dv      => usb_in1_dv_s,
		usb_in2_data    => usb_in2_data_s,
		usb_in2_fv      => usb_in2_fv_s,
		usb_in2_dv      => usb_in2_dv_s,
		usb_in3_data    => usb_in3_data_s,
		usb_in3_fv      => usb_in3_fv_s,
		usb_in3_dv      => usb_in3_dv_s,
		usb_out0_data   => usb_out0_data_s,
		usb_out0_fv     => usb_out0_fv_s,
		usb_out0_dv     => usb_out0_dv_s,
		usb_out1_data   => usb_out1_data_s,
		usb_out1_fv     => usb_out1_fv_s,
		usb_out1_dv     => usb_out1_dv_s,
		conv2_in_data   => conv2_in_data_s,
		conv2_in_fv     => conv2_in_fv_s,
		conv2_in_dv     => conv2_in_dv_s,
		conv2_out1_data => conv2_out1_data_s,
		conv2_out1_fv   => conv2_out1_fv_s,
		conv2_out1_dv   => conv2_out1_dv_s,
		conv2_out2_data => conv2_out2_data_s,
		conv2_out2_fv   => conv2_out2_fv_s,
		conv2_out2_dv   => conv2_out2_dv_s,
		conv2_out3_data => conv2_out3_data_s,
		conv2_out3_fv   => conv2_out3_fv_s,
		conv2_out3_dv   => conv2_out3_dv_s
	);

	ci_inst : ci
    generic map (
		CLK_PROC_FREQ   => 50000000,
		CLK_50M_I_FREQ  => 50000000,
		CLK_125M_I_FREQ => 125000000,
		CLK_USB_FREQ    => 48000000
	)
    port map (
		clk_proc     => clk_50M,
		clk_50M_i    => clk_50M,
		clk_125M_i   => clk_125M,
		clk_usb      => clk_48M,
		clk_9M       => clk_9M,
		clk_50k      => clk_50k,
		clk_100k_180 => clk_100k_180,
		reset        => reset_n
	);

	pi_inst : pi
    generic map (
		CLK_PROC_FREQ => 50000000
	)
    port map (
		clk_proc            => clk_50M,
		reset               => reset_n,
		mt9_addr_rel_o      => mt9_addr_rel_s,
		mt9_wr_o            => mt9_wr_s,
		mt9_rd_o            => mt9_rd_s,
		mt9_datawr_o        => mt9_datawr_s,
		mt9_datard_i        => mt9_datard_s,
		usb_addr_rel_o      => usb_addr_rel_s,
		usb_wr_o            => usb_wr_s,
		usb_rd_o            => usb_rd_s,
		usb_datawr_o        => usb_datawr_s,
		usb_datard_i        => usb_datard_s,
		usb_master_addr_i   => usb_master_addr_s,
		usb_master_wr_i     => usb_master_wr_s,
		usb_master_rd_i     => usb_master_rd_s,
		usb_master_datawr_i => usb_master_datawr_s,
		usb_master_datard_o => usb_master_datard_s,
		conv2_addr_rel_o    => conv2_addr_rel_s,
		conv2_wr_o          => conv2_wr_s,
		conv2_rd_o          => conv2_rd_s,
		conv2_datawr_o      => conv2_datawr_s,
		conv2_datard_i      => conv2_datard_s
	);

	clk_50M	<=	clk_50M_i;
	clk_125M	<=	clk_125M_i;

end rtl;
