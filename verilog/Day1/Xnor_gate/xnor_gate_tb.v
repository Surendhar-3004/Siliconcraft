module xnorg_tb;//module name declaration
   //input and output declaration
  reg A, B;
  wire Y;
  xnor_gate xnorgate(.A(A), .B(B), .Y(Y));//instantiation(connects input and ouput ofdesign and tb)
  
 //initial block for the code
  initial begin
    $dumpfile("xnor_gate.vcd");
    $dumpvars(1, xnorg_tb);  
  end

   //second initial block for monitoring and dumping
  initial begin
    A = 1'b0; B = 1'b0;
    #10 A = 1'b0; B = 1'b1;
    #10 A = 1'b1; B = 1'b0;
    #10 A = 1'b1; B = 1'b1;
    #10
    $finish;
  end

  initial begin
  $monitor("time=%0t | A=%b | B=%b | Y = %b", $time, A, B, Y);
  $dumpfile("xnor_gate.vcd");
  $dumpvars(1,xnorg_tb);
  end
endmodule//end of the module
