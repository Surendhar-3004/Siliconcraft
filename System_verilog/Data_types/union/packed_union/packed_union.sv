module packed_union;
  
  union packed{
    byte a;
    byte b;
  }pack_union;
  
  initial begin
    
    pack_union.a='h98;
    
    $display("\n a=%h",pack_union.a);
    $display("\n b=%h",pack_union.b);
    
    pack_union.b='h34;
    
    $display("\n a = %0h", pack_union.a );
    $display("\n b = %0h", pack_union.b );
    $display("\n pack_union = %p", pack_union);
    
  end
endmodule
