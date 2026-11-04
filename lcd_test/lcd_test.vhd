
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity lcd_test is
    Port ( clk_12Mhz : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           lcd_en : out  STD_LOGIC;
           lcd_rs : out  STD_LOGIC;
           lcd_data : out  STD_LOGIC_VECTOR (7 downto 0));
end lcd_test;

architecture Behavioral of lcd_test is

signal div:std_logic_vector (15 downto 0);
signal lcd_rs_s, clk_fsm: std_logic;

type state is (reset,func,mode,cur,clear,d0,d1,d2,d3,d4,hold);

signal ps1,nx :state;
signal dataout_s:std_logic_vector(7 downto 0);

begin

	process(rst,clk_12Mhz)
			begin
				if(rst='1') then
					div <= (others =>'0');
				elsif(rising_edge(clk_12Mhz)) then
					div <= div+1;
				end if;
	end process;
	
	clk_fsm <= div(15);
	
	process (rst, clk_fsm)
		begin 
			if(rst='1') then
				ps1 <= reset;
			elsif(rising_edge(clk_fsm)) then 
				ps1 <= nx;
			end if;
	end process;
	
	process(ps1)
		begin
			case(ps1) is
				when reset =>
					nx <= func;
					lcd_rs_s <= '0';
					dataout_s <="00111000";  --38h
					
				when func =>
					nx <= mode;
					lcd_rs_s <= '0';
					dataout_s <="00111000";  --38h
					
				when mode =>
					nx <= cur;
					lcd_rs_s <= '0';
					dataout_s <="00000110";  --06h
					
				when cur =>
					nx <= clear;
					lcd_rs_s <= '0';
					dataout_s <="00001100";  --0Ch
					
				when clear =>
					nx <= d0;
					lcd_rs_s <= '0';
					dataout_s <="00000001";  --01h
					
				when d0 =>
					lcd_rs_s <= '1';
					dataout_s <= "01010000";  --50h
					nx <= d1;
				
				when d1 =>
					lcd_rs_s <= '1';
					dataout_s <= "01001001";  --49h
					nx <= d2;
					
				when d2 =>
					lcd_rs_s <= '1';
					dataout_s <= "01000011";  --43h
					nx <= d3;
					
				when d3 =>
					lcd_rs_s <= '1';
					dataout_s <= "01010100";  --54h
					nx <= d4;
					
				when d4 =>
					lcd_rs_s <= '1';
					dataout_s <= "00100000";  --20h
					nx <= hold;
					
				when hold =>
					lcd_rs_s <= '0';
					dataout_s <= "00000000";  --00h
					nx <= hold;
					
				when others =>
					nx <= reset;
					lcd_rs_s <= '0';
					dataout_s <= "00000001";
			end case;
		end process;
		
		lcd_en <= clk_fsm;
		lcd_rs <= lcd_rs_s;
		lcd_data <= dataout_s;


end Behavioral;

