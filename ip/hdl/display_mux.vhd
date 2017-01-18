library ieee;
	use	ieee.std_logic_1164.all;
	use	ieee.numeric_std.all;
    use ieee.math_real.all;


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
    out_data <= in_data(to_integer(unsigned(sel)));
    out_dv   <= in_dv  (to_integer(unsigned(sel)));
    out_fv   <= in_fv  (to_integer(unsigned(sel)));
end bhv;
