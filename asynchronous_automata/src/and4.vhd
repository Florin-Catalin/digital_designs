library IEEE;
use IEEE.STD_logic_1164.all;

entity and4 is
	port( A,B,C,D : in stD_logic;
	O : out std_logic);
end;

architecture a1 of and4 is
begin
	process(A,B,C,D)
	begin
		O <= A and B and C and D;
	end process;
	
	end a1;