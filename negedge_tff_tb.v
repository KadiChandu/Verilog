module negedge_tff_tb;
    reg t, clk;
    wire q;
    negedge_tff uut (
      .t(t),
      .clk(clk),
      .q(q));
    initial clk = 1;
    always #5 clk = ~clk;
    initial begin
        t = 0; #10;
        t = 1; #20;
        t = 0; #20;
        t = 1; #20;
        t = 1; #20;
        $finish;
    end
endmodule
