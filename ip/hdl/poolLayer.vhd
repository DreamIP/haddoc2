library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity poolLayer is
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
end entity;

architecture STRUCTURAL of poolLayer is
    --------------------------------------------------------------------------------
    -- COMPONENTS
    --------------------------------------------------------------------------------
    component neighExtractor_p
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

   component maxElement is

       generic(
           PIXEL_SIZE      :   integer;
           KERNEL_SIZE     :   integer
       );

       port (
           clk	           :	in 	std_logic;
           reset_n	       :	in	std_logic;
           enable          :   in  std_logic;
           in_data         :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
           in_dv           :   in  std_logic;
           in_fv           :   in  std_logic;
           out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0);
           out_dv          :   out std_logic;
           out_fv          :   out std_logic
   );
   end component;



   --------------------------------------------------------------------------------

   component poolH is

       generic(
           PIXEL_SIZE      :   integer;
           IMAGE_WIDTH     :   integer;
           KERNEL_SIZE     :   integer
       );

       port(
           clk	           :	in 	std_logic;
           reset_n	       :	in	std_logic;
           enable          :   in  std_logic;
           in_data         :   in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
           in_dv           :   in  std_logic;
           in_fv           :   in  std_logic;
           out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0);
           out_dv          :   out std_logic;
           out_fv          :   out std_logic
       );

   end component;

   --------------------------------------------------------------------------------

   component poolV is

       generic(
           PIXEL_SIZE      :   integer;
           IMAGE_WIDTH     :   integer;
           KERNEL_SIZE     :   integer
       );

       port(
           clk	           :	in 	std_logic;
           reset_n	       :	in	std_logic;
           enable          :   in  std_logic;
           in_data         :   in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
           in_dv           :   in  std_logic;
           in_fv           :   in  std_logic;
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
    signal ne_data    : pixel_array_2d   (0 to NB_OUT_FLOWS -1);
    signal ne_dv      : std_logic_vector (0 to NB_OUT_FLOWS -1);
    signal ne_fv      : std_logic_vector (0 to NB_OUT_FLOWS -1);

    signal max_data   : pixel_array      (0 to NB_OUT_FLOWS -1);
    signal max_dv     : std_logic_vector (0 to NB_OUT_FLOWS -1);
    signal max_fv     : std_logic_vector (0 to NB_OUT_FLOWS -1);

    signal poolH_data : pixel_array_2d   (0 to NB_OUT_FLOWS -1);
    signal poolH_dv   : std_logic_vector (0 to NB_OUT_FLOWS -1);
    signal poolH_fv   : std_logic_vector (0 to NB_OUT_FLOWS -1);


    --------------------------------------------------------------------------------
    -- STRUCTURAL DESCRIPTION
    --------------------------------------------------------------------------------
    begin

        NEs_loop : for i in 0 to (NB_OUT_FLOWS - 1) generate
            NEs_inst : neighExtractor_p
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
                out_data     => ne_data(i),
                out_dv	     => ne_dv(i),
                out_fv	     => ne_fv(i)
            );
        end generate NEs_loop;

        --------------------------------------------------------------------------------

        MEs_LOOP : for i in 0 to (NB_OUT_FLOWS - 1) generate
            MEs_inst : maxElement
            generic map(
                PIXEL_SIZE   => PIXEL_SIZE,
                KERNEL_SIZE  => KERNEL_SIZE
            )
            port map(
                clk	         => clk,
                reset_n	     => reset_n,
                enable       => enable,
                in_data      => ne_data(i),
                in_dv        => ne_dv(i),
                in_fv        => ne_fv(i),
                out_data     => max_data(i),
                out_dv       => max_dv(i),
                out_fv       => max_fv(i)
            );
        end generate MEs_LOOP;

        --------------------------------------------------------------------------------

        HP_LOOP : for i in 0 to (NB_OUT_FLOWS - 1) generate
            HPs_INST : poolH
            generic map (
                PIXEL_SIZE     =>  PIXEL_SIZE,
                IMAGE_WIDTH    =>  IMAGE_WIDTH,
                KERNEL_SIZE    =>  KERNEL_SIZE
            )

            port map(
                clk	           => clk,
                reset_n	       => reset_n,
                enable         => enable,
                in_data        => max_data(i),
                in_dv          => max_dv(i),
                in_fv          => max_fv(i),
                out_data       => poolH_data(i),
                out_dv         => poolH_dv(i),
                out_fv         => poolH_fv(i)
            );
        end generate HP_LOOP;

        --------------------------------------------------------------------------------

        VP_LOOP : for i in 0 to (NB_OUT_FLOWS - 1) generate
            VP_INST : poolV
            generic map (
                PIXEL_SIZE     =>  PIXEL_SIZE,
                IMAGE_WIDTH    =>  IMAGE_WIDTH / 2,
                KERNEL_SIZE    =>  CONST_KERNEL_SIZE
            )

            port map(
                clk	           => clk,
                reset_n	       => reset_n,
                enable         => enable,
                in_data        => poolH_data(i),
                in_dv          => poolH_dv(i),
                in_fv          => poolH_fv(i),
                out_data       => out_data(i),
                out_dv         => out_dv(i),
                out_fv         => out_fv(i)
            );

        end generate VP_LOOP;

end STRUCTURAL;
