----------------------------------------------------------------------------------
-- Company: A5-015
-- Engineer: Barkin Simsek and Nishant Aswani
-- 
-- Create Date:    10:54:38 04/28/2019 
-- Design Name: 
-- Module Name:    t_controller - state_machine 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: THIS CODE REQUIRES THE ADDITIN OF A PROCESS THAT HANDLES 
-- WALK INPUT, THE CURRENT SOLUTION IS NO GOOD. IT ALSO REQUIRES A PROCESS TO HANDLE
-- BLINKING. FINALLY, IT REQUIRES A PROCESS FOR OUTPUT.
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--------------------------------------------
--Inputs
--------
--SNS = Inductive Car Sensor
--WLK = Walk Button

--Outputs
--------
--ML = Main Street Light
--SL = Side Street LIght
--WL = Walk Light

--States 
--------
--allRedFirst = 	Main RED, 		Side RED, 		Walk OFF
--mainGreen = 		Main GREEN, 	Side RED, 		Walk OFF
--mainYellow = 	Main YELLOW, 	Side RED, 		Walk OFF
--allRedSecond = 	Main RED, 		Side RED, 		Walk OFF
--sideGreen = 		Main RED, 		Side GREEN, 	Walk OFF
--sideYellow = 	Main RED, 		Side YELLOW, 	Walk OFF
--walkON = 			Main RED, 		Side RED, 		Walk ON
--walkBLINK = 		Main RED, 		Side RED, 		Walk BLINK
--------------------------------------------


------------------------------------
--  Traffic Light Entity Definition  --
------------------------------------
entity t_controller is
    Port ( SNS : in  STD_LOGIC;
           WLK : in  STD_LOGIC;
			  RST : in	STD_LOGIC;
			  CLK : in 	STD_LOGIC; 
           ML : out  STD_LOGIC;
           SL : out  STD_LOGIC;
           WL : out  STD_LOGIC);
end t_controller;


------------------------------
--  Architecture Definition --
------------------------------
architecture state_machine of t_controller is
	
	-- Defining All States
	type state_type is (allRedFirst, mainGreen, 
								mainYellow, allRedSecond, 
								sideGreen, sideYellow, 
								walkOn, walkBlnk); 
	
	-- Clock Divider Signals 
	
	-- FPGA counts this value every second
	constant CNT : integer := 5e7;

	-- Custom counts for different states
	constant CNT_12SEC : integer := CNT*12;
	constant CNT_6SEC : integer := CNT*6;
	constant CNT_4SEC : integer := CNT*4;
	constant CNT_3SEC : integer := CNT*3; 
	
	-- Defining signals for use
	-- Remember: type "bit" uses single quotation marks! 
	-- Here it is used to simulate boolean logic
	
	signal CLK_CNT : integer range 0 to CNT_12SEC; 
	signal WLK_MEM : bit; 
	signal IGN_SNS : bit;  
	signal STATE, NEXT_STATE: state_type; 
	
	begin
	
	------------------------------
	--  Reset and Walk Process #1  --
	------------------------------
	-- Process that checks for when there is a hard reset and 
	-- whether walk button was pressed at the rising edge so it can store that
	
	-- This module accounts for "asynchronous" requests
	
	process (CLK)
	begin
	
		if rising_edge(CLK) then
		
			if (RST = '0' and WLK = '1') then
				WLK_MEM <= '1'; 
				--CLK_CNT <= 0;
				STATE <= NEXT_STATE; 
				
			elsif (RST = '0' and WLK = '0') then 
				STATE <= NEXT_STATE; 
		
			else 
				STATE <= allRedFirst;
				
			end if;
			
		end if;
		
	end process;
	
	------------------------------
	--  Next State Logic Process #2  --
	------------------------------
	-- Process that defines what the next state means
	
	-- This module accounts for, and strictly follows, the timings of each state 

	process (CLK)
	begin
	
		if rising_edge(CLK) then 
		
			case STATE is 
			
			
				when allRedFirst => 
				
					if (CLK_CNT = CNT_4SEC AND WLK_MEM = '1') then
						WLK_MEM <= '0';
						NEXT_STATE <= walkON; 
					
					elsif (CLK_CNT = CNT_4SEC AND WLK_MEM = '0') then
						NEXT_STATE <= mainGreen; 
					
					else 
						CLK_CNT  <= CLK_CNT + 1; 
					
					end if; 
					
					
				when walkOn =>
				
					if (CLK_CNT = CNT_12SEC) then
						NEXT_STATE <= walkBlink;
					
					else 
						CLK_CNT  <= CLK_CNT + 1;
					
					end if;
				
				
				--TO DO make a new process that handles the actual occurences of this state
				when walkBlink => 
					if (CLK_CNT = CNT_4SEC) then 
						NEXT_STATE <= allRedFirst;
					
					else 
						CLK_CNT  <= CLK_CNT + 1;
					
					end if;

				when mainGreen =>
				
					if (CLK_CNT = CNT_12SEC AND SNS = '1' AND IGN_SNS = '0') then
						IGN_SNS <= '1';
						NEXT_STATE <= mainGreen;
						
					elsif (CLK_CNT = CNT_6SEC AND SNS = '1' AND IGN_SNS = '1') then
						IGN_SNS <= '0';
						NEXT_STATE <= mainYellow;
					
					elsif (CLK_CNT = CNT_12SEC  AND SNS = '0') then 
						NEXT_STATE <= mainYellow;
					
					else 
						CLK_CNT <= CLK_CNT + 1; 
							
					end if;
				
				
				when mainYellow => 
					
					if (CLK_CNT = CNT_4SEC) then 
						NEXT_STATE <= allRedSecond; 
					
					else 
						CLK_CNT <= CLK_CNT + 1;
					
					end if;
							
				when allRedSecond => 
					
					if (CLK_CNT = CNT_4SEC AND WLK_MEM = '0') then
						NEXT_STATE <= sideGreen; 
					
					elsif (CLK_CNT = CNT_4SEC AND WLK_MEM = '1') then 
						NEXT_STATE <= walkOn; 
					
					else 
						CLK_CNT <= CLK_CNT + 1;
					
					end if;
			
				when sideGreen => 
					
					if (CLK_CNT = CNT_12SEC) then 
						NEXT_STATE <= sideYellow; 
					
					else 
						CLK_CNT <= CLK_CNT + 1;
						
					end if;
				
				when sideYellow => 
					
					if (CLK_CNT = CNT_3SEC) then 
						NEXT_STATE <= allRedFirst; 
					
					else 
						CLK_CNT <= CLK_CNT + 1;
						
					end if;	
					
			end case;
			
		end if;
		
	end process; 				

end state_machine;

				
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


