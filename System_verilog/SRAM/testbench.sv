`include "Test.sv"
`include "Interface.sv"

module sram1;
  test tt;
  inter in();
  transaction t;
  mailbox mail;
  
  sram sr(.clk(in.clk),
          .wdata(in.wdata),
         .addr(in.addr),
          .w_en(in.w_en),
          .rdata(in.rdata));
  
  initial begin
    t=new();
    mail=new();
    tt=new(in,mail);
    fork
      tt.memory;
      tt.run;
    join
  end
   always #10 in.clk=~in.clk;
  initial begin
    in.clk=1'b1;
   
    //$monitor("time=%0t clk=%d",$time,in.clk);
    $monitor("time=%0t clk=%0d w_en=%d wdata=%d addr=%d rdata=%d",$time,in.clk ,in.w_en,in.wdata,in.addr,in.rdata);
    #220 $finish;
  end  
endmodule
