library ieee;
use ieee.std_logic_1164.all;

entity counter is 
	port(	clk , rstN : in std_logic;
			Q :out integer range  0 to 255 ;
			EC : out std_logic
		);
end entity;

architecture counter_arc of counter is 
	begin 
		process (rstN, clk)
		 variable qv : integer range  0 to 256;
		
			begin
			if(qv = 0) then EC <='1'; end if;
				if rstN ='0'
					then qv := 0;
					     EC<= '1';
				elsif (rstN ='1' and rising_edge(clk))
					then    EC<= '0';
						qv := qv+1;
						if (qv >255 )
							then qv :=0;
								 EC<= '1';
						elsif(qv = 0) then EC <='1';		 
						end if ;
				end if;
Q<= qv;

		end process;		
end architecture counter_arc;