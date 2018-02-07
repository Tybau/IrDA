library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_MAE_decoder is
end entity tb_MAE_decoder;

architecture desc_tb_MAE_decoder of tb_MAE_decoder is
	SIGNAL is_valid: std_logic;
	SIGNAL signal_demanchester: std_logic;
	SIGNAL tick: std_logic := '1';
	SIGNAL CLK: std_logic := '0';
	SIGNAL enable: std_logic;
	SIGNAL address: std_logic_vector(4 downto 0);
	SIGNAL command: std_logic_vector(5 downto 0);
	SIGNAL toggle: std_logic;
	SIGNAL error_sig: std_logic;
begin
	test : entity work.MAE_Decoder(Behavioral)
	port map(is_valid => is_valid, signal_demanchester => signal_demanchester, tick => tick, CLK => CLK,
		enable => enable, address => address, command => command, toggle => toggle, error_sig => error_sig
	);
	
	clkp : process
	begin
		CLK <= not(CLK);
		wait for 1 ns;
	end process clkp;
	
	ticking: process
	begin
		tick <= '1';
		wait for 1 ns;
		
		tick <= '0';
		wait for 9 ns;
	end process ticking;
	
	proc_test: process
	begin
		is_valid <= '1';
		signal_demanchester <= '1';		-- BIT 1
		wait for 10 ns;
		
		signal_demanchester <= '1';		-- BIT 1
		wait for 10 ns;
		
		signal_demanchester <= '0';		-- BIT toggle
		wait for 10 ns;
		
		signal_demanchester <= '1';		-- BIT Addr0
		wait for 10 ns;
		
		signal_demanchester <= '0';		-- BIT Addr1
		wait for 10 ns;
		
		signal_demanchester <= '1';		-- BIT Addr2
		wait for 10 ns;
		
		signal_demanchester <= '1';		-- BIT Addr3
		wait for 10 ns;
		
		signal_demanchester <= '1';		-- BIT Addr4
		wait for 10 ns;
		
		signal_demanchester <= '0';		-- BIT Comm0
		wait for 10 ns;
		
		signal_demanchester <= '0';		-- BIT Comm1
		wait for 10 ns;
		
		signal_demanchester <= '0';		-- BIT Comm2
		wait for 10 ns;
		
		signal_demanchester <= '1';		-- BIT Comm3
		wait for 10 ns;
		
		signal_demanchester <= '1';		-- BIT Comm4
		wait for 10 ns;
		
		signal_demanchester <= '1';		-- BIT Comm5
		wait for 10 ns;
		
		is_valid <= '0';
		wait for 100 ns;
	end process proc_test;
end architecture desc_tb_MAE_decoder;
