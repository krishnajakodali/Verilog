
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:44:06 09/08/2020 
// Design Name: 
// Module Name:    FS_behavioral 
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
`timescale 1ns / 1ps
module FS_behavioral(
    input X,
    input Y,
    input Bin,
    output reg D,
    output reg Bout
    );
//reg D,Bout;
reg F1,F2;
always@(X,Y,Bin)
begin
D= #1(X^Y)^Bin;
F1=~X&Y;
F2=~X|Y;
Bout= #1 F1|(Bin&F2);
end
endmodule
