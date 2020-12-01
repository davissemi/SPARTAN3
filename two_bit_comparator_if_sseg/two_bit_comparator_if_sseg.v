`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date:    15:55:11 11/30/2020 
// Design Name: 
// Module Name:    two_bit_comparator_if_sseg 
// Project Name: 
// Target Devices: Elbert V2
// Tool versions: ISE 14.7
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
//  this uses behavioural modelling.  As an added bonus, in addition to LED outputs,
//  one of the 7-segment digits will indicate G, L or E for greater than, less than
//  and equal to, respectively.
//////////////////////////////////////////////////////////////////////////////////

module two_bit_comparator_if(input [1:0] a, 
                             input [1:0] b, 
									  output reg a_gt_b, 
									  output reg a_lt_b, 
									  output reg a_eq_b,
									  output reg [2:0] sseg_en,
									  output reg [7:0] sseg);

always @*
  begin
    a_gt_b = 1'b0;
	 a_lt_b = 1'b0;
	 a_eq_b = 1'b0;
	 sseg_en = 3'b111; // disable all three 7-segment displays
	 sseg = 8'b11111111; // turn off all segments
	 
	 if (a > b)
	  begin
	    a_gt_b = 1'b1;
		 sseg_en = 3'b110; // 0 = 7-segment display is enabled
		 sseg = 8'b01000011;
	   end
	 else if (a < b)
	   begin
	    a_lt_b = 1'b1;
		 sseg_en = 3'b110; 
		 sseg = 8'b11100011;
		end
	 else
	    // a = b
	  begin
		 a_eq_b = 1'b1;
		 sseg_en = 3'b110;
		 sseg = 8'b01100001;
	  end
	end
	
endmodule

