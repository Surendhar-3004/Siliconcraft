module inverter(
  input in,
  output out);
  
  supply1 pwr;
  supply0 gnd;
  
  pmos(out,pwr,in);
  nmos(out,gnd,in);
endmodule
