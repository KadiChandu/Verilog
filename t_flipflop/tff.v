module tff (
    input t,
    input clk,
    output q );
    wire d_in, q_bar;
    wire x , y ;
    wire t1, t2, t3, t4;
    nand (t1, T, Q);  // xor gate for toggle 
    nand (t2, T, t1);
    nand (t3, Q, t1);
    nand (d_in, t2, t3);  // dff
    nand (x, d_in, clk);
    nand (y, x, clk);
    nand (q, q_bar, x);
    nand (q_bar, q, y);
endmodule
