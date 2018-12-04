library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY OperacaoDaULA IS
	PORT
	(
		clk: in std_logic;
		ENTRADA1:IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ENTRADA2:IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		SAIDA:   OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END OperacaoDaULA;

ARCHITECTURE BEHAVIOR OF OperacaoDaULA IS
begin
	SAIDA <= ENTRADA1 & ENTRADA2;
END BEHAVIOR;