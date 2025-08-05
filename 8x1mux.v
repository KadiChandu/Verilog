module mux8x1 (
  input [7:0] i,
  input [2:0] s,
  output y );
  wire [7:0] and_out;
  wire s0n, s1n, s2n ;
  not (s0n, s[0]);
  not (s1n, s[1]);
  not (s2n, s[2]);
  and (and_out[0], i[0], s2n, s1n, s0n);
  and (and_out[1], i[1], s2n, s1n, s[0]);
  and (and_out[2], i[2], s2n, s[1], s0n);
  and (and_out[3], i[3], s2n, s[1], s[0]);
  and (and_out[4], i[4], s[2], s1n, s0n);
  and (and_out[5], i[5], s[2], s1n, s[0]);
  and (and_out[6], i[6], s[2], s[1], s0n);
  and (and_out[7], i[7], s[2], s[1], s[0]);
  or (y, and_out[0], and_out[1], and_out[2], and_out[3], and_out[4], and_out[5], and_out[6], and_out[7]);
endmodule
