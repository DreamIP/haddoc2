-- Converts the camera output to signals usable by Haddoc layers
-- TODO : Support a variable PIXEL_BIT_WIDTH

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_signed.all;

library work;
  use work.cnn_types.all;

entity InputLayer is
    generic(
        PIXEL_SIZE        : integer; -- Bit-width of the activations and FMs
        PIXEL_BIT_WIDTH   : integer; -- Bit-width of the input pixel
        NB_OUT_FLOWS      : integer  -- Number of channels in input
    );

    port(
        clk       :   in  std_logic;
        reset_n   :   in  std_logic;
        enable    :   in  std_logic;
        in_data   :   in  std_logic_vector(PIXEL_SIZE-1 downto 0);
        in_dv     :   in  std_logic;
        in_fv     :   in  std_logic;
        out_data  :   out pixel_array(0 to NB_OUT_FLOWS-1);
        out_dv    :   out std_logic;
        out_fv    :   out std_logic

    );
end entity;

architecture bhv of InputLayer is
    begin
      MONOCHROME_INPUT : if NB_OUT_FLOWS=1 generate
        -- Grayscale input
        process(clk)
        begin
            if (reset_n = '0') then
                out_data <= (others=>(others=>'0'));
            else
                if (enable = '1') then
                    out_data(0) <= '0' & in_data(PIXEL_SIZE-1 downto 1);
                end if;
                out_dv <= in_dv;
                out_fv <= in_fv;
            end if;
        end process;
      end generate MONOCHROME_INPUT;

      COLOR_INPUT : if NB_OUT_FLOWS=3 generate
        -- Suppose its an 8 bits color depth
        process(clk)
        begin
            if (reset_n = '0') then
                out_data <= (others=>(others=>'0'));
            else
                if (enable = '1') then
                    out_data(0) <= (2 => in_data(7), 1 => in_data(6), 0 =>in_data(5), others=>'0'); -- Red
                    out_data(1) <= (2 => in_data(4), 1 => in_data(3), 0 =>in_data(2), others=>'0');-- Green
                    out_data(2) <= (1 => in_data(1), 0 => in_data(0), others=>'0'); -- Blue
                end if;
                out_dv <= in_dv;
                out_fv <= in_fv;
            end if;
        end process;
      end generate COLOR_INPUT;
end bhv;
