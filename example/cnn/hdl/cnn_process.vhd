library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;
    use work.params.all;

entity cnn_process is
    generic(
        PIXEL_SIZE    :   integer ;
        IMAGE_WIDTH   :   integer
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;

        in_data       : in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
        in_dv         : in  std_logic;
        in_fv         : in  std_logic;

        out1_data     : in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out1_dv       : in  std_logic;
        out1_fv       : in  std_logic;

        out1_data     : in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out1_dv       : in  std_logic;
        out1_fv       : in  std_logic

    );
end entity;
