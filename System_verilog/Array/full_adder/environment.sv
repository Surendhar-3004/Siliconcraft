`include "Transaction.sv"
`include "Driver.sv"
`include "Generator.sv"

class environment;
  driver d;
  generator g;
  virtual inter vi;
  mailbox m;
  transaction t;
  
  function new(virtual inter vi,mailbox m);
    this.vi=vi;
    this.m=m;
  endfunction
  
  task memory;
    t=new();
    g=new(m);
    d=new(vi,m);
  endtask
  
  task run;
    fork
    g.gene;
    d.dri;
    join
  endtask
  
endclass
