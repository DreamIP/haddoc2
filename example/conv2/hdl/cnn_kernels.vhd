library ieee;
	use	ieee.std_logic_1164.all;
library work;
    use work.cnn_types.all;

package cnn_kernels is
    constant W_CONV2 : kernel_array (0 to 1279) :=
        (others=>
        ("00000001","00000000","11111111","00000010","00000000","11111110","00000001","00000000","11111111")
        );
constant N_CONV2 : pixel_array (0 to 1279) := (others =>(others => '0'));

end package;
