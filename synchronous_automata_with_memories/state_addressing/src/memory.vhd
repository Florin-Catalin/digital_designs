library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity mem is
	port( addr : inout std_logic_vector(3 downto 0);
	iesire: out std_logic_vector(10 downto 0) := "00000000000");
end;	 

architecture ARH_MEM of mem is
type matrice is array (0 to 15) of std_logic_vector(10 downto 0);
begin
	process(addr)
		variable m:matrice;
	begin
		m(0):="00000000000";
		m(1):="00000000001";
		m(2):="00000000010";
		m(3):="00000000011";
		m(4):="00000000100";
		m(5):="00000000101";
		m(6):="00000000110";
		m(7):="00000000111";
		m(8):="00000001000";
		m(9):="00000001001";
		m(10):="00000001010";
		m(11):="00000001011";
		m(12):="00000001100";
		m(13):="00000001101";
		m(14):="00000001110";
		m(15):="00000001111"; 
		iesire<=m(conv_integer(addr)); 
	end process;
end architecture;