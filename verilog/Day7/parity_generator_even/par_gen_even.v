module parity_gen_even
  (input a,b,c,
   output p);
  
  wire x;
      
  xor r1(x,a,b);
  xor r2(p,x,c);
endmodule
