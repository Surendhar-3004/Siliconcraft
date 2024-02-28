module logical_operator(
  input a,b,c,d,
  output reg x1,x2,x3);

  always @(*) begin
    assign x1=a && b;
    assign x2=c || d;
    assign x3 = (!a);
  end
endmodule
    
