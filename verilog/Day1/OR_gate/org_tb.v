module orgate_tb;//module name declaration
   //input and output declaration
  reg a,b;
  wire y;
  
  Or_gate tb(.a(a),.b(b),.y(y));//instantiation(connects input and ouput of design and tb)
  
  //initial block for the code
  initial begin
    a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;
    #10
    $finish;
  end
  
   //second initial block for monitoring and dumping
  initial begin
    $monitor("%t | a=%d | b=%d | y=%d",$time,a,b,y);
    $dumpfile("Or_gate.vcd");
    $dumpvars(1,orgate_tb);
  end
endmodule//end of the module
