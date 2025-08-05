module tb_decoder3to8_gatelevel;
    reg a, b, c;
  wire [7:0] y;
    decoder3to8_gatelevel uut (
      .a(a),
      .b(b),
      .c(c),
      .y(y)
    );
    initial begin
        for (integer i = 0; i < 8; i = i + 1) begin
            {A, B, C} = i[2:0];
            #10;
        end
    end
endmodule
