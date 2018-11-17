Library ieee;
use ieee.std_logic_1164.all;

ENTITY QNand is 
PORT(
	C, D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	S1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END QNand;

ARCHITECTURE behavior of QNand is
BEGIN
	S1 <= C NAND D;
	
END behavior;