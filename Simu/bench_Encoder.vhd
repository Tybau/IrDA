LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity bench_encoder is
end entity bench_encoder;

architecture arch_bench_encider is
  signal CLK : in std_logic;
  signal Address : in std_logic_vector(4 downto 0);
  signal Cmd : in std_logic_vector(5 downto 0);
  signal Go : in std_logic;
  signal Tx : out std_logic;

  BEGIN

    CLK : process
      BEGIN
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
      end process CLK;
      
      Test : process(CLK)
        BEGIN
          Address <= "11010";
          Cmd <= "101100";
          wait for 100 ns;
          Go <= '1';
          wait for 300 ms;
          Go <= '0';
          wait for 100 ms;
        end process Test;
          
