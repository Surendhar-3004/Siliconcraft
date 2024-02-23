module encoder4_2
  (input a,b,c,d,
   output y0,y1);
 
  or or1(y0,a,b);
  or or2(y1,c,a);
endmodule
