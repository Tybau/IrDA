LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_Manchester_Generator IS
END ENTITY tb_Manchester_Generator;

ARCHITECTURE tb_Arch_Manchester_Generator OF tb_Manchester_Generator IS
	SIGNAL Tick: std_logic := '0';
	SIGNAL CLK: std_logic := '0';
	SIGNAL Out_manch: std_logic;

BEGIN
	Man_Gen: entity work.Manchester_Generator(Behavioral)
	port map(CLK => CLK, Tick => Tick, Out_manch => Out_manch);
  
	THECLOCK: PROCESS
	BEGIN
		CLK <= NOT(CLK);
		WAIT FOR 1 ns;
	END PROCESS THECLOCK;

	TestProc: PROCESS
	BEGIN
		Tick <= '0';
		WAIT FOR 5 ns;

		Tick <= '1';
		WAIT FOR 1 ns;

		Tick <= '0';
		WAIT FOR 10 ns;

		Tick <= '1';
		WAIT FOR 1 ns;
	END PROCESS;

END tb_Arch_Manchester_Generator;
