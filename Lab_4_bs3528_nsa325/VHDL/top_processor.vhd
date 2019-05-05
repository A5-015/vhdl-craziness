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

entity top_processor is
	port ( 	clk : in STD_LOGIC;
		rst : in STD_LOGIC;

	 	operand_1 : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);
	 	operand_2 : out STD_LOGIC_VECTOR ((data_width - 1) downto 0);

		opcode : out opcode_type;

		result : out STD_LOGIC_VECTOR ((data_width - 1) downto 0)
	);
end top_processor;

architecture Behavioral of top_processor is

component Instructions_ROM
	port ( 	address_in : in STD_LOGIC_VECTOR ((address_width - 1) downto 0);
		data_out : out STD_LOGIC_VECTOR ((instruction_width - 1) downto 0)
	     );
end component;

component PC
	port ( 	clk : in STD_LOGIC;
		rst: in STD_LOGIC;

		PC_in : in STD_LOGIC_VECTOR ((address_width - 1) downto 0);
		PC_out : out STD_LOGIC_VECTOR ((address_width - 1) downto 0);

		PC_we : in STD_LOGIC;
		PC_incr : in STD_LOGIC
	     );
end component;

component Registers
	port ( 	clk : in STD_LOGIC;
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

-- internal signals
--
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

begin

-- component instances 
--
Instructions_ROM_inst : Instructions_ROM
	port map (PC_current, instruction);

PC_inst : PC
	port map (clk, rst, PC_overwrite, PC_current, PC_we, PC_incr);

Registers_inst : Registers
	port map (clk, rst, Rs1_addr, Rs1_data, Rs2_addr, Rs2_data, Rd_addr, Rd_data, Rd_we);

end Behavioral;

