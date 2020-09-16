`timescale 1ns / 1ps

module decoder_2to4(
    input en,
    input [1:0] s,
    output [3:0] o
    );
assign o[0]=en&~s[0]&~s[1];
assign o[1]=en&s[0]&~s[1];
assign o[2]=en&~s[0]&s[1];
assign o[3]=en&s[0]&s[1];
endmodule
