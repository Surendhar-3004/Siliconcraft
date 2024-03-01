module odd_number;
  
  task odd(input int a);
    begin
      if(a%2!=0)
        $display(a," is a odd number");
      else
        $display(a," is not a odd number");
    end
  endtask
  
  initial begin
    odd($random);
  end
endmodule
