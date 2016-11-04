library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity to_unsignedPixel is
    generic(
        PIXEL_SIZE  :   integer
    );

    port(
        clk         :   in  std_logic;
        reset_n     :   in  std_logic;
        enable      :   in  std_logic;
        in_data     :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);
        in_dv    	:   in  std_logic;
        in_fv    	:   in  std_logic;
        out_data    :   out std_logic_vector(PIXEL_SIZE-1 downto 0);
        out_dv    	:   out std_logic;
        out_fv    	:   out std_logic

    );
end entity;

architecture bhv of to_unsignedPixel is
    begin
    process(clk)
    begin
        if (reset_n = '0') then
            out_data <= (others=>'0');
        else
            if (enable = '1') then
                out_data <= in_data(PIXEL_SIZE-2 downto 0) & '0';
            end if;
        end if;
    out_dv <= in_dv;
    out_fv <= in_fv;
    end process;
end bhv;
