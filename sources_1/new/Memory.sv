`timescale 1ns / 1ps


module Memory (
input logic [3: 0]address,
output logic [7: 0]instruction
    );
    
always @ (address)
//    case (address) 
//        4'b0000: instruction = 8'b00001000;       
//        4'b0001: instruction = 8'b00011001;       
//        4'b0010: instruction = 8'b00100000;       
//        4'b0011: instruction = 8'b00010000;       
//        4'b0100: instruction = 8'b01110000;       
//        4'b0101: instruction = 8'b00000000;       
//        4'b0110: instruction = 8'b00010100;       
//        4'b0111: instruction = 8'b00000100;       
//        4'b1000: instruction = 8'b10110010; 
//        4'b1001: instruction = 8'b10110010;      
//        default: instruction = 8'b10111000;
//    endcase

    case (address) 
        4'b0000: instruction = 8'b00011100;       // to store in RA  as address
        4'b0001: instruction = 8'b00000010;       // to store in RB  as addres
        4'b0010: instruction = 8'b00000001;       // to store in R0  as addres
        4'b0011: instruction = 8'b00010011;       // No operation
        4'b0100: instruction = 8'b10110000;       // to store in RA  as address

       // No operation
        default: instruction = 8'b00111000;
    endcase
      
endmodule
