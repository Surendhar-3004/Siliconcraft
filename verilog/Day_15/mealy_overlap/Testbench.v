 module mealyoverlaptb;
  reg clk, rst, a;         
  wire out;
  
  mealyoverlap uut (.clk(clk),.rst(rst),.a(a),.out(out));
  initial begin
    $dumpfile("mealyoverlap.vcd");
    $dumpvars((1),mealyoverlaptb);
  end
  initial 
    forever  #2 clk =~clk;
    
   initial begin
    clk =0; 
    rst = 0;
    a=1;
   #2 rst =1;
   #4 a=1;
   #4 a=0;
   #4 a=1;
   #4 a=0;
     #30
     $finish;

   end
    
   initial begin
    $monitor("%t input values : a=%b,clk =%b,rst =%b,output values : out=%b",$time,a,clk,rst,out);
     
  end
endmodule
