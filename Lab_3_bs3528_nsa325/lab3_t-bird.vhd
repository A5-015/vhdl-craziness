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
	signal state, next_state: state_type;
	
	begin

	------------------------------
	--  Clock Event Process #1  --
	------------------------------
	-- Sequential Elements
	process (CLK)
	begin
		if(CLK = '1' and CLK'event) then
			state <= next_state;
		end if;

	end process;


	------------------------------
	--  Clock Event Process #2  --
	------------------------------
	-- Next state logic process
	process (state, LTS, RTS, HZD)
	begin
		case state is
			
			when IDLE =>
				-- Table 6-8 Option 2
				-- LEFT * HAZ' * RIGHT'
				if (LTS = '1' and HZD = '0' and RTS = '0')
					then next_state <= L1;
			
				-- Table 6-8 Option 3
				-- HAZ + LEFT * RIGHT
				elsif (HZD = '1' or (LTS = '1' and RTS = '1'))
						then next_state <= LR3;

				-- Table 6-8 Option 4
				-- RIGHT * HAZ' * LEFT'
				elsif (RTS = '1' and HZD = '0' and LTS = '0')
						then next_state <= R1;

				-- Table 6-8 Option 1
				-- (LEFT + RIGHT + HAZ)'
				else
						next_state <= IDLE;
						
				end if;
			
			
			when L1 => 
				-- Table 6-8 Option 6
				-- HAZ
				if (HZD = '1') 
					then next_state <= LR3; 
					
				-- Table 6-8 Option 5
				-- HAZ'
				else 
					next_state <= L2; 
				
				end if; 
				
				
			when L2 =>
				-- Table 6-8 Option 8
				-- HAZ
				if (HZD = '1') 
					then next_state <= LR3; 
				
				-- Table 6-8 Option 7
				-- HAZ'
				else 
					next_state <= L3;
				
				end if;
			
			
			when L3 =>
				-- Table 6-8 Option 9
				-- 1
				next_state <= IDLE;
			
			
			when R1 => 
				-- Table 6-8 Option 11
				-- HAZ
				if (HZD = '1') 
					then next_state <= LR3; 
					
				-- Table 6-8 Option 10
				-- HAZ'
				else 
					next_state <= R2; 
				
				end if;
				
				
			when R2 =>
				-- Table 6-8 Option 13
				-- HAZ
				if (HZD = '1') 
					then next_state <= LR3; 
				
				-- Table 6-8 Option 12
				-- HAZ'
				else 
					next_state <= R3;
				
				end if;
				
				
			when R3 =>
				-- Table 6-8 Option 14
				-- 1
				next_state <= IDLE;
			
			
			when LR3 =>
				-- Table 6-8 Option 15
				-- 1
				next_state <= IDLE;
				
		end case;
	end process;
	
	
	------------------------------
	--  Clock Event Process #3  --
	------------------------------
	-- State machine outputs process
	process (state)
	begin
		case state is
			
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