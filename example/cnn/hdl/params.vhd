library ieee;
	use	ieee.std_logic_1164.all;
library work;
    use work.cnn_types.all;

package params is

    constant CONV1_IMAGE_WIDTH  : integer := 320;
    constant CONV1_KERNEL_SIZE  : integer := 3;
    constant CONV1_LAYER_SIZE   : integer := 3;
    constant CONV1_KERNEL_NORM  : pixel_array  (0 to CONV1_LAYER_SIZE * CONV1_LAYER_SIZE - 1) := (others =>(others => '0'));

    constant POOL1_IMAGE_WIDTH  : integer := CONV1_IMAGE_WIDTH - CONV1_KERNEL_SIZE + 1;
    constant POOL1_LAYER_SIZE   : integer := CONV1_LAYER_SIZE;
    constant POOL1_KERNEL_SIZE  : integer := 2;

    constant CONV2_IMAGE_WIDTH  : integer := POOL1_IMAGE_WIDTH / 2;
    constant CONV2_LAYER_SIZE   : integer := 10;
    constant CONV2_KERNEL_SIZE  : integer := 3;
    constant CONV2_KERNEL_NORM  : pixel_array  (0 to POOL1_LAYER_SIZE * CONV2_LAYER_SIZE - 1) := (others =>(others => '0'));

    constant POOL2_IMAGE_WIDTH  : integer := CONV2_IMAGE_WIDTH - CONV2_KERNEL_SIZE + 1;
    constant POOL2_LAYER_SIZE   : integer := CONV2_LAYER_SIZE;
    constant POOL2_KERNEL_SIZE  : integer := 2;

    constant CONV1_KERNEL_VALUE : pixel_matrix (0 to CONV1_LAYER_SIZE * CONV1_LAYER_SIZE - 1, 0 to CONV1_KERNEL_SIZE*CONV1_KERNEL_SIZE - 1) :=
    (others =>("00000001","00000000","11111111","00000010","00000000","11111110","00000001","00000000","11111111"));

    constant CONV2_KERNEL_VALUE : pixel_matrix (0 to POOL1_LAYER_SIZE * CONV2_LAYER_SIZE - 1, 0 to CONV2_KERNEL_SIZE*CONV2_KERNEL_SIZE - 1) :=
    (others =>("00000001","00000000","11111111","00000010","00000000","11111110","00000001","00000000","11111111"));

end package;
