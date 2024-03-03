module shift_register(
  input [4:0] a,
  input clk,
  output reg[4:0] q);
  
  always @ (posedge clk) begin
    q=a<<1;
  end
endmodule
