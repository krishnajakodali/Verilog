`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:17:25 09/08/2020 
// Design Name: 
// Module Name:    dataflow4to1mux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dataflow4to1mux(
    input [3:0] I,
    output O,
    input [1:0] sel
    );
assign O = I[sel];

endmodule
