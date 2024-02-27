module inverter_tb;
  reg in;
  wire out;
  
  inverter inv(.in(in),.out(out));
  
  initial begin
    in=0;
    #10 in=1;
    #10 in=0;
    #10 in=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | in=%b | out=%b",$time,in,out);
    $dumpfile("inverter.vcd");
    $dumpvars(1,inverter_tb);
  end
endmodule
