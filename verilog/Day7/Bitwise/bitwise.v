module bitwise
  (input [7:0] q,b,
   output reg[7:0] x1,x2,x3,x4,x5);
  
  always @(*) begin
    assign x1= q & b;
    assign x2= q | b;
    assign x3= ~q;
    assign x4= q ^ b;
    assign x5= q ~^ b;
  end
endmodule
