module nor_gate_tb;//module name declaration
 //input and output declaration
reg A, B;
wire Y;
  
  nor_gate nor_gate2 (.Y(Y), .A(A), .B(B));//instantiation(connects input and ouput ofdesign and tb)
 
 //initial block for the code
initial begin
     A = 0; B = 0;
 #10 A = 0; B = 1;
 #10 A = 1; B = 0;
 #10 A = 1; B = 1;
 #10
  $finish;
end
  
 //second initial block for monitoring and dumping
initial begin
    $monitor ("%t | A = %d| B = %d| Y = %d", $time, A, B, Y);
  $dumpfile("nor_gate.vcd");
  $dumpvars(0,nor_gate_tb);
end
endmodule//end of the module
