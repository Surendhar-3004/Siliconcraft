module swapping_tb;
  reg [10:0] a,b;
  wire [10:0] swapped_a,swapped_b;
  
  swapping swap(.a(a),.b(b),.swapped_a(swapped_a),.swapped_b(swapped_b));
  
  initial begin
    a=10;
    b=5;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%0d | b=%0d | swapped_a=%0d | swapped_b=%0d",$time,a,b,swapped_a,swapped_b);
    $dumpfile("swapping.vcd");
    $dumpvars(1,swapping_tb);
  end
endmodule
