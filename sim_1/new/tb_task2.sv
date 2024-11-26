`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 01:36:31 PM
// Design Name: 
// Module Name: tb_task2
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


module tb_task2;

logic [7:0] regi;
logic odd;

task2 DUT(
.regi(regi),
.odd(odd)

    );

initial begin 

regi = 8'b1011_1001;

#10

regi = 8'b1001_1001;

#10
regi = 8'b1000_1001;
#30
$finish;

end


endmodule
