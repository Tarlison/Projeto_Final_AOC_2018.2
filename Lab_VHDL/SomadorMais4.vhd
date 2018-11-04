LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY SomadorMais4 is 
PORT
(
	ENTRADA : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	SAIDA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
);
END SomadorMais4;

ARCHITECTURE SomadorMais4 OF SomadorMais4 IS

	BEGIN
		SAIDA <= ENTRADA + "0000000000000100";
		
		
	
END SomadorMais4;