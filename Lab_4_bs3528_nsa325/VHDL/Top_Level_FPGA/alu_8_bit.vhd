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

--signal overflow_status : STD_LOGIC;
signal computed_result : STD_LOGIC_VECTOR ((data_width - 1) downto 0);
--signal check_overflow : STD_LOGIC;

begin
	
	compute_ALU_out: process (ALU_sel, in1, in2)

	begin
		ALU_overflow <= '0';
		
		--------------------------------------------
		-- Computing stuff based on the selection --
		--------------------------------------------
		case ALU_sel is
		
			when OP_AND =>
				computed_result <= STD_LOGIC_VECTOR(in1 AND in2);
			
			when OP_ANDI =>
				computed_result <= STD_LOGIC_VECTOR(in1 AND in2);
			
			when OP_OR =>
				computed_result <= STD_LOGIC_VECTOR(in1 OR in2);
				
			when OP_ORI =>
				computed_result <= STD_LOGIC_VECTOR(in1 OR in2);
				
			when OP_SLL =>
				computed_result <= STD_LOGIC_VECTOR(shift_left(unsigned(in1), to_integer(unsigned(in2))));
				
			when OP_SRL =>
				computed_result <= STD_LOGIC_VECTOR(shift_right(unsigned(in1), to_integer(unsigned(in2))));
				
			when OP_ADD =>
				computed_result <= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				
			when OP_ADDI =>
				computed_result <= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				
			when OP_SUB =>
				computed_result <= STD_LOGIC_VECTOR(signed(in1) - signed(in2));
				
			when OP_SUBI =>
				computed_result <= STD_LOGIC_VECTOR(signed(in1) - signed(in2));
				
			when OP_BLT =>
				computed_result <= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				
			when OP_BE =>
				computed_result <= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				
			when OP_BNE =>
				computed_result <= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				
			when OP_JMP =>
				computed_result <= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				
			when OP_BADD =>
				computed_result <= STD_LOGIC_VECTOR(signed(in1) + signed(in2));
				
			when others =>
				computed_result <= in1;
		end case;
		
		
		-------------------------------------
		-- Check if there are any oveflows --
		-------------------------------------
		
		--if (in1((data_width - 1)) = in2((data_width - 1)) and in1((data_width - 1))/=computed_result((data_width - 1)) and check_overflow = '1') then
		
		-- If you are doing addition
		if (ALU_sel = OP_ADD or ALU_sel = OP_ADDI or ALU_sel = OP_BADD) then
		
				-- If you are adding two positive numbers
				if ((in1((data_width - 1)) = '0') and (in2((data_width - 1)) = '0')) then
					
					-- If the result is a negative number
					if (computed_result((data_width - 1)) = '1') then
						ALU_overflow <= '1'; 
					
					else 
						ALU_overflow <= '0'; 
						
					end if;
				
				-- If you are adding two negative numbers
				elsif ((in1((data_width - 1)) = '1') and (in2((data_width - 1)) = '1')) then
				
					-- If the result is a postive number
					if (computed_result((data_width - 1)) = '0') then
						ALU_overflow <= '1'; 
					
					else 
						ALU_overflow <= '0'; 
					
					end if;
				end if;
				
		elsif (ALU_sel = OP_SUB or ALU_sel = OP_SUBI) then
		
				-- If the first number is positive and the second number is negative
				if ((in1((data_width - 1)) = '0') and (in2((data_width - 1)) = '1')) then
						
						-- If the result is a negative number
						if (computed_result((data_width - 1)) = '1') then
							ALU_overflow <= '1'; 
						
						else 
							ALU_overflow <= '0'; 
							
						end if;
					
					-- If the first number is negative and the second number is positive
					elsif ((in1((data_width - 1)) = '1') and (in2((data_width - 1)) = '0')) then
					
						-- If the result is a postive number
						if (computed_result((data_width - 1)) = '0') then
							ALU_overflow <= '1'; 
						
						else 
							ALU_overflow <= '0'; 
						
						end if;
				end if;
		
		else
			ALU_overflow <= '0'; 
			
		
		end if; 
	
		ALU_out <= computed_result;
			
	end process;


--	process (computed_result, overflow_status)
--	begin
--			---------------------------------------------------
--			-- Send final calculated values to outside world --
--			---------------------------------------------------
--			ALU_out <= computed_result;
--			ALU_overflow <= overflow_status;
--			
--	end process;

end Behavioral;

