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


module task4(
input logic [4:0] A,
input logic [4:0] B,
output logic [7:0] sum
    );
    
    logic ab01, ab02, ab03 , ab10,ab11,ab12,ab13,ab20,ab21,ab22,ab23,ab30,ab31,ab32,ab33;
    logic c1,c2,c3;
    logic [3:0] res1,res2;

    and(ab01, A[1], B[0]);
    and(ab02, A[2], B[0]);
    and(ab03, A[3], B[0]);
    and(ab10, A[0], B[1]);
    and(ab11, A[1], B[1]);
    and(ab12, A[2], B[1]);
    and(ab13, A[3], B[1]);
    and(ab20, A[0], B[2]);
    and(ab21, A[1], B[2]);
    and(ab22, A[2], B[2]);
    and(ab23, A[3], B[2]);
    and(ab30, A[0], B[3]);
    and(ab31, A[1], B[3]);
    and(ab32, A[2], B[3]);
    and(ab33, A[3], B[3]);
    
    assign sum[0] = A[0] & B[0];  
    
    bit4adder add1(
 .cin(1'b0),
 .A({0,ab03,ab02,ab01}),
 .B({ab13,ab12,ab11,ab10}),
 .S(res1),
 .Cout(c1)
    );
    
assign sum[1] = res1[0];  

    bit4adder add2(
 .cin(1'b0),
 .A({c1,res1[3:1]}),
 .B({ab23,ab22,ab21,ab20}),
 .S(res2),
 .Cout(c2)
    );
assign sum[2] = res2[0];  

    bit4adder add3(
 .cin(1'b0),
 .A({c2,res2[3:1]}),
 .B({ab33,ab32,ab31,ab30}),
 .S(sum[6:3]),
 .Cout(sum[7])
    );
    

    
endmodule
