library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_to_BCD is
  port ( num : in integer range 0 to 255;
		 BCD_2, BCD_1 ,BCD_0 : out std_logic_vector(3 downto 0) );
end entity bin_to_BCD;

architecture bin_to_BCD_arc of bin_to_BCD is
	signal BCD_2_int, BCD_1_int ,BCD_0_int : integer range 0 to 9;
  begin
	to_BCD : process (num)
				variable temp : integer range 0 to 255;
	  begin
	  temp := num ;
		-----> Code that needs to be completed....    <-----
		BCD_2_int <= temp /100 ;
		--TEMP :=NUM;
		BCD_1_int <= (temp/10)mod 10;
		--TEMP :=NUM;
		BCD_0_int <= temp mod 10;
	end process to_BCD;

	to_std_logic : process (BCD_2_int, BCD_1_int)
	  begin
		case BCD_2_int is
			when 0 =>
				BCD_2 <= "0000";
			when 1 =>
				BCD_2 <= "0001";
			when 2 =>
				BCD_2 <= "0010";
			when 3 =>
				BCD_2 <= "0011";
			when 4 =>
				BCD_2 <= "0100";
			when 5 =>
				BCD_2 <= "0101";
			when 6 =>
				BCD_2 <= "0110";
			when 7 =>
				BCD_2 <= "0111";
			when 8 =>
				BCD_2 <= "1000";
			when 9 =>
				BCD_2 <= "1001";
			when others =>
				BCD_2 <= "XXXX";
				-- null;
		end case;

		BCD_1 <= std_logic_vector(to_unsigned(BCD_1_int, 4));

	end process to_std_logic;

	BCD_0 <= std_logic_vector(to_unsigned(BCD_0_int, 4));

end architecture bin_to_BCD_arc;

