module dff(
  input d ,
  input clk , 
  output q , 
  output qbar);
  wire nd , d_and_clk , nd_and_clk;
  wire s , r ;
  wire q_int , qbar_int ;
  not(nd , d); // inverting d 
  and (d_and_clk , d , clk ); // generating set signal
  and (nd_and_clk , nd , clk ); // generating reset signal
  nand (q_int , d_and_clk , qbar_int); // s input of sr latch
  nand (qbar_int , nd_and_clk , q_int); // r input of sr latch
  buf (q , q_int);
  buf (qbar , qbar_int);
endmodule
  
