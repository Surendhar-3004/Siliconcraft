module half_sub
  (input a,b,
   output diff,borrow);
  
  wire x;
  
  not(x,a);
  xor (diff,a,b);
  and (borrow,x,b);
  
endmodule
  
