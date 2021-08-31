library IEEE;
use IEEE.std_logic_1164.all;

entity OR3 is 
	port( A,B,C : in std_logic;
	O : out std_logic);
end;

architecture a1 of OR3 is
begin
	process(A,B,C)
	begin
		O <= A or B or C;
	end process;
end ;