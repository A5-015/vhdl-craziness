-- This code handles displaying the opcodes and the overflow status
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.common.all;

entity Display_Opcode is
    Port ( 
				overflow_opcode : in STD_LOGIC;
				input_opcode : in opcode_type;
				seg_opcode_1000 : out  STD_LOGIC_VECTOR (0 to 7);
				seg_opcode_100 : out  STD_LOGIC_VECTOR (0 to 7);
				seg_opcode_10 : out  STD_LOGIC_VECTOR (0 to 7);
				seg_opcode_1 : out  STD_LOGIC_VECTOR (0 to 7)
			);
end Display_Opcode;

architecture Behavioral of Display_Opcode is

begin

	process (input_opcode, overflow_opcode)
	begin

	if overflow_opcode = '0' then
	
		case input_opcode is
		
			when OP_AND =>
				seg_opcode_1000 <= "00010001"; -- A
				seg_opcode_100 <= "00010011";  -- N
				seg_opcode_10 <= "10000101";   -- D
				seg_opcode_1 <= "11111111";    -- OFF
			
			when OP_ANDI =>
				seg_opcode_1000 <= "00010001"; -- A
				seg_opcode_100 <= "00010011";  -- N
				seg_opcode_10 <= "10000101";   -- D
				seg_opcode_1 <= "11110011";    -- I
				
			when OP_OR =>
				seg_opcode_1000 <= "00000011"; -- O
				seg_opcode_100 <= "00110011";  -- R
				seg_opcode_10 <= "11111111";   -- OFF
				seg_opcode_1 <= "11111111";    -- OFF
			
			when OP_ORI =>
				seg_opcode_1000 <= "00000011"; -- O
				seg_opcode_100 <= "00110011";  -- R
				seg_opcode_10 <= "11110011";   -- I
				seg_opcode_1 <= "11111111";    -- OFF
				
			when OP_SLL =>
				seg_opcode_1000 <= "01001001"; -- S
				seg_opcode_100 <= "11100011";  -- L
				seg_opcode_10 <= "11100011";   -- L
				seg_opcode_1 <= "11111111";    -- OFF
				
			when OP_SRL =>
				seg_opcode_1000 <= "01001001"; -- S
				seg_opcode_100 <= "00110011";  -- R
				seg_opcode_10 <= "11100011";   -- L
				seg_opcode_1 <= "11111111";    -- OFF
				
			when OP_BONUS =>
				seg_opcode_1000 <= "11111111"; -- OFF
				seg_opcode_100 <= "11111111";  -- OFF
				seg_opcode_10 <= "11111111";   -- OFF
				seg_opcode_1 <= "11111111";    -- OFF
				
			when OP_HLT =>
				seg_opcode_1000 <= "11010001"; -- H
				seg_opcode_100 <= "11100011";  -- L
				seg_opcode_10 <= "11100001";   -- T
				seg_opcode_1 <= "11111111";    -- OFF
				
			when OP_ADD =>
				seg_opcode_1000 <= "00010001"; -- A
				seg_opcode_100 <= "10000101";  -- D
				seg_opcode_10 <= "10000101";   -- D
				seg_opcode_1 <= "11111111";    -- OFF
				
			when OP_ADDI =>
				seg_opcode_1000 <= "00010001"; -- A
				seg_opcode_100 <= "10000101";  -- D
				seg_opcode_10 <= "10000101";   -- D
				seg_opcode_1 <= "11110011";    -- I
				
			when OP_SUB =>
				seg_opcode_1000 <= "01001001"; -- S
				seg_opcode_100 <= "10000011";  -- U
				seg_opcode_10 <= "11000001";   -- B
				seg_opcode_1 <= "11111111";    -- OFF
									
			when OP_SUBI =>
				seg_opcode_1000 <= "01001001"; -- S
				seg_opcode_100 <= "10000011";  -- U
				seg_opcode_10 <= "11000001";   -- B
				seg_opcode_1 <= "11110011";    -- I
						
			when OP_BLT =>
				seg_opcode_1000 <= "11000001"; -- B
				seg_opcode_100 <= "11100011";  -- L
				seg_opcode_10 <= "11100001";   -- T
				seg_opcode_1 <= "11111111";    -- OFF
				
			when OP_BE =>
				seg_opcode_1000 <= "11000001"; -- B
				seg_opcode_100 <= "01100001";  -- E
				seg_opcode_10 <= "11111111";   -- OFF
				seg_opcode_1 <= "11111111";    -- OFF
								
			when OP_BNE =>
				seg_opcode_1000 <= "11000001"; -- B
				seg_opcode_100 <= "00010011";  -- N
				seg_opcode_10 <= "01100001";   -- E
				seg_opcode_1 <= "11111111";    -- OFF
				
			when OP_JMP =>
				seg_opcode_1000 <= "10000111"; -- J
				seg_opcode_100 <= "01010111";  -- M
				seg_opcode_10 <= "00110001";   -- P
				seg_opcode_1 <= "11111111";    -- OFF
				
			when others =>
				seg_opcode_1000 <= "11111111"; -- OFF
				seg_opcode_100 <= "11111111";  -- OFF
				seg_opcode_10 <= "11111111";   -- OFF
				seg_opcode_1 <= "11111111";    -- OFF

		end case;
	else
		seg_opcode_1000 <= "00000011"; -- O
		seg_opcode_100 <= "01110001";  -- F
		seg_opcode_10 <= "11100011";   -- L
		seg_opcode_1 <= "11111111";    -- OFF
		
	end if;
	
	end process;

end Behavioral;

