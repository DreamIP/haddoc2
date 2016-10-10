library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;
    use work.cnn_kernels.all;

entity convLayer is
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        KERNEL_SIZE   :   integer;
        NB_IN_FLOWS   :   integer;
        NB_OUT_FLOWS  :   integer;
        W_CONV_PARAMS :   kernel_array;
        N_CONV_PARAMS :   pixel_array
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;

        in_data       : in  pixel_array      (0 to NB_IN_FLOWS - 1);
        in_dv         : in  std_logic_vector (0 to NB_IN_FLOWS - 1);
        in_fv         : in  std_logic_vector (0 to NB_IN_FLOWS - 1);

        out_data      : out pixel_array      (0 to NB_OUT_FLOWS - 1);
        out_dv        : out std_logic_vector (0 to NB_OUT_FLOWS - 1);
        out_fv        : out std_logic_vector (0 to NB_OUT_FLOWS - 1)
    );
end entity;

architecture STRUCTURAL of convLayer is

    --------------------------------------------------------------------------------
    -- COMPONENTS
    --------------------------------------------------------------------------------
    component neighExtractor
    generic(
		PIXEL_SIZE      :   integer;
		IMAGE_WIDTH     :   integer;
		KERNEL_SIZE     :   integer
	);

    port(
		clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable	        :	in	std_logic;
        in_data         :	in 	std_logic_vector((PIXEL_SIZE-1) downto 0);
        in_dv	        :	in	std_logic;
        in_fv	        :	in	std_logic;
        out_data        :	out	pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
        out_dv			:	out std_logic;
        out_fv			:	out std_logic
    );
    end component;

    --------------------------------------------------------------------------------
    component convElement
    generic(
        KERNEL_SIZE :    integer;
        PIXEL_SIZE  :    integer
    );

    port(
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;
        in_data     :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        in_dv    	:   in  std_logic;
        in_fv    	:   in  std_logic;
        in_kernel   :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        in_norm     :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);
        out_data    :   out std_logic_vector(PIXEL_SIZE-1 downto 0);
        out_dv    	:   out std_logic;
        out_fv    	:   out std_logic

    );
    end component;

    --------------------------------------------------------------------------------

    component sumElement
    generic(
        PIXEL_SIZE      :   integer;
        NB_IN_FLOWS     :   integer
    );

    port(
        clk	            :	in  std_logic;
        reset_n	        :	in  std_logic;
        enable          :	in  std_logic;
        in_data         :   in  pixel_array      (0 to NB_IN_FLOWS - 1);
        in_dv           :   in  std_logic_vector (0 to NB_IN_FLOWS - 1);
        in_fv           :   in  std_logic_vector (0 to NB_IN_FLOWS - 1);
        out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out_dv          :   out std_logic;
        out_fv          :   out std_logic
    );
    end component;


    --------------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------------

    type pixel_array_2d is array ( integer range <> ) of pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);

    -- Output of the neighborhood extractors (in one array of pixel_array)
    signal s_ne_data : pixel_array_2d (0 to NB_IN_FLOWS -1);
    signal s_ne_dv   : std_logic_vector (0 to NB_IN_FLOWS -1);
    signal s_ne_fv   : std_logic_vector (0 to NB_IN_FLOWS -1);

    -- Output of the convElements
    signal s_ce_data : pixel_array (0 to NB_IN_FLOWS * NB_OUT_FLOWS -1);   --output the conv element
    signal s_ce_dv   : std_logic_vector (0 to NB_IN_FLOWS * NB_OUT_FLOWS -1);
    signal s_ce_fv   : std_logic_vector (0 to NB_IN_FLOWS * NB_OUT_FLOWS -1);

    -- temporary signal for "easy" indexation purpose
    type   tmp_array_2d is array ( integer range <> ) of pixel_array (0 to NB_IN_FLOWS - 1);
    signal ce_data_2d: tmp_array_2d (0 to NB_OUT_FLOWS -1);
        -- Each ce_data_2d(i) will contain NB_IN_FLOWS elements


    --------------------------------------------------------------------------------
    begin

        NEs_loop : for i in 0 to (NB_IN_FLOWS - 1) generate
            NEs_inst : neighExtractor
            generic map(
                PIXEL_SIZE	 => PIXEL_SIZE,
                IMAGE_WIDTH  => IMAGE_WIDTH,
                KERNEL_SIZE	 => KERNEL_SIZE
            )
            port map(
                clk	         => clk,
                reset_n	     => reset_n,
                enable	     => enable,
                in_data      => in_data(i),
                in_dv	     => in_dv(i),
                in_fv	     => in_fv(i),
                out_data     => s_ne_data(i),
                out_dv	     => s_ne_dv(i),
                out_fv	     => s_ne_fv(i)
            );
        end generate NEs_loop;

    --------------------------------------------------------------------------------
        CEs_loop : for i in 0 to (NB_OUT_FLOWS * NB_IN_FLOWS - 1) generate
            CEs_inst : convElement
            generic map(
                KERNEL_SIZE => KERNEL_SIZE,
                PIXEL_SIZE  => PIXEL_SIZE
            )
            port map(
                clk         => clk,
                reset_n     => reset_n,
                enable      => enable,
                in_data     => s_ne_data(i/NB_OUT_FLOWS),
                in_dv    	=> s_ne_dv(i/NB_OUT_FLOWS),
                in_fv    	=> s_ne_fv(i/NB_OUT_FLOWS),
                in_kernel   => W_CONV_PARAMS(i),
                in_norm     => N_CONV_PARAMS(i),
                out_data    => s_ce_data(i),
                out_dv    	=> s_ce_dv(i),
                out_fv    	=> s_ce_fv(i)
            );
        end generate CEs_loop;

    --------------------------------------------------------------------------------

      -- Reorganize data : Each ce_data_2d(i) will contain NB_IN_FLOWS elements
        reorg_i : for i in 0 to (NB_OUT_FLOWS - 1) generate
            reorg_j : for j in 0 to (NB_IN_FLOWS - 1) generate
                -- A prendre avec des pincettes : VHDL 2008 only
                ce_data_2d(i)(j) <= s_ce_data( i + NB_OUT_FLOWS * j);
            end generate reorg_j;
        end generate reorg_i;

      -- GO :
        SEs_loop : for i in 0 to (NB_OUT_FLOWS - 1) generate
            SEs_inst : sumElement
            generic map (
                PIXEL_SIZE   => PIXEL_SIZE,
                NB_IN_FLOWS  => NB_IN_FLOWS
            )
            port map(
                clk          => clk,
                reset_n      => reset_n,
                enable       => enable,
                in_data      => ce_data_2d(i),
                in_dv        => s_ce_dv (0 to (NB_IN_FLOWS-1)),
                in_fv        => s_ce_fv (0 to (NB_IN_FLOWS-1)),
                out_data     => out_data(i),
                out_dv       => out_dv(i),
                out_fv       => out_fv(i)
            );
        end generate SEs_loop;

    end architecture;
