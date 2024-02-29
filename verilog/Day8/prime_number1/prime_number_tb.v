module prime_number_tb;
  reg a;
  reg count;
  wire y;
  
  prime_number pn(.a(a),.count(count),.y(y));
  
  initial begin
    repeat(4)
    a=5;count=0;
     #3  a=8;count=0;
        #3 a=12;count=0;
    
    $monitor("a=%0d",a);
   
    #100
    $finish;
  end 
endmodule
