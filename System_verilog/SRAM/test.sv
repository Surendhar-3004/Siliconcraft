`include "Environment.sv"
class test;
  environment env;
  mailbox mail;
  transaction t;
  virtual inter vi;
    
    function new(virtual inter vi,mailbox mail);
      this.vi=vi;
      this.mail=mail;
    endfunction
      
      task memory;
        t=new();
        env=new(vi,mail);
      endtask
      
      task run;
        fork
        env.memory;
        env.run;
        join
      endtask
    
    endclass
