module negedge_tff (
    input t,
    input clk,
    output q );
    wire d_in, q_bar;
    wire nclk;
    wire t1, t2, t3, t4;
    wire m1, m2, m3, s1, s2;
    nand (t1, T, Q);
    nand (t2, T, t1);
    nand (t3, Q, t1);
    nand (d_in, t2, t3);  
    not (nclk, CLK); 
    nand (m1, d_in, nclk);
    nand (m2, m1, nclk);
    nand (m3, m1, m2);  
    nand (s1, m3, CLK);
    nand (s2, s1, CLK);
    nand (Q, s1, s2);  
endmodule
