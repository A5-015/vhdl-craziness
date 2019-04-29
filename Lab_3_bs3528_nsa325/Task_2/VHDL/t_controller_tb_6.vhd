--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:44:18 04/29/2019
-- Design Name:   
-- Module Name:   C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_3_bs3528_nsa325/Task_2/VHDL/t_controller_tb_6.vhd
-- Project Name:  Lab_3_bs3528_nsa325_Task_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: t_controller
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY t_controller_tb_6 IS
END t_controller_tb_6;
 
ARCHITECTURE behavior OF t_controller_tb_6 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT t_controller
    PORT(
         SNS : IN  std_logic;
         WLK : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         MR : OUT  std_logic;
         MY : OUT  std_logic;
         MG : OUT  std_logic;
         SR : OUT  std_logic;
         SY : OUT  std_logic;
         SG : OUT  std_logic;
         WL : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SNS : std_logic := '0';
   signal WLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal MR : std_logic;
   signal MY : std_logic;
   signal MG : std_logic;
   signal SR : std_logic;
   signal SY : std_logic;
   signal SG : std_logic;
   signal WL : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: t_controller PORT MAP (
          SNS => SNS,
          WLK => WLK,
          RST => RST,
          CLK => CLK,
          MR => MR,
          MY => MY,
          MG => MG,
          SR => SR,
          SY => SY,
          SG => SG,
          WL => WL
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

      -- insert stimulus here 
		
		-----------------
		-- Test Case 6 --
		-----------------
		
		-- X assigned to walk button
		WLK <= 'X';
		SNS <= '0';
		RST <= '0';

		wait for 200 ns;

      wait;
   end process;

END;
