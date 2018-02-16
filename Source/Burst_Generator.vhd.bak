LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY Burst_Generator IS
	PORT(
		Tick: IN std_logic;
		CLK: IN std_logic;
		Out_burst: OUT std_logic := '0'
	);
END ENTITY Burst_Generator;

ARCHITECTURE Behavioral OF Burst_Generator IS
	SIGNAL state: unsigned(1 downto 0) := (others => '0');

	BEGIN
		PROCESS(Tick)
		BEGIN
			if(rising_edge(Tick)) then
				state <= state + 1;

				if(state = 2) then			-- HIGH
					Out_burst <= '1';
				elsif(state = 3) then		-- RESET & LOW
					Out_burst <= '0';
					state <= (others => '0');
				end if;
			end if;
		END PROCESS;
END ARCHITECTURE Behavioral;
