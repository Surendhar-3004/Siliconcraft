module logical_operator_tb;
  reg a,b,c,d;
  wire x1,x2,x3;
  
  logical_operator lo(.a(a),.b(b),.c(c),.d(d),.x1(x1),.x2(x2),.x3(x3));
  
  initial begin
    a=1;         
	b=0;          
	c=1;         
	d=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b | b=%b | c=%b | d=%b | x1=%b | x2=%b | x3",$time,a,b,c,d,x1,x2,x3);
    $dumpfile("logical_operator.vcd");
    $dumpvars(1,logical_operator_tb);
  end
endmodule
