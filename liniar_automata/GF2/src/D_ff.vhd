library ieee;
use ieee.std_logic_1164.all;

entity D_ff is
	port( 
	D,CLK : in std_logic;
	Q : out std_logic);
end D_ff;

architecture a1 of D_ff is 
begin
	process(D,CLK)
	begin
		if ( rising_edge(CLK)) then 
			Q <= D;
		end if;
	end process;
	end a1;