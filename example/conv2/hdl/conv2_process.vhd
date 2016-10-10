library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;
    use work.cnn_kernels.all;

entity conv2_process is
    generic(
        PIXEL_SIZE    :   integer := 8;
        IMAGE_WIDTH   :   integer := 320;
        KERNEL_SIZE   :   integer := 3;
        NB_IN_FLOWS   :   integer := 3;
        NB_OUT_FLOWS  :   integer := 5
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;

        in_data       : in  pixel_array     (0 to NB_IN_FLOWS - 1);
        in_dv         : in  std_logic_vector(0 to NB_IN_FLOWS - 1);
        in_fv         : in  std_logic_vector(0 to NB_IN_FLOWS - 1);

        out_data      : out pixel_array     (0 to NB_OUT_FLOWS - 1);
        out_dv        : out std_logic_vector(0 to NB_OUT_FLOWS - 1);
        out_fv        : out std_logic_vector(0 to NB_OUT_FLOWS - 1)
    );
end entity;

architecture STRUCTURAL of conv2_process is

    --------------------------------------------------------------------------------
    -- COMPONENTS
    --------------------------------------------------------------------------------
    component convLayer
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        KERNEL_SIZE   :   integer;
        NB_IN_FLOWS   :   integer;
        NB_OUT_FLOWS  :   integer;
        W_CONV_PARAMS :   kernel_array;
        N_CONV_PARAMS :   pixel_array
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;

        in_data       : in  pixel_array     (0 to NB_IN_FLOWS - 1);
        in_dv         : in  std_logic_vector(0 to NB_IN_FLOWS - 1);
        in_fv         : in  std_logic_vector(0 to NB_IN_FLOWS - 1);

        out_data      : out pixel_array     (0 to NB_OUT_FLOWS - 1);
        out_dv        : out std_logic_vector(0 to NB_OUT_FLOWS - 1);
        out_fv        : out std_logic_vector(0 to NB_OUT_FLOWS - 1)
    );
    end component;

    begin
        inst_convLayer : convLayer
        generic map(
            PIXEL_SIZE    => PIXEL_SIZE,
            IMAGE_WIDTH   => IMAGE_WIDTH,
            KERNEL_SIZE   => KERNEL_SIZE,
            NB_IN_FLOWS   => NB_IN_FLOWS,
            NB_OUT_FLOWS  => NB_OUT_FLOWS,
            W_CONV_PARAMS => W_CONV2,
            N_CONV_PARAMS => N_CONV2
        )
        port map(
            clk	          =>  clk,
            reset_n	      =>  reset_n,
            enable        =>  enable,
            in_data       =>  in_data,
            in_dv         =>  in_dv,
            in_fv         =>  in_fv,
            out_data      =>  out_data,
            out_dv        =>  out_dv,
            out_fv        =>  out_fv
        );

    end architecture;
