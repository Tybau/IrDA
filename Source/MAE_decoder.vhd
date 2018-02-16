LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MAE_Decoder IS
	PORT(
		is_valid: IN std_logic;
		signal_demanchester: IN std_logic;
		tick: IN std_logic;
		CLK, rst: IN std_logic;
		enable: OUT std_logic;
		address: OUT std_logic_vector(4 downto 0);
		command: OUT std_logic_vector(5 downto 0);
		toggle: OUT std_logic;
		error_sig: OUT std_logic
	);
END ENTITY MAE_Decoder;

ARCHITECTURE Behavioral OF MAE_Decoder IS
	type State IS (State_Begin, State_Init, State_Extract, State_Send, State_Error);
	SIGNAL EF: State := State_Begin;
	SIGNAL data: std_logic_vector(12 downto 0) := (others => '0');
	SIGNAL i: INTEGER;																-- Iterator
	
	BEGIN
		toggle <= data(11);
		address <= data(10 downto 6);
		command <= data(5 downto 0);
		
		PROCESS(CLK, rst)
		BEGIN
		if rising_edge(CLK) then
			if rst = '1' then
				EF <= State_Begin;
				data <= (others => '0');
			else
				CASE EF IS
					WHEN State_Begin =>
						enable <= '0';
						error_sig <= '0';
						if(signal_demanchester = '1') then
							EF <= State_Init;
						end if;

					WHEN State_Init =>
						if(tick = '1') then
							data <= (others => '0');
							i <= 12;
							if(signal_demanchester = '0' OR is_valid = '0') then
								EF <= State_Error;
							elsif(signal_demanchester = '1') then
								EF <= State_Extract;
							end if;
						end if;

					WHEN State_Extract =>
						if(tick = '1') then
							if(is_valid = '1' and i /= -1) then
								data(i) <= signal_demanchester;
								i <= i - 1;
							elsif(i = -1) then
								EF <= State_Send;
							else
								EF <= State_Error;
							end if;
						end if;

					WHEN State_Send =>
						enable <= '1';
						EF <= State_Begin;

					WHEN State_Error =>
						error_sig <= '1';
						EF <= State_Begin;
				END CASE;
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE Behavioral;
