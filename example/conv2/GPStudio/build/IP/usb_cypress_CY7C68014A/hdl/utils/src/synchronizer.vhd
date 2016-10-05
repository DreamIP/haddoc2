-- **************************************************************************
--	READ FLOW
-- **************************************************************************
-- Ce composant est connect� � un com_flow_fifo en entr�e et � un processing (FV/LV/Data) en sortie
-- 
-- 16/10/2014 - creation
--------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity synchronizer is
  generic (
	CDC_SYNC_FF_CHAIN_DEPTH: integer := 2 -- CDC Flip flop Chain depth
    );
  port(
	signal_i : in std_logic;
	signal_o : out std_logic;
	clk_i: in std_logic;
	clk_o: in std_logic
    );
end synchronizer;

architecture rtl of synchronizer is

  signal signal_sync_r  : std_logic_vector(CDC_SYNC_FF_CHAIN_DEPTH-1 downto 0);
  

  
begin

	-- Clock Domain Crossing process
CDC_SYNC : process (clk_o)
begin
	if rising_edge(clk_o) then
	  signal_sync_r(0) <= signal_i;
	  for reg in 0 to CDC_SYNC_FF_CHAIN_DEPTH-2 loop
		signal_sync_r(reg+1) <= signal_sync_r(reg);
	  end loop;
	end if;
  end process;
  
  signal_o <= signal_sync_r(CDC_SYNC_FF_CHAIN_DEPTH-1);
  
  
end rtl;

