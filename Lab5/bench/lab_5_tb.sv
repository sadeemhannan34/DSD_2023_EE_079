`timescale 1 ns / 10 ps

module lab5_tb();

logic [3:0] it_num;
logic [2:0] it_sel;
logic ot_a;
logic ot_b;
logic ot_c;
logic ot_d;
logic ot_e;
logic ot_f;
logic ot_g;
logic otseg_0;
logic otseg_1;
logic otseg_2;
logic otseg_3;
logic otseg_4;
logic otseg_5;
logic otseg_6;
logic otseg_7;


lab5 UUT (
    .num(it_num),
    .sel(it_sel),
    .a(ot_a),
    .b(ot_b),
    .c(ot_c),
    .d(ot_d),
    .e(ot_e),
    .f(ot_f),
    .g(ot_g),
    .seg0(otseg_0),
    .seg1(otseg_1),
    .seg2(otseg_2),
    .seg3(otseg_3),
    .seg4(otseg_4),
    .seg5(otseg_5),
    .seg6(otseg_6),
    .seg7(otseg_7)

);

//-----Initial Block for Providing 16 Input Combinations for 4 Inputs-----//
initial begin
    it_num = 4'b0000; it_sel = 3'b000;    //-----Input 1-----//
    #10;
    it_num = 4'b0001; it_sel = 3'b001;    //-----Input 2-----//
    #10;
    it_num = 4'b0010; it_sel = 3'b010;    //-----Input 3-----//
    #10;
    it_num = 4'b0011; it_sel = 3'b011;    //-----Input 4-----//
    #10;
    it_num = 4'b0100; it_sel = 3'b100;    //-----Input 5-----//
    #10;
    it_num = 4'b0101; it_sel = 3'b101;    //-----Input 6-----//
    #10;
    it_num = 4'b0110; it_sel = 3'b110;    //-----Input 7-----//
    #10;
    it_num = 4'b0111; it_sel = 3'b111;    //-----Input 8-----//
    #10;
    it_num = 4'b1000;                     //-----Input 9-----//
    #10;
    it_num = 4'b1001;                     //-----Input 10-----//
    #10;
    it_num = 4'b1010;                     //-----Input 11-----//
    #10;
    it_num = 4'b1011;                     //-----Input 12-----//
    #10;
    it_num = 4'b1100;                     //-----Input 13-----//
    #10;
    it_num = 4'b1101;                     //-----Input 14-----//
    #10;
    it_num = 4'b1110;                     //-----Input 15-----//
    #10;
    it_num = 4'b1111;                     //-----Input 16-----//
    #10;
    $stop;
end


initial begin
    $monitor("num[3] = %b  num[2] = %b  num[1] = %b  num[0] = %b  | Seg-A = %b  Seg-B = %b  Seg-C = %b  Seg-D = %b  Seg-E = %b  Seg-F = %b  Seg-G = %b", it_num[3], it_num[2], it_num[1], it_num[0], ot_a, ot_b, ot_c, ot_d, ot_e, ot_f, ot_g );
end    

endmodule

