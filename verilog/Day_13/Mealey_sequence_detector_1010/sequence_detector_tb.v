module mealey_1010_tb;
  reg in,clk,reset;
  wire [1:0] present,next;
  wire out;
  
  mealey_1010 mealey(.in(in),.clk(clk),.reset(reset),.present(present),.next(next),.out(out));
  
  initial begin
    clk=1;reset=1;
    #5
    reset=0;
    in=1'b1;
    #10
    in=1'b0;
    #10
    in=1'b1;
    #10
    in=1'b0;
    #100
    $finish;
  end
  
  always #5 clk=~clk;
  
  initial begin
    $monitor("%t | reset=%b | clk=%b | in=%b | present=%b | next=%b | out=%b",$time,reset,clk,in,present,next,out);
  end
endmodule
