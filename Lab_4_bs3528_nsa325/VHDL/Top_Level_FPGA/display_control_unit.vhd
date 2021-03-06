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
				
end display_control_unit;

architecture Behavioral of display_control_unit is

component Display_Signed_BCD
    Port ( input : in  STD_LOGIC_VECTOR ((data_width - 1) downto 0);
           sign : out  STD_LOGIC;
           seg_dec_100 : out  STD_LOGIC_VECTOR (0 to 7);
           seg_dec_10 : out  STD_LOGIC_VECTOR (0 to 7);
           seg_dec_1 : out  STD_LOGIC_VECTOR (0 to 7));
end component;

component Display_Opcode
    Port ( 
				overflow_opcode : in STD_LOGIC;
				input_opcode : in opcode_type;
				seg_opcode_1000 : out  STD_LOGIC_VECTOR (0 to 7);
				seg_opcode_100 : out  STD_LOGIC_VECTOR (0 to 7);
				seg_opcode_10 : out  STD_LOGIC_VECTOR (0 to 7);
				seg_opcode_1 : out  STD_LOGIC_VECTOR (0 to 7)
			);
end component;

-- Display Signed BCD
signal binary_input : STD_LOGIC_VECTOR (7 downto 0); 
signal logic_sign : STD_LOGIC; 
signal bcd_seg_100 : STD_LOGIC_VECTOR(7 downto 0);
signal bcd_seg_10 : STD_LOGIC_VECTOR(7 downto 0);
signal bcd_seg_1 : STD_LOGIC_VECTOR(7 downto 0);

-- Display Opcode
signal opcode_overflow : STD_LOGIC;
signal opcode_input : opcode_type; 
signal opcode_visibility_toggle : STD_LOGIC; 
signal opcode_seg_1000 : STD_LOGIC_VECTOR(7 downto 0);
signal opcode_seg_100 : STD_LOGIC_VECTOR(7 downto 0);
signal opcode_seg_10 : STD_LOGIC_VECTOR(7 downto 0);
signal opcode_seg_1 : STD_LOGIC_VECTOR(7 downto 0);


--attribute keep : string;
--attribute keep of opcode_overflow : signal is "true";
--attribute keep of opcode_input   : signal is "true";


-- Clock Divider Signals
signal clk_cnt_block : integer range 0 to cnt_block;
signal clk_cnt_page : integer range 0 to cnt_page; 
signal seg_mode, seg_mode_new : integer range 0 to 3;
signal page_mode, page_mode_new : integer range 0 to 3;

begin 

-----------------------------------------
-- process to iterate through seg_mode --
-----------------------------------------
seg_mode_switch : process (clk)
begin
	if rising_edge(clk) then
	
		if (clk_cnt_page /= cnt_page) then
		
			if (clk_cnt_block = cnt_block) then
				seg_mode <= seg_mode_new;
				clk_cnt_block <= 0;
				
			else
				clk_cnt_block <= clk_cnt_block + 1;
				
			end if;
			
			clk_cnt_page <= clk_cnt_page + 1;
			
		else 
			page_mode <= page_mode_new; 
			clk_cnt_page <= 0;
		
		end if;
			
	end if;
	
end process;


-------------------------------------
-- process to switch between pages --
-------------------------------------

pages : process (page_mode, page_mode_new, binary_operand_1, binary_operand_2, string_opcode, binary_result, overflow_logic)
begin


	opcode_input <= string_opcode;
	
	-----------------------------------------------------------------
	opcode_overflow <= overflow_logic;
   -----------------------------------------------------------------

	if (page_mode = 0) then
		binary_input <= binary_operand_1;
		opcode_visibility_toggle <= '0';
		page_mode_new <= 1;
	
	elsif (page_mode = 1) then
		binary_input <= binary_operand_2;
		opcode_visibility_toggle <= '0';
		page_mode_new <= 2;
		
	elsif (page_mode = 2) then
		binary_input <= "00000000"; -- needed to prevent latches
		opcode_visibility_toggle <= '1';
		page_mode_new <= 3;
	
	elsif (page_mode = 3) then 
	
		if opcode_overflow = '1' then
			binary_input <= "00000000"; -- needed to prevent latches
			opcode_visibility_toggle <= '1';
		
		else
			binary_input <= binary_result;
			opcode_visibility_toggle <= '0';
			
		end if;
		
		page_mode_new <= 0; 
		
	end if;
		
end process;

-----------------------------------------------------
-- process to generate output on the four block displays --
-----------------------------------------------------
segment : process (seg_mode, seg_mode_new, logic_sign, bcd_seg_100, bcd_seg_10, bcd_seg_1, opcode_seg_1000, opcode_seg_100, opcode_seg_10, opcode_seg_1, opcode_visibility_toggle)
begin

	if (seg_mode = 3) then
		
		if opcode_visibility_toggle = '0' then
			seg_bits <= "11111111"; -- used to prevent latches
			
			-- should show negative sign or nothing
			if logic_sign = '1' then
				seg_bits <= "11111101";
				
			elsif logic_sign = '0' then
				seg_bits <= "11111111";
			
			end if;
			
		else
			-- Opcode 1000s
			seg_bits <= opcode_seg_1000;
		
		end if;
		
		seg_an <= "0111";
		seg_mode_new <= 2;
	
	elsif (seg_mode = 2) then
		seg_bits <= "11111111"; -- used to prevent latches
		
		if opcode_visibility_toggle = '0' then
			-- decimal 100s
			seg_bits <= bcd_seg_100;
			
		else
			-- opcode 100s
			seg_bits <= opcode_seg_100;
			
		end if;
		
		seg_an <= "1011";
		seg_mode_new <= 1;
		
	elsif (seg_mode = 1) then
		seg_bits <= "11111111"; -- used to prevent latches
		
		if opcode_visibility_toggle = '0' then
			-- decimal 10s
			seg_bits <= bcd_seg_10;
					
		else
			-- opcode 10s
			seg_bits <= opcode_seg_10;
			
		end if;
			
		seg_an <= "1101";
		seg_mode_new <= 0;
	
	elsif (seg_mode = 0) then
		seg_bits <= "11111111"; -- used to prevent latches
		
		if opcode_visibility_toggle = '0' then
			-- decimal 1s
			seg_bits <= bcd_seg_1;
					
		else
			-- opcode 1s
			seg_bits <= opcode_seg_1;
			
		end if;
		
		seg_an <= "1110";
		seg_mode_new <= 3;
		
	end if;

end process;

Display_Signed_BCD_inst : Display_Signed_BCD
	port map(	
				binary_input,
				logic_sign,
				bcd_seg_100,
				bcd_seg_10,
				bcd_seg_1
				);
	

Display_Opcode_inst : Display_Opcode
   port map( 
				overflow_opcode => opcode_overflow,
				input_opcode => opcode_input,
				seg_opcode_1000 => opcode_seg_1000,
				seg_opcode_100 => opcode_seg_100,
				seg_opcode_10 => opcode_seg_10,
				seg_opcode_1 => opcode_seg_1
				);

end Behavioral;
