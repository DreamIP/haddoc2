library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity FirstLayer is
  generic(
      PIXEL_SIZE    :   integer :=8;
      IMAGE_WIDTH   :   integer :=254;
      KERNEL_SIZE   :   integer :=3
);

  port(
      clk	        :	in 	std_logic;
      reset_n	    :	in	std_logic;
      enable        :	in	std_logic;

      -- Image IN
      in_data 	    :	in 	std_logic_vector((PIXEL_SIZE-1) downto 0);

      -- Kernel IN (conv weights)
      w_11 	      	:	in 	pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
      w_12 	      	:	in 	pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
      w_13 	      	:	in 	pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);

      -- Norm IN (log2(sum(w)))
      n_11 	      	:	in std_logic_vector((PIXEL_SIZE-1) downto 0);
      n_12 	      	:	in std_logic_vector((PIXEL_SIZE-1) downto 0);
      n_13 	      	:	in std_logic_vector((PIXEL_SIZE-1) downto 0);

      -- Feature Map OUT
      out_data       :	out	std_logic_vector((PIXEL_SIZE-1) downto 0)
  );
end entity;

architecture rtl of FirstLayer is
    --------------------------------------------------------------------------------
    -- COMPONENTS
    --------------------------------------------------------------------------------
    component neighExtractor
        generic(
		    PIXEL_SIZE      :   integer;
		    IMAGE_WIDTH     :   integer;
		    NEIGH_SIZE      :   integer
	     );

         port(
            in_data         :	in 	std_logic_vector((PIXEL_SIZE-1) downto 0);
            clk	            :	in 	std_logic;
            reset_n	        :	in	std_logic;
            enable          :	in	std_logic;
            out_data        :	out	pixel_array (0 to (NEIGH_SIZE * NEIGH_SIZE)- 1)
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
            in_kernel   :   in  pixel_array (0 to KERNEL_SIZE * KERNEL_SIZE - 1);
            in_norm     :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);
            out_data    :   out std_logic_vector(PIXEL_SIZE-1 downto 0)
            );
    end component;

    --------------------------------------------------------------------------------

    component sumElement is
        generic(
            PIXEL_SIZE      :   integer;
            NB_IN_FLOWS     :   integer
        );

        port(
            in_data         :   pixel_array (0 to NB_IN_FLOWS - 1);
            clk	            :	in 	std_logic;
            reset_n	        :	in	std_logic;
            enable          :	in	std_logic;
            out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0)
        );
    end component;

    --------------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------------

    signal s_neigh  :   pixel_array (0 to (KERNEL_SIZE * KERNEL_SIZE)- 1);
    signal s_conved :   pixel_array (1 to 3);


    --------------------------------------------------------------------------------
    -- BEGIN STRUCTURAL DESCRIPTION
    --------------------------------------------------------------------------------

    begin
        inst_NE : neighExtractor
        generic map(
            PIXEL_SIZE	=> PIXEL_SIZE,
            IMAGE_WIDTH => IMAGE_WIDTH,
            NEIGH_SIZE	=> KERNEL_SIZE
        )
        port map(
            in_data     => in_data,
            clk	        => clk,
            reset_n	    => reset_n,
            enable      => enable,
            out_data    => s_neigh
        );

        inst_CE_11 : convElement
        generic map(
            KERNEL_SIZE => KERNEL_SIZE,
            PIXEL_SIZE  => PIXEL_SIZE
        )
        port map(
            clk         => clk,
            reset_n     => reset_n,
            enable      => enable,
            in_data     => s_neigh,
            in_kernel   => w_11,
            in_norm     => n_11,
            out_data    => s_conved(1)
        );

        inst_CE_12 : convElement
        generic map(
            KERNEL_SIZE => KERNEL_SIZE,
            PIXEL_SIZE  => PIXEL_SIZE
        )
        port map(
            clk         => clk,
            reset_n     => reset_n,
            enable      => enable,
            in_data     => s_neigh,
            in_kernel   => w_12,
            in_norm     => n_12,
            out_data    => s_conved(2)
        );

        inst_CE_13 : convElement
        generic map(
            KERNEL_SIZE => KERNEL_SIZE,
            PIXEL_SIZE  => PIXEL_SIZE
        )
        port map(
            clk         => clk,
            reset_n     => reset_n,
            enable      => enable,
            in_data     => s_neigh,
            in_kernel   => w_13,
            in_norm     => n_13,
            out_data    => s_conved(3)
        );

        inst_SE : sumElement
        generic map(
            PIXEL_SIZE => PIXEL_SIZE,
            NB_IN_FLOWS  => 3
        )

        port map(
            in_data    => s_conved,
            clk	       => clk,
            reset_n	   => reset_n,
            enable     => enable,
            out_data   => out_data
        );

end architecture;
