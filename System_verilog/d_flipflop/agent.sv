`include "transaction.sv"
`include "driver.sv"
`include "generator.sv"
//`include "monitor.sv"

class agent;
  
  transaction pkt;
  
  driver adrive;
  
  generator agen;
  
  //monitor amon;
  
  virtual operation vintf;

  
  mailbox mail;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  
  
  task memory;
    
    pkt=new();
    adrive=new(vintf,mail);
    agen=new(mail);
  //  amon=new(vintf,mail);
    
  endtask
  
  task run;
    
    fork
      agen.gene;
      adrive.drive;
    //  amon.mon;
      
      
    join
    
  endtask
endclass
  
  
  
  
  
