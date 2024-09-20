library ieee ;
use ieee.STD_LOGIC_1164.all ;


entity Top_LEVEL  is 
 port ( clk, rstN  : in STD_LOGIC;
		EC : OUT STD_LOGIC;
		hundreds , tens , ones : out   STD_LOGIC_VECTOR (6 downto 0));
end entity Top_LEVEL;

architecture Top_LEVEL_Arc of Top_LEVEL is 
	
	
----------------------COUNTER COMPONENT ----------------------	
	component counter is 
	port(	clk , rstN : in std_logic;
			Q :out integer range  0 to 255 ;
			EC : out std_logic
		);
	end component counter;
----------------------BIN TO BCD COMPONENT ----------------------	

	component Bin_to_BCD is 
		port ( num : in integer range 0 to 255;
		 BCD_2, BCD_1 ,BCD_0 : out std_logic_vector(3 downto 0) );
	end component Bin_to_BCD;
----------------------7 SEGMENT  COMPONENT ----------------------	
		
		component sego is
			port (bcd : in std_logic_vector(3 downto 0); 
          led : out  STD_LOGIC_VECTOR (6 downto 0)); 

		end component sego;
---------------------------SIGNALS-------------------------------
		signal Qs : integer range 0 to 255;
		signal H , T , U : std_logic_vector (3 downto 0);
---------------------------BEGIN---------------------------------
		begin
				
			ctr: counter port map(clk,rstN,qs,EC);
			
			bin2bcd:Bin_to_BCD port map(Qs,H,T,U);
			
			sg2 : sego port map(H, hundreds);
			sg1 : sego port map(T, tens);
			
			sg0 : sego port map(U, ones);
end architecture Top_LEVEL_Arc;