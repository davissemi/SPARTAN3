`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date:    14:41:31 11/10/2020 
// Design Name: 
// Module Name:    one_bit_comparator 
// Project Name: 
// Target Devices: Elbert V2
// Tool versions: ISE 14.7
// Description: Compares i0 and i1, returns 1 if equal
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: From "FPGA Prototyping with Verilog", Pong Chu
//
//////////////////////////////////////////////////////////////////////////////////
module one_bit_comparator(
     input i0, i1,
	  output eq
    );

wire p0, p1;

assign eq = p0 | p1;

assign p0 = ~i0 & ~i1;
assign p1 = i0 & i1;


endmodule
