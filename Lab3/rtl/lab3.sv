`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 08:55:44 PM
// Design Name: 
// Module Name: lab3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module lab3( output x,y,
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


