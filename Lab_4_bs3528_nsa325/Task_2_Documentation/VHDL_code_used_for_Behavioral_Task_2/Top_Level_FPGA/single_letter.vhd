

---------------------------------------------------------------


---------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity single_letter is
    Port ( letter : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (0 to 7));
end single_letter;

architecture Behavioral of single_letter is

begin

with letter select seg <=
	-- A_B_C_D_E_F_G_DP; 0 is on, 1 is off

	"11111101" when "-", -- negative sign
	"00010001" when "A",
	"11000001" when "B",
	"10000101" when "D",
	"01100001" when "E",
	"01110001" when "F",
	"11010001" when "H",
	"11110011" when "I",
	"10000111" when "J",
	"11100011" when "L",
	"00010011" when "N",
	"01010111" when "M",
	"00000011" when "O",
	"00110001" when "P",
	"00110011" when "R",
	"01001001" when "S",
	"11100001" when "T",
	"10000011" when "U",
	
	"11111111" when others; -- all off

end Behavioral;