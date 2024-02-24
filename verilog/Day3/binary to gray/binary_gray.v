module binary_gray
  (input b3,b2,b1,b0,
   output g3,g2,g1,g0);
  
  xor x1(g0,b0,b1);
  xor x2(g1,b1,b2);
  xor x3(g2,b2,b3);
  buf (g3,b3);
endmodule
