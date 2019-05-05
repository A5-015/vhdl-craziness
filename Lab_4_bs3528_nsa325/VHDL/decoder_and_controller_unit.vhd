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
instructions : in STD_LOGIC_VECTOR ((instruction_width - 1) downto 0);

-- Register File
r1_data : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);
r2_data : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);
rd_data : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);

r1_addr: out STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);
r2_addr: out STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);
rd_addr: out STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);

-- Program Counter (PC)
current_pc : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);
new_pc : out STD_LOGIC_VECTOR ((data_width - 1) downto 0)

); 				
end decoder_and_controller_unit;


architecture Behavioral of decoder_and_controller_unit is

-- signals
signal opcode_bits : STD_LOGIC_VECTOR ((opcode_width - 1) downto 0);
signal opcode_string : opcode_type;
signal tail: STD_LOGIC_VECTOR ((tail_width - 1) downto 0);

begin
	
	--Process that decodes instructions 
	decoder_process : process (clk)
	begin
	
		if rising_edge(clk) then
		
			-- slice the instructions and serve them to relevant ports and signals
			opcode_bits <= instructions(15 downto 12);
			rd_addr <= instructions(11 downto 9);
			r1_addr <= instructions (8 downto 6);
			r2_addr <= instructions (5 downto 3); 
			tail <= instructions (2 downto 0);
			
			-- convert opcode from std_logic_vector to opcode_type
			opcode_string <= std_logic_vector_to_opcode_type(opcode_bits => opcode_bits);

		end if;
		
	end process;

end Behavioral;

