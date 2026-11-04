library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity USR is
    Port ( PIN : in  STD_LOGIC_VECTOR (3 downto 0);
           SIN : in  STD_LOGIC;
           MODE : in  STD_LOGIC_VECTOR (1 downto 0);
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (3 downto 0);
           SOUT : out  STD_LOGIC);
end USR;

architecture Behavioral of USR is

signal TEMP:std_logic_vector(3 downto 0):="0000";

begin
	process(RST,CLK,MODE,PIN,SIN)
	begin
		IF RST='1' THEN
		POUT <="0000";
		SOUT <='0';
		
		ELSIF FALLING_EDGE (CLK) THEN
			CASE MODE IS
			WHEN "00" =>
			TEMP (3 DOWNTO 1) <= TEMP(2 DOWNTO 0);
			TEMP(0) <= SIN;
			
			SOUT <= TEMP(3);
			POUT <= "0000";
			
			WHEN "01" =>
			TEMP(3 DOWNTO 1) <= TEMP(2 DOWNTO 0);
			TEMP (0) <= SIN;
			
			POUT <= TEMP;
			SOUT <= '0';
			
			WHEN "10" =>
			TEMP <= PIN;
			SOUT <= TEMP(3);
			TEMP(3 DOWNTO 1) <= TEMP(2 DOWNTO 0);
			
			POUT<= "0000";
			
			WHEN OTHERS =>
			POUT <= PIN;
			
			SOUT <= '0';
			END CASE;
			END IF;
			
		END process;

end Behavioral;

