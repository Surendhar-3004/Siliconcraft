module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire and1,and2,and3,and4;
    
    and a1(and1,p2a,p2b);
    and a2(and2,p2c,p2d);
    and a3(and3,p1a,p1b,p1c);
    and a4(and4,p1f,p1e,p1d);
    
    or r1(p2y,and1,and2);
    or r2(p1y,and3,and4);


endmodule
