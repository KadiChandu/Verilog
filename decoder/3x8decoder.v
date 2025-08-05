module 3x8_decoder (
   input a , b , c ;
   output [7:0]y );
   wire a_bar , b_bar , c_bar ;
   not(a_bar , a);
   not (b_bar , b);
   not (c_bar , c);
   and (y[0], a_bar, b_bar, c_bar);
    and (y[1], a_bar, b_bar, c);
    and (y[2], a_bar, b, c_bar);
    and (y[3], a_bar, b, c); 
    and (y[4], a, b_bar, c_bar);
    and (y[5], a, b_bar, c);
    and (y[6], a, b, c_bar);
    and (y[7], a, b, c);     
endmodule
