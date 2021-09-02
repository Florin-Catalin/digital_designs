library IEEE;
use IEEE.std_logic_1164.all;   
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all;

entity ALU is
	port(
	A : in std_logic_vector(31 downto 0);
	B : in std_logic_vector(31 downto 0);
	Carryin : in std_logic;
	ALUCntl: in std_logic_vector(3 downto 0);
	Zero,Overflow,Carryout : out std_logic;
	ALUout : out std_logic_vector(31 downto 0));
end ALU; 

architecture a1 of ALU is
signal ALUres : std_logic_vector(32 downto 0);
signal carry : std_logic;
begin	
	process(ALUCntl)  
	begin 	 
		case ALUCntl is
			when "0000" => 
				ALUres <= '0'&(A and B); 
			when "0001" => 
				ALUres <= '0'&(A or B); 
			when "0011" => 
				ALUres <= '0'&(A xor B); 
			when "0010" => 
				ALUres <=  ('0'&A) + ('0'&B) + Carryin;
				carry <= ALUres(32);
			when "0110" => 
				ALUres <= ('0'&A) - ('0'&B);
			when "0111" => -- division by two, shift right
				ALUres <= '0'& ( '0' & A (  31 downto 1)); 
			 when "1000" =>	  -- multiplication by two, shift left
			    ALUres <=  A(31 downto 0) & '0';
			
			when others => null;
			end case;
	end process; 
	ALUout <= ALUres (31 downto 0); 
	Carryout <= carry;
	Overflow <= '1' when carry = '1' else '0';
	Zero <= '1' when ALUres = x"000000000000000000000000000000000" else '0';
	end;
	 

