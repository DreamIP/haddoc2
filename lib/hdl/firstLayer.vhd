library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;
    use ieee.math_real.all;


library work;
	use work.cnn_types.all;


entity firstLayer is
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        KERNEL_SIZE   :   integer;
        NB_OUT_FLOWS  :   integer;
        KERNEL_VALUE  :   pixel_matrix;
        KERNEL_NORM   :   pixel_array;
        BIAS_VALUE    :   pixel_array
    );

    port(
        clk	          :   in  std_logic;
        reset_n	      :   in  std_logic;
        enable        :   in  std_logic;
        in_data       :   in  std_logic_vector (0 to PIXEL_SIZE - 1);
        in_dv         :   in  std_logic;
        in_fv         :   in  std_logic;
        out_data      :   out pixel_array      (0 to NB_OUT_FLOWS - 1);
        out_dv        :   out std_logic_vector (0 to NB_OUT_FLOWS - 1);
        out_fv        :   out std_logic_vector (0 to NB_OUT_FLOWS - 1)
    );
end entity;

architecture STRUCTURAL of firstLayer is
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
        KERNEL_SIZE :   integer;
        PIXEL_SIZE  :   integer
    );

    port(
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;
        in_data     :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        in_dv    	:   in  std_logic;
        in_fv    	:   in  std_logic;
        in_kernel   :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
        out_data    :   out std_logic_vector(SUM_WIDTH - 1 downto 0);
        out_dv    	:   out std_logic;
        out_fv    	:   out std_logic

    );
    end component;
    --------------------------------------------------------------------------------

    component sumElement_single
    generic(
        PIXEL_SIZE      :   integer
    );

    port(
        clk	            :	in  std_logic;
        reset_n	        :	in  std_logic;
        enable          :	in  std_logic;
        in_data         :   in  std_logic_vector (SUM_WIDTH - 1 downto 0);
        in_dv           :   in  std_logic;
        in_fv           :   in  std_logic;
        in_bias         :   in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out_dv          :   out std_logic;
        out_fv          :   out std_logic
    );
    end component;

    --------------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------------
    -- Output of the neighborhood extractor
    signal s_ne_data : pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1):= (others=>(others=>'0'));
    signal s_ne_dv   : std_logic;
    signal s_ne_fv   : std_logic;

    signal s_ce_data : sum_array        (0 to NB_OUT_FLOWS - 1):= (others=>(others=>'0'));
    signal s_ce_dv   : std_logic_vector (0 to NB_OUT_FLOWS - 1):= (others=>'0');
    signal s_ce_fv   : std_logic_vector (0 to NB_OUT_FLOWS - 1):= (others=>'0');

    signal tmp_w : pixel_array (0 to NB_OUT_FLOWS * KERNEL_SIZE * KERNEL_SIZE - 1):= (others=>(others=>'0'));

    --------------------------------------------------------------------------------
    -- BEGIN
    --------------------------------------------------------------------------------
    begin

        -- Extract neighborhood
        NE_INST : neighExtractor
        generic map(
            PIXEL_SIZE	 => PIXEL_SIZE,
            IMAGE_WIDTH  => IMAGE_WIDTH,
            KERNEL_SIZE	 => KERNEL_SIZE
        )
        port map(
            clk	         => clk,
            reset_n	     => reset_n,
            enable	     => enable,
            in_data      => in_data,
            in_dv	     => in_dv,
            in_fv	     => in_fv,
            out_data     => s_ne_data,
            out_dv	     => s_ne_dv,
            out_fv	     => s_ne_fv
        );

        -- Process Convolutions
        CEs_loop : for flowIndex in 0 to (NB_OUT_FLOWS - 1) generate

            -- Load kernels in array : matrix to tmp array
             --tmp_loop : for j in 0 to (KERNEL_SIZE * KERNEL_SIZE - 1) generate
            --     tmp_w(i*(KERNEL_SIZE * KERNEL_SIZE) + j) <= KERNEL_VALUE(i,j);
             --end generate tmp_loop;

            -- Inst Conv Element
            CEs_inst : convElement
            generic map(
                KERNEL_SIZE => KERNEL_SIZE,
                PIXEL_SIZE  => PIXEL_SIZE
            )
            port map(
                clk         => clk,
                reset_n     => reset_n,
                enable      => enable,
                in_data     => s_ne_data,
                in_dv    	=> s_ne_dv,
                in_fv    	=> s_ne_fv,
                in_kernel   => extractRow(flowIndex,
                                             NB_OUT_FLOWS,
                                             KERNEL_SIZE*KERNEL_SIZE,
                                             KERNEL_VALUE),
                out_data    => s_ce_data (flowIndex),
                out_dv    	=> s_ce_dv   (flowIndex),
                out_fv    	=> s_ce_fv   (flowIndex)
            );
        end generate CEs_loop;

            -- Version 0 :
            -- in_kernel   => KERNEL_VALUE(i,0 to KERNEL_VALUE'range(1)),

            -- Version 1 :
            -- in_kernel   => tmp_w(i * KERNEL_SIZE* KERNEL_SIZE to KERNEL_SIZE*KERNEL_SIZE*(i+1)-1),

            -- Version 2 : Hardcode
            -- in_kernel(0)=> KERNEL_VALUE(i,0),
            -- in_kernel(1)=> KERNEL_VALUE(i,1),
            -- in_kernel(2)=> KERNEL_VALUE(i,2),
            -- in_kernel(3 to KERNEL_SIZE* KERNEL_SIZE-1) => (others=>(others=>'0')),

            -- Version 3 : For loop ?
            -- for i in 1 to KERNEL_SIZE* KERNEL_SIZE -1 loop
            --     in_kernel(j) => KERNEL_VALUE(i,j),
            -- end loop;

            -- Version 4 : with the extractRow function

        -- Apply bias and Activation
        SEs_loop : for i in 0 to (NB_OUT_FLOWS - 1) generate
            SEs_inst : sumElement_single
            generic map (
                PIXEL_SIZE   => PIXEL_SIZE
            )
            port map(
                clk          => clk,
                reset_n      => reset_n,
                enable       => enable,
                in_data      => s_ce_data(i),
                in_dv        => s_ce_dv(i),
                in_fv        => s_ce_fv(i),
                in_bias      => BIAS_VALUE(i),
                out_data     => out_data(i),
                out_dv       => out_dv(i),
                out_fv       => out_fv(i)
            );
        end generate SEs_loop;


end STRUCTURAL;
