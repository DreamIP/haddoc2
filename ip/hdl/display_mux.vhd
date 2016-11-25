library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;

library work;
	use work.cnn_types.all;

entity display_mux is
    generic(
        PIXEL_SIZE  : integer;
        NB_IN_FLOWS : integer
    );
    port(
        in_data     :   in  pixel_array     (0 to NB_IN_FLOWS-1 );
        in_dv    	:   in  std_logic_vector(0 to NB_IN_FLOWS-1 );
        in_fv    	:   in  std_logic_vector(0 to NB_IN_FLOWS-1 );
        sel         :   in  std_logic_vector(31  downto 0);
        out_data    :   out std_logic_vector(PIXEL_SIZE-1 downto 0);
        out_dv    	:   out std_logic;
        out_fv    	:   out std_logic
    );
end entity;

architecture bhv of display_mux is
begin

with sel select out_data <=
     in_data(0) when std_logic_vector(to_unsigned(0,32)),
     in_data(1) when std_logic_vector(to_unsigned(1,32)),
     in_data(2) when std_logic_vector(to_unsigned(2,32)),
     in_data(3) when std_logic_vector(to_unsigned(3,32)),
     in_data(4) when std_logic_vector(to_unsigned(4,32)),
     in_data(5) when std_logic_vector(to_unsigned(5,32)),
     in_data(6) when std_logic_vector(to_unsigned(6,32)),
     in_data(7) when std_logic_vector(to_unsigned(7,32)),
     in_data(8) when std_logic_vector(to_unsigned(8,32)),
     in_data(9) when std_logic_vector(to_unsigned(9,32)),
     (others=>'0') when others;

with sel select out_dv <=
    in_dv(0)    when std_logic_vector(to_unsigned(0,32)),
    in_dv(1)    when std_logic_vector(to_unsigned(1,32)),
    in_dv(2)    when std_logic_vector(to_unsigned(2,32)),
    in_dv(3)    when std_logic_vector(to_unsigned(3,32)),
    in_dv(4)    when std_logic_vector(to_unsigned(4,32)),
    in_dv(5)    when std_logic_vector(to_unsigned(5,32)),
    in_dv(6)    when std_logic_vector(to_unsigned(6,32)),
    in_dv(7)    when std_logic_vector(to_unsigned(7,32)),
    in_dv(8)    when std_logic_vector(to_unsigned(8,32)),
    in_dv(9)    when std_logic_vector(to_unsigned(9,32)),
    '0'         when others;


with sel select out_fv <=
    in_fv(0)    when std_logic_vector(to_unsigned(0,32)),
    in_fv(1)    when std_logic_vector(to_unsigned(1,32)),
    in_fv(2)    when std_logic_vector(to_unsigned(2,32)),
    in_fv(3)    when std_logic_vector(to_unsigned(3,32)),
    in_fv(4)    when std_logic_vector(to_unsigned(4,32)),
    in_fv(5)    when std_logic_vector(to_unsigned(5,32)),
    in_fv(6)    when std_logic_vector(to_unsigned(6,32)),
    in_fv(7)    when std_logic_vector(to_unsigned(7,32)),
    in_fv(8)    when std_logic_vector(to_unsigned(8,32)),
    in_fv(9)    when std_logic_vector(to_unsigned(9,32)),
    '0'         when others;
end bhv;
