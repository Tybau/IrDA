LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Manchester_Generator IS
	PORT(
		Tick: IN std_logic;
		CLK: IN std_logic;
		Out: OUT std_logic
	);
END ENTITY Manchester_Generator;

ARCHITECTURE Behavioral OF Manchester_Generator IS

END ARCHITECTURE Behavioral;
