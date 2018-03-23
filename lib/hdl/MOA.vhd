-- Design of a Multi-Operand-Adder block
-- This is a naive implementation with binary adder trees
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_signed.all;
library work;
    use work.cnn_types.all;

entity MOA is
    generic(
      PIXEL_SIZE    : integer;
      SUM_WIDTH     : integer;
      NUM_OPERANDS  : integer;
      BIAS_VALUE    : std_logic_vector
    );

    port(
      clk      : in  std_logic;
      reset_n  : in  std_logic;
      enable   : in  std_logic;
      in_data  : in  prod_array (0 to NUM_OPERANDS - 1);
      in_valid : in  std_logic;
      out_data : out std_logic_vector (SUM_WIDTH-1 downto 0);
      out_valid: out std_logic
    );
end MOA;

architecture rtl of MOA is
-- Implementation of Multi Operand Adder with Adder trees
  signal s_acc : std_logic_vector (SUM_WIDTH-1 downto 0);
  begin
  add_process : process(clk)
  variable v_acc : std_logic_vector (SUM_WIDTH-1 downto 0) := (others=>'0');
  begin
    if (rising_edge(clk) and enable='1') then
      if (in_valid = '1') then
          acc_loop : for i in 0 to NUM_OPERANDS-1 loop
            v_acc := v_acc + in_data(i);
          end loop acc_loop;
       end if;
      end if;
  s_acc <= v_acc;
  out_valid <= in_valid;
  end process;
  out_data <= s_acc + BIAS_VALUE;
end architecture;
