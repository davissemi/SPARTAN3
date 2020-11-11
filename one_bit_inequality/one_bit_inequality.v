`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date:    17:36:00 11/11/2020 
// Design Name: 
// Module Name:    one_bit_inequality 
// Project Name: 
// Target Devices: Elbert V2
// Tool versions: ISE 14.7
// Description: Compares two 1-bit values, A and B, returns 1 if A > B.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
// 
// Truth table:
//     A  B | Y
//     -  -   -
//     0  0 | 0
//     0  1 | 0
//     1  0 | 1
//     1  1 | 0
//////////////////////////////////////////////////////////////////////////////////
module one_bit_inequality(input a, b, output gt);

assign gt = a & ~b;

endmodule
