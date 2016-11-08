library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;
    use work.params.all;

entity cnn_process is
    generic(
        PIXEL_SIZE    :   integer ;
        IMAGE_WIDTH   :   integer
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;
        in_data       : in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
        in_dv         : in  std_logic;
        in_fv         : in  std_logic;
        out1_data     : out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out1_dv       : out std_logic;
        out1_fv       : out std_logic;
        out2_data     : out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out2_dv       : out std_logic;
        out2_fv       : out std_logic;
        out3_data     : out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out3_dv       : out std_logic;
        out3_fv       : out std_logic
    );
end entity;

architecture STRUCTURAL of cnn_process is

    --------------------------------------------------------------------------------
    -- COMPONENTS
    --------------------------------------------------------------------------------
    component to_unsignedPixel is
    generic(
        PIXEL_SIZE  :   integer
    );

    port(
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;
        in_data     :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);
        in_dv    	:   in  std_logic;
        in_fv    	:   in  std_logic;
        out_data    :   out std_logic_vector(PIXEL_SIZE-1 downto 0);
        out_dv    	:   out std_logic;
        out_fv    	:   out std_logic

    );
    end component;
    component to_signedPixel
    generic(
        PIXEL_SIZE  :   integer
    );

    port(
        clk           :   in  std_logic;
        reset_n       :   in  std_logic;
        enable        :   in  std_logic;
        in_data       :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);
        in_dv    	  :   in  std_logic;
        in_fv    	  :   in  std_logic;
        out_data      :   out std_logic_vector(PIXEL_SIZE-1 downto 0);
        out_dv    	  :   out std_logic;
        out_fv    	  :   out std_logic

    );
    end component;

    component firstLayer is
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        KERNEL_SIZE   :   integer;
        NB_OUT_FLOWS  :   integer;
        W_CONV_PARAMS :   pixel_matrix;
        N_CONV_PARAMS :   pixel_array;
        B_CONV_PARAMS :   pixel_array
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
    end component;

    --------------------------------------------------------------------------------

    component convLayer
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        KERNEL_SIZE   :   integer;
        NB_IN_FLOWS   :   integer;
        NB_OUT_FLOWS  :   integer;
        W_CONV_PARAMS :   pixel_matrix;
        N_CONV_PARAMS :   pixel_array;
        B_CONV_PARAMS :   pixel_array
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;
        in_data       : in  pixel_array     (0 to NB_IN_FLOWS - 1);
        in_dv         : in  std_logic_vector(0 to NB_IN_FLOWS - 1);
        in_fv         : in  std_logic_vector(0 to NB_IN_FLOWS - 1);
        out_data      : out pixel_array     (0 to NB_OUT_FLOWS - 1);
        out_dv        : out std_logic_vector(0 to NB_OUT_FLOWS - 1);
        out_fv        : out std_logic_vector(0 to NB_OUT_FLOWS - 1)
    );
    end component;

    --------------------------------------------------------------------------------

    component poolLayer
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        KERNEL_SIZE   :   integer;
        NB_OUT_FLOWS  :   integer
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;
        in_data       : in  pixel_array      (0 to NB_OUT_FLOWS - 1);
        in_dv         : in  std_logic_vector (0 to NB_OUT_FLOWS - 1);
        in_fv         : in  std_logic_vector (0 to NB_OUT_FLOWS - 1);
        out_data      : out pixel_array      (0 to NB_OUT_FLOWS - 1);
        out_dv        : out std_logic_vector (0 to NB_OUT_FLOWS - 1);
        out_fv        : out std_logic_vector (0 to NB_OUT_FLOWS - 1)
    );
    end component;

    --------------------------------------------------------------------------------

    component fcLayer
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        FEATURE_SIZE  :   integer;
        NB_IN_FLOWS   :   integer;
        NB_OUT_FLOWS  :   integer;
        W_FC_PARAMS   :   pixel_matrix;
        N_FC_PARAMS   :   pixel_array;
        B_FC_PARAMS   :   pixel_array
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

    end component;
    --------------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------------
    signal signed_data : std_logic_vector (PIXEL_SIZE-1 downto 0);
    signal signed_dv   : std_logic;
    signal signed_fv   : std_logic;

    signal conv1_data  : pixel_array      (0 to CONV1_OUT_SIZE - 1);
    signal conv1_dv    : std_logic_vector (0 to CONV1_OUT_SIZE - 1);
    signal conv1_fv    : std_logic_vector (0 to CONV1_OUT_SIZE - 1);

    signal pool1_data  : pixel_array      (0 to POOL1_OUT_SIZE - 1);
    signal pool1_dv    : std_logic_vector (0 to POOL1_OUT_SIZE - 1);
    signal pool1_fv    : std_logic_vector (0 to POOL1_OUT_SIZE - 1);

    signal conv2_data  : pixel_array      (0 to CONV2_OUT_SIZE - 1);
    signal conv2_dv    : std_logic_vector (0 to CONV2_OUT_SIZE - 1);
    signal conv2_fv    : std_logic_vector (0 to CONV2_OUT_SIZE - 1);

    signal pool2_data  : pixel_array      (0 to POOL2_OUT_SIZE - 1);
    signal pool2_dv    : std_logic_vector (0 to POOL2_OUT_SIZE - 1);
    signal pool2_fv    : std_logic_vector (0 to POOL2_OUT_SIZE - 1);

    signal conv3_data  : pixel_array      (0 to CONV3_OUT_SIZE - 1);
    signal conv3_dv    : std_logic_vector (0 to CONV3_OUT_SIZE - 1);
    signal conv3_fv    : std_logic_vector (0 to CONV3_OUT_SIZE - 1);

    signal fc_data     : pixel_array         (0 to FC_OUT_SIZE - 1);
    signal fc_dv       : std_logic_vector    (0 to FC_OUT_SIZE - 1);
    signal fc_fv       : std_logic_vector    (0 to FC_OUT_SIZE - 1);

    --------------------------------------------------------------------------------
    -- BEGIN STRUCTURAL DESCRIPTION
    --------------------------------------------------------------------------------
    begin

        -- CONVERT TO SIGNED ------------------------------------------------------
        spixel : to_signedPixel
        generic map(
            PIXEL_SIZE    => PIXEL_SIZE
        )
        port map(
            clk	          => clk,
            reset_n	      => reset_n,
            enable        => enable,
            in_data       => in_data,
            in_dv         => in_dv,
            in_fv         => in_fv,
            out_data      => signed_data,
            out_dv        => signed_dv,
            out_fv        => signed_fv
        );

       -- CONV1 -------------------------------------------------------------------
       conv1: firstLayer
       generic map(
           PIXEL_SIZE    => PIXEL_SIZE,
           IMAGE_WIDTH   => CONV1_IMAGE_WIDTH,
           NB_OUT_FLOWS  => CONV1_OUT_SIZE,
           KERNEL_SIZE   => CONV1_KERNEL_SIZE,
           W_CONV_PARAMS => CONV1_KERNEL_VALUE,
           N_CONV_PARAMS => CONV1_KERNEL_NORM,
           B_CONV_PARAMS => CONV1_BIAS_VALUE
       )
       port map(
           clk	         => clk,
           reset_n	     => reset_n,
           enable        => enable,
           in_data       => signed_data,
           in_dv         => signed_dv,
           in_fv         => signed_fv,
           out_data      => conv1_data,
           out_dv        => conv1_dv,
           out_fv        => conv1_fv
       );



       -- POOL1 -------------------------------------------------------------------
       pool1: poolLayer
       generic map(
           PIXEL_SIZE    => PIXEL_SIZE,
           IMAGE_WIDTH   => POOL1_IMAGE_WIDTH,
           NB_OUT_FLOWS  => POOL1_OUT_SIZE,
           KERNEL_SIZE   => POOL1_KERNEL_SIZE
       )
       port map(
           clk	         => clk,
           reset_n	     => reset_n,
           enable        => enable,
           in_data       => conv1_data,
           in_dv         => conv1_dv,
           in_fv         => conv1_fv,
           out_data      => pool1_data,
           out_dv        => pool1_dv,
           out_fv        => pool1_fv
       );
