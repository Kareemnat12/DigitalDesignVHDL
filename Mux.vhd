entity MUX is
  port(D0, D1, D2, D3 : in bit;
       S0, S1 : in bit;
       Y : out bit
     );
   end entity MUX;
   
   
entity DEMUX is
  port(D0, D1, D2, D3 : out bit;
       S0, S1 : in bit;
      X : in bit
     );
   end entity DEMUX;
   
   
   
architecture MUX_rc of MUX is
  signal ands : bit_vector(3 downto 0);
 begin
 ands(0) <= (D0 and (not S0) and (not S1));
 ands(1) <= (D1 and (not S0) and S1);
 ands(2) <= (D2 and S0 and (not S1));
 ands(3) <= (D2 and S0 and  S1);
 Y <= ands(0) or ands(1) or ands(2) or ands(3);
 end architecture MUX_rc;
 
 
 
 architecture DEMUX_rc of DEMUX is
  signal aands : bit_vector(3 downto 0);
 begin
 aands(0) <= (X and (not S0) and (not S1));
 aands(1) <= (X and (not S0) and S1);
 aands(2) <= (X and S0 and (not S1));
 aands(3) <= (X and S0 and  S1);

 end architecture DEMUX_rc;
