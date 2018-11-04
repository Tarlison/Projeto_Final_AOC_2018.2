LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY  Multiplexador4x1 IS
	PORT( 
	SIGNAL A,B,C,D,S: IN BIT_VECTOR(0 TO 1);
	
	SIGNAL SAIDA: OUT BIT_VECTOR(0 TO 1)
	
	) ;
	
END Multiplexador4x1;

ARCHITECTURE Multiplexador4x1 OF Multiplexador4x1 IS
BEGIN 
	PROCESS (A,B,C,D,S)
		BEGIN
			CASE S IS
				WHEN "00" => SAIDA <= A;
				WHEN "01" => SAIDA <= B;
				WHEN "10" => SAIDA <= C;
				WHEN "11" => SAIDA <= D;
				
			END CASE;
			
	END PROCESS;
		
END Multiplexador4x1;