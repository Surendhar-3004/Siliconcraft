module ripplecarry_adder
  (input a0,b0,c0,a1,b1,a2,b2,a3,b3,
   output s0,s1,s2,s3,carry);
  
  wire c1,c2,c3;
  
  full_adder f0(.a(a0),.b(b0),.cin(c0),.s(s0),.c(c1));
  full_adder f1(.a(a1),.b(b1),.cin(c1),.s(s1),.c(c2));
  full_adder f2(.a(a2),.b(b2),.cin(c2),.s(s2),.c(c3));
  full_adder f3(.a(a3),.b(b3),.cin(c3),.s(s3),.c(carry));
  
endmodule:ripplecarry_adder

module full_adder
  (input a,b,cin,
   output s,c);
  
  wire x,y;
  
  xor x1(x,a,b);
  xor x2(s,x,c);
  and a1(y,a,b);
  and a2(z,x,c);
  or (c,y,z);
  
endmodule:full_adder

