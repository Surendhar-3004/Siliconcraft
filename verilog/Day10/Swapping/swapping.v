module swapping(
  input [10:0] a ,b,
  output reg[10:0] swapped_a,swapped_b);
  reg [10:0]temp;
  
  always @(*) begin
    temp=a;
    swapped_a = b;
    swapped_b = temp;
  end
endmodule
