module logical_tb;
  reg [3:0] a,b,c,d;
  wire x,y;
  
  logical_operators lo(.a(a),.b(b),.c(c),.d(d),.x(x),.y(y));
  
  initial begin
    a=4'b1111;         
	b=4'b1010;          
	c=4'b1001;         
	d=4'b1101;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b | b=%b | c=%b | d=%b | x=%b | y=%b",$time,a,b,c,d,x,y);
    $dumpfile("logical_operators.vcd");
    $dumpvars(1,logical_tb);
  end
endmodule
