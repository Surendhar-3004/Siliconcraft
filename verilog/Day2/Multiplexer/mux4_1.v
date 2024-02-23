module mux4_1
  (input a,b,c,d,s0,s1,
   output y);
  
  wire n0,n1,d0,d1,d2,d3;
  
  not nt1(n0,s0);
  not nt2(n1,s1);
  and a1(d0,n0,n1,a);
  and a2(d1,n0,s1,b);
  and a3(d2,s0,n1,c);
  and a4(d3,s0,s1,d);
  or(y,d3,d2,d1,d0);
endmodule
