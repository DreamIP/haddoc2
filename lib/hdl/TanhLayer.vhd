library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library work;
use work.cnn_types.all;

entity TanhLayer is
  generic(
    PIXEL_SIZE : integer;
    SUM_WIDTH  : integer
    );
  port(
    in_data  : in  std_logic_vector (SUM_WIDTH-1 downto 0);
    out_data : out std_logic_vector (PIXEL_SIZE-1 downto 0)
    );
end entity;

architecture Bhv of TanhLayer is

-- Piecewise implementation of TanH
begin
  out_data <= std_logic_vector(to_signed(-V2, PIXEL_SIZE)) when (signed(in_data) < to_signed(-T2, SUM_WIDTH)) else
              std_logic_vector(to_signed(V2, PIXEL_SIZE)) when (signed(in_data) > to_signed(T2, SUM_WIDTH)) else
              in_data(PIXEL_SIZE-1 downto 0);
end architecture;
