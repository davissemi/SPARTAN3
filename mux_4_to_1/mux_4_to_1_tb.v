`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
//
// Create xate:   16:51:59 12/12/2020
// xesign Name:   mux_4_to_1
// Module Name:   mux_4_to_1_tb.v
// Project Name:  mux_4_to_1
// Target xevice:  
// Tool versions:  
// xescription: 
//
// Verilog Test Fixture created by ISE for module: mux_4_to_1
//
// xependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_4_to_1_tb;

	// Inputs
	reg [1:0] sel;
	reg [3:0] x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_4_to_1 uut (
		.sel(sel), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		sel = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      x = 4'b0100;
      sel = 2'b00; // y = 0
      #200;
   
      x = 4'b0001;
      sel = 2'b00; // y = 1
      #200;
   
      x = 4'b0101;
      sel = 2'b01; // y = 0
      #200;
   
      x = 4'b0110;
      sel = 2'b01; // y = 1
      #200;
   
      x = 4'b0100;
      sel = 2'b10; // y = 1
      #200;
   
      x = 4'b1000;
      sel = 2'b11; // y = 1;
      #200;
   
      x = 4'b0100;
      sel = 2'b11; // y = 0
      #200;
 end
 
 initial begin
    $monitor("x = %b%b%b%b, sel = %b%b, y = %b", x[3],x[2],x[1],x[0],sel[1],sel[0],y);
 end
      
endmodule

