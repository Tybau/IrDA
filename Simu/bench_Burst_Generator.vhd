LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_Burst_Generator IS
END ENTITY tb_Burst_Generator;

ARCHITECTURE tb_Arch_Burst_Generator OF tb_Burst_Generator IS
	SIGNAL Tick: std_logic := '0';
	SIGNAL CLK: std_logic := '0';
	SIGNAL Out_burst: std_logic;

BEGIN
	Burst_Gen: entity work.Burst_Generator(Behavioral)
	port map(CLK => CLK, Tick => Tick, Out_burst => Out_burst);
  
	THECLOCK: PROCESS
	BEGIN
		CLK <= NOT(CLK);
		WAIT FOR 1 ns;
	END PROCESS THECLOCK;

	TestProc: PROCESS
	BEGIN
		Tick <= '0';		-- Tick 1 sleep
		WAIT FOR 2 ns;

		Tick <= '1';		-- Tick 2 sleep
		WAIT FOR 2 ns;

		Tick <= '0';		-- Tick 3 HIGH
		WAIT FOR 2 ns;

		Tick <= '1';		-- Tick 4 LOW
		WAIT FOR 2 ns;
	END PROCESS;

END tb_Arch_Burst_Generator;
