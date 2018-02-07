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
	signal stburst : integer := 0; --compte jusqu'à 1389
	signal stmanch : integer := 0; --compte jusqu'à 44450
	signal stbit : integer := 0;   --compte jusqu'à 88900
	signal sttrame : integer := 0; --compte jusqu'à 5700000

begin
	pburst : process(CLK, reset)
	begin

		if (reset = '0' and rising_edge(CLK)) then
			if (stburst = 347) then
				tick_burst <= '1';
				stburst <= 0;
			else
				tick_burst <= '0';
				stburst <= stburst + 1;
			end if;
	
			if (stmanch = 44450) then
				tick_manch <= '1';
				stmanch <= 0;
			else
				tick_manch <= '0';
				stmanch <= stmanch + 1;
			end if;
	
			if (stbit = 88900) then
				tick_bit <= '1';
				stbit <= 0;
			else
				tick_bit <= '0';
				stbit <= stbit + 1;
			end if;
	
			if (sttrame = 5700000) then
				tick_trame <= '1';
				sttrame <= 0;
			else
				tick_trame <= '0';
				sttrame <= sttrame + 1;
			end if;
		end if;

		if (reset = '1') then
			stburst <= 0;
			stmanch <= 0;
			stbit <= 0;
			sttrame <= 0;
		end if;

		if falling_edge(reset) then
			stburst <= 0;
			stmanch <= 0;
			stbit <= 0;
			sttrame <= 0;
			tick_burst <= '1';
			tick_manch <= '1';
			tick_bit <= '1';
			tick_trame <= '1';
		end if;

	end process pburst;

end architecture desc_tickgen;
