module up_counter_tb;
  reg reset,clk;
  wire [3:0]y;
  
  up_counter up(.reset(reset),.clk(clk),.y(y));

  always #10 clk=~clk;
  initial begin
    clk=1;
     reset=1;
   #20
    reset=0;
    #300
   
     $finish;
  end
 
    

  initial begin
    $monitor("reset=%0b clk=%0b y=%0d",reset,clk,y);
  end
endmodule
