module dff_tb;
    reg d, clk;
    wire q, q_bar;
    dff uut (
        .d(d),
        .clk(clk),
        .q(q),
        .q_bar(q_bar);
    always #5 clk = ~clk;
    initial begin
        clk = 0; d = 0; #10;
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        d = 1; #10;
        $finish;
    end
endmodule
