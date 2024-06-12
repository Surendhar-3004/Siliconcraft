module sram(input clk,
          //  input reset,
            input [3:0]wdata,
            input [3:0]addr,
           input w_en,
            output reg [3:0]rdata);
  reg [3:0]mem[7:0];
  
  always @(posedge clk)begin
//     if(reset==1)
//       rdata<=0;
     if(w_en==1)
      mem[addr]<=wdata;
    else if(w_en==0)
      rdata<=mem[addr];
  end
  
endmodule

