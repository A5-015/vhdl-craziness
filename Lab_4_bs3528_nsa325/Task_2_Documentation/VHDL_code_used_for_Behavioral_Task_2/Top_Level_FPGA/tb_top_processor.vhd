--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:17:37 05/01/2018
-- Design Name:   
-- Module Name:   /home/johann/work/teaching/Lab_ADLD/labs/my/Processor/tb_top_processor.vhd
-- Project Name:  Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_processor
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

use work.common.all;

ENTITY tb_top_processor IS
END tb_top_processor;
 
ARCHITECTURE behavior OF tb_top_processor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_processor
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         operand_1 : OUT  std_logic_vector(7 downto 0);
         operand_2 : OUT  std_logic_vector(7 downto 0);
         opcode : OUT  opcode_type;
         result : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal operand_1 : std_logic_vector(7 downto 0);
   signal operand_2 : std_logic_vector(7 downto 0);
   signal opcode : opcode_type;
   signal result : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_processor PORT MAP (
          clk => clk,
          rst => rst,
          operand_1 => operand_1,
          operand_2 => operand_2,
          opcode => opcode,
          result => result
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

      wait for 45 ns;
      -- hold reset state
		rst <= '1';
      wait for 40 ns;
		rst <= '0';

      -- insert stimulus here; no need, stimulus is binary program in ROM
		
      wait;
   end process;

END;
