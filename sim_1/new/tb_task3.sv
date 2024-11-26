`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:47:23 PM
// Design Name: 
// Module Name: tb_task3
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


module tb_task3;
logic [7:0] A;
logic [7:0] B;
logic cin;
logic [7:0] sum;
logic cout;

task3 DUT(
.A(A),
.B(B),
.cin(cin),
.sum(sum),
.cout(cout)
);
    
initial begin 

cin = 1'b0;
A = 8'b0000_1001;
B = 8'b0000_0110;
#10
cin = 1'b0;
A = 8'b1000_0000;
B = 8'b0001_0000;

#10
cin = 1'b0;
A = 8'b1111_1111;
B = 8'b0000_0001;
#30
$finish;

end
    
    
endmodule
