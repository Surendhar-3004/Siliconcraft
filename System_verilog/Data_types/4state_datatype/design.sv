// Code your design here
module fourstate_datatype;

//Declaring fourstate_datatype
  reg [2:0]reg_datatype;
  wire [2:0]wire_datatype;
  logic [2:0]logic_data_type;
  integer  integer_datatype;
  time  [2:0]time_datatype;
  real  real_datatype;
  
initial begin

// Displaying the value of fourstate_datatype(default)
  $display("\nDefault value of reg data type =%b",reg_datatype);
  $display("\nDefault value of wire data type =%b",wire_datatype);
  $display("\nDefault value of logic data type =%b",logic_data_type);
  $display("\nDefault value of integer data type =%b",integer_datatype);
  $display("\nDefault value of time data type =%b",time_datatype);
  $display("\nDefault value of real data type =%b",real_datatype);

// Initialising the value for fourstate_datatype
  reg_datatype=3'b110;
 
  logic_data_type=3'b011;
  integer_datatype=3'b110;
  time_datatype=3'b101;
  real_datatype=4.45;
  

// Displaying the value of fourstate_datatype after initialising the value
  $display("\nValue of reg data type  after initialization =%b",reg_datatype);
  $display("");
  $display("\nValue of wire data type  after initialization =%b",wire_datatype);
$display("");
  $display("\nValue of logic data type  after initialization =%b",logic_data_type);
$display("");
  $display("\nValue of integer data type  after initialization =%b",integer_datatype);
$display("");
  $display("\nValue of time data type  after initialization =%0d",time_datatype);
$display("");
  $display("\nValue of real data type  after initialization=%0f ",real_datatype);
$display("");
  
end
endmodule 
