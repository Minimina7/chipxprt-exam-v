`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:19:50 PM
// Design Name: 
// Module Name: tb_task1
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


module tb_task1;

logic clk=0;
logic count;
logic q;
logic regOut;

task1 DUT(
.clk(clk),
.count(count),
.q(q),
.regOut(regOut)

    );
always #5 clk = ~clk;

initial begin 

#10

count = 1'b1;

#10
count = 1'b0;
#30
$finish;

end
endmodule
