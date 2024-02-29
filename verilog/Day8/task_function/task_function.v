module task1;
  function add;
    input integer a,b;
    output integer s;
    begin
      s=a+b;
      $display(s);
    end
  endfunction
  
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
