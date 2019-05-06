----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:57:18 05/06/2019 
-- Design Name: 
-- Module Name:    top_FPGA - Behavioral 
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
use work.common.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_FPGA is
end top_FPGA;

architecture Behavioral of top_FPGA is


component display_control_unit is
    Port ( clk : in STD_LOGIC); -- selecting one of the 7 segment displays
end component;



begin


-------------------------
-- component instances --
-------------------------
display_control_unit_inst : display_control_unit
	port map (PC_current, instruction);


end Behavioral;