--
       -- CONV2 -------------------------------------------------------------------
       conv2 : convLayer
       generic map(
           PIXEL_SIZE    => PIXEL_SIZE,
           IMAGE_WIDTH   => CONV2_IMAGE_WIDTH,
           NB_IN_FLOWS   => CONV2_IN_SIZE,
           NB_OUT_FLOWS  => CONV2_OUT_SIZE,
           KERNEL_SIZE   => CONV2_KERNEL_SIZE,
           W_CONV_PARAMS => CONV2_KERNEL_VALUE,
           N_CONV_PARAMS => CONV2_KERNEL_NORM,
           B_CONV_PARAMS => CONV2_BIAS_VALUE
       )
       port map(
           clk	          =>  clk,
           reset_n	      =>  reset_n,
           enable        =>  enable,
           in_data       =>  pool1_data,
           in_dv         =>  pool1_dv,
           in_fv         =>  pool1_fv,
           out_data      =>  conv2_data,
           out_dv        =>  conv2_dv,
           out_fv        =>  conv2_fv
       );

--        -- POOL2 -------------------------------------------------------------------
--        pool2: poolLayer
--        generic map(
--            PIXEL_SIZE    => PIXEL_SIZE,
--            IMAGE_WIDTH   => POOL2_IMAGE_WIDTH,
--            NB_OUT_FLOWS  => POOL2_OUT_SIZE,
--            KERNEL_SIZE   => POOL2_KERNEL_SIZE
--        )
--        port map(
--            clk	          => clk,
--            reset_n	      => reset_n,
--            enable        => enable,
--            in_data       => conv2_data,
--            in_dv         => conv2_dv,
--            in_fv         => conv2_fv,
--            out_data      => pool2_data,
--            out_dv        => pool2_dv,
--            out_fv        => pool2_fv
--        );
--
--        -- CONV3 -------------------------------------------------------------------
--        conv3 : convLayer
--        generic map(
--            PIXEL_SIZE    => PIXEL_SIZE,
--            IMAGE_WIDTH   => CONV3_IMAGE_WIDTH,
--            NB_IN_FLOWS   => CONV3_IN_SIZE,
--            NB_OUT_FLOWS  => CONV3_OUT_SIZE,
--            KERNEL_SIZE   => CONV3_KERNEL_SIZE,
--            W_CONV_PARAMS => CONV3_KERNEL_VALUE,
--            N_CONV_PARAMS => CONV3_KERNEL_NORM,
--            B_CONV_PARAMS => CONV3_BIAS_VALUE
--        )
--        port map(
--            clk	        =>  clk,
--            reset_n	    =>  reset_n,
--            enable        =>  enable,
--            in_data       =>  pool2_data,
--            in_dv         =>  pool2_dv,
--            in_fv         =>  pool2_fv,
--            out_data      =>  conv3_data,
--            out_dv        =>  conv3_dv,
--            out_fv        =>  conv3_fv
--        );
--
--        -- FC -------------------------------------------------------------------
--        FC : fcLayer
--        generic map(
--            PIXEL_SIZE    => PIXEL_SIZE,
--            IMAGE_WIDTH   => FC_IMAGE_WIDTH,
--            FEATURE_SIZE  => FC_KERNEL_SIZE,
--            NB_IN_FLOWS   => FC_IN_SIZE,
--            NB_OUT_FLOWS  => FC_OUT_SIZE,
--            W_FC_PARAMS   => FC_KERNEL_VALUE,
--            N_FC_PARAMS   => FC_KERNEL_NORM,
--            B_FC_PARAMS   => FC_BIAS_VALUE
--        )
--        port map(
--            clk	        =>  clk,
--            reset_n	    =>  reset_n,
--            enable        =>  enable,
--            in_data       =>  conv3_data,
--            in_dv         =>  conv3_dv,
--            in_fv         =>  conv3_fv,
--            out_data      =>  fc_data,
--            out_dv        =>  fc_dv,
--            out_fv        =>  fc_fv
--        );
--
--
--        -- DISPLAY ONLY : DO NOT GENERATE ------------------------------------------

        -- UNSIGNED PIXELS -------------------------------------------------------
        upixel_i : to_unsignedPixel
        generic map(
            PIXEL_SIZE    => PIXEL_SIZE
        )
        port map(
            clk	          => clk,
            reset_n	      => reset_n,
            enable        => enable,
            in_data       => conv2_data(0),
            in_dv         => conv2_dv(0),
            in_fv         => conv2_fv(0),
            out_data      => out1_data,
            out_dv        => out1_dv,
            out_fv        => out1_fv
        );

        upixel_0 : to_unsignedPixel
        generic map(
            PIXEL_SIZE    => PIXEL_SIZE
        )
        port map(
            clk	          => clk,
            reset_n	      => reset_n,
            enable        => enable,
            in_data       => conv2_data(1),
            in_dv         => conv2_dv(1),
            in_fv         => conv2_fv(1),
            out_data      => out2_data,
            out_dv        => out2_dv,
            out_fv        => out2_fv
        );

        upixel_1 : to_unsignedPixel
        generic map(
            PIXEL_SIZE    => PIXEL_SIZE
        )
        port map(
            clk	          => clk,
            reset_n	      => reset_n,
            enable        => enable,
            in_data       => conv2_data(2),
            in_dv         => conv2_dv(2),
            in_fv         => conv2_fv(2),
            out_data      => out3_data,
            out_dv        => out3_dv,
            out_fv        => out3_fv
        );
end architecture;
