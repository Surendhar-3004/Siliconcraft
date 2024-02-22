module xorg_tb;//module name declaration
   //input and output declaration
  reg A, B;
  wire Y;
  xor_gate xorgate(.A(A), .B(B), .Y(Y));//instantiation(connects input and ouput ofdesign and tb)
  
 //initial block for the code
  initial begin
    $dumpfile("xor_gate.vcd");
    $dumpvars(1, xorg_tb);  
  end

   //second initial block for monitoring and dumping
  initial begin
    $monitor("m",A, B, Y);
//     $display("d",A, B, Y);
    A = 1'b0; B = 1'b0;
//     $monitor("m",A, B, Y);
    $display("d",A, B, Y);
    #10 A = 1'b0; B = 1'b1;
//     $monitor("m",A, B, Y);
    $display("d",A, B, Y);
    #10 A = 1'b1; B = 1'b0;
//     $monitor("m",A, B, Y);
    $display("d",A, B, Y);
    #10 A = 1'b1; B = 1'b1;
    $monitor("m",A, B, Y);
//     $display("d",A, B, Y);
    #10
    $finish;
  end

  always @(Y)
    $monitor("time=%0t | A=%b | B=%b | Y = %b", $time, A, B, Y);
endmodule//end of the module
