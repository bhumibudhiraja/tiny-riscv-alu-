`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2026 12:39:05
// Design Name: 
// Module Name: riscv_alu
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


module riscv_alu(
    input  [31:0] A,
    input  [31:0] B,
    input  [3:0] ALU_Sel,

    output reg [31:0] Result,
    output Zero
);

always @(*) begin

    case(ALU_Sel)

        4'b0000: Result = A + B;   // ADD
        4'b0001: Result = A - B;   // SUB
        4'b0010: Result = A & B;   // AND
        4'b0011: Result = A | B;   // OR
        4'b0100: Result = A ^ B;   // XOR

        default: Result = 32'b0;

    endcase

end

assign Zero = (Result == 32'b0);

endmodule