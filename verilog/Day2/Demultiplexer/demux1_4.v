module demux1_4
  (input d,
   input s0,
   input s1,
   output y0,y1,y2,y3);
  
  wire n0,n1;
  
  not(n0,s0);
  not(n1,s1);
  and a1(y0,n0,n1,d);
  and a2(y1,n0,s1,d);
  and a3(y2,s0,n1,d);
  and a4(y3,s0,s1,d);
endmodule
  
