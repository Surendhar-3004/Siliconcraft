module testup;
  reg reset,j,k,clk;
  wire [3:0]q,qb;
  updowncounter jk(reset,j,k,clk,q,qb);
  initial begin
    $monitor($time," value of j=%d,k=%d,clk=%d,q=%d,qb=%d",j,k,clk,q,qb);
    $dumpfile("testup.vcd");
    $dumpvars(1,jk);
    j=1;k=1;clk=0;reset=1;
    #2 reset=0;
  end
  
  always #1 clk=~clk;
  always@(clk)
    begin
      
      #50 $finish;
    end
endmodule
