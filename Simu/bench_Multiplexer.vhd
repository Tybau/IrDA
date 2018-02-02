LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_Multiplexer IS
END ENTITY tb_Multiplexer;

ARCHITECTURE tb_Arch_Multiplexer OF tb_Multiplexer IS
	SIGNAL manch: IN std_logic;
	SIGNAL not_manch: IN std_logic;
	SIGNAL enable: IN std_logic;
	SIGNAL trame: IN std_logic;
	SIGNAL manch_trame: OUT std_logic;

BEGIN
	myMultiplexer: entity work.Multiplexer(Behavioral)
		port map(manch => manch, not_manch => not_manch, enable => enable,
			trame => trame, manch_trame => manch_trame
		);

	manch <= '1';
	not_manch <= '0';

	-- <ENABLE><TRAME>
	TestProc: PROCESS
	BEGIN
		enable <= '1';		-- 11
		trame <= '1';
		wait for 1 ns;

		trame <= '0';		-- 10
		wait for 1 ns;

		enable <= '0';		-- 00
		wait for 1 ns;

		trame <= '1';		-- 01
		wait for 1 ns;
	END PROCESS;

END tb_Arch_Multiplexer;
