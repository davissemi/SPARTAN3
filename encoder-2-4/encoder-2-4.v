`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date:    06:20:34 11/18/2020 
// Design Name: 
// Module Name:    encoder-2-4 
// Project Name: 
// Target Devices: Elbert V2
// Tool versions: ISE 14.7
// Description: 2-to-4 encoder with enable
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module encoder_2_4(input en, a0, a1, output [3:0] z, output en_out);

 
 assign z[0] = (~a1 & ~a0) & en;
 assign z[1] = (~a1 & a0)  & en;
 assign z[2] = (a1 & ~a0)  & en;
 assign z[3] = (a1 & a0)   & en;
 assign en_out = en; // Tying output to input -- good idea?

endmodule
