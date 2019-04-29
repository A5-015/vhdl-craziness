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
--walkOn = 			Main RED, 		Side RED, 		Walk ON
--walkBlink = 		Main RED, 		Side RED, 		Walk BLINK
--------------------------------------------


------------------------------------
--  Traffic Light Entity Definition  --
------------------------------------
entity t_controller is
    Port ( SNS : in  STD_LOGIC;
           WLK : in  STD_LOGIC;
			  RST : in	STD_LOGIC;
			  CLK : in 	STD_LOGIC; 
           MR : out  STD_LOGIC;
			  MY : out  STD_LOGIC;
			  MG : out  STD_LOGIC;
           SR : out  STD_LOGIC;
			  SY : out  STD_LOGIC;
           SG : out  STD_LOGIC;
			  WL : out	STD_LOGIC);
end t_controller;


------------------------------
--  Architecture Definition --
------------------------------
architecture state_machine of t_controller is
	
	-- Defining All States
	type state_type is (allRedFirst, mainGreen, 
								mainYellow, allRedSecond, 
								sideGreen, sideYellow, 
								walkOn, walkBlink); 
	
	-- Clock Divider Signals 
	
	-- FPGA counts this value every second
	constant CNT : integer := 10;

	-- Custom counts for different states
	constant CNT_12SEC : integer := 23;
	constant CNT_6SEC : integer := 11;
	constant CNT_4SEC : integer := 7;
	constant CNT_3SEC : integer := 5; 
	constant CNT_HALFSEC : integer := 1;
	
	-- Defining signals for use
	-- Remember: type "bit" uses single quotation marks! 
	-- Here it is used to simulate boolean logic
	
	signal CLK_CNT : integer range 0 to CNT_12SEC; 
	signal WLK_MEM : bit; 
	signal IGN_SNS : bit; 
	signal BLN_MEM : STD_LOGIC :='0'; 
	signal BLN_CNT : integer range 0 to CNT_HALFSEC;
	signal STATE, NEXT_STATE: state_type; 
	
	begin
	
	------------------------------
	--  Reset Event Process #1  --
	------------------------------
	-- Process that checks for when there is a hard reset. 
	-- This module accounts for "asynchronous" resets.
	
	process (CLK)
	begin
	
		if rising_edge(CLK) then
		
			if (RST = '1') then
				STATE <= allRedFirst; 
		
			else 
				STATE <= NEXT_STATE;
				
			end if;
			
		end if;
		
	end process;
	
	------------------------------
	--  Walk Process Event #2  --
	------------------------------
	-- Process that checks for whether the Walk button was ever pressed.
	-- As the walk button pressing is an "asynchronous" request, 
	-- it stores it for later uses in WLK_MEM
	
	process (CLK)
	begin
	
		if rising_edge(CLK) then
		
			case STATE is 
				
				when walkOn =>
					
					if (CLK_CNT = 0 AND WLK_MEM = '1') then 
						WLK_MEM <= '0';
						
					elsif (WLK = '1') then
						WLK_MEM <= '1';
						
					end if;
				
				when others =>
				
					if (WLK = '1') then
						WLK_MEM <= '1';
					
					end if;
					
			end case; 
			
		end if;
		
	end process;
	
	------------------------------
	--  Next State Logic Process #3  --
	------------------------------
	-- Process that defines what the next state means
	-- This module accounts for, and strictly follows, the timings of each state. 

	process (CLK)
	begin
	
		if rising_edge(CLK) then 
		
			case STATE is 
			
			
				when allRedFirst => 
				
					if (CLK_CNT = CNT_4SEC AND WLK_MEM = '1') then
						NEXT_STATE <= walkON;
						CLK_CNT <= 0; 
					
					elsif (CLK_CNT = CNT_4SEC AND WLK_MEM = '0') then
						NEXT_STATE <= mainGreen;
						CLK_CNT <= 0;						
					
					else 
						CLK_CNT  <= CLK_CNT + 1; 
					
					end if; 
					
					
				when walkOn =>
				
					if (CLK_CNT = CNT_12SEC) then
						NEXT_STATE <= walkBlink;
						CLK_CNT <= 0;
					
					else 
						CLK_CNT  <= CLK_CNT + 1;
					
					end if;
				
				
				--TO DO make a new process that handles the actual occurences of this state
				when walkBlink => 
					if (CLK_CNT = CNT_4SEC) then 
						NEXT_STATE <= allRedFirst;
						CLK_CNT <= 0;
					
					else 
						CLK_CNT  <= CLK_CNT + 1;
					
					end if;

				when mainGreen =>
				
					if (CLK_CNT = CNT_12SEC AND SNS = '1' AND IGN_SNS = '0') then
						IGN_SNS <= '1';
						NEXT_STATE <= mainGreen;
						CLK_CNT <= 0;
						
					elsif (CLK_CNT = CNT_6SEC AND SNS = '1' AND IGN_SNS = '1') then
						IGN_SNS <= '0';
						NEXT_STATE <= mainYellow;
						CLK_CNT <= 0;
					
					elsif (CLK_CNT = CNT_12SEC  AND SNS = '0') then 
						NEXT_STATE <= mainYellow;
						CLK_CNT <= 0;
					
					else 
						CLK_CNT <= CLK_CNT + 1; 
							
					end if;
				
				
				when mainYellow => 
					
					if (CLK_CNT = CNT_4SEC) then 
						NEXT_STATE <= allRedSecond; 
						CLK_CNT <= 0;
					
					else 
						CLK_CNT <= CLK_CNT + 1;
					
					end if;
							
				when allRedSecond => 
					
					if (CLK_CNT = CNT_4SEC AND WLK_MEM = '0') then
						NEXT_STATE <= sideGreen;
						CLK_CNT <= 0;
						
					elsif (CLK_CNT = CNT_4SEC AND WLK_MEM = '1') then 
						NEXT_STATE <= walkOn; 
						CLK_CNT <= 0;
					
					else 
						CLK_CNT <= CLK_CNT + 1;
					
					end if;
			
				when sideGreen => 
					
					if (CLK_CNT = CNT_12SEC) then 
						NEXT_STATE <= sideYellow;
						CLK_CNT <= 0;
					
					else 
						CLK_CNT <= CLK_CNT + 1;
						
					end if;
				
				when sideYellow => 
					
					if (CLK_CNT = CNT_3SEC) then 
						NEXT_STATE <= allRedFirst; 
						CLK_CNT <= 0;
					
					else 
						CLK_CNT <= CLK_CNT + 1;
						
					end if;	
					
			end case;
			
		end if;
		
	end process;
	
	------------------------------
	--  Walk Blink Process #4 --
	------------------------------
	-- Process that defines the output for the walk blink state
	-- Separated because it is a bit complex for the below process
	
	process(CLK)
	begin 
	
		if rising_edge(CLK) then 

		
