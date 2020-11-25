`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date:    14:17:29 11/25/2020 
// Design Name: 
// Module Name:    encoder_2_4_case 
// Project Name: 
// Target Devices: Arty A7-35T
// Tool versions: Vivado 2020.1
// Description: Implements a 2-to-4 encoder with enable
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//   Functionally equivalent to the encoder_2_4 project, only this one is written
//   using behavioural modelling and therefore uses a case statement.
//////////////////////////////////////////////////////////////////////////////////
module encode_2_4_case(input [1:0] a, input en, output reg [3:0] z, output reg en_out);

 always @*
     case ({en, a})
       3'b000, 
       3'b001, 
       3'b010, 
       3'b011 : begin
                  z = 4'b0000;
                  en_out = 1'b0;
                 end
       3'b100 : begin
                  z = 4'b0001;
                  en_out = 1'b1;
                end
       3'b101 : begin 
                  z = 4'b0010;
                  en_out = 1'b1;
                end
       3'b110 : begin
                  z = 4'b0100;
                  en_out = 1'b1;
                end
       3'b111 : begin
                  z = 4'b1000;
                  en_out = 1'b1;
                end
     endcase
     
endmodule
