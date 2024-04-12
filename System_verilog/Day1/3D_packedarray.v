module three_D_packedarray;
  
  bit[2:0][3:0][7:0] data;
  
  initial begin
    data[0]=32'hcafe_face;
    data[1]=32'hc0de_fade;
    data[2]=32'h2345_6789;
    
    $display("The data's are %0h",data);
    $display("");
    
    foreach(data[i])begin
      $display("The data at [%0d] is [%0h]",i,data[i]);
    end
    $display("");
  end
endmodule
