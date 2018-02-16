library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MAE_deburst is
	port(
		clk, tick, trame_burst, rst: in std_logic;
		trame_deburst: out std_logic
	);
end entity MAE_deburst;

architecture desc_MAE_deburst of MAE_deburst is
	type State IS (E0, E1, E2, E3);
	signal EP: State := E0;
begin
	process(clk, rst)
	begin
		if(rising_edge(clk)) then
			if (rst = '1') then
				EP <= E0;
			elsif (tick = '1') then
				case EP is
					when E0 =>
						if (trame_burst = '1') then
							EP <= E1;
						else
							EP <= E0;
						end if;
						trame_deburst <= trame_burst;
					when E1 =>
						EP <= E2;
						trame_deburst <= '1';
					when E2 =>
						EP <= E3;
						trame_deburst <= '1';
					when E3 =>
						EP <= E0;
						trame_deburst <= '1';
				end case;
			end if;
		end if;
	end process;
end architecture desc_MAE_deburst;
