`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 15:29:52
// Design Name: 
// Module Name: alu_control
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


module alu_control(
    input [2:0]funct3,
    input [6:0]funct7,
    input [1:0]ALUop,
    output reg [3:0]alu_ctrl
    );
    
always @(*)begin

case(ALUop)
2'b00: alu_ctrl=4'b0010;
2'b01: alu_ctrl=4'b0110;
2'b10: case({funct7,funct3})
        10'b0: alu_ctrl=4'b0010;
        10'b0100000000: alu_ctrl=4'b0110;
        10'b0000000111: alu_ctrl=4'b0000;
        10'b0000000110: alu_ctrl=4'b0001;
        default: alu_ctrl=4'b1111;
        endcase
default: alu_ctrl=4'b1111; //not valid
endcase

end
endmodule
