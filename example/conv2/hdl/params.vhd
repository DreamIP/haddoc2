library ieee;
	use	ieee.std_logic_1164.all;
library work;
    use work.cnn_types.all;

package params is

    constant CONV2_IN_SIZE      : integer := 3;
    constant CONV2_OUT_SIZE     : integer := 5;
    constant CONV2_KERNEL_SIZE  : integer := 3;
    constant CONV2_KENREL_VALUE : pixel_matrix (0 to CONV2_IN_SIZE * CONV2_OUT_SIZE - 1, 0 to CONV2_KERNEL_SIZE*CONV2_KERNEL_SIZE - 1) :=
        (others =>("00000001","00000000","11111111","00000010","00000000","11111110","00000001","00000000","11111111"));
    constant CONV2_KERNEL_NORM  : pixel_array  (0 to CONV2_IN_SIZE * CONV2_OUT_SIZE - 1) := (others =>(others => '0'));

end package;
