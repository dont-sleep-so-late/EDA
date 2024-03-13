LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU IS
PORT(
	A,B:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	F:OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	OV:OUT STD_LOGIC;
	CY:OUT STD_LOGIC
);
END ENTITY;

ARCHITECTURE func OF ALU IS 
	SIGNAL Ain,Bin,A_CY,B_CY,ROUT,ROUT_CY:STD_LOGIC_VECTOR(8 DOWNTO 0);
	BEGIN
      PROCESS(S,A,B)
       BEGIN
         Ain<=A(7)&A; 
         Bin<=B(7)&B;
         A_CY<='0'&A; 
         B_CY<='0'&B;
         CASE S IS
         WHEN "0000" => ROUT <= AIN+BIN;   --A+B
                        OV<=ROUT(7) XOR ROUT(8); 
                        ROUT_CY <= A_CY+B_CY; 
                        CY <= ROUT_CY(8);              
         WHEN "0001" => ROUT <= AIN-BIN;   --A-B
                        OV<=ROUT(7) XOR ROUT(8); 
                        ROUT_CY <= A_CY-B_CY; 
                        CY <= ROUT_CY(8);
         WHEN "0010" => ROUT <= NOT AIN; -- not A
                        OV<='0';
                        CY<='0';                 
         WHEN "0011" => ROUT <= AIN OR BIN;  --A or B
                        OV<='0';
                        CY<='0';      
         WHEN "0100" => ROUT <= AIN;  --A
                        OV<='0';
                        CY<='0';                          
         WHEN "0101" => ROUT <= AIN AND BIN;  --A and B
                        OV<='0';
                        CY<='0';  
         WHEN "0110" => ROUT <= AIN XOR BIN;  -- A xor B 
                        OV<='0';
                        CY<='0';  
		 WHEN "0111" => ROUT <= AIN XNOR BIN; -- A xnor B
                        OV<='0';
                        CY<='0';             
         WHEN OTHERS => ROUT <="ZZZZZZZZZ";
                        OV<='Z';
                        CY<='Z'; 
         END CASE; 
         F <= ROUT(7 DOWNTO 0);
     END PROCESS;              
END FUNC;
					
					
					
					
					
					
					
					
					
					