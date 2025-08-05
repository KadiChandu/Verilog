module negedge_dff(
  input d, 
  input clk,
  output q,
  output q_bar );
  wire inv_clk ;
  wire x, y ;
  not (inv_clk , clk);
  nand A (x,d,clk);
  nand B (y,x,clk);
  nand C (q,q_bar,x);
  nand D (q_bar,q,y);
endmodule
