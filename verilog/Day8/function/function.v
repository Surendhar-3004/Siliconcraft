module function_tb;
  
  function integer sum(integer a,b);
    begin
      sum=a+b;
    end
    endfunction
      initial
        $display("sum" ,sum(2,3));
endmodule
    
