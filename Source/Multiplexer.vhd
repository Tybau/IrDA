LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Multiplexer IS
	PORT(
		manch: IN std_logic;
		not_manch: IN std_logic;
		enable: IN std_logic;
		trame: IN std_logic;
		manch_trame: OUT std_logic;
	);
END ENTITY Multiplexer;

ARCHITECTURE Behavioral OF Multiplexer IS

	BEGIN
		if(enable = '1' and trame = '1') then
			manch_trame <= manch;
		else
			manch_trame <= not_manch;
		end if;
END ARCHITECTURE Behavioral;
