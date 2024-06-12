`include "environment.sv"

class test;
  
  environment env;
  
  mailbox mail;
  
  virtual operation vintf;
  
  function new(virtual operation vintf,mailbox mail);
    this.mail=mail;
    this.vintf=vintf;
  endfunction
  
  task memory;
    env=new(vintf,mail);
  endtask
  
  task run;
    fork
      env.memory;
    env.run;
    join
  endtask
endclass
