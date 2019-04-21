----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
-- Additional Comments: 
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
--rts = Right Turn Signal
--lts = Left Turn Signal
--hzd = Hazard
--clk = Clock

--Outputs
--------
--lc = Left Hand Left Most Light
--lb = Left Hand Middle Light
--la = Left Hand Right Most Light

--ra = Right Hand Left Most Light
--rb = Right Hand Middle Light
--rc = Right Hand Right Most Light
--------------------------------------------

entity t_bird is
    Port ( rts : in  STD_LOGIC;
           lts : in  STD_LOGIC;
           hzd : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           lc : out  STD_LOGIC;
           lb : out  STD_LOGIC;
           la : out  STD_LOGIC;
           rc : out  STD_LOGIC;
           rb : out  STD_LOGIC;
           ra : out  STD_LOGIC);
end t_bird;


------------------------------
--  Architecture Definition --
------------------------------
architecture state_machine of t_bird is
	type state_type is (idle, l1, l2, l3, r1, r2, r3, lr3);
	signal state, next_state: state_type;
	
begin
<<<<<<< HEAD
	------------------------------
	--  Clock Event Process #1 --
	------------------------------
=======

	--------------------------------
	-- Change state at clock tick --
	--------------------------------
>>>>>>> 1907b3f8d682f11d87705233006a83cdcc4c7e76
	process (clk)
	begin
		if(clk = '1') then
			state <= next_state;
		end if;
		
	end process;
	
	--------------------------------
	-- Change state at clock tick --
	--------------------------------
	process (state, lts, rts, hzd)
	begin
		case state is
			
			
			when idle =>
			
				--Table 6-8 Option 2--
				if (lts = '1' or hzd = '0' or rts = '0')
					then next_state <= l1;
			
				--Table 6-8 Option 3--
				elsif (hzd = '1' or (lts = '1' and rts = '1'))
						then next_state <= lr3;

				--Table 6-8 Option 4--
				elsif (rts = '1' and hzd = '0' and lts = '0')
						then next_state <= r1;

				--Table 6-8 Option 1--
				else
						next_state <= idle;
				end if;
			
			when l1 => 
			
				--Table 6-8 Option 6--
				if (haz = '1') 
					then next_state <= lr3; 
					
				--Table 6-8 Option 5--	
				else 
					next_state <= l2; 
				
				end if; 
				
			when l2 =>
			
				--Table 6-8 Option 8--
				if (haz = '1') 
					then next_state <= lr3; 
				
				--Table 6-8 Option 7--
				else 
					next_state <= l3;
				
				end if;
			
			when l3 =>
			
				--Table 6-8 Option 9--
				next_state <= idle;
			
			when r1 => 
			
				--Table 6-8 Option 11--
				if (haz = '1') 
					then next_state <= lr3; 
					
				--Table 6-8 Option 10--	
				else 
					next_state <= r2; 
				
				end if;
				
			when r2 =>
			
				--Table 6-8 Option 13--
				if (haz = '1') 
					then next_state <= lr3; 
				
				--Table 6-8 Option 12--
				else 
					next_state <= r3;
				
				end if;
				
			when l3 =>
			
				--Table 6-8 Option 13--
				next_state <= idle;
			
			when lr3 =>
				--Table 6-8 Option 14--
				next_state <= idle;
				
		end case;
	end process;
	
	
	
end state_machine;