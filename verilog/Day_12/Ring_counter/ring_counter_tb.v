module ring_counter_tb;
  reg clk,reset;
  wire [1:0] y;
  
  ring_counter ring(.clk(clk),.reset(reset),.y(y));
  
  initial begin
    reset=1;clk=0;
    #10
    reset=0;
    #300
    $finish;
    
  end
  
  always #5 clk=~clk;
  
  initial begin
    $monitor("%t | reset=%0b | clk=%0b | y=%b",$time,reset,clk,y);
  end
endmodule
