library ieee;
	use	ieee.std_logic_1164.all;

package	cnn_types is
	constant PIXEL_CONST	:	integer := 8;
	type	 pixel_array   is array ( integer range <> ) of std_logic_vector (PIXEL_CONST-1 downto 0);
end cnn_types;
