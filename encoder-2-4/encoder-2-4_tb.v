`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
//
// Create Date:   06:24:43 11/18/2020
// Design Name:   encoder
// Module Name:   C:/Users/pauls/fpgadev/SPARTAN3/encoder-2-4/encoder-2-4_tb.v
// Project Name:  encoder-2-4
// Target Device: Elbert V2  
// Tool versions:  ISE 14.7
// Description: 2-to-4 encoder with enable test bench
//
// Verilog Test Fixture created by ISE for module: encoder_2_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder_2_4_tb;

	// Inputs
	reg en;
	reg a0;
	reg a1;

	// Outputs
	wire [3:0] z;

	// Instantiate the Unit Under Test (UUT)
	encoder_2_4 uut (
		.en(en), 
		.a0(a0), 
		.a1(a1), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		a0 = 0;
		a1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      en = 1'b0;
		a1 = 1'b1;
		a0 = 1'b0;
		#200;
		
		en = 1'b1;
		a1 = 1'b0;
		a0 = 1'b0;
		#200;
		
		en = 1'b1;
		a1 = 1'b0;
		a0 = 1'b1;
		#200;
		
		en = 1'b1;
		a1 = 1'b1;
		a0 = 1'b0;
		#200;
		
		en = 1'b1;
		a1 = 1'b1;
		a0 = 1'b1;
		#200;
		
		$stop;
	end
   
   initial begin
       $monitor("en = %b, a1 = %b, a0 = %b, z = %b%b%b%b", en, a1, a0, z[3],z[2],z[1],z[0]);
   end
	
endmodule

