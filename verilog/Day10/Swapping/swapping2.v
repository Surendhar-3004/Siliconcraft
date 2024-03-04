module swapping;
  int a=8,b=5;
  
  reg [4:0]temp;
  
  initial begin
    temp=a;
    a=b;
    b=temp;
  end
  initial begin
    $display("a=%0d,b=%0d",a,b);
  end
endmodule
    
