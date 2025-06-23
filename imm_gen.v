`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 16:28:20
// Design Name: 
// Module Name: imm_gen
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


module imm_gen(
    input [31:0] instruction,
    input [1:0]Immsel,
    output reg [31:0] Imm
    );

always @(*)begin
case(Immsel)
2'b00: Imm= {{20{instruction[31]}},instruction[31:20]};
2'b01: Imm={{20{instruction[31]}},instruction[31:25],instruction[11:7]};
2'b10: Imm={{19{instruction[31]}},instruction[31],instruction[7],instruction[30:25],instruction[11:8],1'b0};
default: Imm=32'b0;
endcase
end
endmodule
