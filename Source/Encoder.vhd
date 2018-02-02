LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Encoder IS
	PORT(
		CLK: IN std_logic;
		Address: IN std_logic_vector(4 downto 0);
		Cmd: IN std_logic_vector(5 downto 0);
		Go: In std_logic;
		Tx: OUT std_logic
	);
END ENTITY Encoder;

ARCHITECTURE Behavioral OF Encoder IS
	SIGNAL tick_trame: std_logic;
	SIGNAL tick_bit: std_logic;
	SIGNAL tick_manchester: std_logic;
	SIGNAL tick_burst: std_logic;
	SIGNAL trame: std_logic;
	SIGNAL enable: std_logic;
	SIGNAL manch: std_logic;
	SIGNAL not_manch: std_logic;
	SIGNAL manch_trame: std_logic;
	SIGNAL burst: std_logic;
	SIGNAL clear: std_logic;

	BEGIN
		not_manch <= NOT manch;
		Tx <= burst AND manch_trame;

		ManchesterGenerator: entity work.Manchester_Generator(Behavioral)
			port map(Tick => tick_manchester, CLK => CLK, Out_manch => manch);

		BurstGenerator: entity work.Burst_Generator(Behavioral)
			port map(Tick => tick_burst, CLK => CLK, Out_burst => burst);

		TickGenerator: entity work.tickgen(desc_tickgen)
			port map(CLK => CLK, reset => clear, tick_trame => tick_trame,
				tick_bit => tick_bit, tick_manchester => tick_manchester,
				tick_burst => tick_burst);

		-- NEED STATE MACHINE

		-- NEED MULTIPLEXER
END ARCHITECTURE Behavioral;
