library ieee;
use ieee.std_logic_1164.all;

entity T1 is
	port( X,CLK : in std_logic;
	Z : out std_logic);
end T1;

architecture struct_a1 of T1 is  
  component D_ff is
	port( 
	D,CLK : in std_logic;
	Q : out std_logic);
end component; 

 component mod2_adder is
port(
A,B : in std_logic;
Y : out std_logic);
	
end component;
   signal X_Q : std_logic ;
begin 
	memory_element: D_ff port map ( X,CLK, X_Q );
	modulo_sum : mod2_adder port map ( X, X_Q, Z);
	end struct_a1;