library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tickgen is
	port (CLK : in std_logic;
			reset : in std_logic;
			tick_trame : out std_logic;
			tick_bit : out std_logic;
			tick_manch : out std_logic;
			tick_burst : out std_logic);
end entity tickgen;

architecture desc_tickgen of tickgen is
	signal stburst : integer := 0;
	signal stmanch : integer := 0;
	signal stbit : integer := 0;
	signal sttrame : integer := 0;

begin
	pburst : process(CLK,reset)
	begin
		if (reset = '1') then
			stburst <= 347;
			stmanch <= 44416;
			stbit <= 88832;
			sttrame <= 5700000;
			tick_burst <= '0';
			tick_manch <= '0';
			tick_bit <= '0';
			tick_trame <= '0';
		elsif rising_edge(CLK) then
			if (stburst = 347) then
				tick_burst <= '1';
				stburst <= 1;
			else
				tick_burst <= '0';
				stburst <= stburst + 1;
			end if;
	
			if (stmanch = 44416) then
				tick_manch <= '1';
				stmanch <= 1;
			else
				tick_manch <= '0';
				stmanch <= stmanch + 1;
			end if;
	
			if (stbit = 88832) then
				tick_bit <= '1';
				stbit <= 1;
			else
				tick_bit <= '0';
				stbit <= stbit + 1;
			end if;
	
			if (sttrame = 5700000) then
				tick_trame <= '1';
				sttrame <= 1;
			else
				tick_trame <= '0';
				sttrame <= sttrame + 1;
			end if;

		end if;
	end process;

	

end architecture desc_tickgen;
