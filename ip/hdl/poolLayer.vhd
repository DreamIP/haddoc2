---------------------------------------------------------------------------------
-- Design Name 	: poolLayer
-- Coder       	: Kamel ABDELOUAHAB
-- Institution 	: Institut Pascal  - 2016
---------------------------------------------------------------------------------

library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity poolLayer is
    generic(
        PIXEL_SIZE    :   integer;
        IMAGE_WIDTH   :   integer;
        KERNEL_SIZE   :   integer;
        NB_OUT_FLOWS  :   integer
    );

    port(
        clk	          : in  std_logic;
        reset_n	      : in  std_logic;
        enable        : in  std_logic;
        in_data       : in  pixel_array      (0 to NB_OUT_FLOWS - 1);
        in_dv         : in  std_logic_vector (0 to NB_OUT_FLOWS - 1);
        in_fv         : in  std_logic_vector (0 to NB_OUT_FLOWS - 1);
        out_data      : out pixel_array      (0 to NB_OUT_FLOWS - 1);
        out_dv        : out std_logic_vector (0 to NB_OUT_FLOWS - 1);
        out_fv        : out std_logic_vector (0 to NB_OUT_FLOWS - 1)
    );
end entity;

architecture STRUCTURAL of poolLayer is
    --------------------------------------------------------------------------------
    -- COMPONENTS
    --------------------------------------------------------------------------------
    component maxPool
    generic(
        PIXEL_SIZE      :   integer;
        IMAGE_WIDTH     :   integer;
        KERNEL_SIZE     :   integer
    );

    port(
        clk	            :	in 	std_logic;
        reset_n	        :	in	std_logic;
        enable          :   in  std_logic;
        in_data         :   in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
        in_dv           :   in  std_logic;
        in_fv           :   in  std_logic;
        out_data        :   out std_logic_vector (PIXEL_SIZE - 1 downto 0);
        out_dv          :   out std_logic;
        out_fv          :   out std_logic
    );

    end component;
    --------------------------------------------------------------------------------
    begin

        generate_maxPool : for i in 0 to NB_OUT_FLOWS-1 generate
            inst_maxPool : maxPool
            generic map(
                PIXEL_SIZE   =>  PIXEL_SIZE,
                IMAGE_WIDTH  =>  IMAGE_WIDTH,
                KERNEL_SIZE  =>  KERNEL_SIZE
            )

            port map(
                clk          => clk,
                reset_n      => reset_n,
                enable       => enable,
                in_data      => in_data(i),
                in_dv        => in_dv(i),
                in_fv        => in_fv(i),
                out_data     => out_data(i),
                out_dv       => out_dv(i),
                out_fv       => out_fv(i)
            );
        end generate;
end STRUCTURAL;
