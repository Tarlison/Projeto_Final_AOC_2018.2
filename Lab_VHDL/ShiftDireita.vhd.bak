LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
USE ieee.std_logic_unsigned.all;

ENTITY ShiftDireita IS 

	PORT(
		VALOR: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	
END ShiftDireita;

ARCHITECTURE BEHAVIOR OF ShiftDireita IS
SIGNAL AUX: STD_LOGIC_VECTOR(15 downto 0);
	BEGIN 
		AUX   <= STD_LOGIC_VECTOR (UNSIGNED(VALOR) SRL 2);
		SAIDA <= AUX(15 DOWNTO 0);
		
END BEHAVIOR;