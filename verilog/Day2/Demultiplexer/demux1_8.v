module demux1_8
  (
    input d,
    input s0,
    input s1,
    input s2,
    output z0,z1,z2,z3,z4,z5,z6,z7);
  
  wire n0,n1;
  
  not nt1(n0,s0);
  not nt2(n1,s1);
  not nt3(n2,s2);
  and a0(z0,n0,n1,n2,d);
  and a1(z1,n0,n1,s2,d);
  and a2(z2,n0,s1,n2,d);
  and a3(z3,n0,s1,s2,d);
  and a4(z4,s0,n1,n2,d);
  and a5(z5,s0,n1,s2,d);
  and a6(z6,s0,s1,n2,d);
  and a7(z7,s0,s1,s2,d);
endmodule
