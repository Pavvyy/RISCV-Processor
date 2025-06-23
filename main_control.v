`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 15:45:08
// Design Name: 
// Module Name: main_control
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


module main_control(
input [6:0]opcode,
output reg[1:0]Immsel,
output reg regWrite,
output reg [1:0] ALUop,
output reg ALUsrc,
output reg MemRead,
output reg MemWrite,
output reg MemtoReg,
output reg branch
    );
always@(*)begin   
case (opcode)
7'b0110011: begin //R-type
        Immsel= 2'bxx;
        regWrite=1;
        ALUop=2'b10;
        ALUsrc=0;
        MemRead=0;
        MemWrite=0;
        MemtoReg=0;
        branch=0;
end
7'b0000011: begin //Lw
        Immsel= 2'b00;
        regWrite=1;
        ALUop=2'b00;
        ALUsrc=1;
        MemRead=1;
        MemWrite=0;
        MemtoReg=1;
        branch=0;
end
7'b0100011: begin //Sw
        Immsel= 2'b01;
        regWrite=0;
        ALUop=2'b00;
        ALUsrc=1;
        MemRead=0;
        MemWrite=1;
        MemtoReg=1'bx;
        branch=0;
end
7'b1100011: begin //beq
        Immsel= 2'b10;
        regWrite=0;
        ALUop=2'b01;
        ALUsrc=0;
        MemRead=0;
        MemWrite=0;
        MemtoReg=1'bx;
        branch=1;
end
default: begin
            // Optional: define safe defaults
            Immsel= 2'b00;
            regWrite= 0;
            ALUop= 2'b00;
            ALUsrc= 0;
            MemRead= 0;
            MemWrite= 0;
            MemtoReg= 0;
            branch= 0;
        end
endcase
end
endmodule
