library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.common.all;

entity Display_Signed_BCD is
    Port ( input : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0);
           sign : out  STD_LOGIC;
           seg_dec_100 : out  STD_LOGIC_VECTOR (0 to 7);
           seg_dec_10 : out  STD_LOGIC_VECTOR (0 to 7);
           seg_dec_1 : out  STD_LOGIC_VECTOR (0 to 7)
	 );
end Display_Signed_BCD;

architecture Behavioral of Display_Signed_BCD is

-- components
--
component Segment_Driver is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (0 to 7)
	 );
end component;

-- internal signals
--
-- BCD encoding for 8-bit number requires 3x 4 bits (= 12 bits), for decimal representation of hundreds, tens, and ones
signal bcd_100 : STD_LOGIC_VECTOR(3 downto 0);
signal bcd_10 : STD_LOGIC_VECTOR(3 downto 0);
signal bcd_1 : STD_LOGIC_VECTOR(3 downto 0);

begin

-- component instances, hardwired for BCD signals
--
seg_dec_100_inst : Segment_Driver
	port map (bcd_100, seg_dec_100);
seg_dec_10_inst : Segment_Driver
	port map (bcd_10, seg_dec_10);
seg_dec_1_inst : Segment_Driver
	port map (bcd_1, seg_dec_1);

-- other hardwired signals
--
sign <= input(7);

-- convert binary encoding to BCD using Double dabble
--
-- https://stackoverflow.com/questions/16761713/vhdl-nth-digit-of-decimal-integer
-- https://stackoverflow.com/questions/23871792/convert-8bit-binary-number-to-bcd-in-vhdl
-- https://en.wikipedia.org/wiki/Double_dabble
binary_to_BCD : process (input)

-- BCD encoding for 8-bit number requires 3x 4 bits (= 12 bits), for decimal representation of hundreds, tens, and ones
variable bcd : STD_LOGIC_VECTOR(11 downto 0);
-- absolute unsigned input
variable abs_num : STD_LOGIC_VECTOR(7 downto 0);

begin
	-- reset BCD
	bcd := (others => '0');

	-- init abs_num
	--
	-- for neg number, revert two-complement encoding
	if (input(7) = '1') then
		-- that is, invert all bits and add one
		abs_num := std_logic_vector( unsigned(not(input)) + 1 );
	else
		abs_num := input;
	end if;

	-- now, cycle over all 8 bits of input for the actual double dabble
	--
	-- note that in the beginning, shifting of three bits would suffice; there's no need to check for "> 4" since that cannot be
	-- fulfilled
	-- also note that the combinatorial synthesis captures this, so there's no difference in hardware from this loop and an optimized
	-- version were the first three iterations would only shift
	for i in 0 to 7 loop

		-- tackle BCD parts encoding the ones
		if (unsigned(bcd(3 downto 0)) > 4) then
			bcd(3 downto 0) := std_logic_vector( unsigned(bcd(3 downto 0)) + 3 );
		end if;

		-- tackle BCD parts encoding the tens
		if (unsigned(bcd(7 downto 4)) > 4) then
			bcd(7 downto 4) := std_logic_vector( unsigned(bcd(7 downto 4)) + 3 );
		end if;

		-- tackle BCD parts encoding the hundreds
		if (unsigned(bcd(11 downto 8)) > 4) then
			bcd(11 downto 8) := std_logic_vector( unsigned(bcd(11 downto 8)) + 3 );
		end if;

		-- finally, shift BCD and abs_num
		bcd := bcd(10 downto 0) & abs_num(7);
		abs_num := abs_num(6 downto 0) & '0';

	end loop;

	-- assign BCD signals
	bcd_100 <= bcd(11 downto 8);
	bcd_10 <= bcd(7 downto 4);
	bcd_1 <= bcd(3 downto 0);

end process;

end Behavioral;
