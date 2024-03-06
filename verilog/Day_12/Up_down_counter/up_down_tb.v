module up_down_counter_tb;
  reg reset,clock;
  reg s;
  wire [3:0]y;
  
  up_down_counter uut(.s(s),.reset(reset),.clock(clock),.y(y));
  
  initial begin
    s=0;reset=1;clock=1;
    #2 reset=0;
    #300
    s=1;reset=1;clock=1;
    #2 reset=0;
    #300
    $finish;
  end
  
  always #10clock=~clock;
  always #10 s=~s;
  
  
  always @(*) begin
    $monitor("%t | s=%0b | reset=%0b | clock=%0b |y=%0d",$time,s,reset,clock,y);
  end
endmodule
