module excess3_bcd
  (input e3,e2,e1,e0,
   output b3,b2,b1,b0);
  
  wire a,b,c,d,e,f,g,h,i,j;
  
  and a1(a,e3,e1,e0);
  and a2(b,e3,e2);
  or r1(b3,a,b);
  not n1(c,e2);
  not n2(d,e1);
  and a3(e,c,d);
  not n3(f,e0);
  and a4(g,c,f);
  and a5(h,e2,e1,e0);
  or r2(b2,e,g,h);
        and a6(i,d,e0);
        and a7(j,e1,f);
        or r3(b1,i,j);
        buf (b0,f);
        endmodule
