----------------------------------------------------------------------------------
-- Company: A5-015
-- Engineers: Barkin Simsek and Nishant Aswani
-- 
-- Create Date:    16:24:21 04/15/2019 
-- Design Name: 
-- Module Name:    t_bird_bs_nsa - state_machine 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: VHDL rocks
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


--------------------------------------------
--Inputs
--------
--RTS = Right Turn Signal
--LTS = Left Turn Signal
--HZD = Hazard
--CLK = Clock

--Outputs
--------
--LC = Left Hand Left Most Light
--LB = Left Hand Middle Light
--LA = Left Hand Right Most Light

--RA = Right Hand Left Most Light
--RB = Right Hand Middle Light
--RC = Right Hand Right Most Light
--------------------------------------------

------------------------------------
--  Tail Light Entity Definition  --
------------------------------------
entity t_bird is
    Port ( RTS : in  STD_LOGIC;
           LTS : in  STD_LOGIC;
           HZD : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           LC : out  STD_LOGIC;
           LB : out  STD_LOGIC;
           LA : out  STD_LOGIC;
           RC : out  STD_LOGIC;
           RB : out  STD_LOGIC;
           RA : out  STD_LOGIC);
end t_bird;


------------------------------
--  Architecture Definition --
------------------------------
architecture state_machine of t_bird is
	type state_type is (IDLE, L1, L2, L3, R1, R2, R3, LR3);
	
	
	-- Clock Divider Signals
	constant CNT_MAX_HZD_ON : integer := 1e5;
	constant CNT_MAX_HZD_OFF : integer := 2e5;
	signal CLK_CNT : integer range 0 to CNT_MAX_HZD_OFF;
	signal STATE, NEXT_STATE: state_type;

	begin

	------------------------------
	--  Clock Event Process #1  --
	------------------------------
	-- Process to iterate through states
	process (CLK)
	begin
	
		if rising_edge(CLK) then
			
			if (HZD = '1' AND CLK_CNT /= CNT_MAX_HZD_ON) then 
				CLK_CNT <= CLK_CNT + 1;
				
			elsif (HZD = '0' AND CLK_CNT /= CNT_MAX_HZD_OFF) then 
				CLK_CNT <= CLK_CNT + 1;
			
			else
				STATE <= NEXT_STATE;
				CLK_CNT <= 0;
				
			end if;
			
		end if;
	
	--	if(CLK = '1' and CLK'event) then
	--		STATE <= NEXT_STATE;
	--	end if;

	end process;


	------------------------------
	--  Clock Event Process #2  --
	------------------------------
	-- Next STATE logic process
	process (STATE, LTS, RTS, HZD)
	begin
		case STATE is
			
			when IDLE =>
				-- Table 6-8 Option 2
				-- LEFT * HAZ' * RIGHT'
				if (LTS = '1' and HZD = '0' and RTS = '0')
					then NEXT_STATE <= L1;
			
				-- Table 6-8 Option 3
				-- HAZ + LEFT * RIGHT
				elsif (HZD = '1' or (LTS = '1' and RTS = '1'))
						then NEXT_STATE <= LR3;

				-- Table 6-8 Option 4
				-- RIGHT * HAZ' * LEFT'
				elsif (RTS = '1' and HZD = '0' and LTS = '0')
						then NEXT_STATE <= R1;

				-- Table 6-8 Option 1
				-- (LEFT + RIGHT + HAZ)'
				else
						NEXT_STATE <= IDLE;
						
				end if;
			
			
			when L1 => 
				-- Table 6-8 Option 6
				-- HAZ
				if (HZD = '1') 
					then NEXT_STATE <= LR3; 
					
				-- Table 6-8 Option 5
				-- HAZ'
				else 
					NEXT_STATE <= L2; 
				
				end if; 
				
				
			when L2 =>
				-- Table 6-8 Option 8
				-- HAZ
				if (HZD = '1') 
					then NEXT_STATE <= LR3; 
				
				-- Table 6-8 Option 7
				-- HAZ'
				else 
					NEXT_STATE <= L3;
				
				end if;
			
			
			when L3 =>
				-- Table 6-8 Option 9
				-- 1
				NEXT_STATE <= IDLE;
			
			
			when R1 => 
				-- Table 6-8 Option 11
				-- HAZ
				if (HZD = '1') 
					then NEXT_STATE <= LR3; 
					
				-- Table 6-8 Option 10
				-- HAZ'
				else 
					NEXT_STATE <= R2; 
				
				end if;
				
				
			when R2 =>
				-- Table 6-8 Option 13
				-- HAZ
				if (HZD = '1') 
					then NEXT_STATE <= LR3; 
				
				-- Table 6-8 Option 12
				-- HAZ'
				else 
					NEXT_STATE <= R3;
				
				end if;
				
				
			when R3 =>
				-- Table 6-8 Option 14
				-- 1
				NEXT_STATE <= IDLE;
			
			
			when LR3 =>
				-- Table 6-8 Option 15
				-- 1
				NEXT_STATE <= IDLE;
				
		end case;
	end process;
	
	
	------------------------------
	--  Clock Event Process #3  --
	------------------------------
	-- State machine outputs process
	process (STATE)
	begin
		case STATE is
			
			-- 000000
			when IDLE =>
				LC <= '0';
				LB <= '0';
				LA <= '0';
				RA <= '0';
				RB <= '0';
				RC <= '0';
			
			-- 001000
			when L1 =>
				LC <= '0';
				LB <= '0';
				LA <= '1';
				RA <= '0';
				RB <= '0';
				RC <= '0';
				
			-- 011000
			when L2 =>
				LC <= '0';
				LB <= '1';
				LA <= '1';
				RA <= '0';
				RB <= '0';
				RC <= '0';
			
			-- 111000
			when L3 =>
				LC <= '1';
				LB <= '1';
				LA <= '1';
				RA <= '0';
				RB <= '0';
				RC <= '0';
			
			-- 000100
			when R1 =>
				LC <= '0';
				LB <= '0';
				LA <= '0';
				RA <= '1';
				RB <= '0';
				RC <= '0';
			
			-- 000110
			when R2 =>
				LC <= '0';
				LB <= '0';
				LA <= '0';
				RA <= '1';
				RB <= '1';
				RC <= '0';
			
			-- 000111
			when R3 =>
				LC <= '0';
				LB <= '0';
				LA <= '0';
				RA <= '1';
				RB <= '1';
				RC <= '1';
			
			-- 111111
			when LR3 =>
				LC <= '1';
				LB <= '1';
				LA <= '1';
				RA <= '1';
				RB <= '1';
				RC <= '1';
			
		end case;
	end process;

	
	end state_machine;