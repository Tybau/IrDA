library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_MAE_deburst is
end entity tb_MAE_deburst;

architecture desc_tb_MAE_deburst of tb_MAE_deburst is
	signal clk, tick, trame_burst, trame_deburst: std_logic := '0';
begin
	test : entity work.MAE_deburst(desc_MAE_deburst) port map(
		clk => clk, tick => tick, trame_burst => trame_burst,
		trame_deburst => trame_deburst
	);
	
	clkp : process
	begin
		clk <= not(clk);
		wait for 10 ns;
	end process clkp;
	
	tickp : process
	begin
		tick <= '1';
		wait for 20 ns;
		tick <= '0';
		wait for 30 ns;
	end process tickp;
	
	tramep : process
	begin
		for i in 0 to 32 loop
      	trame_burst <= '1';
			wait for 50 ns;
			trame_burst <= '0';
			wait for 150 ns;
      end loop;

		trame_burst <= '0';
		wait for 6400 ns;
		
	end process tramep;
end architecture desc_tb_MAE_deburst;
