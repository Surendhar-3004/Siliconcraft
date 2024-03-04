module reduction_tb;
  reg [4:0]a;
  wire y1,y2,y3,y4,y5,y6;
  
  reduction red(.a(a),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6));
  
  initial begin
    a=5;
    #2;
    a=5'b11101;
    $display(" a=%0b y1=%0b y2=%0b y3=%0b y4=%0b y5=%0b y6=%0b",a,y1,y2,y3,y4,y5,y6);
    #20
    a=5'b11011;
    $display(" a=%0b y1=%0b y2=%0b y3=%0b y4=%0b y5=%0b y6=%0b",a,y1,y2,y3,y4,y5,y6);
    #10
    $finish;
  end
  initial begin
    $dumpfile("reduction.vcd");
    $dumpvars(1,reduction_tb);
  end
  
endmodule
