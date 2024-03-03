module shift_register_tb;
  reg [4:0] a;
  wire [4:0] q;
  
  shift_register sr(.a(a),.q(q));
  
  initial begin
    repeat(2) 
    a=10101;
    #10
    $finish;
  end
  
  always @* begin
    $display("a=%b,q=%b",a,q);
  end
endmodule
