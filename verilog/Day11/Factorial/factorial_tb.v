module factorial_tb;
  reg [3:0] a;
  wire [10:0] y;
  
  factorial fact(.a(a),.y(y));
  
  initial begin
    a=5;
    #10
    $finish;
  end
  
  always @(*) begin
    $display(y);
  end
endmodule
