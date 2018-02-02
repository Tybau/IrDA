LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_Decode IS
END ENTITY tb_Decode;

ARCHITECTURE tb_Arch_Decode OF tb_Decode IS
  SIGNAL ENABLE: STD_LOGIC := '1';
  SIGNAL RAZ, CLK: STD_LOGIC := '0';
  SIGNAL DEC: STD_LOGIC_VECTOR(10 downto 0);

BEGIN
  Test: entity work.Decode(Arch_Decode)
  port map(ENABLE => ENABLE, RAZ => RAZ, CLK => CLK, S => DEC);
  
  THECLOCK: PROCESS
  BEGIN
    CLK <= NOT(CLK);
    WAIT FOR 1 ns;
  END PROCESS THECLOCK;
  
--  MyProc: PROCESS
--  BEGIN
--    WAIT FOR 10ns;
--    ENABLE <= NOT(ENABLE);
--  END PROCESS MyProc;
END tb_Arch_Decode;
