LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MAE_demanchester is
  port(CLK : in std_logic;
       Reset : in std_logic;
       Tick : in std_logic;
       Signal_deburst : in std_logic;
       Is_Valid : out std_logic;
       Signal_Demanchester : out std_logic
       );
end entity MAE_demanchester;

architecture arch_MAE_demanchester of MAE_demanchester is
  type StateType is (Init, Start, Out1, Out1_valid, Out0, Out0_valid);
  signal State : StateType := Init;
  signal out_tmp : std_logic;
  
BEGIN

  process(CLK, Reset)
  BEGIN
    if Reset = '1' then
      State <= Init;
		out_tmp <= '0';
		
    elsif rising_edge(clk) then 
		if tick = '1' then
			case State is
			when Init =>
			  if Signal_deburst = '0' then
				 State <= Init;
			  elsif Signal_deburst = '1' then
				 State <= Start;
			  end if;

			when Start =>
			  if Signal_deburst = '0' then
				 State <= Out1;
			  elsif Signal_deburst = '1' then
				 State <= Out0;
			  end if;

			when Out1 =>
			  if Signal_deburst = '0' then
				 State <= Init;
			  elsif Signal_deburst = '1' then
				 State <= Out1_valid;
			  end if;

			when Out1_valid =>
			  if Signal_deburst = '0' then
				 State <= Out1;
			  elsif Signal_deburst = '1' then
				 State <= Out0;
			  end if;

			when Out0 =>
			  if Signal_deburst = '0' then
				 State <= Out0_valid;
			  elsif Signal_deburst = '1' then
				 State <= Init;
			  end if;

			when Out0_valid =>
			  if Signal_deburst = '0' then
				 State <= Out1;
			  elsif Signal_deburst = '1' then
				 State <= Out0;
			  end if;
			end case;
		end if;
    end if;
  end process;

  output : process(State, out_tmp)
  BEGIN
	
    if State = Init then
      Is_Valid <= '0';
      Signal_Demanchester <= '0';
		out_tmp <= '0';
    elsif State = Start then
      Is_Valid <= '1';
      Signal_Demanchester <= '1';
		out_tmp <= '1';
    elsif State = Out1_valid then
      Signal_Demanchester <= '1';
		Is_Valid <= '1';
		out_tmp <= '1';
    elsif State = Out0_valid then
      Signal_Demanchester <= '0';
		Is_Valid <= '1';
		out_tmp <= '0';
	 elsif State = Out0 then
		Is_Valid <= '1';
		Signal_Demanchester <= out_tmp;
	 elsif State = Out1 then
		Is_Valid <= '1';
		Signal_Demanchester <= out_tmp;
	 else 
	   Signal_Demanchester <= '0';
	   Is_Valid <= '0';
		out_tmp <= '0';
    end if;
  end process output;
end architecture;
  
    
  
