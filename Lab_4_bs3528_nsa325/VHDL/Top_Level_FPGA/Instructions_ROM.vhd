library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.common.all;

entity Instructions_ROM is
	port (	address_in : in STD_LOGIC_VECTOR ((address_width - 1) downto 0);
		data_out : out STD_LOGIC_VECTOR ((instruction_width - 1) downto 0)
	     );
end Instructions_ROM;

architecture Behavioral of Instructions_ROM is

type ROM_type is array (0 to (rom_size - 1)) of STD_LOGIC_VECTOR ((instruction_width - 1) downto 0);
signal rom : ROM_type;

begin
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
		----------------------------------------------------------------------------------
--		-- Task 2
--		rom(0) <= b"1001_001_000_100000"; -- R1: R0 + -32 = -32
--		rom(1) <= b"1001_010_000_100000"; -- R2: R0 + -32 = -32
--		rom(2) <= b"1000_011_001_010_000"; -- R3: R1 + R2 = -64
--		rom(3) <= b"1000_011_011_011_000"; -- R3: R3 + R3 = -128
--		rom(4) <= b"1001_100_011_111111"; -- R4: R3 + -1 = 127; overflow
		----------------------------------------------------------------------------------

		----------------------------------------------------------------------------------
		-- Task 3
--		rom(0) <= b"1001_001_000_000_111"; -- ADDI R1: R0 + 7 = 7
--		rom(1) <= b"1001_010_000_000_000"; -- ADDI R2: R0 + 0 = 0
--		rom(2) <= b"1001_010_010_000_011"; -- ADDI R2: R2 + 3 = 3
--		rom(3) <= b"1011_001_001_000_001"; -- SUBI R1: R1 - 1 = 6
--		rom(4) <= b"1110_111_001_000_110"; -- BNE  R7: R1 BNE R0
		----------------------------------------------------------------------------------

		----------------------------------------------------------------------------------
		-- Task 4
		-- Calculates fibonacci sequence until 89 and counts down
		-- 	back to 0 from 89 in the fibonacci sequence. So it
		--		calculates the following values in a loop
		-- 	0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 55, 34, 21, 13, 8, 5, 3, 2, 1, 1, 0
		--Initialize R7 to be 89 
--		rom(0) <= b"1001_110_000_011111"; -- ADDI R6: R0 + 31 = 31
--		rom(1) <= b"1001_110_110_011111"; -- ADDI R6: R6 + 31 = 62
--		rom(2) <= b"1001_110_110_011011"; -- ADDI R6: R6 + 27 = 89
--		
--		--Initialize the two variables R1 and R2
--		rom(3) <= b"1001_001_000_000000"; -- ADDI R1: R0 + 0 = 0 
--		rom(4) <= b"1001_010_000_000001"; -- ADDI R2: R0 + 1 = 1
--		
--		--"For" loop 
--		
--		-- z = x + y 
--		rom(5) <= b"1000_011_001_010_000"; -- ADD R3: R1 + R2 
--		-- x = y
--		rom(6) <= b"1000_001_000_010_000"; -- ADD R1: R0 + R2
--		-- y = z 
--		rom(7) <= b"1000_010_000_011_000"; -- ADD R2: R0 + R3
--		
--		--check if r3 is equal to the max value in R7
--		rom(8) <= b"1110_111_011_110_101"; -- BNE R7: R3 BNE R6; If NE go to rom(5)
--
--		rom(9) <= b"1000_010_001_000_000"; -- ADD R2: R1 + R0
--		rom(10) <= b"1010_001_011_001_000"; -- SUB R1: R3 - R1
--		
--		-- z = y
--		rom(11) <= b"1000_011_010_000_000"; -- ADD R3: R2 + R0
--		-- y = x
--		rom(12) <= b"1000_010_001_000_000"; -- ADD R2: R1 + R0
--		
--		-- x = z-y 
--		rom(13) <= b"1010_001_011_010_000"; -- SUB R1: R3 - R2
--		
--		-- check if r1 is equal to zero 
--		rom(14) <= b"1110_111_010_000_101"; -- BNE R7: R3 BNE R6; If NE go to rom(5)
--		
--		-- finally jump back to rom(0)
--		rom(15) <= b"1111_110_000_000_001"; -- JMP to rom(0)
		----------------------------------------------------------------------------------
		
		
		----------------------------------------------------------------------------------
		-- BONUS TASK 2
		-- Calculates fibonacci sequence until 89 and counts down
		-- 	back to 0 from 89 in the fibonacci sequence. So it
		--		calculates the following values in a loop
		-- 	0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 55, 34, 21, 13, 8, 5, 3, 2, 1, 1, 0
		--Initialize R7 to be 89 
		--First instruction is skipped to keep the integrity of the instructions
		rom(0) <= b"1001_110_000_011111"; -- ADDI R6: R0 + 0 = 0
		rom(1) <= b"0110_110_110_111111"; -- ADDI R6: R6 + 63 = 63
		rom(2) <= b"1001_110_110_010111"; -- ADDI R6: R6 + 23 = 89
		
		--Initialize the two variables R1 and R2
		rom(3) <= b"1001_001_000_000000"; -- ADDI R1: R0 + 0 = 0 
		rom(4) <= b"1001_010_000_000001"; -- ADDI R2: R0 + 1 = 1
		
		--"For" loop 
		
		-- z = x + y 
		rom(5) <= b"1000_011_001_010_000"; -- ADD R3: R1 + R2 
		-- x = y
		rom(6) <= b"1000_001_000_010_000"; -- ADD R1: R0 + R2
		-- y = z 
		rom(7) <= b"1000_010_000_011_000"; -- ADD R2: R0 + R3
		
		--check if r3 is equal to the max value in R7
		rom(8) <= b"1110_111_011_110_101"; -- BNE R7: R3 BNE R6; If NE go to rom(5)

		rom(9) <= b"1000_010_001_000_000"; -- ADD R2: R1 + R0
		rom(10) <= b"1010_001_011_001_000"; -- SUB R1: R3 - R1
		
		-- z = y
		rom(11) <= b"1000_011_010_000_000"; -- ADD R3: R2 + R0
		-- y = x
		rom(12) <= b"1000_010_001_000_000"; -- ADD R2: R1 + R0
		
		-- x = z-y 
		rom(13) <= b"1010_001_011_010_000"; -- SUB R1: R3 - R2
		
		-- check if r1 is equal to zero 
		rom(14) <= b"1110_111_010_000_101"; -- BNE R7: R3 BNE R6; If NE go to rom(5)
		
		-- finally jump back to rom(0)
		rom(15) <= b"1111_110_000_000_001"; -- JMP to rom(0)
		----------------------------------------------------------------------------------
		
	
		-- LEAVE AS IS
		--
		-- This dummy code helps to infer all 7 registers (R1--R7) in the register file,
		-- without short-cuts into combinatorial logic due to optimization
		rom(249) <= b"1000_001_001_000_000";
		rom(250) <= b"1000_010_010_001_000";
		rom(251) <= b"1000_011_011_010_000";
		rom(252) <= b"1000_100_100_011_000";
		rom(253) <= b"1000_101_101_100_000";
		rom(254) <= b"1000_110_110_101_000";
		rom(255) <= b"1000_111_111_110_000";

	end process;

end Behavioral;

