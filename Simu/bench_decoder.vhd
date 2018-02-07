LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity bench_decoder is
end entity bench_decoder;

architecture test_bench_decoder of bench_decoder is
  signal CLK : std_logic;
  signal Address_in, Address_out : std_logic_vector(4 downto 0);
  signal Cmd_in, Cmd_out : std_logic_vector(5 downto 0);
  signal Go : std_logic;
  signal Tx : std_logic;
  signal enable : std_logic;
  signal error_sig : std_logic;
  signal toggle : std_logic;
  
BEGIN

  encoder : entity work.Encoder(behavioral)
    port map(CLK => CLK, Address => Address_in, Cmd => Cmd_in, Go => Go, Tx => Tx);
  decoder : entity work.decoder(arch_decoder)
    port map(signal_in => Tx, CLK => CLK,reset => '0', enable => enable, address => Address_out, command => Cmd_out, toggle => toggle, error_sig => error_sig);
  
  cloked : process
  BEGIN
    CLK <= '0';
    wait for 10 ns;
    CLK <= '1';
    wait for 10 ns;
  end process cloked;
  
  Test : process
  BEGIN
    Go <= '0';
    Address_in <= "11010";
    Cmd_in <= "101100";
    wait for 100 ns;
    Go <= '1';
    wait for 300 ms;
    Go <= '0';
    wait for 100 ms;
  end process Test;
  
end architecture test_bench_decoder;
