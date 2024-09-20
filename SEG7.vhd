library ieee;
use ieee.std_logic_1164.all; 
--use ieee.numeric_std.all;
entity sego is
  port (bcd : in std_logic_vector(3 downto 0); 
          led : out STD_LOGIC_VECTOR (6 downto 0)); 

end sego;

architecture behaviour of sego is 
begin
  process (bcd)
begin 
	
    case bcd is                 
       when "0000" => led <= "1111110"; 
      when "0001" => led <= "0110000"; 
      when "0010" => led <= "1101101"; 
      when "0011" => led <= "1111001"; 
      when "0100" => led <= "0110011"; 
      when "0101" => led <= "1011011"; 
      when "0110" => led <= "1011111"; 
      when "0111" => led <= "1110000"; 
      when "1000" => led <= "1111111"; 
      when "1001" => led <= "1110011"; 
      when others => led <= "XXXXXXX" ; 
    end case; 

  end process; 
end behaviour;
