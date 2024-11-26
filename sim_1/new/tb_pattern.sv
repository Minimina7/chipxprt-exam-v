`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:38:47 PM
// Design Name: 
// Module Name: tb_pattern
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


module tb_pattern;

logic clk=0;
logic reset_n;
logic load;
logic [4:0] patternIn;
logic serial_in;
logic patt;


pattern DUT(
.clk(clk),
.reset_n(reset_n),
.load(load),
.patternIn(patternIn),
.serial_in(serial_in),
.patt(patt)
    );

always #5 clk = ~clk;

initial begin 
reset_n = 0;
#10
reset_n = 1;
patternIn = 5'b11011;
load = 1'b1;

#8
load = 1'b0;
serial_in = 1'b1;
#8

serial_in = 1'b1;
#8

serial_in = 1'b0;
#8

serial_in = 1'b1;

#8

serial_in = 1'b1;

#50
$finish;

end

endmodule
