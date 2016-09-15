library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity neighExtractor is
    generic(
     	PIXEL_SIZE      :   integer;
    	IMAGE_WIDTH     :   integer;
    	NB_IN_FEATURES  :   integer;
        NB_OUT_FEATURES :   integer;
        KERNEL_SIZE     :   integer
    );

    port(
        in_features     :	in 	pixel_array (0 to NB_IN_FEATURES);
        in_features     :	in 	pixel_array2D (0 to NB_IN_FEATURES);
        clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable          :	in	std_logic;
        out_data        :	out	pixel_array (0 to (NEIGH_SIZE * NEIGH_SIZE)- 1)
    );
