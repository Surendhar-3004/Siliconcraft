class rand_vs_randc ; 
	rand logic [1:0] data; 
 	randc logic [1:0] values ; 

  function void post_randomize();  
     $display(" data %h value %h ",data,values);
endfunction
endclass  	

module test;  
     rand_vs_randc p=new(); 
   initial begin 
repeat(10) 
  p.randomize();
     //p.post_randomize();
end
 endmodule 

