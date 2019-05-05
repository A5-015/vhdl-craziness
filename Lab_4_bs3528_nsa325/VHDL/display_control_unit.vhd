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

entity display_control_unit is
    Port ( clk : in STD_LOGIC;
			  PI_a : in  STD_LOGIC_VECTOR (3 downto 0);
           PI_b : in  STD_LOGIC_VECTOR (3 downto 0);
           PI_s : in  STD_LOGIC_VECTOR (2 downto 0);
           PO_seg : out  STD_LOGIC_VECTOR (0 to 7);			  
           PO_an : out  STD_LOGIC_VECTOR (3 downto 0));			  
end display_control_unit;

architecture Behavioral of ALU_display is


---------------------------------------------------------------
-- TODO component declarations, along with signals as needed --
---------------------------------------------------------------
---- simgle_number ---- component ----
component single_number
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (0 to 7));
end component;

---- simgle_number ---- signals ----
signal number : STD_LOGIC_VECTOR (3 downto 0);
signal seg : STD_LOGIC_VECTOR (0 to 7);


---- ALU ---- component ----
component ALU
    Port ( o : out  STD_LOGIC_VECTOR (3 downto 0);
           in_A : in  STD_LOGIC_VECTOR (3 downto 0);
           in_B : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (2 downto 0));
end component;

---- ALU ---- signals ----
signal o : STD_LOGIC_VECTOR (3 downto 0);
signal in_A : STD_LOGIC_VECTOR (3 downto 0);
signal in_B : STD_LOGIC_VECTOR (3 downto 0);
signal s : STD_LOGIC_VECTOR (2 downto 0);


---------------------------
-- clock divider signals --
---------------------------
constant cnt_max : integer := 1e5;
signal clk_cnt : integer range 0 to cnt_max;
signal seg_mode, seg_mode_new : integer range 0 to 3;

begin


------------------------------
-- TODO component instances --
------------------------------
---- simgle_number ---- ports ----
I1 : single_number port map (
	number => number, 
	seg => PO_seg);

---- ALU ---- ports ----
I2 : ALU port map (
	o => o, 
	in_A => PI_a, 
	in_B => PI_b, 
	s => PI_s);


-----------------------------------------
-- process to iterate through seg_mode --
-----------------------------------------
seg_mode_switch : process (clk)
begin
	if rising_edge(clk) then
		if (clk_cnt = cnt_max) then
			seg_mode <= seg_mode_new;
			clk_cnt <= 0;
		else
			clk_cnt <= clk_cnt + 1;
		end if;
	end if;
end process;


-----------------------------------------------------
-- process to generate output on the four displays --
-----------------------------------------------------
-- TODO fill remaining parts 
display : process (seg_mode, seg, PI_a, PI_b, o)
begin

	if (seg_mode = 3) then
		number <= PI_a;
		PO_an <= "0111";
		seg_mode_new <= 2;
	-- TODO fill missing cases
	
	elsif (seg_mode = 2) then
		number <= PI_b;
		PO_an <= "1011";
		seg_mode_new <= 1;
		
	elsif (seg_mode = 1) then
		number <= PI_a;
		PO_an <= "1111";
		seg_mode_new <= 0;
	
	elsif (seg_mode = 0) then
		number <= o;
		PO_an <= "1110";
		seg_mode_new <= 3;
		
	end if;

end process;

end Behavioral;
