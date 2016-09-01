library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity sumFeatures is

    generic(
        PIXEL_SIZE      :   integer;
        IMAGE_WIDTH     :   integer;
        NB_CONVED       :   integer
    );

    port(
        in_data         :   pixel_array (0 to NB_CONVED - 1);
        clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable          :	in	std_logic;
        out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0)
    );
end entity;

architecture bhv of sumFeatures is



begin



end architecture;
