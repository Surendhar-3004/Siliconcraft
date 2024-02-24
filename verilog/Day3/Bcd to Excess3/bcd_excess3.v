module bcd_excess3
  (input b3,b2,b1,b0,
   output e3,e2,e1,e0);
  
  wire x,y,z;
  
  or r1(x,b1,b0);
  and a1(y,x,b2);
  xor x1(z,b1,b0);
  or r2(e3,y,b3);
  xor x2(e2,x,b2);
  not n1(e1,z);
  not n2(e0,b0);
  
endmodule