--			if (STATE = walkBlink AND BLN_MEM = '1' AND BLN_CNT = CNT_HALFSEC) then 
--				BLN_MEM <= '0';
--				BLN_CNT <= 0; 
--			
--			elsif (STATE = 'walkBlink' AND BLN_MEM = '0' AND BLN_CNT = CNT_HALFSEC) then
--				BLN_MEM <= '1';
--				BLN_CNT <= 0; 
--			
--			else 
--				BLN_CNT <= BLN_CNT + 1; 
--			
--			end if;


			case STATE is 
				
				when walkBlink =>
					
					if (BLN_MEM = '1' AND BLN_CNT = CNT_HALFSEC) then 
						BLN_MEM <= '0';
						BLN_CNT <= 0;
						
					elsif (BLN_MEM = '0' AND BLN_CNT = CNT_HALFSEC) then
						BLN_MEM <= '1';
						BLN_CNT <= 0;
						
					else 
						BLN_CNT <= BLN_CNT + 1; 
						
					end if;
				
				
				when others =>
					
			end case; 

			
		end if;
		
	end process;
	
	------------------------------
	--  Main Display Process #5  --
	------------------------------
	-- Process that defines what each state means in terms of output.

	process(STATE, BLN_MEM)
	begin 
	
		case STATE is 
			
			when allRedFirst =>
				MR <= '1'; 
				MY <= '0';
				MG <= '0';
				SR <= '1'; 
				SY <= '0';
				SG <= '0';
				WL <= '0';
				
			when mainGreen =>
				MR <= '0'; 
				MY <= '0';
				MG <= '1';
				SR <= '1'; 
				SY <= '0';
				SG <= '0';
				WL <= '0';
				
			when mainYellow =>
				MR <= '0'; 
				MY <= '1';
				MG <= '0';
				SR <= '1'; 
				SY <= '0';
				SG <= '0';
				WL <= '0';
				
			when allRedSecond =>
				MR <= '1'; 
				MY <= '0';
				MG <= '0';
				SR <= '1'; 
				SY <= '0';
				SG <= '0';
				WL <= '0';
				
			when sideGreen =>
				MR <= '1'; 
				MY <= '0';
				MG <= '0';
				SR <= '0'; 
				SY <= '0';
				SG <= '1';
				WL <= '0';
				
			when sideYellow =>
				MR <= '1'; 
				MY <= '0';
				MG <= '0';
				SR <= '0'; 
				SY <= '1';
				SG <= '0';
				WL <= '0';

			when walkOn =>
				MR <= '1'; 
				MY <= '0';
				MG <= '0';
				SR <= '1'; 
				SY <= '0';
				SG <= '0';
				WL <= '1';
				
			when walkBlink =>
				MR <= '1'; 
				MY <= '0';
				MG <= '0';
				SR <= '1'; 
				SY <= '0';
				SG <= '0';
				WL <= BLN_MEM; 
		
		end case;
	end process;	

end state_machine;

				
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


