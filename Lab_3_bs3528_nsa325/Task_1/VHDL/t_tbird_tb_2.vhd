--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:36:46 04/22/2019
-- Design Name:   
-- Module Name:   T:/vhdl-craziness/Lab_3_bs3528_nsa325/t_bird_tb_2.vhd
-- Project Name:  Lab_3_bs3528_nsa325
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: t_bird
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
 
ENTITY t_bird_tb_2 IS
END t_bird_tb_2;
 
ARCHITECTURE behavior OF t_bird_tb_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT t_bird
    PORT(
         RTS : IN  std_logic;
         LTS : IN  std_logic;
         HZD : IN  std_logic;
         CLK : IN  std_logic;
         LC : OUT  std_logic;
         LB : OUT  std_logic;
         LA : OUT  std_logic;
         RC : OUT  std_logic;
         RB : OUT  std_logic;
         RA : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RTS : std_logic := '0';
   signal LTS : std_logic := '0';
   signal HZD : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal LC : std_logic;
   signal LB : std_logic;
   signal LA : std_logic;
   signal RC : std_logic;
   signal RB : std_logic;
   signal RA : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: t_bird PORT MAP (
          RTS => RTS,
          LTS => LTS,
          HZD => HZD,
          CLK => CLK,
          LC => LC,
          LB => LB,
          LA => LA,
          RC => RC,
          RB => RB,
          RA => RA
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
      wait for 40 ns;	

      -- insert stimulus here 
		
		-----------------
		-- Test Case 2 --
		-----------------
		
		-- rts and ls on
		RTS <= '1';
		LTS <= '0';
		HZD <= '0';
		wait for 160 ns; 
		
		RTS <= '0';
		LTS <= '0';
		HZD <= '0';
		wait for 80 ns;
		
		-- rts and hzd on
		RTS <= '0';
		LTS <= '0';
		HZD <= '1';
		wait for 160 ns;
		
		RTS <= '0';
		LTS <= '0';
		HZD <= '0';
		wait for 80 ns;
		
		-- lts and hzd on
		RTS <= '0';
		LTS <= '1';
		HZD <= '1';
		wait for 160 ns;
		
		RTS <= '0';
		LTS <= '0';
		HZD <= '0';
	
      wait;
   end process;


END;
