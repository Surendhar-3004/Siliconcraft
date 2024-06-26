module unpacked_union;
  
  union{
    byte a;
    int b;
  }unpack_union;
  
  initial begin
    
    unpack_union.b='hefcdba98;
    
    $display("b=%h",unpack_union.b)
    $display("a=%h",unpack_union.a);
    
    unpack_union.a='h34;
    
    $display("\n a = %0h", unpack_union.a );
    $display("\n a = %0h", unpack_union.b );
    $display("\n unpack_union = %p", unpack_union);
    
  end
endmodule
