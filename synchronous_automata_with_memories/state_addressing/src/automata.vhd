	   library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity Automat is
	port(CLK:in bit;
	intrari:in std_logic_vector(7 downto 0);
	z:out std_logic_vector(3 downto 0));
end entity;					

architecture ARH_AUT of Automat is

component mem is
	port( addr : inout std_logic_vector(3 downto 0);
	iesire: out std_logic_vector(10 downto 0) := "00000000000");
end component;

component Registru is                                 			 --done
	port(x: in std_logic_vector(10 downto 0);
	Sel:out std_logic_vector(2 downto 0);
	Sua:out std_logic_vector(3 downto 0);
	iesire:out std_logic_vector(3 downto 0):="0000");
end component;

component Logica_comb is                                  		--done
	port(A:in std_logic_vector(3 downto 0);
	B:in std_logic;
	Sua:out std_logic_vector(3 downto 0);
	INC:out std_logic:='0');
end component;

component MUX is									  --done
	port(input: in std_logic_vector(7 downto 0);
	sel:in std_logic_vector(2 downto 0);
	z:out std_logic);
end component;

component numarator is
	port(CLK:in bit;
	INC: in std_logic;
	Sua:in std_logic_vector(3 downto 0);
	adr:inout std_logic_vector(3 downto 0):="0000");
end component;

signal adr: std_logic_vector(3 downto 0):="0000";
signal ROM_out:std_logic_vector(10 downto 0);	  
signal sel:std_logic_vector(2 downto 0);
signal Sua:std_logic_vector(3 downto 0);
signal mux_out:std_logic;						
signal INC:std_logic;		

begin
P1: MEM port map (adr,ROM_out);
P2: registru port map(ROM_out,sel,Sua,z);  
P3: MUX port map(intrari,sel,mux_out);
P4: Logica_comb port map(Sua,mux_out,Sua,INC);
P5: numarator port map(CLK,INC,Sua,adr);
end architecture;