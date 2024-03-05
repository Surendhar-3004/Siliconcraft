module down_counter(
  input reg reset,clk,
  output reg[3:0]y);
  
  always @(posedge clk)begin
    if(reset)
     y<=4'b0000;
    else
      y<=y-1;
    
  end
endmodule
