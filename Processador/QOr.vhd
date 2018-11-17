Library ieee;
use ieee.std_logic_1164.all;

ENTITY QOr is 
PORT(
	A, B  : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END QOr;

ARCHITECTURE behavior of QOr is
BEGIN
	S <= A or B;
	
END behavior;