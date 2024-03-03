module shift_register(
  input [4:0] a,
  output reg[4:0] q);
  
  always @* begin
    q=a<<2;
  end
endmodule
