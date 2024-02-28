module con_rep_tb;
  reg [3:0]a,b;
  wire [7:0] y,z;
  
  con_rep cr(.a(a),.b(b),.y(y),.z(z));
  
  initial begin
    a=4'b0101;
    b=4'b00x1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b | b=%b | y=%b | z=%b",$time,a,b,y,z);
    $dumpfile("con_rep.vcd");
    $dumpvars(1,con_rep_tb);
  end
endmodule
