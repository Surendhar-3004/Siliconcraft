module even_number;
  
  task even(input int a);
    begin
      if(a%2==0)
        $display(a," is a even number");
      else
        $display(a," is not a even number");
    end
  endtask
  
  initial begin
    even(6);
  end
endmodule
