library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity Registru is
	port(x: in std_logic_vector(10 downto 0);
	Sel:out std_logic_vector(2 downto 0);
	Sua:out std_logic_vector(3 downto 0);
	iesire:out std_logic_vector(3 downto 0):="0000");
end entity;

architecture ARH_REG of Registru is
begin 
	Sel<=x(10 downto 8);
	Sua<=x(7 downto 4);
	iesire<=x(3 downto 0);
end architecture;