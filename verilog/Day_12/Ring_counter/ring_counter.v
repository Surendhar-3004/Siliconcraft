module ring_counter(
  input clk,reset,
  output reg[1:0] y);
  
  always @(posedge clk) begin
    if(reset || (y==2'b11))
      y=2'b00;
    else
      y=y+1;
  end
endmodule
