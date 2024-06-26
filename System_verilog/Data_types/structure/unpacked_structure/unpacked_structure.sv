struct  {
  bit[7:0] intr;
  logic [23:0] addr;
}str;

module unpacked_structure;
  
  initial begin
    str.intr='hff;
    $display( "%t str=%h",$time,str);
    $display( "%t str intr=%h",$time,str.intr);
    
  
    str={8'h00,24'hFF_FF_FF};
    $display( "%t str=%h",$time,str);
    
    str=0;
    str=str+'h12;
    $display( "%t str=%h",$time,str);
    
  end
endmodule
