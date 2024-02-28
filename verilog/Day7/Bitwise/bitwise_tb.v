module bitwise_tb;
  reg [7:0] q,b;
  wire [7:0] x1,x2,x3,x4,x5;
  
  bitwise bt(.q(q),.b(b),.x1(x1),.x2(x2),.x3(x3),.x4(x4),.x5(x5));
  
  initial begin
    q=0001;
    b=0001;
  end
  
  initial begin
    $monitor("%t | q=%b | b=%b | x1=%b | x2=%b | x3=%b | x4=%b | x5=%b",$time,q,b,x1,x2,x3,x4,x5);
    $dumpfile("bitwise.vcd");
    $dumpvars(1,bitwise_tb);
  end
endmodule
