`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
//
// Create Date:   14:18:36 11/25/2020
// Design Name:   encode_2_4_case
// Module Name:   C:/Users/pauls/fpgadev/SPARTAN3/encoder_2_4_case/encoder_2_4_case_tb.v
// Project Name:  encoder_2_4_case
// Target Device:  Arty A7-35T
// Tool versions:  Vivado 2020.1
// Description: 
//
// Verilog Test Fixture created by ISE for module: encode_2_4_case
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder_2_4_case_tb;

	// Inputs
	reg [1:0] a;
	reg en;

	// Outputs
	wire [3:0] z;
	wire en_out;

	// Instantiate the Unit Under Test (UUT)
	encode_2_4_case uut (
		.a(a), 
		.en(en), 
		.z(z), 
		.en_out(en_out)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		a[1] = 0;
		a[0] = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      en = 1'b0;
		a[1] = 1'b1;
		a[0] = 1'b0;
		#200;
		
		en = 1'b1;
		a[1] = 1'b0;
		a[0] = 1'b0;
		#200;
		
		en = 1'b1;
		a[1] = 1'b0;
		a[0] = 1'b1;
		#200;
		
		en = 1'b1;
		a[1] = 1'b1;
		a[0] = 1'b0;
		#200;
		
		en = 1'b1;
		a[1] = 1'b1;
		a[0] = 1'b1;
		#200;
		
		$stop;
	end
   
   initial begin
       $monitor("en = %b, a1 = %b, a0 = %b, z = %b%b%b%b", en, a[1], a[0], z[3],z[2],z[1],z[0]);
   end
      
endmodule

