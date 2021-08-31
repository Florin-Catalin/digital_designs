library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX is
	port( input : in std_logic_vector(7 downto 0);
		  sel   : in std_logic_vector(2 downto 0);
		  z		: out std_logic);
end;

architecture a1 of MUX is
begin
	process(input,sel)
	begin
		case sel is
			when "000" => z <= input(0);
			when "001" => z <= input(1);
			when "010" => z <= input(2);
			when "011" => z <= input(3);
			when "100" => z <= input(4);
			when "101" => z <= input(5);
			when "110" => z <= input(6);
			when "111" => z <= input(7);
			when others => z <='0';
		end case;
	end process;
end architecture;
	