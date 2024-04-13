module _repeat;
  
  initial begin
    repeat(5)begin
      $display("hi");
    end
    $display("finished");
  end
endmodule
