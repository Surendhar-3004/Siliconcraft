module sequence_detector_tb;
  reg clk,reset,in;
  wire [2:0]present,next;
  wire out;
  
  moore_sequence_detector_1001 moore(.clk(clk),.reset(reset),.in(in),.present(present),.next(next),.out(out));
  
  initial begin
    clk=1;reset=1;
    #5
    reset=0;
    end
  initial begin
    #10
    in=1'b1;
    #10
    in=1'b0;
    #10
    in=1'b0;
    #10
    in=1'b1;
    #100
    $finish;
  end
  
  always #5 clk=~clk;
 
  
  initial begin
    $monitor("%t | reset=%b | clk=%b | in=%b | present=%b | next=%b | out=%b",$time,reset,clk,in,present,next,out);
  end
endmodule
