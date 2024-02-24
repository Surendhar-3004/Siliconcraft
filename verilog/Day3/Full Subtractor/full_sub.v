module full_sub
  (input a,b,cin,
   output diff,borrow);
  
  wire p,q,r,s,t;
  
  xor x1(p,a,b);
  xor x2(diff,p,cin);
  not n1(q,a);
  and a1(t,q,b);
  not n2(r,p);
  and a2(s,r,cin);
  or (borrow,s,t);
  
endmodule
