module shift_register_tb;
  reg [4:0] a;
  reg clk;
  wire [4:0] q;
  
  shift_register sr(.a(a),.q(q),.clk(clk));
  
  initial begin
    clk=1;
    a=01101;
    #10
    $finish;
  end
  
 
   always #2 clk=~clk;
  
  always @* begin
    $display("a=%b,q=%b,clk=%d",a,q,clk);
  end
endmodule
