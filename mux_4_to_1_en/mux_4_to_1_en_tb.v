`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
//
// Create Date:   09:29:41 12/22/2020
// Design Name:   mux_4_to_1
// Module Name:   C:/Users/pauls/fpgadev/SPARTAN3/mux_4_to_1_en/mux_4_to_1_en_tb.v
// Project Name:  mux_4_to_1_en
// Target Device:  Elbert V2
// Tool versions:  ISE 14.7
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_4_to_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_4_to_1_en_tb;

	// Inputs
	reg [1:0] sel;
	reg [3:0] x;
	reg en;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_4_to_1 uut (
		.sel(sel), 
		.x(x), 
		.en(en), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		sel = 0;
		x = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      x = 4'b0100;
		en = 1'b1;
      sel = 2'b00; // y = 0
      #200;
   
      x = 4'b0001;
		en = 1'b1;
      sel = 2'b00; // y = 1
      #200;
   
      x = 4'b0101;
		en = 1'b1;
      sel = 2'b01; // y = 0
      #200;
   
      x = 4'b0110;
		en = 1'b1;
      sel = 2'b01; // y = 1
      #200;
   
      x = 4'b0100;
		en = 1'b1;
      sel = 2'b10; // y = 1
      #200;
   
      x = 4'b1000;
		en = 1'b0;
      sel = 2'b11; // y = 0
      #200;
   
      x = 4'b0100;
		en = 1'b0;
      sel = 2'b11; // y = 0
      #200;
		
		x = 4'b0110;
		en = 1'b0;
      sel = 2'b01; // y = 0
      #200;
	end
      
	 initial begin
      $monitor("x = %b%b%b%b, en = %b, sel = %b%b, y = %b", x[3],x[2],x[1],x[0], en, sel[1],sel[0], y);
    end
	 
endmodule
