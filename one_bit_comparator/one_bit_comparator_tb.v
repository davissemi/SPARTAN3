`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer:
//
// Create Date:   14:44:12 11/10/2020
// Design Name:   one_bit_comparator
// Module Name:   one_bit_comparator_tb.v
// Project Name:  one_bit_comparator
// Target Device:  Elbert V2
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: From "FPGA Prototyping with Verilog", Pong Chu
// 
////////////////////////////////////////////////////////////////////////////////

module one_bit_comparator_tb;

	// Inputs
	reg i0;
	reg i1;

	// Outputs
	wire eq;

	// Instantiate the Unit Under Test (UUT)
	one_bit_comparator uut (
		.i0(i0), 
		.i1(i1), 
		.eq(eq)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      i0 = 1'b0;
		i1 = 1'b0;
		#200;
		
		i0 = 1'b0;
		i1 = 1'b1;
		#200;
		
		i0 = 1'b1;
		i1 = 1'b0;
		#200;
		
		i0 = 1'b1;
		i1 = 1'b1;
		#200;
		
		$stop;
	end
   
	initial begin
	  $monitor("i0 = %b, i1 = %b, eq = %b\n", i0, i1, eq);
	end
endmodule

