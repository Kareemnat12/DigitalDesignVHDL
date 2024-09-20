
entity aluuu is
  port(	A, B		   : in  integer range 0 to 15;
		Q_out		   : out integer range 0 to 15;
		Z_flag, C_flag : out bit );
end entity aluuu;

architecture aluuu_arc of aluuu is
	signal Q : integer range 0 to 30;
  begin
	Q_out <= Q mod 16;
	Q <= A + B;
	Z_flag <= '1' when Q = 0 else '0';
	C_flag <= '1' when Q >= 16 else '0';
end architecture aluuu_arc;

	