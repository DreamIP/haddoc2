library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity PoolLayer1 is
    generic(
        PIXEL_SIZE    :   integer :=8;
        IMAGE_WIDTH   :   integer :=254;
        NEIGH_SIZE    :   integer :=2
    );
    port (
        clk	        :	in 	std_logic;
        reset_n	    :	in	std_logic;
        enable      :	in	std_logic;
        in_data 	:	in 	std_logic_vector((PIXEL_SIZE-1) downto 0);
        out_data    :	out	std_logic_vector((PIXEL_SIZE-1) downto 0)
    );
end entity;


architecture rtl of PoolLayer1 is
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
    component maxElement

        generic(
            PIXEL_SIZE      :   integer;
            NB_IN_FLOWS     :   integer
        );

        port (
            in_data         :   pixel_array (0 to NB_IN_FLOWS * NB_IN_FLOWS - 1);
            clk	            :	in 	std_logic;
            reset_n	        :	in	std_logic;
            enable          :	in	std_logic;
            out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0)
    );
    end component;
    --------------------------------------------------------------------------------

    --------------------------------------------------------------------------------
    -- SIGNALS
    --------------------------------------------------------------------------------

    signal s_neigh  :   pixel_array (0 to (NEIGH_SIZE * NEIGH_SIZE)- 1);
    --------------------------------------------------------------------------------
    -- BEGIN STRUCTURAL DESCRIPTION
    --------------------------------------------------------------------------------

    begin

        inst_NE : neighExtractor
        generic map(
            PIXEL_SIZE	=> PIXEL_SIZE,
            IMAGE_WIDTH => IMAGE_WIDTH,
            NEIGH_SIZE	=> NEIGH_SIZE
        )
        port map(
            in_data     => in_data,
            clk	        => clk,
            reset_n	    => reset_n,
            enable      => enable,
            out_data    => s_neigh
        );

        --------------------------------------------------------------------------------
        inst_ME : maxElement
        generic map(
            PIXEL_SIZE   => PIXEL_SIZE,
            NB_IN_FLOWS  => NEIGH_SIZE
        )

        port map(
            in_data     => s_neigh,
            clk	        => clk,
            reset_n	    => reset_n,
            enable      => enable,
            out_data    => out_data
        );

end architecture;
