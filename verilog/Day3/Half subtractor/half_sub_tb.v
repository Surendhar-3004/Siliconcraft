module half_sub_tb;
  reg a,b;
  wire diff,borrow;
  
  half_sub hs(.a(a),.b(b),.diff(diff),.borrow(borrow));
  
  initial begin
    a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b | b=%b | diff=%b | borrow=%b",$time,a,b,diff,borrow);
    $dumpfile("half_sub.vcd");
    $dumpvars(1,half_sub_tb);
    
  end
endmodule
