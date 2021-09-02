library ieee;
use ieee.std_logic_1164.all;
entity asynch_a1 is
	port(
	x0,x1 : in std_logic
	);
end;

architecture a1 of asynch_a1 is
  component INV is 
	port( X : in std_logic;
	O : out std_logic);
end component;
component OR3 is 
	port( A,B,C : in std_logic;
	O : out std_logic);
end component;	 

component and4 is
	port( A,B,C,D : in stD_logic;
	O : out std_logic);
end component;   
signal y1,y0 : std_logic; 
signal nx0 , nx1 ,ny0 , ny1  : std_logic;
signal a1,a2,a3,a4,a5 : std_logic; 

begin 
	i1: INV port map ( x0,nx0);
	i2: INV port map ( x1,nx1);
	i3: INV port map ( y0,ny0);
	i4: INV port map ( y1,ny1);	
	
	a1l: and4 port map(y1,y0,x1,'1',a1); 
	a2l: and4 port map(y1,ny0,x0,'1',a2);
	a3l: and4 port map(ny1,y0,nx1,x0,a3);
	a4l: and4 port map(x1,x0,'1','1',a4);
	a5l: and4 port map(x1,y0,'1','1',a5);  
	
	or1: or3 port map(a1,a2,a3,y1);
	or2: or3 port map(a4,a5,'0',y0);
	end a1;
