---------------------------------------------------------------------------------
-- Design Name 	: cnn_types
-- Coder       	: Kamel ABDELOUAHAB
-- Institution 	: Institut Pascal  - 2016
---------------------------------------------------------------------------------

library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;
    use ieee.math_real.all;



package	cnn_types is
	constant PIXEL_CONST	: integer := 5;
    constant SUM_WIDTH      : integer := 3*PIXEL_CONST;

	type	 pixel_array    is array ( integer range <> ) of std_logic_vector (PIXEL_CONST-1 downto 0);
	type	 sum_array      is array ( integer range <> ) of std_logic_vector (SUM_WIDTH-1 downto 0);
	type	 pixel_matrix   is array ( integer range <> ,  integer range <>) of std_logic_vector (PIXEL_CONST-1 downto 0);

    constant SCALE_FACTOR      :   integer := 2 **(PIXEL_CONST-1) - 1;
    constant A1                :   integer := PIXEL_CONST - 1;
    constant A2                :   integer := PIXEL_CONST;
    constant T1                :   integer := SCALE_FACTOR * SCALE_FACTOR / 2;
    constant T2                :   integer := SCALE_FACTOR * SCALE_FACTOR * 5/4;
    constant V1                :   integer := SCALE_FACTOR / 4;
    constant V2                :   integer := SCALE_FACTOR - 10;

end cnn_types;
