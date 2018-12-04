LIBRARY ieee; 
USE ieee.std_logic_1164.all;

ENTITY UnidadedeControle IS
PORT
	(
		--Clock      : in  std_logic;
		entrada    : in  std_logic_vector (3 DOWNTO 0);
		regdest    : out std_logic;
		origalu    : out std_logic_vector (3 DOWNTO 0);
		memparareg : out std_logic;
		escrevereg : out std_logic;
		lemem      : out std_logic;
		escrevemem : out std_logic;
		jump       : out std_logic;
		aluSRC     : out std_logic;
		branch     : out std_logic
	);
	
END UnidadedeControle;
ARCHITECTURE behavior OF UnidadedeControle  IS
BEGIN
--operacoes: PROCESS (entrada,Clock)
operacoes: PROCESS (entrada)
variable recv_op : std_logic_vector(3 downto 0);
	BEGIN
		--if(Clock'event and Clock = '1') then
		recv_op := entrada;
				case recv_op is
					WHEN "0000" => --instrução tipo r
						regdest <= '1';
						origalu <= "0000";
						memparareg <= '1';
						escrevereg <= '1';
						lemem <= '0';
						escrevemem <= '0';
						branch <= '0';
						aluSRC <= '0';
						jump <= '0';
					
				  when others =>
						regdest <= '0';
						origalu <= "1010";
						memparareg <= '0';
						escrevereg <= '0';
						lemem <= '0';
						escrevemem <= '0';
						branch <= '1';
						aluSRC <= '0';
						jump <= '0';
						
--				ELSE
--					regdest <= 'Z';
--					origalu <= "ZZZZ";
--					memparareg <= 'Z';
--					escrevereg <= 'Z';
--					lemem <= 'Z';
--					escrevemem <= 'Z';
--					branch <= 'Z';
--					aluSRC <= 'Z';
--					jump <= 'Z';
--					
				END case;
		--END IF;
	END PROCESS operacoes;		
END behavior;