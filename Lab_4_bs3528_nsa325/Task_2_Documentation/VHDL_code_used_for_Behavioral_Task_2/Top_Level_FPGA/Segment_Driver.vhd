library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Segment_Driver is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (0 to 7)
	 );
end Segment_Driver;

architecture Behavioral of Segment_Driver is

begin

with input select seg <=
	-- A_B_C_D_E_F_G_DP; 0 is on, 1 is off
	"00000011" when "0000", -- 0
	"10011111" when "0001", -- 1 
	"00100101" when "0010", -- 2
	"00001101" when "0011", -- 3
	"10011001" when "0100", -- 4
	"01001001" when "0101", -- 5
	"01000001" when "0110", -- 6
	"00011111" when "0111", -- 7
	"00000001" when "1000", -- 8
	"00001001" when "1001", -- 9
	"11111111" when others; -- dark

end Behavioral;
