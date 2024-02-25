module comparator_tb;
  reg a,b;
  wire equal,lesser,greater;
  
  comparator cmp(.a(a),.b(b),.equal(equal),.lesser(lesser),.greater(greater));
  
  initial begin
    a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b | b=%b | equal=%b | lesser=%b | greater=%b",$time,a,b,equal,lesser,greater);
    $dumpfile("comparator.vcd");
    $dumpvars(1,comparator_tb);
  end
endmodule
