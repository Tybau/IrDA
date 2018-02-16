LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Manchester_Generator IS
	PORT(
		Tick: IN std_logic;
		CLK: IN std_logic;
		Out_manch: OUT std_logic
	);
END ENTITY Manchester_Generator;

ARCHITECTURE Behavioral OF Manchester_Generator IS

signal manch : std_logic := '0';

BEGIN

	Out_manch <= manch;	

	PROCESS(Tick)
	BEGIN
		if(rising_edge(Tick)) then
			manch <= not manch;
			end if;
		END PROCESS;
END ARCHITECTURE Behavioral;
