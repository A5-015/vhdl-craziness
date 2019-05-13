----------------------------------------------------------------------------------
-- Company: NYUAD
-- Engineer: Nishant Aswani and Barkin Simsek
-- 
-- Create Date:    03:10:21 05/04/2019 
-- Module Name:    alu_8_bit - Behavioral 
-- Project Name: 	 Lab 4
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.common.all;

-- important information from common.vhd:
--	type opcode_type is (OP_AND, OP_ANDI, OP_OR, OP_ORI, OP_SLL, OP_SRL, OP_BONUS, OP_HLT, OP_ADD, OP_ADDI, OP_SUB, OP_SUBI, OP_BLT, OP_BE, OP_BNE, OP_JMP);
--	attribute ENUM_ENCODING of opcode_type: type is "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111";

-- Design Decision:
--	"dumb muscles" of the microprocessor. Simply carries out arithmetic procedures on inputs and spits out output. 
--	all register assignments and deciding inputs is determined in the controller unit.

entity alu_8_bit is
    Port (ALU_out : out  STD_LOGIC_VECTOR ((data_width - 1) downto 0); 	-- RD output 
			 ALU_overflow : out  STD_LOGIC; 	                              -- RD overflow
          in1 : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0); 		-- R1 input
			 in2 : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0); 		-- R2 input
	       ALU_sel : in opcode_type); 			                        	-- operation code
	
end alu_8_bit;
	
architecture Behavioral of alu_8_bit is

begin
	
	compute_ALU_out: process (ALU_sel, in1, in2)
	variable computed_result : STD_LOGIC_VECTOR ((data_width - 1) downto 0);
	variable overflow_status : STD_LOGIC:= '0';
	variable check_overflow : STD_LOGIC:= '0';
	begin

		--------------------------------------------
		-- Computing stuff based on the selection --
		--------------------------------------------
		case ALU_sel is
		
			when OP_AND =>
				computed_result:= STD_LOGIC_VECTOR(in1 AND in2);
				check_overflow:= '0';
			
			when OP_ANDI =>
				computed_result:= STD_LOGIC_VECTOR(in1 AND in2);
				check_overflow:= '0';
			
			when OP_OR =>
				computed_result:= STD_LOGIC_VECTOR(in1 OR in2);
				check_overflow:= '0';
				
			when OP_ORI =>
				computed_result:= STD_LOGIC_VECTOR(in1 OR in2);
				check_overflow:= '0';
				
			when OP_SLL =>
				computed_result:= STD_LOGIC_VECTOR(shift_left(unsigned(in1), to_integer(unsigned(in2))));
				check_overflow:= '0';
				
			when OP_SRL =>
				computed_result:= STD_LOGIC_VECTOR(shift_right(unsigned(in1), to_integer(unsigned(in2))));
				check_overflow:= '0';
				
			when OP_ADD =>
				computed_result:= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				check_overflow:= '1';
				
			when OP_ADDI =>
				computed_result:= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				check_overflow:= '1';
				
			when OP_SUB =>
				computed_result:= STD_LOGIC_VECTOR(signed(in1) - signed(in2));
				check_overflow:= '1';
				
			when OP_SUBI =>
				computed_result:= STD_LOGIC_VECTOR(signed(in1) - signed(in2));
				check_overflow:= '1';
				
			when OP_BLT =>
				computed_result:= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				check_overflow:= '1';
				
			when OP_BE =>
				computed_result:= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				check_overflow:= '1';
				
			when OP_BNE =>
				computed_result:= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				check_overflow:= '1';
				
			when OP_JMP =>
				computed_result:= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				check_overflow:= '1';
				
			when others =>
				computed_result:= in1;
				check_overflow:= '0';
		end case;
		
		
		-------------------------------------
		-- Check if there are any oveflows --
		-------------------------------------
		
		-- This overflow condition might not be exactly true, need
		--		to double check
		if (in1((data_width - 1)) = in2((data_width - 1)) and in1((data_width - 1))/=computed_result((data_width - 1)) and check_overflow = '1') then
			overflow_status:= '1'; 
			
		else 
			overflow_status:= '0'; 
		
		end if; 

		
		---------------------------------------------------
		-- Send final calculated values to outside world --
		---------------------------------------------------
		ALU_out <= computed_result;
		ALU_overflow <= overflow_status;

	end process;


--	STD_LOGIC_VECTOR(signed(in_A) + signed(in_B)) when "000",
--	STD_LOGIC_VECTOR(signed(in_A) - signed(in_B)) when "001",
--	STD_LOGIC_VECTOR(in_A AND in_B) when "010",
--	STD_LOGIC_VECTOR(in_A OR in_B) when "011",
--	STD_LOGIC_VECTOR(shift_left(unsigned(in_A), to_integer(unsigned(in_B)))) when "100",
--	STD_LOGIC_VECTOR(shift_right(unsigned(in_A), to_integer(unsigned(in_B)))) when "101",
--	STD_LOGIC_VECTOR(shift_right(signed(in_A), to_integer(unsigned(in_B)))) when "110",
--	STD_LOGIC_VECTOR(rotate_right(unsigned(in_A), to_integer(unsigned(in_B)))) when "111",
--	in_A when others;

end Behavioral;

