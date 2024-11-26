`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:19:51 PM
// Design Name: 
// Module Name: tb_task4
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


module tb_task4;
logic [3:0] A;
logic [3:0] B;
logic cin;
logic [7:0] sum;
//logic cout;

task4 DUT(
.A(A),
.B(B),
.sum(sum)
);
    
initial begin 


A = 4'b0110;
B = 4'b0010;
#10

A = 4'b1010;
B = 4'b1010;

#10

A = 4'b1001;
B = 4'b0001;
#30
$finish;

end
    
    
endmodule
