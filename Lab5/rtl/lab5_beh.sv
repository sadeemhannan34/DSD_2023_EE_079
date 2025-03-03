module lab5(
    input  logic [3:0] num,
    input  logic [2:0] sel,
    output logic a,
    output logic b,
    output logic c,
    output logic d,
    output logic e,   
    output logic f,
    output logic g,
    output logic seg0,
    output logic seg1,
    output logic seg2,
    output logic seg3,
    output logic seg4,
    output logic seg5,
    output logic seg6,
    output logic seg7
    );
    
always_comb begin

    case (num)

        4'b0000: {a, b, c, d, e, f, g} = 7'b0000001;
        4'b0001: {a, b, c, d, e, f, g} = 7'b1001111;
        4'b0010: {a, b, c, d, e, f, g} = 7'b0010010;
        4'b0011: {a, b, c, d, e, f, g} = 7'b0000110;
        4'b0100: {a, b, c, d, e, f, g} = 7'b1001100;
        4'b0101: {a, b, c, d, e, f, g} = 7'b0100100;
        4'b0110: {a, b, c, d, e, f, g} = 7'b0100000;
        4'b0111: {a, b, c, d, e, f, g} = 7'b0001111;
        4'b1000: {a, b, c, d, e, f, g} = 7'b0000000;
        4'b1001: {a, b, c, d, e, f, g} = 7'b0000100;
        4'b1010: {a, b, c, d, e, f, g} = 7'b0001000;
        4'b1011: {a, b, c, d, e, f, g} = 7'b1100000;
        4'b1100: {a, b, c, d, e, f, g} = 7'b0110001;
        4'b1101: {a, b, c, d, e, f, g} = 7'b1000010;
        4'b1110: {a, b, c, d, e, f, g} = 7'b0110000;
        4'b1111: {a, b, c, d, e, f, g} = 7'b0111000;

    endcase


end


always_comb begin


    case (sel)


        3'b000: {seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 8'b01111111;
        3'b001: {seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 8'b10111111;
        3'b010: {seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 8'b11011111;
        3'b011: {seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 8'b11101111;
        3'b100: {seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 8'b11110111;
        3'b101: {seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 8'b11111011;
        3'b110: {seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 8'b11111101;
        3'b111: {seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 8'b01111110;



    endcase
end


endmodule