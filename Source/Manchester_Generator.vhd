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
	SIGNAL Prev_state: std_logic := '0';

	BEGIN
		Out_manch <= Prev_state;
		PROCESS(Tick)
		BEGIN
			if(rising_edge(Tick)) then
				Prev_state <= NOT Prev_state;
			end if;
		END PROCESS;
END ARCHITECTURE Behavioral;
