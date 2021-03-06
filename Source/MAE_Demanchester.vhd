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
  type StateType is (Init, Start, valid0, valid1, suit00, suit01, suit10, suit11);
  signal State : StateType := Init;
  
BEGIN

  process(CLK, Reset)
  BEGIN
    if Reset = '1' then
      State <= Init;
		
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
    				  State <= suit11;
    			  elsif Signal_deburst = '1' then
    				  State <= suit10;
    			  end if;
    			     
    			when valid0 =>
    			  if Signal_deburst = '0' then
    				  State <= suit01;
    			  elsif Signal_deburst = '1' then
    				  State <= suit00;
    			  end if;
    			      			  
    			when valid1 =>
    			  if Signal_deburst = '0' then
    				  State <= suit11;
    			  elsif Signal_deburst = '1' then
    				  State <= suit10;
    			  end if;
    			      			  
    			when suit00 =>
    			  if Signal_deburst = '0' then
    				  State <= valid0;
    			  elsif Signal_deburst = '1' then
    				  State <= init;
    			  end if;
    			      			  
    			when suit01 =>
    			  if Signal_deburst = '0' then
    				  State <= init;
    			  elsif Signal_deburst = '1' then
    				  State <= valid1;
    			  end if;
    			  	  
    			when suit10 =>
    			  if Signal_deburst = '0' then
    				  State <= valid0;
    			  elsif Signal_deburst = '1' then
    				  State <= init;
    			  end if;
    			     			
    			when suit11 =>
    			  if Signal_deburst = '1' then
    				  State <= valid1;
    			  elsif Signal_deburst = '0' then
    				  State <= init;
    			  end if;
    			     			  
 			 when others =>
 			   State <= init;
 			    
 			 end case;
    		end if;
    end if;
  end process;
  
  process(State)
  BEGIN
    case State is
    when Init =>
      Signal_Demanchester <= '0';
 			is_Valid <= '0';
 			
    when Start =>
      Signal_Demanchester <= '1';
 			is_Valid <= '1'; 
 			
 		when valid0 =>
 		  signal_Demanchester <= '0';
    		is_Valid <= '1';
 		
 		when valid1 =>
 		  signal_Demanchester <= '1';
 			is_Valid <= '1';
 		
 		when suit00 =>
 		  signal_Demanchester <= '0';
   			is_Valid <= '1';
 		
 		when suit01 =>
 		  signal_Demanchester <= '0';
 			is_Valid <= '1';
 		
 		when suit10 =>
 		  signal_Demanchester <= '1';
 			is_Valid <= '1';
 		
 		when suit11 =>
 		  signal_Demanchester <= '1';
 			is_Valid <= '1';
 			
 		when others =>
 		  Signal_Demanchester <= '0';
 			is_Valid <= '0';
 			
 		end case;  
 	end process;    
end architecture;
  
    
  
