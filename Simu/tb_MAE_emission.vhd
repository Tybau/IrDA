library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_MAE_emission is
end entity tb_MAE_emission;

architecture desc_tb_MAE_emission of tb_MAE_emission is
	signal clk, tick, start, go: std_logic := '0';
	signal address: std_logic_vector (4 downto 0);
	signal cmd: std_logic_vector (5 downto 0);
	
	signal out_trame, clear, enable: std_logic;
begin
	test : entity work.MAE_emission(desc_MAE_emission) port map(
		address => address,
		cmd => cmd,
		clk => clk, go => go, start => start, tick => tick,
		out_trame => out_trame, clear => clear, enable => enable
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
		wait for 1 ms;
	end process tickp;
	
	tramep : process
	begin
		start <= '1';
		wait for 20 ns;
		start <= '0';
		wait for 114 ms;
	end process tramep;

	rego : process
	begin
		go <= '1';
		wait for 300 ms;
		go <= '0';
		wait for 20 ns;
	end process rego;
	
	address <= "10101";
	cmd <= "110011";
end architecture desc_tb_MAE_emission;
