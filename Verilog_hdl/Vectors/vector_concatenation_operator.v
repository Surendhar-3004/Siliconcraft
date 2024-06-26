module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );
    
    wire [31:0]in;
    
    assign in={a,b,c,d,e,f,2'b11};
    assign w=in[31:24];
    assign x=in[23:16];
    assign y=in[15:8];
    assign z=in[7:0];
    
endmodule
