LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY USR_tb IS
END USR_tb;
 
ARCHITECTURE behavior OF USR_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT USR
    PORT(
         PIN : IN  std_logic_vector(3 downto 0);
         SIN : IN  std_logic;
         MODE : IN  std_logic_vector(1 downto 0);
         RST : IN  std_logic;
         CLK : IN  std_logic;
         POUT : OUT  std_logic_vector(3 downto 0);
         SOUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(3 downto 0) := "1010";
   signal SIN : std_logic := '0';
   signal MODE : std_logic_vector(1 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal CLK : std_logic := '1';

 	--Outputs
   signal POUT : std_logic_vector(3 downto 0);
   signal SOUT : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: USR PORT MAP (
          PIN => PIN,
          SIN => SIN,
          MODE => MODE,
          RST => RST,
          CLK => CLK,
          POUT => POUT,
          SOUT => SOUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= (NOT CLK);
		WAIT FOR CLK_PERIOD/2;
   end process;
 

   -- Stimulus process
   stim_proc_MODE: process
   begin
		MODE <="00";
		WAIT FOR 80 NS;
		
		MODE <= "01";
		WAIT FOR 50 NS;
		
		MODE <= "10";
		WAIT FOR 50 NS;
		
		MODE <= "11";
		WAiT FOR 20 NS;
		
   end process;

   stim_proc_SIN: process
   begin
		WAIT FOR 10 NS;
		
		SIN <='1';
		WAIT FOR 10 NS;
		
		SIN <='0';
		WAIT FOR 10 NS;

		SIN <='1';
		WAIT FOR 10 NS;
		
		SIN <='0';
		WAIT FOR 10 NS;
		
		SIN <='0';
		WAIT FOR 40 NS;
		
		SIN <='1';
		WAIT FOR 10 NS;
		
		SIN <='0';
		WAIT FOR 10 NS;
		
		SIN <='1';
		WAIT FOR 10 NS;
		
		SIN <='0';
		WAIT FOR 10 NS;
		
		SIN <='0';
		WAIT;

   end process;
	
	stim_proc_RST:process
	begin
		wait for 300 ns;
		rst <= '1';
		wait for 10 ns;
		rst <= '0';
		wait;
	end process;

END;
