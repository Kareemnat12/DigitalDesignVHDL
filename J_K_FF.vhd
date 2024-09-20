library ieee;
use ieee.std_logic_1164.all;


entity J_K_FF is 
	port (  J , K ,clk ,rstN  : in std_logic ;
			Q, Qn : out std_logic);
end entity J_K_FF;

architecture J_K_FF_Arc of J_K_FF is 
	begin
		process (rstN,clk)
			variable qq : std_logic;
			begin 
				if(rstN = '0') then
				 qq := '0';
				 
				 elsif( rstN ='1' and rising_edge(clk)) then
					
					if(J = '0' and K = '1')
						then qq :='0';
					elsif(	J = '1' and K = '0')
						then qq:= '1';
					elsif(J = '1' and K = '1')
						then qq:= not qq ;
					else 
						qq :=qq; 
					end if ;
				end if ;
				Q<=qq;
				Qn<= not qq;
		end process;
end architecture J_K_FF_Arc;