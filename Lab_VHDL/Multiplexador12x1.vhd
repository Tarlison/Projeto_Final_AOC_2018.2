LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY  Multiplexador12x1 IS
	PORT( 
	SIGNAL A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL SEL : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL SAIDA: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	
	) ;
	
END Multiplexador12x1;

ARCHITECTURE Multiplexador12x1 OF Multiplexador12x1 IS
BEGIN 
	PROCESS (A,B,C,D,E,F,G,H,I,J,K,L,SEL)
		BEGIN
			CASE SEL IS
			WHEN "0000" => SAIDA <= A;
			WHEN "0001" => SAIDA <= B;
			WHEN "0010" => SAIDA <= C;
			WHEN "0011" => SAIDA <= D;
			WHEN "0100" => SAIDA <= E;
			WHEN "0101" => SAIDA <= F;
			WHEN "0110" => SAIDA <= G;
			WHEN "0111" => SAIDA <= H;
			WHEN "1000" => SAIDA <= I;
			WHEN "1001" => SAIDA <= J;
			WHEN "1010" => SAIDA <= K;
			WHEN "1011" => SAIDA <= L;
			WHEN OTHERS => SAIDA <= "ZZZZZZZZZZZZZZZZ";
			
				
			END CASE;
			
	END PROCESS;
		
END Multiplexador12x1;