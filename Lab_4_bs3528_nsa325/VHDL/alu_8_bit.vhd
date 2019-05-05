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
    Port (ALU_out : out  STD_LOGIC_VECTOR (7 downto 0); 	-- RD output 
          in1 : in  STD_LOGIC_VECTOR (7 downto 0); 		-- R1 input
			 in2 : in  STD_LOGIC_VECTOR (7 downto 0); 		-- R2 input
	       ALU_sel : in opcode_type); 				-- operation code
	
end alu_8_bit;

architecture Behavioral of alu_8_bit is

begin
with ALU_sel select ALU_out <=
	STD_LOGIC_VECTOR(in1 AND in2) when OP_AND,
	STD_LOGIC_VECTOR(in1 AND in2) when OP_ANDI,		
	STD_LOGIC_VECTOR(in1 OR in2) when OP_OR,
	STD_LOGIC_VECTOR(in1 OR in2) when OP_ORI,		
	STD_LOGIC_VECTOR(shift_left(unsigned(in1), to_integer(unsigned(in2)))) when OP_SLL,
	STD_LOGIC_VECTOR(shift_right(unsigned(in1), to_integer(unsigned(in2)))) when OP_SRL,
	STD_LOGIC_VECTOR(signed(in1) + signed(in2)) when OP_ADD,
	STD_LOGIC_VECTOR(signed(in1) + signed(in2)) when OP_ADDI,
	STD_LOGIC_VECTOR(signed(in1) - signed(in2)) when OP_SUB,
	STD_LOGIC_VECTOR(signed(in1) - signed(in2)) when OP_SUBI,
	STD_LOGIC_VECTOR(signed(in1) + signed(in2)) when OP_BLT,
	STD_LOGIC_VECTOR(signed(in1) + signed(in2)) when OP_BE,
	STD_LOGIC_VECTOR(signed(in1) + signed(in2)) when OP_BNE,
	STD_LOGIC_VECTOR(signed(in1) + signed(in2)) when OP_JMP,
	in1 when others;	-- don't delete



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

