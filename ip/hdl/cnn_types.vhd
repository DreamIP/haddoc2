library ieee;
	use	ieee.std_logic_1164.all;

package	cnn_types is
	constant PIXEL_CONST	:	integer := 8;
	constant KERNEL_CONST	:	integer := 3;
	type	 pixel_array    is array ( integer range <> ) of std_logic_vector (PIXEL_CONST-1 downto 0);
	type	 kernel_array   is array ( integer range <> ) of pixel_array (KERNEL_CONST * KERNEL_CONST-1 downto 0);
end cnn_types;
