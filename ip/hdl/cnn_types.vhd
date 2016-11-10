library ieee;
	use	ieee.std_logic_1164.all;

package	cnn_types is
	constant PIXEL_CONST	: integer := 8;
    constant SUM_WIDTH      : integer := 3*PIXEL_CONST;
	type	 pixel_array    is array ( integer range <> ) of std_logic_vector (PIXEL_CONST-1 downto 0);
	type	 sum_array      is array ( integer range <> ) of std_logic_vector (SUM_WIDTH-1 downto 0);
	type	 pixel_matrix   is array ( integer range <> ,  integer range <>) of std_logic_vector (PIXEL_CONST-1 downto 0);
end cnn_types;
