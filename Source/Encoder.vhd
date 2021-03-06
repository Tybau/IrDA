LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Encoder IS
	PORT(
		CLK, rst: IN std_logic;
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
	SIGNAL manch_trame: std_logic;
	SIGNAL burst: std_logic;
	SIGNAL clear: std_logic;

	BEGIN
		manch_trame <= manch xor trame;
		Tx <= enable and manch_trame and burst;

		ManchesterGenerator : entity work.Manchester_Generator(Behavioral)
			port map(Tick => tick_manchester, CLK => CLK, Out_manch => manch, rst => rst, clear => clear);

		BurstGenerator : entity work.Burst_Generator(Behavioral)
			port map(Tick => tick_burst, CLK => CLK, Out_burst => burst, rst => rst);

		TickGenerator : entity work.tickgen(desc_tickgen)
			port map(CLK => CLK, reset => clear, tick_trame => tick_trame,
				tick_bit => tick_bit, tick_manch => tick_manchester,
				tick_burst => tick_burst);

		MAE_emission : entity work.MAE_emission(desc_MAE_emission)
			port map(address => address, Cmd => Cmd, clk => clk, go => go, 
			start => tick_trame, tick => tick_bit, out_trame => trame, 
			clear => clear, enable => enable, rst => rst);

END ARCHITECTURE Behavioral;
