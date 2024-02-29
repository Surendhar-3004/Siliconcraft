module task1;
  task add;
    input integer a,b;
    output integer s;
    begin
      s=a+b;
      $display(s);
    end
  endtask
  
  task values;
    begin
    add(3,4);
    add (4,5);
    end
  endtask
  
  initial begin
    values;
  end
endmodule
