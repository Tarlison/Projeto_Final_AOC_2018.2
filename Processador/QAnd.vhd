Library ieee;
use ieee.std_logic_1164.all;

ENTITY QAnd is 
PORT(
	E1, E2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	S1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END QAnd;

ARCHITECTURE behavior of Qand is
BEGIN
	S1 <= E1 and E2;
	
END behavior;