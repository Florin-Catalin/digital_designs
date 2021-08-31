library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity numarator is
	port(CLK:in bit;
	INC: in std_logic;
	Sua:in std_logic_vector(3 downto 0);
	adr:inout std_logic_vector(3 downto 0):="0000");
end entity;

architecture ARH_Num of numarator is 
begin
	process(CLK,INC)
	begin		   
		if(CLK'event and CLK='1') then
			if(INC='1') then adr<=adr+"0001";
			else
				adr<=Sua;
			end if;
			end if;
		end process;
	end architecture;