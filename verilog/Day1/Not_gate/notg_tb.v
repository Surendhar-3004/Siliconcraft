module notgate_tb;//module name declaration
   //input and output declaration
  reg a;
  wire b;
  
  not_gate tb(.a(a),.b(b));//instantiation(connects input and ouput of design and tb)
  
 //initial block for the code
  initial begin
    a=0;
    #10 a=1;
    #10 a=0;
    #10
    $finish;
  end
  
   //second initial block for monitoring and dumping
  initial begin
    $monitor("%t | a= %d | b=%d",$time,a,b);
    $dumpfile("not_gate.vcd");
    $dumpvars(1,notgate_tb);
  end
endmodule//end of the module
