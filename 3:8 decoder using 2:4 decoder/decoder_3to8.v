`timescale 1ns / 1ps

module decoder_3to8(
    input [2:0] s,
    output [7:0] o
    );
decoder_2to4 D1(~s[2],s[1:0],o[3:0]);
decoder_2to4 D2(s[2],s[1:0],o[7:4]);

endmodule
