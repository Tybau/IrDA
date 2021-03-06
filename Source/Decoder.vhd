LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity decoder is
  port(signal_in : in std_logic;
       CLK : in std_logic;
       reset : in std_logic;
       enable : out std_logic;
       address : out std_logic_vector(4 downto 0);
       command : out std_logic_vector(5 downto 0);
       toggle : out std_logic;
       error_sig : out std_logic);
end entity decoder;

architecture arch_decoder of decoder is
  signal tick_trame : std_logic;
  signal tick_manchester : std_logic;
  signal tick_bit : std_logic;
  signal tick_burst : std_logic;
  signal Signal_deburst : std_logic;
  signal Is_Valid : std_logic;
  signal Signal_Demanchester : std_logic;

BEGIN

  decoder : entity work.MAE_Decoder(behavioral)
    port map (rst => reset, is_valid => is_valid, signal_demanchester => signal_demanchester,
     tick => tick_bit, CLK => CLK, enable => enable, address => address, command => command, toggle => toggle, error_sig => error_sig);
  demanchester : entity work.MAE_demanchester(arch_MAE_demanchester)
    port map (CLK => CLK, reset => Reset, Tick => tick_manchester, Signal_deburst => Signal_deburst, Is_Valid => Is_Valid, Signal_Demanchester => Signal_Demanchester);
  deburst : entity work.MAE_deburst(desc_MAE_deburst)
    port map (rst => reset, CLK => CLK, tick => tick_burst, trame_burst => signal_in, trame_deburst => Signal_deburst);
  tick_gen : entity work.tickgen(desc_tickgen)
    port map(CLK => CLK, reset => reset, tick_trame => tick_trame, tick_bit => tick_bit, tick_manch => tick_manchester, tick_burst => tick_burst);

end architecture;
