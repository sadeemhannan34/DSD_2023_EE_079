module lab3
	( output x,y,
      input a,b,c
	  );
	  /*---------circuit logic signals-------*/
	  logic notgt_opt;
      logic orgt_opt;
      logic nandgt_opt;
      logic xorgt_opt;
      /*---------circuit description--------*/
      assign notgt_opt = ~c;
      assign orgt_opt = a|b;
      assign nandgt_opt = ~(a&b);
      assign xorgt_opt = nandgt_opt ^ orgt_opt;

      assign x = notgt_opt ^ orgt_opt;
      assign y = orgt_opt & xorgt_opt;
             
endmodule 