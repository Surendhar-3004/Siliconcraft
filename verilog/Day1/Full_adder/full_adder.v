module full_adder
  (input a,
   input b,
   input cin,
   output sum,
   output carry,
   wire x,y,z);
  
  
  halfadder h1(.a(a),.b(b),.s(x),.c(y));
  halfadder h2(.a(x),.b(cin),.s(sum),.c(z));
  or(carry,y,z);
  
endmodule:full_adder
  
  module halfadder
    (input a,
     input b,
     output s,
     output c);
    xor(s,a,b);
    and(c,a,b);
  endmodule:halfadder
