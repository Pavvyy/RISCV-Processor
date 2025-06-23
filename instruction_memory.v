`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 17:11:48
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
    input [31:0] pc,
    output wire [31:0] instruction
    );
reg [7:0] memory [0:1023];    
 initial begin
    $readmemh("inst_mem.hex",memory);
 end

assign instruction={memory[pc+3], memory[pc+2], memory[pc+1], memory[pc]};
endmodule
