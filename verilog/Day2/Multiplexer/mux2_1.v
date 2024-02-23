module mux2_1
  (input a,
   input b,
   input s,
   output z);
  
  wire s1,x,y;
  
  not(s1,s);
  and a1(x,a,s);
  and a2(y,b,s1);
  or(z,x,y);
endmodule
