`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:02:50 09/08/2020 
// Design Name: 
// Module Name:    FS_mixed 
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
module FS_mixed(
    input X,
    input Y,
    input Bin,
    output D,
    output Bout
    );
	 reg B1,B2,D1;
	 wire T1;
always@(X,Y,Bin)
begin 
D1=X^Y;
B1=~X&Y;
B2=~X|Y;
end
assign D=D1^Bin;
and A1 (T1,Bin,B2);
or O1 (Bout,T1,B1);
endmodule
