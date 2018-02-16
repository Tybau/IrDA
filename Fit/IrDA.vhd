LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity IrDA is
	port(
		CLK, rst : in std_logic;
		Address_in : in std_logic_vector(4 downto 0);
		Cmd_in : in std_logic_vector(5 downto 0);
		Go : in std_logic;
		Address_out : out std_logic_vector(4 downto 0);
		Cmd_out : out std_logic_vector(5 downto 0);
		error_sig : out std_logic;
		toggle : out std_logic;
		go_out : out std_logic;
		enable : out std_logic;
		Tx_out : out std_logic
	);
end entity IrDA;

architecture test_IrDA of IrDA is
  signal Tx : std_logic;
BEGIN
  Tx_out <= Tx;
  go_out <= go;
  encoder : entity work.Encoder(behavioral)
    port map(CLK => CLK, rst => rst ,Address => Address_in, Cmd => Cmd_in, Go => Go, Tx => Tx);
  decoder : entity work.decoder(arch_decoder)
    port map(signal_in => Tx, CLK => CLK, reset => rst, enable => enable, address => Address_out, command => Cmd_out, toggle => toggle, error_sig => error_sig);
end architecture test_IrDA;