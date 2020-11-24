`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:29:04 11/24/2020 
// Design Name: 
// Module Name:    two_bit_comparator_if 
// Project Name: 
// Target Devices: 
// Tool versions: 
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
// Additional Comments: 
//  This is functionally equivalent to the 'two_bit_comparator' project, except
//  this uses behavioural modelling.
//////////////////////////////////////////////////////////////////////////////////
module two_bit_comparator_if(input [1:0] a, 
                             input [1:0] b, 
									  output reg a_gt_b, 
									  output reg a_lt_b, 
									  output reg a_eq_b);

always @*
  begin
    a_gt_b = 1'b0;
	 a_lt_b = 1'b0;
	 a_eq_b = 1'b0;
	 
	 if (a > b)
	    a_gt_b = 1'b1;
	 else if (a < b)
	    a_lt_b = 1'b1;
	 else
	    // a = b
		 a_eq_b = 1'b1;
	end
	
endmodule
