library ieee;
	use	ieee.std_logic_1164.all;
library work;
    use work.cnn_types.all;

package params is


    -- CONV1
    constant CONV1_LAYER_SIZE   : integer := 5;
    constant CONV1_KERNEL_SIZE  : integer := 5;
    constant CONV1_IMAGE_WIDTH  : integer := 320;
    constant CONV1_KERNEL_NORM  : pixel_array  (0 to CONV1_LAYER_SIZE * CONV1_LAYER_SIZE - 1) := (others =>"00000110");
    constant CONV1_KERNEL_VALUE : pixel_matrix (0 to CONV1_LAYER_SIZE * CONV1_LAYER_SIZE - 1, 0 to CONV1_KERNEL_SIZE*CONV1_KERNEL_SIZE - 1) :=
        (others =>(others => "00000001"));
    constant CONV1_BIAS         : pixel_array  (0 to CONV1_LAYER_SIZE - 1) := (others =>"00001000");

    -- POOL1

    constant POOL1_LAYER_SIZE   : integer := CONV1_LAYER_SIZE;
    constant POOL1_KERNEL_SIZE  : integer := 2;
    constant POOL1_IMAGE_WIDTH  : integer := CONV1_IMAGE_WIDTH - CONV1_KERNEL_SIZE + 1;

    --CONV2
    constant CONV2_LAYER_SIZE   : integer := 10;
    constant CONV2_KERNEL_SIZE  : integer := 5;
    constant CONV2_IMAGE_WIDTH  : integer := POOL1_IMAGE_WIDTH / 2;
    constant CONV2_KERNEL_NORM  : pixel_array  (0 to POOL1_LAYER_SIZE * CONV2_LAYER_SIZE - 1) := (others =>"00000110");
    constant CONV2_BIAS         : pixel_array  (0 to CONV2_LAYER_SIZE - 1) := (others =>"00001000");
    constant CONV2_KERNEL_VALUE : pixel_matrix (0 to POOL1_LAYER_SIZE * CONV2_LAYER_SIZE - 1, 0 to CONV2_KERNEL_SIZE*CONV2_KERNEL_SIZE - 1) :=
        (others =>(others => "00000001"));

    --POOL2
    constant POOL2_LAYER_SIZE   : integer := CONV2_LAYER_SIZE;
    constant POOL2_KERNEL_SIZE  : integer := 2;
    constant POOL2_IMAGE_WIDTH  : integer := CONV2_IMAGE_WIDTH - CONV2_KERNEL_SIZE + 1;

    --CONV3
    constant CONV3_LAYER_SIZE   : integer := 20;
    constant CONV3_KERNEL_SIZE  : integer := 5;
    constant CONV3_IMAGE_WIDTH  : integer := POOL2_IMAGE_WIDTH / 2;
    constant CONV3_KERNEL_NORM  : pixel_array  (0 to POOL2_LAYER_SIZE * CONV3_LAYER_SIZE - 1) := (others =>"00000110");
    constant CONV3_BIAS         : pixel_array  (0 to CONV3_LAYER_SIZE - 1) := (others =>"00001000");
    constant CONV3_KERNEL_VALUE : pixel_matrix (0 to POOL2_LAYER_SIZE * CONV3_LAYER_SIZE - 1, 0 to CONV2_KERNEL_SIZE*CONV2_KERNEL_SIZE - 1) :=
        (others =>(others => "00000001"));


    --FC
    constant FC_LAYER_SIZE      : integer := 2;
    constant FC_IMAGE_WIDTH     : integer := CONV3_IMAGE_WIDTH;
    constant FC_FEATURE_SIZE    : integer := 5;
    constant FC_KERNEL_NORM     : pixel_array  (0 to CONV3_LAYER_SIZE * FC_LAYER_SIZE - 1)    := (others =>"00000010");
    constant FC_BIAS            : pixel_array  (0 to FC_LAYER_SIZE - 1) := (others =>"00001000");
    constant FC_KERNEL_VALUE    : pixel_matrix (0 to CONV3_LAYER_SIZE * FC_LAYER_SIZE - 1, 0 to FC_FEATURE_SIZE*FC_FEATURE_SIZE - 1) :=
        (others =>(others => "00000001"));

end package;
