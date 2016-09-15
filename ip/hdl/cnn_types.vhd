library ieee;
	use	ieee.std_logic_1164.all;

package	cnn_types is
	constant 	PIXEL_CONST		:	integer := 8;
    constant 	KERNEL_CONST	:	integer := 3;
	type		pixel_array   is array ( integer range <> ) of std_logic_vector (PIXEL_SIZE-1 downto 0);
    type		pixel_array2D is array ( integer range <> ) of pixel_array (0 to KERNEL_CONST - 1);
end cnn_types;
