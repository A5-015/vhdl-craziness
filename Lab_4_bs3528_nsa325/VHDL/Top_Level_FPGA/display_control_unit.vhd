----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:57:27 05/06/2019 
-- Design Name: 
-- Module Name:    display_control_unit - Behavioral 
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
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.common.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display_control_unit is
    Port ( clk : in STD_LOGIC;
			  disp_operand_1 : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0); 
           disp_operand_2 : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0);
           result : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0);
			  disp_opcode : out opcode_type;
			  
           disp_seg : out  STD_LOGIC_VECTOR (0 to 7);     -- turning on/off individual leds on selected 7 segment display
           disp_an : out  STD_LOGIC_VECTOR (3 downto 0)); -- selecting one of the 7 segment displays
end display_control_unit;


architecture Behavioral of display_control_unit is

begin


end Behavioral;
