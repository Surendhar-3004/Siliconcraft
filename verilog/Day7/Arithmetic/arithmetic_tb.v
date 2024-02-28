module arithmetic_tb;
  reg [5:0]a,b;
  wire [7:0] y1,y2,y3,y4,y5;
  
  arithmetic arith(.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5));
  
  initial begin
    a=9;b=3;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%d | b=%d | y1=%d | y2=%d | y3=%d | y4=%d | y5=%d |",$time,a,b,y1,y2,y3,y4,y5);
    $dumpfile("arithmetic.vcd");
    $dumpvars(1,arithmetic_tb);
  end
endmodule
