library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test is
end entity;

architecture test_bench of test is

	signal clk : std_logic := '0';
	signal reset :  std_logic := '0';
	signal tick_trame : std_logic := '0';
	signal tick_bit : std_logic := '0';
	signal tick_manch : std_logic := '0';
	signal tick_burst : std_logic := '0';

begin

	C0 : entity work.tickgen(desc_tickgen)
	port map (CLK => clk, reset => reset, tick_trame => tick_trame, tick_bit => tick_bit, tick_manch => tick_manch, tick_burst => tick_burst);
	
	process
	begin
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
	end process;
	
	process
	begin
		reset <= '0';
		wait for 10 ms;
		reset <= '1';
		wait for 100 ns;
	end process;

end architecture;
