// Code your design here
module two_state_datatype;
  
  bit [2:0]bit_datatype;
  byte byte_datatype;
  shortint shortint_datatype;
  int int_datatype;
  longint longint_datatype;
  initial begin
  $display("before initialization of bit_datatype %b",bit_datatype);
  $display("before initialization of byte_datatype %b",byte_datatype);
    $display("before initialization of shortint_datatype %d",shortint_datatype);
    $display("before initialization of int_datatype %d",int_datatype);
    $display("before initialization of longint_datatype %d",longint_datatype);
  
  bit_datatype=3'b011;
  byte_datatype=23;
  shortint_datatype=56;
  int_datatype=45;
  longint_datatype=57;
  
  $display("after initialization of bit_datatype %b",bit_datatype);
  $display("after initialization of byte_datatype %d",byte_datatype);
  $display("after initialization of shortint_datatype %d",shortint_datatype);
  $display("after initialization of int_datatype %d",int_datatype);
    $display("after initialization of longint_datatype %b",longint_datatype);
  end
  
endmodule
  
