module encoder8x3 (
  input [7:0] I,
  output Y2, Y1, Y0 ) ;
  or (Y2, I[4], I[5], I[6], I[7]);
  or (Y1, I[2], I[3], I[6], I[7]);
  or (Y0, I[1], I[3], I[5], I[7]);
endmodule
