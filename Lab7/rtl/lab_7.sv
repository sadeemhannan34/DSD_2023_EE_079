module lab_7_seg( 
	input logic [3:0] num,
	input logic [2:0] select,
	input logic write,
	input logic clk,
	input logic reset,
	output logic [7:0] anode,
	output logic [6:0] cathode
);
	logic [16:0] counter_1;	
	always_ff @(posedge clk or posedge reset) begin
		if (reset) begin
			counter_1 <= 0;
		end
		else if (counter_1 == 17'd131071) begin
			counter_1 <= 0;
		end
		else begin
			counter_1 <= counter_1 + 1;
		end
	end
	
	logic [2:0] counter_2;
	always_ff @(posedge clk or posedge reset) begin
		if (reset) begin
			counter_2 <= 0;
		end
		else if (counter_1 == 17'd131071) begin
			counter_2 <= counter_2 + 1;
		end
	end
	
	logic [3:0] mem [7:0];
	always_ff @(posedge clk) begin
        if (reset)
            mem <= {0,0,0,0,0,0,0,0}; 
        else if (write)
            mem[select] <= num;
    end
	
	logic [2:0] new_select;
	always_comb begin
	if (write)
		new_select = select;
	else
		new_select = counter_2;
	end

	always_comb begin
        case(mem[new_select])
            4'b0000 : cathode = 7'b0000001;
            4'b0001 : cathode = 7'b1001111;
            4'b0010 : cathode = 7'b0010010;
            4'b0011 : cathode = 7'b0000110;
            4'b0100 : cathode = 7'b1001100;
            4'b0101 : cathode = 7'b0100100;
            4'b0110 : cathode = 7'b0100000;
            4'b0111 : cathode = 7'b0001111;
            4'b1000 : cathode = 7'b0000000;
            4'b1001 : cathode = 7'b0000100;
            4'b1010 : cathode = 7'b0001000;
            4'b1011 : cathode = 7'b1100000;
            4'b1100 : cathode = 7'b0110001;
            4'b1101 : cathode = 7'b1000010;
            4'b1110 : cathode = 7'b0110000;
            4'b1111 : cathode = 7'b0111000;
        endcase
    end
	
	always_comb begin
        case(new_select)
            3'b000 : anode = 8'b11111110;
            3'b001 : anode = 8'b11111101;
            3'b010 : anode = 8'b11111011;
            3'b011 : anode = 8'b11110111;
            3'b100 : anode = 8'b11101111;
            3'b101 : anode = 8'b11011111;
            3'b110 : anode = 8'b10111111;
            3'b111 : anode = 8'b01111111;
        endcase
    end
endmodule 