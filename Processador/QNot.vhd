Library ieee;
use ieee.std_logic_1164.all;

ENTITY QNot is 
PORT(
	NORMAL: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	NEGADO : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END QNOt;

ARCHITECTURE behavior of QNot is
BEGIN
	NEGADO <= NOT NORMAL;
	
END behavior;