LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity bench_encoder is
end entity bench_encoder;

architecture arch_bench_encoder of bench_encoder is
  signal CLK : std_logic;
  signal Address : std_logic_vector(4 downto 0);
  signal Cmd : std_logic_vector(5 downto 0);
  signal Go : std_logic;
  signal Tx : std_logic;
  signal rst : std_logic;
  
BEGIN

  encoder : entity work.Encoder(behavioral)
    port map(CLK => CLK, rst => rst, Address => Address, Cmd => Cmd, Go => Go, Tx => Tx);
  
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
    rst <= '1';
    Address <= "11010";
    Cmd <= "101100";
    wait for 100 ns;
    rst <= '0';
    Go <= '1';
    wait for 300 ms;
    Go <= '0';
    wait for 100 ms;
  end process Test;
  
end architecture arch_bench_encoder;

