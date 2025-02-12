module lab3_tb();
logic a6;
logic b6;
logic c6;
logic x6;
logic y6;

localparam period = 10;

lab3 UUT(
	.a(a6),
	.b(b6),
	.c(c6),
	.x(x6),
	.y(y6)
);

initial
begin
	// provide different combinations of the inputs to check validity of code
	a6 = 0; b6 = 0; c6 = 0;
    #period;
    a6 = 0; b6 = 0; c6 = 1;
    #period;
    a6 = 0; b6 = 1; c6 = 0;
    #period;
    a6 = 0; b6 = 1; c6 = 1;
    #period;
    a6 = 1; b6 = 0; c6 = 0;
    #period;
    a6 = 1; b6 = 0; c6 = 1;
    #period;
    a6 = 1; b6 = 1; c6 = 0;
    #period;
    a6 = 1; b6 = 1; c6 = 1;
    #period;
	$stop;
end

initial
begin
		/*the following system task will print out the signal values every time
		  they change on the Transcript Window*/
		$monitor("x=%b, y=%b, a=%b, b=%b, c=%b", x6, y6, a6, b6, c6);
end
endmodule
