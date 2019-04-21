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

	--------------------------------
	-- Change state at clock tick --
	--------------------------------
	process (clk)
	begin
		if(clk = '1') then
			state <= next_state;
		end if;
		
	end process;
	
end state_machine;