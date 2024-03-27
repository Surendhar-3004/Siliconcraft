// Code your testbench here
// or browse Examples
module sync_fifo_tb;
  reg clk,rst,w_en,r_en;
  reg [7:0] data_in;
  reg [2:0]w_ptr,r_ptr;
  wire full,empty;
  wire [7:0] data_out;
  
  sync_fifo sync(.clk(clk),
                 .rst(rst),
                 .w_en(w_en),
                 .r_en(r_en),
                 .full(full),
                 .empty(empty),
                 .data_in(data_in),
                 .data_out(data_out),
                 .w_ptr(w_ptr)
                );
  
  initial begin
    rst=1;
    clk=1;
    w_en=0;
    r_en=0;
    
   
    #1 rst=0;
    
     #1w_en=1;
    r_en=0;
      begin
     data_in=8'b00000000;
        #2 data_in=8'b00000010;
        #2 data_in=8'b00000100;
        #2 data_in=8'b00000011;
        #2 data_in=8'b00000101;
        #2 data_in=8'b00000110;
        #2 data_in=8'b00000111;
        #2 data_in=8'b00000001;
      end
    #4 w_en=0;
    r_en=1;
    #40 $finish;
    
  end
  
  always #1 clk=~clk;
  
  initial begin
    $monitor("t=%d clk=%b rst=%b w_en=%b r_en=%b data_in=%d full=%b empty=%b data_out=%d,w_ptr=%d",$time,clk,rst,w_en,r_en,data_in,full,empty,data_out,w_ptr);
    $dumpfile("sync_fifo.vcd");
    $dumpvars(1,sync_fifo_tb);
  end
endmodule
  
    
  
