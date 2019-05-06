----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:56:38 05/05/2019 
-- Design Name: 
-- Module Name:    decoder_and_controller_unit - Behavioral 
-- Project Name: 
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

entity decoder_and_controller_unit is

Port (
	--	ROM
	instructions : in STD_LOGIC_VECTOR ((instruction_width - 1) downto 0); -- receiving instructions

	-- Register File
	r1_data : in STD_LOGIC_VECTOR ((data_width - 1) downto 0); -- receiving r1 data from register file
	r2_data : in STD_LOGIC_VECTOR ((data_width - 1) downto 0); -- receiving r2 data from register file
	rd_data : out STD_LOGIC_VECTOR ((data_width - 1) downto 0); -- sending rd data to register file

	r1_addr: out STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0); -- telling where to read from
	r2_addr: out STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0); -- telling where to read from
	rd_addr: out STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0); -- telling where to write to

	r_control: out STD_LOGIC;

	-- Program Counter (PC)
	current_pc : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);
	new_pc : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);
	control_pc : out STD_LOGIC;
	incr_pc : out STD_LOGIC;

	-- ALU 
	opcode : out opcode_type;
	alu1 : out  STD_LOGIC_VECTOR ((data_width - 1) downto 0);
	alu2 : out  STD_LOGIC_VECTOR ((data_width - 1) downto 0);
	alu_out : in STD_LOGIC_VECTOR ((data_width - 1) downto 0)
	); 				
end decoder_and_controller_unit;


architecture Behavioral of decoder_and_controller_unit is

-- signals
signal opcode_bits : STD_LOGIC_VECTOR ((opcode_width - 1) downto 0);
signal opcode_string : opcode_type;
signal reg2: STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);
signal imval: STD_LOGIC_VECTOR ((data_width - 1) downto 0);
signal tail: STD_LOGIC_VECTOR ((tail_width - 1) downto 0);
signal temp: STD_LOGIC_VECTOR (5 downto 0);

begin

	--Process that decodes instructions 
	decoder_process : process (instructions)
	begin
	
		-- slice the instructions and serve them to relevant ports and signals
		opcode_bits <= instructions(15 downto 12);
		rd_addr <= instructions(11 downto 9);
		r1_addr <= instructions (8 downto 6);
		reg2 <= instructions (5 downto 3); -- not sending it directly to r2_addr because it may be needed for further processing 
		tail <= instructions (2 downto 0);
		
		-- convert opcode from std_logic_vector to opcode_type
		opcode_string <= std_logic_vector_to_opcode_type(opcode_bits => opcode_bits);
		
		opcode <= opcode_string;
		
		-- determine whether IV needs to be derived, otherwise assign r2_addr
		case opcode_string is
			
			when OP_ANDI => 
				imval <= "11" & reg2 & tail;
				temp <= "000000";
				r2_addr <= "000";
			
			when OP_ORI =>
				imval <= "00" & reg2 & tail;
				temp <= "000000";
				r2_addr <= "000";
				
			when OP_SLL | OP_SRL =>
				imval <= "00000" & tail;
				temp <= "000000";
				r2_addr <= "000";
				
			when OP_ADDI | OP_SUBI | OP_BLT | OP_BE | OP_BNE | OP_JMP =>
				temp <= reg2 & tail;
				imval <= STD_LOGIC_VECTOR(resize(signed(temp), imval'length));
				r2_addr <= "000";				
			
			when others =>
				r2_addr <= reg2;
				imval <= "00000000";
				temp <= "000000";
				
		end case;

	end process;
	
	controller_process : process (r1_data, r2_data, current_pc, alu_out, imval, opcode_string)
	begin
		
		case opcode_string is 
		
			when OP_AND | OP_OR | OP_ADD | OP_SUB => 
				alu1 <= r1_data;
				alu2 <= r2_data;
				control_pc <= '0';
				incr_pc <= '1';
				r_control <= '1';
				rd_data <= alu_out;
				new_pc <= "00000000";
				
			when OP_ANDI | OP_ORI | OP_SLL | OP_SRL | OP_ADDI | OP_SUBI =>
				alu1 <= r1_data; 
				alu2 <= imval; 
				control_pc <= '0';
				incr_pc <= '1';
				r_control <= '1';
				rd_data <= alu_out;
				new_pc <= "00000000";
			
			when OP_BLT => 
			
				r_control <= '0';
				rd_data <= "00000000";
				
				if (unsigned(r1_data) < unsigned(r2_data)) then
					alu1 <= r1_data;
					alu2 <= imval;
					control_pc <= '1';
					new_pc <= alu_out;
				
				else 
					incr_pc <= '1'; 
					alu1 <= "00000000";
					alu2 <= "00000000";
					control_pc <= '0';
					new_pc <= "00000000";
					
				end if;
			
			when OP_BE => 
			
				r_control <= '0';
				rd_data <= "00000000";
				
				if (unsigned(r1_data) = unsigned(r2_data)) then
					alu1 <= r1_data;
					alu2 <= imval;
					control_pc <= '1';
					new_pc <= alu_out;
					
				else 
					incr_pc <= '1';
					alu1 <= "00000000";
					alu2 <= "00000000";
					control_pc <= '0';
					new_pc <= "00000000";
					
				end if;
			
			when OP_BNE => 
			
				r_control <= '0';
				rd_data <= "00000000";
				
				if (unsigned(r1_data) /= unsigned(r2_data)) then
					alu1 <= r1_data;
					alu2 <= imval;
					control_pc <= '1';
					new_pc <= alu_out;
				
				else 
					incr_pc <= '1';
					alu1 <= "00000000";
					alu2 <= "00000000";
					control_pc <= '0';
					new_pc <= "00000000";
				
				end if;
			
			when OP_JMP => 
				alu1 <= current_pc; 
				alu2 <= imval;
				r_control <= '0';
				control_pc <= '1';
				new_pc <= alu_out;
				rd_data <= "00000000";
			
			when OP_HLT =>
				new_pc <= current_pc;
				alu1 <= "00000000";
				alu2 <= "00000000";
				control_pc <= '0';
				r_control <= '0';
				rd_data <= "00000000";
						
			when others => 
				alu1 <= "00000000";
				alu2 <= "00000000";
				control_pc <= '0';
				r_control <= '0';
				rd_data <= "00000000";
				new_pc <= "00000000";
				null;
			
					
		end case;
		
	end process;

end Behavioral;

