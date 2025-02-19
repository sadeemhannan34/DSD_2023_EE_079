module lab_4_tb();
logic [1:0] a;
logic [1:0] b;
logic r, g;
logic bl_ot;

lab_4 uut(
    .a(a),
    .b(b),        
    .r(r),
    .g(g),
    .bl(bl_ot)     
  );

initial
begin
	/*the following system task will print out the signal values every time
	  they change on the Transcript Window*/
    $monitor(" r=%b, g=%b, bl=%b, a=%b b=%b", r, g, bl_ot, a, b);

    for (int i = 0; i < 4; i++) 
	begin
      for (int j = 0; j < 4; j++) 
	  begin
        a = i;
        b = j;
        #10;
      end
    end
    $stop;
end

endmodule
