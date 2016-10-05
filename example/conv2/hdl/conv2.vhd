library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;
    use work.cnn_kernels.all;

entity conv2 is
    generic (
		IMAGE_WIDTH 	: integer	:=	320;
		IN_SIZE 		: integer	:=	8;
		OUT1_SIZE 		: integer	:=	8;
		OUT2_SIZE 		: integer	:=	8;
		OUT3_SIZE 		: integer	:=	8;
		CLK_PROC_FREQ 	: integer 	:=  48000000
	);

    port (
        clk_proc 	: in    std_logic;
        reset_n 	: in    std_logic;

        --============================ IN FLOW =================================
        in_data 	: in    std_logic_vector((IN_SIZE-1) downto 0);
        in_fv 		: in    std_logic;
        in_dv 		: in    std_logic;

        --=========================== OUT FLOW =================================
        out1_data  : out   std_logic_vector((OUT1_SIZE-1) downto 0);
        out1_dv    : out   std_logic;
        out1_fv    : out   std_logic;

        out2_data  : out   std_logic_vector((OUT2_SIZE-1) downto 0);
        out2_dv    : out   std_logic;
        out2_fv    : out   std_logic;

        out3_data  : out   std_logic_vector((OUT3_SIZE-1) downto 0);
        out3_dv    : out   std_logic;
        out3_fv    : out   std_logic;

        --============================ Slaves =================================
        addr_rel_i 	: in    std_logic_vector(1 downto 0);
        wr_i 		: in    std_logic;
        rd_i 		: in    std_logic;
        datawr_i 	: in    std_logic_vector(31 downto 0);
        datard_o 	: out   std_logic_vector(31 downto 0)
        );
end conv2;

architecture rtl of conv2 is
    --------------------------------------------------------------------------------
    -- COMPONENTS
    --------------------------------------------------------------------------------
    component conv2_process
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        KERNEL_SIZE   :   integer;
        NB_IN_FLOWS   :   integer;
        NB_OUT_FLOWS  :   integer
    );

    port(
        clk	          :    in   std_logic;
        reset_n	      :    in   std_logic;
        enable        :    in   std_logic;
        in_data       :    in   pixel_array     (0 to NB_IN_FLOWS - 1);
        in_dv         :    in   std_logic_vector(0 to NB_IN_FLOWS - 1);
        in_fv         :    in   std_logic_vector(0 to NB_IN_FLOWS - 1);
        out_data      :    out  pixel_array     (0 to NB_OUT_FLOWS - 1);
        out_dv        :    out  std_logic_vector(0 to NB_OUT_FLOWS - 1);
        out_fv        :    out  std_logic_vector(0 to NB_OUT_FLOWS - 1)
    );
    end component;

    component conv2_slave
    port (
        clk_proc	: in std_logic;
        reset_n		: in std_logic;
        addr_rel_i	: in std_logic_vector(1 downto 0);
        wr_i		: in std_logic;
        rd_i		: in std_logic;
        datawr_i	: in std_logic_vector(31 downto 0);
        datard_o	: out std_logic_vector(31 downto 0);
        enable_o	: out std_logic

        );
    end component;

    --------------------------------------------------------------------------------
    -- SIGNALS & CONSTANTS
    --------------------------------------------------------------------------------
    constant CONST_NB_IN_FLOWS  : integer := 3;
    constant CONST_NB_OUT_FLOWS : integer := 5;
    constant CONST_KERNEL_SIZE  : integer := 3;

    signal enable_s             : std_logic;
    signal dummy_in_data        : pixel_array      (0 to CONST_NB_IN_FLOWS - 1);
    signal dummy_in_dv          : std_logic_vector (0 to CONST_NB_IN_FLOWS - 1);
    signal dummy_in_fv          : std_logic_vector (0 to CONST_NB_IN_FLOWS - 1);

    signal dummy_out_data       : pixel_array      (0 to CONST_NB_OUT_FLOWS - 1);
    signal dummy_out_dv         : std_logic_vector (0 to CONST_NB_OUT_FLOWS - 1);
    signal dummy_out_fv         : std_logic_vector (0 to CONST_NB_OUT_FLOWS - 1);
    begin

        -- Emulate 3 in flows
        dummy_in_loop : for i in 0 to  CONST_NB_IN_FLOWS-1 generate
            dummy_in_data(i) <= in_data;
            dummy_in_dv(i)   <= in_dv;
            dummy_in_fv(i)   <= in_fv;
        end generate dummy_in_loop;


        slave_inst : conv2_slave
        port map(
            clk_proc	    => clk_proc,
            reset_n	        => reset_n,
            addr_rel_i      => addr_rel_i,
            wr_i		    => wr_i,
            rd_i		    => rd_i,
            datawr_i	    => datawr_i,
            datard_o	    => datard_o,
            enable_o	    => enable_s
        );


        proc_inst : conv2_process
        generic map(
            PIXEL_SIZE      => IN_SIZE,
            IMAGE_WIDTH     => IMAGE_WIDTH,
            KERNEL_SIZE     => CONST_KERNEL_SIZE,
            NB_IN_FLOWS     => CONST_NB_IN_FLOWS,
            NB_OUT_FLOWS    => CONST_NB_OUT_FLOWS
        )
        port map(
            clk	            => clk_proc,
            reset_n	        => reset_n,
            enable          => enable_s,
            in_data         => dummy_in_data,
            in_dv           => dummy_in_dv,
            in_fv           => dummy_in_fv,
            out_data        => dummy_out_data,
            out_dv          => dummy_out_dv,
            out_fv          => dummy_out_fv
        );

        -- Display the first 3 out flows
        out1_data   <= dummy_out_data(0);
        out1_dv     <= dummy_out_dv(0);
        out1_fv     <= dummy_out_fv(0);
        out2_data   <= dummy_out_data(1);
        out2_dv     <= dummy_out_dv(1);
        out2_fv     <= dummy_out_fv(1);
        out3_data   <= dummy_out_data(2);
        out3_dv     <= dummy_out_dv(2);
        out3_fv     <= dummy_out_fv(2);


end rtl;
