module decoder2_4
  (input a,b,
   output y0,y1,y2,y3);
  
  not nt1(n0,a);
  not nt2(n1,b);
  and a1(y0,n0,n1);
  and a2(y1,n0,b);
  and a3(y2,a,n1);
  and a4(y3,a,b);
endmodule
