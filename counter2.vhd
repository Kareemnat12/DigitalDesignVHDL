library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity Counter2 is 
	port ( RstN , Din , Shift , clk : in std_logic;
		   Qout : out std_logic_vector (7 downto 0));
	
end entity;


architecture Counter2_Arc of Counter2 is 
	signal q : std_logic_vector (7 downto 0); 
	begin
		process (RstN,clk) 
			begin 
				if(RstN ='0')
					then q <="00000000";
				elsif (rising_edge (clk))
					then if (Shift ='0') then q <= q + 1 ; -- try -'1'
						elsif(Shift ='1') then 
						q(7 downto 1) <= q(6 downto 0);
						q(0)<=Din;
						end if;
				end if;
				 -- try Qout herer;
				 				Qout<= q;

				end process;
end architecture Counter2_Arc;


