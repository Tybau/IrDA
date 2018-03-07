LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Manchester_Generator IS
	PORT(
		Tick: IN std_logic;
		CLK,rst,clear: IN std_logic;
		Out_manch: OUT std_logic
	);
END ENTITY Manchester_Generator;

ARCHITECTURE Behavioral OF Manchester_Generator IS

signal manch : std_logic := '0';

BEGIN

	Out_manch <= manch;	

	PROCESS(clk,rst,clear)
	BEGIN
		if rst = '1' or clear = '1' then 
			manch <= '0';
		elsif(rising_edge(clk)) then
			if(Tick ='1') then
				manch <= not manch;
			end if;
		end if;
		END PROCESS;
END ARCHITECTURE Behavioral;
