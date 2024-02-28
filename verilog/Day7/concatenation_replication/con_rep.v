module con_rep(
  input [3:0]a,b,
  output reg [7:0]y,z);
  
  initial begin
    y={a,b};
    z={2{a}};
    
  end
endmodule
  
