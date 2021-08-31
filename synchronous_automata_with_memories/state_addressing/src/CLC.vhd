library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity Logica_comb is
	port(A:in std_logic_vector(3 downto 0);
	B:in std_logic;
	Sua:out std_logic_vector(3 downto 0);
	INC:out std_logic);
end entity;

architecture ARH_LOG of Logica_comb is
begin
	process(A,B)
	begin
		if(B='0')
			then INC<='1'; 
		else
			INC<='1';
		end if;
		Sua<=A; --semnalele A si Sua nu sunt obligatorii,dar le-am pus pentru a respecta schema generala a automatului
		end process;
end architecture;	