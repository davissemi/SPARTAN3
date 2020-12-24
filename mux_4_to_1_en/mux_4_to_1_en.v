`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date:    09:29:03 12/22/2020 
// Design Name: 
// Module Name:    mux_4_to_1_en 
// Project Name: 
// Target Devices: Elbert V2
// Tool versions: ISE 14.7
// Description: 4-to-1 mux with enable
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux_4_to_1(
    input [1:0] sel,
    input [3:0] x,
    input en, 
    output reg y
    );
    
   always @*
    begin       
       case ({en,sel})
         3'b100: y = x[0];
         3'b101: y = x[1];
         3'b110: y = x[2];
         3'b111: y = x[3];
         3'b000: y = 0; // Cover all combinations when en = 0, to avoid latch (memory) being generated
			3'b001: y = 0;
			3'b010: y = 0;
			3'b011: y = 0;
       endcase
    end
endmodule

