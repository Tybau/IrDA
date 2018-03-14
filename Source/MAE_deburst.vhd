library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MAE_deburst is
	port(
		clk, tick, trame_burst, rst: in std_logic;
		trame_deburst: out std_logic
	);
end entity MAE_deburst;

architecture desc_MAE_deburst of MAE_deburst is
  signal cmpt_stop : integer;
  signal cmpt_start : integer;
  
begin
	process(clk, rst)
	begin
		if (rst = '1') then
				cmpt_stop <= 0;
				cmpt_start <= 0;
				trame_deburst <= '0';
		elsif(rising_edge(clk)) then
			if (tick = '1') then
			  
				if (trame_burst = '1') then
				  cmpt_stop <= 16;
				else
				  if (cmpt_stop > 0) then
				    cmpt_stop <= cmpt_stop - 1;
				  end if;
				end if;
				  
				if (cmpt_stop > 0) then
				  cmpt_start <= cmpt_start + 1;
				else
				  cmpt_start <= 0;
				end if;
				  
				if (cmpt_start > 12) then
				  trame_deburst <= '1';
				else
				  trame_deburst <= '0';
				
				end if;				  
			end if;
		end if;
	end process;
end architecture desc_MAE_deburst;
