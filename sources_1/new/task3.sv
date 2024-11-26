`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:12:58 PM
// Design Name: 
// Module Name: task1
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


module task3(
input logic [7:0] A,
input logic [7:0] B,
input logic cin,
output logic [7:0] sum,
output logic cout
    );
    logic c;
    
bit4adder add1(
 .cin(cin),
 .A(A[3:0]),
 .B(B[3:0]),
 .S(sum[3:0]),
 .Cout(c)
    );
    
    bit4adder add2(
 .cin(c),
 .A(A[7:4]),
 .B(B[7:4]),
 .S(sum[7:4]),
 .Cout(cout)
    );

endmodule
