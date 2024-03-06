module up_down_counter(
  input reset,clock,
  input s,
  output reg[3:0]y);
  
  always @(posedge clock) begin
    if(reset)
      y=4'b0000;
    else
    case(s)
      0: y=y+1;
      1: y=y-1;
    endcase
  end
endmodule
