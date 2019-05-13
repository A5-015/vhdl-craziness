--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:15:19 05/13/2019
-- Design Name:   
-- Module Name:   C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/top_fpga_tb_v2.vhd
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_fpga_tb_v2 IS
END top_fpga_tb_v2;
 
ARCHITECTURE behavior OF top_fpga_tb_v2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_FPGA
    PORT(
         clk : IN  std_logic;
         clk_proc_in : IN  std_logic;
         rst : IN  std_logic;
         seg_bits : OUT  std_logic_vector(0 to 7);
         seg_an : OUT  std_logic_vector(3 downto 0);
			operand_1 : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);
			operand_2 : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);
			result : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);
			overflow :  out STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clk_proc_in : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal seg_bits : std_logic_vector(0 to 7);
   signal seg_an : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
   constant clk_proc_in_period : time := 1000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_FPGA PORT MAP (
          clk => clk,
          clk_proc_in => clk_proc_in,
          rst => rst,
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
 
   clk_proc_in_process :process
   begin
		clk_proc_in <= '0';
		wait for clk_proc_in_period/2;
		clk_proc_in <= '1';
		wait for clk_proc_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 50 ns;
		rst <= '1';
		wait for 100 ns; 
		rst <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
