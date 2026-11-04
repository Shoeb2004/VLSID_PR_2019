library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MOD25 is
    Port ( clk : in  STD_LOGIC;
           dir : in  STD_LOGIC;
           pr : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (4 downto 0));
end MOD25;

architecture Behavioral of MOD25 is

signal Qtemp:STD_LOGIC_VECTOR (4 downto 0):="00000";

begin

	process(rst, pr,clk,dir)
	begin
		if rst='1' then
			Qtemp<="00000";
		elsif pr='1' then
			Qtemp <= "11111";
			
		elsif falling_edge(clk) then
			if dir='1' then 
				if Qtemp < 24 then
					Qtemp <= Qtemp + 1;
				else
					Qtemp <= "00000";
				end if;
				
			else 
				if Qtemp > 7 then
					Qtemp <= Qtemp - 1;
				else
					Qtemp <= "11111";
				end if;
			end if;
		end if;
		
	end process;
	
	Q <= Qtemp;
				

end Behavioral;

