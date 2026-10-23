LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
 
ENTITY fifo_tb IS
END fifo_tb;
 
ARCHITECTURE behavior OF fifo_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fifo
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         enr : IN  std_logic;
         enw : IN  std_logic;
         data_in : IN  std_logic_vector(7 downto 0);
         data_out : OUT  std_logic_vector(7 downto 0);
         fifo_empty : OUT  std_logic;
         fifo_full : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal enr : std_logic := '0';
   signal enw : std_logic := '0';
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);
   signal fifo_empty : std_logic;
   signal fifo_full : std_logic;
	
	--temporary signals
	signal i : integer := 0;
	constant depth : integer := 16;  --specify depth of fifo here.	

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fifo PORT MAP (
          clk => clk,
          reset => reset,
          enr => enr,
          enw => enw,
          data_in => data_in,
          data_out => data_out,
          fifo_empty => fifo_empty,
          fifo_full => fifo_full
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
 
  -- Stimulus process
 stim_proc: process
	begin
		reset <='1';  --apply reset for one clock cycle.
		wait for clk_period;
		
		reset <='0';
		wait for clk_period*3;  --wait for 3 clock periods(simply)
		
		enw <= '1';    enr <= '0';       --write 10 values to fifo.
		
		for i in 1 to 10 loop
			Data_In <= conv_std_logic_vector(i,8);
			wait for clk_period;
			
		end loop;
		
		enw <= '0';   enr <= '1';       --read 4 values from fifo.
		wait for clk_period*4;
		
		enw <= '0';   enr <= '0';
		wait for clk_period*10;  --wait for some clock cycles.
 
		enw <= '1';   enr <= '0';        --write 10 values to fifo.
		for i in 11 to 20 loop
			Data_In <= conv_std_logic_vector(i,8);
			wait for clk_period;
			
		end loop;
		
		enw <= '0';   enr <= '0';
		wait for clk_period*10;  --wait for some clock cycles.
		
		enw <= '0';   enr <= '1';        --read 4 values from fifo.
		wait for clk_period*4;
		
		enw <= '0';   enr <= '0';
		wait for clk_period;
		
		enw <= '0';   enr <= '1';        --read 4 values from fifo.
		wait for clk_period*8;
		
		enw <= '0';   enr <= '0';
		wait for clk_period;
		
		enw <= '0';   enr <= '1';        --read 8 values from fifo.
		wait for clk_period*4;
		
		enw <= '0';   enr <= '0';
		wait for clk_period;
		
		enw <= '0';   enr <= '1';        --read 4 values from fifo.
		wait for clk_period*4;
		
		enw <= '0';   enr <= '0';
		
		wait;
		
	end process;

END;
