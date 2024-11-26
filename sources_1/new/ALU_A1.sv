`timescale 1ns / 1ps


module ALU_A1 #(parameter bits = 8)(
input logic [bits - 1 : 0]RA,
input logic [bits - 1 : 0]RB,
input logic s,
output logic [bits - 1 : 0]out,
output logic carry_out
    );
    
logic [bits:0] result; 
always @ (*)
begin
    if (s==0)
    begin
        result = RA + RB ;
        out = result[bits - 1:0];
        carry_out = result[bits];
    end
    else if (s==1)
    begin
        result = RA - RB ;
        out = result[bits-1:0];
    end
end


endmodule
