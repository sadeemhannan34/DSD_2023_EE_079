`timescale 1ns/1ps

module lab_7_seg_tb;
    logic [3:0] num;
    logic [2:0] select;
    logic write;
    logic clk;
    logic reset;
    logic [7:0] anode;
    logic [6:0] cathode;

    lab_7_seg uut (
        .num(num),
        .select(select),
        .write(write),
        .clk(clk),
        .reset(reset),
        .anode(anode),
        .cathode(cathode)
    );

    initial begin
		forever #5 clk = ~clk;
	end
	
    initial begin
        clk = 0;
        reset = 1;
        num = 4'b0000;
        select = 3'b000;
        write = 0;

        #20;
        reset = 0;
        #10;

        write = 1;
        num = 4'b0000; select = 3'b000; #10;  
        num = 4'b0001; select = 3'b001; #10;  
        num = 4'b0010; select = 3'b010; #10;  
        num = 4'b0011; select = 3'b011; #10;  
        num = 4'b0100; select = 3'b100; #10;  
        num = 4'b0101; select = 3'b101; #10; 
        num = 4'b0110; select = 3'b110; #10;  
        num = 4'b0111; select = 3'b111; #10;  

        write = 0;
        select = 3'b000; #20;
        select = 3'b001; #20;
        select = 3'b010; #20;
        select = 3'b011; #20;
        select = 3'b100; #20;
        select = 3'b101; #20;
        select = 3'b110; #20;
        select = 3'b111; #20;

        #131071;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | num=%b | select=%b | write=%b | anode=%b | cathode=%b", 
                 $time, num, select, write, anode, cathode);
    end
endmodule

