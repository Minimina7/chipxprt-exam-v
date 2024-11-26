`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:25:29 PM
// Design Name: 
// Module Name: pattern
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


module pattern(
input logic clk,
input logic reset_n,
input logic load,
input logic [4:0] patternIn,
input logic serial_in,
output logic patt
    );
        logic [4:0] temp;
        logic [4:0] shift;
        logic serial_out;
    always @(posedge clk, negedge reset_n) begin
        if(!reset_n)
        begin
            temp <= 0;
            shift <= 0;
        end
        else if (load)
            temp <= patternIn;
        else
        begin
            shift[4] <= serial_in;
            shift[3] <= shift[4];
            shift[2] <= shift[3];
            shift[1] <= shift[2];
            shift[0] <= shift[1];
            serial_out <= shift[0];
        end    
    end
    
    assign patt = shift == temp;
endmodule
