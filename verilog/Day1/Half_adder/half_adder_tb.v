module half_adder_tb;//module name declaration
  //input output declaration
  reg a,b;
  wire s,c;
  
  half_adder half_adder2(.a(a),.b(b),.s(s),.c(c));//instantiation
  
  //intial block for the code
  initial begin
    a=0; b=0;
    #10 a=0; b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10
    $finish;
  end
  
  //second initial code for monitoring and dumping
  initial begin
    $monitor("%t | a=%d | b=%d | s=%d | c=%d",$time,a,b,s,c);
    $dumpfile("half_adder.vcd");
    $dumpvars(1,half_adder_tb);
  end
endmodule
