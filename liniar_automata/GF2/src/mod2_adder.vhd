library ieee;
use ieee.std_logic_1164.all;

entity mod2_adder is
port(
A,B : in std_logic;
Y : out std_logic);
	
end mod2_adder;



architecture a1 of mod2_adder is
begin
	process(A,B)
	begin
		Y <= A xor B;
		end process;
end a1;
