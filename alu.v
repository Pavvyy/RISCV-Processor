`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 10:48:01
// Design Name: 
// Module Name: alu
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


module alu(
input [31:0]operand_a,
input [31:0]operand_b,
input [3:0]alu_ctrl,
output reg [31:0]result
    );

always @(*)begin    
case(alu_ctrl)

4'b0010: result=operand_a+operand_b;
4'b0110:  result=operand_a-operand_b;
4'b0000:  result=operand_a&operand_b;
4'b0001: result=operand_a|operand_b;
default: result=32'b0;

endcase
end
endmodule
