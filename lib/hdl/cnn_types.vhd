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
	constant PIXEL_CONST	    : integer := 8;
    constant SUM_WIDTH          : integer := 3*PIXEL_CONST;
    constant MAX_KERNEL_SIZE	: integer := 11;

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

    function extractRow( target_row :  integer;
                            nb_row     :  integer;
                            nb_col     :  integer;
                            in_matrix  :  pixel_matrix )
                            return        pixel_array;
end cnn_types;

package body cnn_types is
    function extractRow( target_row :  integer;
                            nb_row     :  integer;
                            nb_col     :  integer;
                            in_matrix  :  pixel_matrix )
                            return        pixel_array is
    variable out_vec : pixel_array  (0 to nb_col - 1);
    begin
        for index_col in 0 to (nb_col - 1) loop
            out_vec(index_col) := in_matrix(target_row,index_col);
        end loop;
        return out_vec;
    end extractRow;

end cnn_types;
