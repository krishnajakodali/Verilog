`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:07:14 09/08/2020 
// Design Name: 
// Module Name:    FS_dataflow 
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
module FS_dataflow(
    input X,
    input Y,
    input Bin,
    output D,
    output Bout
    );

assign #1 D=(X^Y)^Bin;
assign #2 Bout=(~X&Y)|(Bin&(~X|Y));
endmodule
