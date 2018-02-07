LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity bench is
end entity;

architecture test of bench is
  signal CLK : std_logic;
  signal tick_trame : std_logic;
  signal tick_bit : std_logic;
  signal tick_manchester : std_logic;
  signal tick_burst : std_logic;
  signal signal_in : std_logic;
  signal signal_out : std_logic;
  signal is_valid : std_logic;
  signal clear : std_logic := '0';

BEGIN
  tick : entity work.tickgen(desc_tickgen)
    port map(CLK => CLK, reset => clear, tick_trame => tick_trame,
             tick_bit => tick_bit, tick_manch => tick_manchester,
             tick_burst => tick_burst);
  demanchester : entity work.MAE_demanchester(arch_MAE_demanchester)
    port map(CLK => CLK, reset => '0', Tick => tick_manchester, Signal_deburst => signal_in, is_valid => is_valid, Signal_Demanchester => signal_out);

  cloked : process
  BEGIN
    CLK <= '0';
    wait for 10 ns;
    CLK <= '1';
    wait for 10 ns;
  end process cloked;

  test : process
  BEGIN
    signal_in <= '0';
    wait for 444500 ns;
    signal_in <= '1';
    wait for 444500 ns;
    signal_in <= '0';
    wait for 444500 ns;
    signal_in <= '1';
    wait for 444500 ns;
    signal_in <= '1';
    wait for 444500 ns;
    signal_in <= '0';
    wait for 444500 ns;
    signal_in <= '1';
    wait for 444500 ns;
    signal_in <= '0';
    wait for 444500 ns;
    signal_in <= '1';
    wait for 444500 ns;
    signal_in <= '1';
    wait for 444500 ns;
    signal_in <= '1';
    wait for 444500 ns;
  end process test;

end architecture;
