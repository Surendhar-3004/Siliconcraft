module full_sub_tb;
  reg a,b,cin;
  wire diff,borrow;
  
  full_sub fs(.a(a),.b(b),.cin(cin),.diff(diff),.borrow(borrow));
  
  initial begin
    a=0;b=0;cin=0;
    #10 a=0;b=0;cin=1;
    #10 a=0;b=1;cin=0;
    #10 a=0;b=1;cin=1;
    #10 a=1;b=0;cin=0;
    #10 a=1;b=0;cin=1;
    #10 a=1;b=1;cin=0;
    #10 a=1;b=1;cin=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b | b=%b | cin=%d | diff=%b | borrow=%b",$time,a,b,cin,diff,borrow);
    $dumpfile("full_sub.vcd");
    $dumpvars(1,full_sub_tb);
    
  end
endmodule
