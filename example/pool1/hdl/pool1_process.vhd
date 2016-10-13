library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity pool1_process is
    generic(
        PIXEL_SIZE    :   integer ;
        IMAGE_WIDTH   :   integer ;
        KERNEL_SIZE   :   integer ;
        NB_IN_FLOWS   :   integer
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;

        in_data       : in  pixel_array     (0 to NB_IN_FLOWS - 1);
        in_dv         : in  std_logic_vector(0 to NB_IN_FLOWS - 1);
        in_fv         : in  std_logic_vector(0 to NB_IN_FLOWS - 1);

        out_data      : out pixel_array     (0 to NB_IN_FLOWS - 1);
        out_dv        : out std_logic_vector(0 to NB_IN_FLOWS - 1);
        out_fv        : out std_logic_vector(0 to NB_IN_FLOWS - 1)
    );
end entity;

architecture STRUCTURAL of pool1_process is

    --------------------------------------------------------------------------------
    -- COMPONENTS
    --------------------------------------------------------------------------------
    component poolLayer
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        KERNEL_SIZE   :   integer;
        NB_IN_FLOWS   :   integer
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;

        in_data       : in  pixel_array      (0 to NB_IN_FLOWS - 1);
        in_dv         : in  std_logic_vector (0 to NB_IN_FLOWS - 1);
        in_fv         : in  std_logic_vector (0 to NB_IN_FLOWS - 1);

        out_data      : out pixel_array      (0 to NB_IN_FLOWS - 1);
        out_dv        : out std_logic_vector (0 to NB_IN_FLOWS - 1);
        out_fv        : out std_logic_vector (0 to NB_IN_FLOWS - 1)
    );
    end component;




    begin


        inst_poolLayer : poolLayer
        generic map(
            PIXEL_SIZE    => PIXEL_SIZE,
            IMAGE_WIDTH   => IMAGE_WIDTH,
            KERNEL_SIZE   => KERNEL_SIZE,
            NB_IN_FLOWS   => NB_IN_FLOWS
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
