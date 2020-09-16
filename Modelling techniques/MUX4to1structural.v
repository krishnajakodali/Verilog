`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:31:18 09/08/2020 
// Design Name: 
// Module Name:    MUX4to1structural 
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
module MUX4to1structural(
    input [3:0] I,
    input [1:0] sel,
    output O
    );
wire O1,O2,O3,O4,NS0,NS1;
not N1(NS0,sel[0]);
not N2(NS1,sel[1]);
nand A1 (O1,NS0,NS1,I[0]);
nand A2 (O2,sel[0],NS1,I[1]);
nand A3 (O3,NS0,sel[1],I[2]);
nand A4 (O4,sel[0],sel[1],I[3]);
nand B1 (O,O1,O2,O3,O4);
endmodule
