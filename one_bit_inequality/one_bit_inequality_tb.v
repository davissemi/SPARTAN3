`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
//
// Create Date:   17:42:52 11/11/2020
// Design Name:   one_bit_inequality
// Module Name:   C:/Users/pauls/fpgadev/SPARTAN3/one_bit_inequality/one_bit_inequality_tb.v
// Project Name:  one_bit_inequality
// Target Device:  
// Tool versions:  ISE 14.7
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_bit_inequality
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_bit_inequality_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	one_bit_inequality uut (
		.a(a), 
		.b(b), 
		.gt(gt)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      a = 0;
		b = 0;
		#200;
		
		a = 0;
		b = 1;
		#200;
		
		a = 1;
		b = 0;
		#200;
		
		a = 1;
		b = 1;
		#200;
		
		$stop;
	end
   
	initial begin
	  $monitor("a = %b, b = %b, gt = %b\n", a, b, gt);
	end
endmodule

