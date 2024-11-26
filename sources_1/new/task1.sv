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


module task1(
input logic clk,
input logic count,
output logic regOut,
output logic q
    );
    
    logic ot;
    assign ot = ~count;
    
    always @(posedge clk)
    begin
        regOut <= count;
    end
        assign q = regOut & ot;
    
    
endmodule
