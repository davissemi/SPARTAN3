`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
//
// Create Date:   18:07:20 11/13/2020
// Design Name:   two_bit_comparator
// Module Name:   C:/Users/pauls/fpgadev/SPARTAN3/two_bit_comparator/two_bit_comparator_tb.v
// Project Name:  two_bit_comparator
// Target Device: Elbert V2
// Tool versions: ISE 14.7
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_bit_comparator_tb;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;

	// Outputs
	wire a_gt_b;
	wire a_lt_b;
	wire a_eq_b;

	// Instantiate the Unit Under Test (UUT)
	two_bit_comparator uut (
		.a(a), 
		.b(b), 
		.a_gt_b(a_gt_b), 
		.a_lt_b(a_lt_b), 
		.a_eq_b(a_eq_b)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
      a = 2'b10; // a > b
		b = 2'b01;
		#200;
		
		a = 2'b11; // a > b
		b = 2'b10;
		#200;
		
		a = 2'b01; // a < b
		b = 2'b10;
		#200;
		
		a = 2'b11; // a = b 
		b = 2'b11;
		#200;
		
		a = 2'b10; // a = b
		b = 2'b10;
		#200;
		
		a = 2'b01; // a = b
		b = 2'b01;
		#200;
		
		a = 2'b00; // a = b
		b = 2'b00; 
		#200;
		
		a = 2'b01; // a < b
		b = 2'b11; 
		#200;
		
		$stop;
	end
   
	initial begin
	   $monitor("a = %b%b, b = %b%b, a_gt_b = %b, a_lt_b = %b, a_eq_b = %b", a[1], a[0], b[1], b[0], a_gt_b, a_lt_b, a_eq_b);
	end
	
endmodule
