library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity INV is 
	port( X : in std_logic;
	O : out std_logic);
end;

architecture a1 of INV is
begin
	process(X)	
	 begin
	O  <=  not(X);
   end process;
end a1;
