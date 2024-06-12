// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "test.sv"

module dff_tb;
  
  test tb;
  
  mailbox mail;
  
  operation intf();
  
  d_flipflop dff(.clk(intf.clk),
                 .rst(intf.rst),
                 .d(intf.d),
                 .q(intf.q));
  
//   function new(mailbox mail);
//     this.mail=mail;
//   endfunction;
  
  initial begin
    mail=new();
    tb=new(intf,mail);
    
    fork
      tb.memory;
      tb.run;
    join 
  
  
   
    
    repeat (2) begin
      intf.clk=1;
      intf.rst=1;
    #5 intf.rst=0;
      
      forever #10 intf.rst=~intf.rst;
 
      $monitor("time=%0t rst=%0b ",$time,intf.rst);
    
   end
  
  
  
  end
 
    always#15 intf.clk=~intf.clk;
  initial begin
    $monitor("time=%0t clk=%0b rst=%0b d=%0b q=%0b",$time,intf.clk,intf.rst,intf.d,intf.q);
    $dumpfile("d_flipflop.vcd");
    $dumpvars(1);
    
    #100;
    $finish;
  end
endmodule
    
    
