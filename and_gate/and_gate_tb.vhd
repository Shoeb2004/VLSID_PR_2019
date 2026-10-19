
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY and_gate_tb IS
END and_gate_tb;
 
ARCHITECTURE behavior OF and_gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT and_gate
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '1';
   signal B : std_logic := '1';

 	--Outputs
   signal Y : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: and_gate PORT MAP (
          A => A,
          B => B,
          Y => Y
        );
 
   -- Stimulus process
   stim_proc_A: process
   begin		
      A <= NOT (A);
		WAIT FOR 80 NS;
   end process;
	
   stim_proc_B: process
   begin		
      B <= NOT (B);
		WAIT FOR 40 NS;
   end process;

END;
