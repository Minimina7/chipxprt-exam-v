`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:39:36 PM
// Design Name: 
// Module Name: bit4adder
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


module bit4adder(
input logic cin,
input logic [3:0] A,
input logic [3:0] B,
output logic [3:0] S,
output logic Cout
    );
    logic [4:0] sum;
    assign sum = A + B + cin;
    assign S = sum[3:0];
    assign Cout = sum[4];
endmodule
