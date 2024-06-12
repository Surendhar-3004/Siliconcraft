`include "Transaction.sv"
`include "Generator.sv"
`include "Driver.sv"

class environment;
  mailbox mail;
  virtual inter vi;
    transaction t;
    generator g;
    driver d;
    
    function new(virtual inter vi,mailbox mail);
      this.vi=vi;
      this.mail=mail;
    endfunction
      
      task memory;
        t=new();
        g=new(mail);
        d=new(vi,mail);
      endtask
      
      task run;
        fork
        g.gen;
        d.drive;
        join
      endtask
      
      
endclass
