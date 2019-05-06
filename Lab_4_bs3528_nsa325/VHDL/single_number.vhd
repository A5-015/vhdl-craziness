

---------------------------------------------------------------


---------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity single_number is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (0 to 7));
end single_number;

architecture Behavioral of single_number is

begin

with number select seg <=
	-- A_B_C_D_E_F_G_DP; 0 is on, 1 is off
	"00000011" when "0000", -- 0
	"10011111" when "0001", -- 1 
	"00100101" when "0010", -- 2
	"00001101" when "0011", -- 3
	"10011001" when "0100", -- 4
	"01001001" when "0101", -- 5 ------- TODO
	"01000001" when "0110", -- 6 ------- TODO
	"00011111" when "0111", -- 7 ------- TODO
	"00000000" when "1000", -- -8 ------- TODO
	"00011110" when "1001", -- -7 ------- TODO
	"01000000" when "1010", -- -6 ------- TODO
	"01001000" when "1011", -- -5 ------- TODO
	"10011000" when "1100", -- -4
	"00001100" when "1101", -- -3
	"00100100" when "1110", -- -2
	"10011110" when "1111", -- -1
	
	
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