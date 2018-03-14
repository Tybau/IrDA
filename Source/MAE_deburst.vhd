library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MAE_deburst is
	port(
		clk, tick, trame_burst, rst: in std_logic;
		trame_deburst: out std_logic
	);
end entity MAE_deburst;

architecture desc_MAE_deburst of MAE_deburst is
  signal cmpt : integer;
  
begin
	process(clk, rst)
	begin
		if (rst = '1') then
				cmpt <= 0;
				trame_deburst <= '0';
		elsif(rising_edge(clk)) then
			if (tick = '1') then
				if (trame_burst = '1') then
				  cmpt <= 16;
				  trame_deburst <= '1';
				else
				  if (cmpt > 0) then
				    trame_deburst <= '1';
				    cmpt <= cmpt - 1;
				  else
				    trame_deburst <= '0';
				    cmpt <= 0;
				  end if;
				end if;				  
			end if;
		end if;
	end process;
end architecture desc_MAE_deburst;
