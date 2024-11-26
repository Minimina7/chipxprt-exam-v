`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 12:55:07 PM
// Design Name: 
// Module Name: K2_process
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


module K2_process # (parameter bits = 8)(
input logic reset,
input logic clk,
//output logic [7:0] instructions,
//output logic [3:0] counter,
//output logic [bits-1:0] datamemout,
output logic [bits-1:0] RAout,
output logic [bits-1:0] RBout,
output logic [bits-1:0] result
    );
    logic J, carry, enmux1, carryff;
    logic [2:0] immediate;
    logic [3:0] enReg, counter;
    logic [7:0] instructions;
    logic [bits -1 :0] ALUout, MUXimalu, MUXra, MUXrb;// RAout, RBout;
    
    progran_counter #(.bits(bits)) PC(.clk(clk), 
                                      .reset(reset), 
                                      .en(enmux1),
                                      .imm(immediate),
                                      .count(counter));
    Memory ROM (.address(counter), .instruction(instructions));
    
    assign immediate = instructions[2:0];
    
    MUX_A1 #(.bits(bits)) MUXimmorALU(.S_reg(instructions[3]), .firstIn(ALUout), .SecondIn({{bits-3{1'b0}}, immediate}), .mux_out(MUXimalu));
    decoder_2to4_A1 decod(.D(instructions[5:4]) , .en(enReg));
    Reg_A1 #(.bits(bits)) RA(.clk(clk), .reset(reset), .en(enReg[0]), .D(MUXimalu), .q(RAout));
    Reg_A1 #(.bits(bits)) RB(.clk(clk), .reset(reset), .en(enReg[1]), .D(MUXimalu), .q(RBout));
    Reg_A1 #(.bits(bits)) RO(.clk(clk), .reset(reset), .en(enReg[2]), .D(RAout), .q(result));
    MUX_A1 #(.bits(bits)) MUXratoALU(.S_reg(instructions[1]), .firstIn(RAout), .SecondIn(8'b00000000), .mux_out(MUXra));
    MUX_A1 #(.bits(bits)) MUXrbtoALU(.S_reg(instructions[0]), .firstIn(RBout), .SecondIn(RAout), .mux_out(MUXrb));
    ALU_A1 #(.bits(bits)) ALU(.RA(MUXra), .RB(MUXrb), .s(instructions[2]), .out(ALUout), .carry_out(carry));
    flip_flop carry1(.clk(clk), .reset(reset), .d(carry), .q(carryff));
    assign C = instructions[6] & carryff;
    assign J = instructions[7];
    assign enmux1 = C | J;
    

endmodule
