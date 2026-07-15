`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2026 11:36:27
// Design Name: 
// Module Name: alu_tb
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


`timescale 1ns/1ps

module alu_tb;

reg [31:0] A;
reg [31:0] B;
reg [3:0] ALU_Sel;

wire [31:0] Result;
wire Zero;

riscv_alu uut(
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .Result(Result),
    .Zero(Zero)
);

initial begin

    A = 20;
    B = 10;
    ALU_Sel = 4'b0000;
    #10;

    ALU_Sel = 4'b0001;
    #10;

    A = 32'hF0F0;
    B = 32'h0FF0;
    ALU_Sel = 4'b0010;
    #10;

    ALU_Sel = 4'b0011;
    #10;

    ALU_Sel = 4'b0100;
    #10;

    $finish;

end

endmodule