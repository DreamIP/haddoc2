library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity FirstLayer_process is
  generic(
      PIXEL_SIZE    :   integer;
      IMAGE_WIDTH   :   integer;
      KERNEL_SIZE   :   integer
);

  port(
      clk	        :	in 	std_logic;
      reset_n	    :	in	std_logic;
      enable_i      :	in	std_logic;

      -- Image IN
      in_data 	    :	in 	std_logic_vector((PIXEL_SIZE-1) downto 0);
      in_dv	        :	in	std_logic;
      in_fv	        :	in	std_logic;


      -- Feature Maps OUT
      out1_data  :	out	std_logic_vector((PIXEL_SIZE-1) downto 0);
      out1_dv    :	out	std_logic;
      out1_fv    :	out	std_logic;

      out2_data  :  out	std_logic_vector((PIXEL_SIZE-1) downto 0);
      out2_dv    :  out	std_logic;
      out2_fv    :  out	std_logic;

      out3_data  :	out	std_logic_vector((PIXEL_SIZE-1) downto 0);
      out3_dv    :	out	std_logic;
      out3_fv    :	out	std_logic
  );
end entity;

architecture rtl of FirstLayer_process is
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
    -- SIGNALS
    --------------------------------------------------------------------------------

    signal s_neigh_data  :   pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
    signal s_neigh_dv    :   std_logic;
    signal s_neigh_fv    :   std_logic;

    --------------------------------------------------------------------------------
    -- WEIGHTS ; YOLO
    --------------------------------------------------------------------------------
    -- Kernels
    constant W11        :   pixel_array(0 to 8) := ("10100000","00000000","00000001","10000010","00000000","00000010","10000001","00000000","00100001");
    constant W12        :   pixel_array(0 to 8) := ("10000001","10000010","10000001","00000000","00000000","00000000","00000001","00000010","00000001");
    constant W13        :   pixel_array(0 to 8) := ("10000001","00000000","00000001","10000010","00000000","00000010","10000001","00000000","00000001");


     -- NORMS : devide == shift
    constant N11        :   std_logic_vector (7 downto 0):= "00000000";
    constant N12        :   std_logic_vector (7 downto 0):= "00000000";
    constant N13        :   std_logic_vector (7 downto 0):= "00001000";


    --------------------------------------------------------------------------------
    -- BEGIN STRUCTURAL DESCRIPTION
    --------------------------------------------------------------------------------

    begin
        --Neighborhood Extractor
        inst_NE : neighExtractor
        generic map(
            PIXEL_SIZE	=> PIXEL_SIZE,
            IMAGE_WIDTH => IMAGE_WIDTH,
            KERNEL_SIZE	=> KERNEL_SIZE
        )
        port map(
            clk	        => clk,
            reset_n	    => reset_n,
            enable	    => enable_i,
            in_data     => in_data,
            in_dv	    => in_dv,
            in_fv	    => in_fv,
            out_data    => s_neigh_data,
            out_dv	    => s_neigh_dv,
            out_fv	    => s_neigh_fv
        );


        -- CE11
        inst_CE_11 : convElement
        generic map(
            KERNEL_SIZE => KERNEL_SIZE,
            PIXEL_SIZE  => PIXEL_SIZE
        )
        port map(
            clk         => clk,
            reset_n     => reset_n,
            enable      => enable_i,
            in_data     => s_neigh_data,
            in_dv    	=> s_neigh_dv,
            in_fv    	=> s_neigh_fv,
            in_kernel   => W11,
            in_norm     => N11,
            out_data    => out1_data,
            out_dv    	=> out1_dv,
            out_fv    	=> out1_fv
        );

        -- CE12
        inst_CE_12 : convElement
        generic map(
            KERNEL_SIZE => KERNEL_SIZE,
            PIXEL_SIZE  => PIXEL_SIZE
        )
        port map(
            clk         => clk,
            reset_n     => reset_n,
            enable      => enable_i,
            in_data     => s_neigh_data,
            in_dv    	=> s_neigh_dv,
            in_fv    	=> s_neigh_fv,
            in_kernel   => W12,
            in_norm     => N12,
            out_data    => out2_data,
            out_dv    	=> out2_dv,
            out_fv    	=> out2_fv
        );

        --CE13
        inst_CE_13 : convElement
        generic map(
            KERNEL_SIZE => KERNEL_SIZE,
            PIXEL_SIZE  => PIXEL_SIZE
        )
        port map(
            clk         => clk,
            reset_n     => reset_n,
            enable      => enable_i,
            in_data     => s_neigh_data,
            in_dv    	=> s_neigh_dv,
            in_fv    	=> s_neigh_fv,
            in_kernel   => W13,
            in_norm     => N13,
            out_data    => out3_data,
            out_dv    	=> out3_dv,
            out_fv    	=> out3_fv
        );

end architecture;
