--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package common is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

attribute ENUM_ENCODING: STRING;

type opcode_type is (OP_AND, OP_ANDI, OP_OR, OP_ORI, OP_SLL, OP_SRL, OP_BONUS, OP_HLT, OP_ADD, OP_ADDI, OP_SUB, OP_SUBI, OP_BLT, OP_BE, OP_BNE, OP_JMP);
attribute ENUM_ENCODING of opcode_type: type is "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111";

constant address_width : integer := 8;
constant data_width : integer := 8;

constant instruction_width : integer := 16;
constant opcode_width : integer := 4;
constant reg_addr_width : integer := 3;
constant tail_width : integer := 3;

constant reg_size : integer := 8;
constant rom_size : integer := 256;

function std_logic_vector_to_opcode_type ( opcode_bits : std_logic_vector((opcode_width - 1) downto 0) ) return opcode_type;

end common;

package body common is

function std_logic_vector_to_opcode_type ( opcode_bits : std_logic_vector((opcode_width - 1) downto 0) ) return opcode_type is
begin
	case opcode_bits is
		when "0000" =>
			return OP_AND;
		when "0001" =>
			return OP_ANDI;
		when "0010" =>
			return OP_OR;
		when "0011" =>
			return OP_ORI;
		when "0100" =>
			return OP_SLL;
		when "0101" =>
			return OP_SRL;
		when "0110" =>
			return OP_BONUS;
		when "0111" =>
			return OP_HLT;
		when "1000" =>
			return OP_ADD;
		when "1001" =>
			return OP_ADDI;
		when "1010" =>
			return OP_SUB;
		when "1011" =>
			return OP_SUBI;
		when "1100" =>
			return OP_BLT;
		when "1101" =>
			return OP_BE;
		when "1110" =>
			return OP_BNE;
		when "1111" =>
			return OP_JMP;
		-- any error in the opcode bits will trigger operation HLT as well
		when others =>
			return OP_HLT;
	end case;
	
end std_logic_vector_to_opcode_type;

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end common;
