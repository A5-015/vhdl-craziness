--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:05:20 05/06/2019
-- Design Name:   
-- Module Name:   C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/tb_top_module_testing.vhd
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

use work.common.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_top_module_testing IS
END tb_top_module_testing;
 
ARCHITECTURE behavior OF tb_top_module_testing IS 
 
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

data_out <= rom ( to_integer(unsigned(address_in)) );

	rom_process : process (address_in)
	begin
		-- LEAVE AS IS
		--
		-- reset ROM content completely with HAL operations;
		-- note that loop will be unrolled during synthesis
		for i in 0 to (rom_size - 1) loop 
			rom(i) <=
				-- HLT opcode
				b"0111"
				& ((instruction_width - 1 - opcode_width) downto 0 => 'X'); 
		end loop;

		-- initialize ROM with binary code
		--
		-- TODO PUT YOUR BINARY CODE HERE

		-- Task 2
		rom(0) <= b"0000_011_000_001000";
		
		
--		rom(0) <= b"1001_001_000_100000"; -- R1: R0 + -32 = -32
--		
--		
--		rom(1) <= b"1001_010_000_100000"; -- R2: R0 + -32 = -32
--		rom(2) <= b"1000_011_001_010_000"; -- R3: R1 + R2 = -64
--		rom(3) <= b"1000_011_011_011_000"; -- R3: R3 + R3 = -128
--		rom(4) <= b"1001_100_011_111111"; -- R4: R3 + -1 = 127; overflow

		-- LEAVE AS IS
		--
		-- This dummy code helps to infer all 7 registers (R1--R7) in the register file,
		-- without short-cuts into combinatorial logic due to optimization
--		rom(249) <= b"1000_001_001_000_000";
--		rom(250) <= b"1000_010_010_001_000";
--		rom(251) <= b"1000_011_011_010_000";
--		rom(252) <= b"1000_100_100_011_000";
--		rom(253) <= b"1000_101_101_100_000";
--		rom(254) <= b"1000_110_110_101_000";
--		rom(255) <= b"1000_111_111_110_000";
		
      wait;
   end process;

END;
