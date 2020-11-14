`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date:    18:03:21 11/13/2020 
// Design Name: 
// Module Name:    two_bit_comparator 
// Project Name: 
// Target Devices: Elbert V2
// Tool versions:  ISE 14.7
// Description: Compares magnitude of 2 2-bit numbers a, b.  Returns a 1 if:
//                 a > b
//                 a < b
//                 a = b
//               The outputs are mutually exclusive.					 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
//          
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module two_bit_comparator(
    input [1:0] a,
    input [1:0] b,
    output a_gt_b,
    output a_lt_b,
    output a_eq_b
    );

  assign a_gt_b = (a[1] & ~b[1]) | (~(a[1] ^ b[1]) & a[0] & ~b[0]);
  assign a_lt_b = (~a[1] & b[1]) | (~(a[1] ^ b[1]) & ~a[0] & b[0]);
  assign a_eq_b = ~(a[1] ^ b[1]) & ~(a[0] ^ b[0]);
  
endmodule
