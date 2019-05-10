library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use work.common.all;

entity top_FPGA is
	port ( 	
			clk : in STD_LOGIC;
			clk_proc_in :  in STD_LOGIC;
			rst : in STD_LOGIC;

			operand_1 : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);
			operand_2 : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);

			opcode : out opcode_type;

			result : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);

			seg_bits : out  STD_LOGIC_VECTOR (0 to 7);
			seg_an : out  STD_LOGIC_VECTOR (3 downto 0)
			);
end top_FPGA;

architecture Behavioral of top_FPGA is

----------------
-- components --
----------------
component Instructions_ROM
	port ( 	
			address_in : in STD_LOGIC_VECTOR ((address_width - 1) downto 0);
			data_out : out STD_LOGIC_VECTOR ((instruction_width - 1) downto 0)
			);
end component;

component PC
	port ( 	
			clk : in STD_LOGIC;
			rst: in STD_LOGIC;

			PC_in : in STD_LOGIC_VECTOR ((address_width - 1) downto 0);
			PC_out : out STD_LOGIC_VECTOR ((address_width - 1) downto 0);

			PC_we : in STD_LOGIC;
			PC_incr : in STD_LOGIC
			);
end component;

component display_control_unit 

    Port (
				clk : in STD_LOGIC;
				binary_operand_1 : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0); 
				binary_operand_2 : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0);
				binary_result : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);
				
				overflow_logic : in STD_LOGIC; 
				string_opcode : in opcode_type;

				seg_bits : out  STD_LOGIC_VECTOR (0 to 7);  -- turning on/off individual leds on selected 7 segment display
				seg_an : out  STD_LOGIC_VECTOR (3 downto 0) -- selecting one of the 7 segment displays
			); 			
			
end component;


component Registers
	port ( 	
			clk : in STD_LOGIC;
			rst: in STD_LOGIC;

			Rs1_addr_in : in STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);
			Rs1_data_out : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);

			Rs2_addr_in : in STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);
			Rs2_data_out : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);

			Rd_addr_in : in STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);
			Rd_data_in : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);
			Rd_we : in STD_LOGIC
			);
end component;

component alu_8_bit
	Port (
			ALU_out : out  STD_LOGIC_VECTOR ((data_width - 1) downto 0); 	-- RD output 
			ALU_overflow : out  STD_LOGIC; 	                              -- RD overflow
			in1 : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0); 		   -- R1 input
			in2 : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0); 		   -- R2 input
			ALU_sel : in opcode_type                                       -- operation code
			); 			          	
	
end component;


component decoder_and_controller_unit
	Port (
			--	ROM
			instructions : in STD_LOGIC_VECTOR ((instruction_width - 1) downto 0); -- receiving instructions

			-- Register File
			r1_data : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);     -- receiving r1 data from register file
			r2_data : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);     -- receiving r2 data from register file
			rd_data : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);    -- sending rd data to register file

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
			alu_out : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);
			
			custom_clock : in STD_LOGIC

			); 				
end component;


----------------------
-- internal signals --
----------------------
-- instructions
signal PC_current : STD_LOGIC_VECTOR ((address_width - 1) downto 0);
signal PC_overwrite : STD_LOGIC_VECTOR ((address_width - 1) downto 0);
signal PC_we : STD_LOGIC;
signal PC_incr : STD_LOGIC;
signal instruction : STD_LOGIC_VECTOR ((instruction_width - 1) downto 0);

-- registers
signal Rd_addr : STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);
signal Rd_data : STD_LOGIC_VECTOR ((data_width - 1) downto 0);
signal Rs1_addr : STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);                                                                               
signal Rs1_data : STD_LOGIC_VECTOR ((data_width - 1) downto 0);
signal Rs2_addr : STD_LOGIC_VECTOR ((reg_addr_width - 1) downto 0);
signal Rs2_data : STD_LOGIC_VECTOR ((data_width - 1) downto 0);
signal Rd_we : STD_LOGIC;

-- ALU 
signal alu_result : STD_LOGIC_VECTOR ((data_width - 1) downto 0);
signal alu_of: STD_LOGIC; 	               
signal alu_operand_1 : STD_LOGIC_VECTOR ((data_width - 1) downto 0); 		
signal alu_operand_2 : STD_LOGIC_VECTOR ((data_width - 1) downto 0); 	
signal alu_sel : opcode_type;

-- Display Control Unit
signal binary_input : STD_LOGIC_VECTOR (7 downto 0); 
signal logic_sign : STD_LOGIC; 
--signal bcd_seg_100 : STD_LOGIC_VECTOR(7 downto 0);
--signal bcd_seg_10 : STD_LOGIC_VECTOR(7 downto 0);
--signal bcd_seg_1 : STD_LOGIC_VECTOR(7 downto 0);

signal disp_bits : STD_LOGIC_VECTOR (0 to 7);     -- turning on/off individual leds on selected 7 segment display
signal disp_an : STD_LOGIC_VECTOR (3 downto 0); -- selecting one of the 7 segment displays	

--signal clk_cnt_block : integer range 0 to cnt_block;
--signal clk_cnt_page : integer range 0 to cnt_page; 
--signal seg_mode, seg_mode_new : integer range 0 to 3;
--signal page_mode, page_mode_new : integer range 0 to 3;


begin
-------------------------
-- component instances --
-------------------------
Instructions_ROM_inst : Instructions_ROM
	port map (
				PC_current, 
				instruction
				);

PC_inst : PC
	port map (
				clk, 
				rst, 
				PC_overwrite, 
				PC_current, 
				PC_we, 
				PC_incr
				);

Registers_inst : Registers
	port map (
				clk, 
				rst, 
				Rs1_addr, 
				Rs1_data, 
				Rs2_addr, 
				Rs2_data, 
				Rd_addr, 
				Rd_data, 
				Rd_we
				);
	
ALU_inst : alu_8_bit
	port map (
				alu_result,
				alu_of,
				alu_operand_1,
				alu_operand_2,
				alu_sel
				);
	
Decoder_Controller_inst : decoder_and_controller_unit
	port map (
				instruction,
				Rs1_data,
				Rs2_data,
				Rd_data,
				Rs1_addr,
				Rs2_addr,
				Rd_addr,
				Rd_we,
				PC_current,
				PC_overwrite,
				PC_we,
				PC_incr,
				alu_sel,
				alu_operand_1,
				alu_operand_2,
				alu_result,
				custom_clock => clk_proc_in
				);

Display_Control_Unit_inst : display_control_unit
	port map (
				clk => clk, 
				binary_operand_1 => alu_operand_1, 
				binary_operand_2 => alu_operand_2, 
				binary_result => Rd_data, 
				overflow_logic => alu_of, 
				string_opcode => alu_sel, 
				seg_bits => disp_bits, 
				seg_an => disp_an
				);


-- assigning corresponding signals
operand_1 <= alu_operand_1;
operand_2 <= alu_operand_2;
opcode <= alu_sel;
result <= alu_result;

seg_bits <= disp_bits; 
seg_an <= disp_an;

end Behavioral;

