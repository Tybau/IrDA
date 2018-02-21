library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MAE_emission is
	port(
		address: in std_logic_vector (4 downto 0);
		cmd: in std_logic_vector (5 downto 0);
		clk, go, start, tick, rst: in std_logic;
		out_trame, clear, enable: out std_logic
	);
end entity MAE_emission;

architecture desc_MAE_emission of MAE_emission is
	type State IS (State_Begin, State_Clear, State_Init, State_Send, State_Close);
	signal EF: State := State_Begin;
	signal toggle : std_logic := '1';
	signal reg : std_logic_vector (13 downto 0);
	signal i: integer;
begin
	process(clk,rst)
	begin
	if rst = '1' then
			EF <= State_Begin;
			toggle <= '1';
			enable <= '0';
			out_trame <= '0';
			clear <= '0';
			i<= 13;
	elsif rising_edge(clk) then
			case EF is
				when State_Begin =>
					if (go = '1') then
						EF <= State_Clear;
					else
						EF <= State_Begin;
					end if;
					enable <= '0';
					out_trame <= '0';
					clear <= '0';
				when State_Clear =>
					EF <= State_Init;
					toggle <= not(toggle);
					clear <= '1';
				when State_Init =>
					if (tick = '1') then
						EF <= State_Send;
					end if;
					clear <= '0';
					i <= 13;
					reg <= "11" & toggle & address & cmd;
				when State_Send =>
					if (tick = '1' and i /= -1) then
						enable <= '1';
						out_trame <= reg(i);
						i <= i - 1;
					elsif (tick = '1' and i = -1) then
						EF <= State_Close;
					end if;
				when State_Close =>
					if (go = '1' and start = '1') then
						EF <= State_Init;
					elsif (go = '1' and start = '0') then
						EF <= State_Close;
					elsif (go = '0') then
						EF <= State_Begin;
					end if;
					enable <= '0';
					out_trame <= '0';
				when others => 
					EF <= State_Begin;
				end case;
			end if;
	end process;
end architecture desc_MAE_emission;
