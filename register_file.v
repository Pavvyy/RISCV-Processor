`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2025 16:01:23
// Design Name: 
// Module Name: register_file
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


module register_file(
input clk,
input regWrite,
input [4:0] rs1,
input [4:0] rs2,
input [4:0] rd,
input [31:0] write_data,
output wire [31:0] read_data_1,
output wire [31:0] read_data_2
    );
reg [31:0] registers [0:31];
integer i;
initial begin 
for (i=0;i<32;i=i+1)
registers[i]<=32'b0;
end 

assign read_data_1=registers[rs1];
assign read_data_2=registers[rs2];

always @(posedge clk) begin
    if (regWrite)
        registers[rd]<=write_data;
end

endmodule
