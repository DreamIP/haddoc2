-- **************************************************************************
-- SYNCHRO enable avec fin de ligne
-- **************************************************************************
-- 
-- 16/10/2014 - creation
--------------------------------------------------------------------
-- TODO: Supprmier machine d'états => possibilité de mettre à jour le reg seulement sur le front descendant de fv 
--		: A verifier !

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fv_synchro_signal is
  port(
	fv_i: in std_logic;
	signal_i : in std_logic;
	signal_o: out std_logic;
	clk_i :in std_logic;
	rst_n_i :in std_logic
);
end fv_synchro_signal;

architecture rtl of fv_synchro_signal is

type en_state_t is (WaitforSignal,WaitNextFrame,Run,WaitForEndFrame);
signal en_state : en_state_t := WaitforSignal;

signal enable_s : std_logic :='0';
signal fv_r : std_logic := '0';

begin
-- This process synchronize signal with flow valid
ENABLE_inst: process  (clk_i, rst_n_i) 
begin
	if (rst_n_i = '0') then	
		en_state <= WaitforSignal;
		signal_o <='0';
	elsif rising_edge(clk_i) then
		fv_r <= fv_i;
		case en_state is

			when WaitforSignal =>
			
				if (signal_i = '1') then
					-- wait for the next frame
					en_state <= WaitNextFrame;
				end if;
				
			when WaitNextFrame =>
			
				if (fv_i='0') then
					signal_o <= '1';
					en_state <= Run;
				end if;
			
			when Run =>
				
				if (signal_i ='0') then
					en_state <= WaitForEndFrame;
				end if;
				
			when WaitForEndFrame =>
				
				if (fv_r ='1' and fv_i='0') then
					signal_o <= '0';
					en_state <= WaitforSignal;
				end if;
		end case;
	end if;
end process;

end architecture;
