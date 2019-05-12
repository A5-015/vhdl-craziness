--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:14:21 05/11/2019
-- Design Name:   
-- Module Name:   C:/Users/nishantaswani/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/top_FPGA_tb.vhd
-- Project Name:  Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_FPGA
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
--use work.common.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_FPGA_tb IS
END top_FPGA_tb;
 
ARCHITECTURE behavior OF top_FPGA_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_FPGA
    PORT(
         clk : IN  std_logic;
         clk_proc_in : IN  std_logic;
         rst : IN  std_logic;
--         operand_1 : OUT  std_logic_vector(7 downto 0);
--         operand_2 : OUT  std_logic_vector(7 downto 0);
--         opcode : OUT  opcode_type;
--         result : OUT  std_logic_vector(7 downto 0);
         seg_bits : OUT  std_logic_vector(0 to 7);
         seg_an : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clk_proc_in : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
--   signal operand_1 : std_logic_vector(7 downto 0);
--   signal operand_2 : std_logic_vector(7 downto 0);
--   signal opcode : opcode_type;
--   signal result : std_logic_vector(7 downto 0);
   signal seg_bits : std_logic_vector(0 to 7);
   signal seg_an : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
   constant clk_proc_in_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_FPGA PORT MAP (
          clk => clk,
          clk_proc_in => clk_proc_in,
          rst => rst,
--          operand_1 => operand_1,
--          operand_2 => operand_2,
--          opcode => opcode,
--          result => result,
          seg_bits => seg_bits,
          seg_an => seg_an
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
--   clk_proc_in_process :process
--   begin
--		clk_proc_in <= '0';
--		wait for clk_proc_in_period/2;
--		clk_proc_in <= '1';
--		wait for clk_proc_in_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 1ns;
		rst <= '1'; 
		wait for 10ns;
		
		rst <= '0';
		wait for 200ns;
		
		clk_proc_in <= '1';
		wait for 5 ns; 
		clk_proc_in <= '0';
		wait for 200ns;
		
		clk_proc_in <= '1';
		wait for 5 ns; 
		clk_proc_in <= '0';
		wait for 200ns;
		
		clk_proc_in <= '1';
		wait for 5 ns; 
		clk_proc_in <= '0';
		
		


      wait;
   end process;

END;
