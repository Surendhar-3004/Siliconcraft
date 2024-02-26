module bcd_7seg_tb;
  reg x,y,z,w;
  wire a,b,c,d,e,f,g;
  
  bcd_7seg b7s(.x(x),.y(y),.z(z),.w(w),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));
  
  initial begin
    x=0;y=1;z=0;w=1;
    #10 x=0;y=0;z=1;w=1;
    #10 x=0;y=1;z=1;w=1;
    #10 x=0;y=0;z=0;w=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | x=%b | y=%b | z=%b | w=%b | a=%b | b=%b | c=%b | d=%b | e=%b | f=%b | g=%b |",$time,x,y,z,w,a,b,c,d,e,f,g);
    $dumpfile("bcd_7seg.vcd");
    $dumpvars(1,bcd_7seg_tb);
  end
endmodule
