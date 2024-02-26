module bcd_7seg
  (input x,y,z,w,
   output a,b,c,d,e,f,g);
  
  assign a= ((y & w) | (~y & ~w) | x | z);
  assign b= ((z & w) | (~z & ~w) | ~y);
  assign c= (y | ~z | w);
  assign d= (x | (~y & ~w) | (z & ~w) | (~y & z) | (y & ~z & w));
  assign e=((z & ~w) | (~y & ~w));
  assign f=((~z & ~w) | (y & ~w) | (y & ~z & w) | x);
  assign g=((z & ~w) | (y & ~z & w) | (~y & z) | x);
endmodule
