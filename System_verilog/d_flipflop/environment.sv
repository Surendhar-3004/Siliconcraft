`include "agent.sv"

class environment;
  
  agent ag;
  
  mailbox mail;
 
  virtual operation vintf;
   
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task memory;
    ag=new(vintf,mail);
  endtask
  
  task run;
    fork
    ag.memory;
    ag.run;
    join
  endtask
  
endclass
  
  
