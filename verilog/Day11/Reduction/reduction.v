module reduction(
  input reg [4:0] a,
  output reg y1,y2,y3,y4,y5,y6);
  
 always @(*) begin
      y1=&a;
      y2=|a;
      y3=~&a;
      y4=~|a;
      y5=^a;
      y6=^~a;
    end
endmodule
