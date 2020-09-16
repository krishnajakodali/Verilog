`timescale 1ns / 1ps

module cs_adder(
    input [3:0] a,//first input
    input [3:0] b,//second input
    input [3:0] c,//third input
    output [3:0] s,//sum
    output cout//carry out
    );
wire [3:0] p;//to store 1-bit sum
wire [3:0] q;//to stor 1-bit carry
wire [3:0] r;//to story intermediate carrys while adding p and q
full_adder f1 (a[0],b[0],c[0],p[0],q[0]);
full_adder f2 (a[1],b[1],c[1],p[1],q[1]);
full_adder f3 (a[2],b[2],c[2],p[2],q[2]);
full_adder f4 (a[3],b[3],c[3],p[3],q[3]);

//adding the s and c components to get z and cout

full_adder f5 (p[1],q[0],1'b0,s[1],r[0]);
full_adder f6 (p[2],q[1],r[0],s[2],r[1]);
full_adder f7 (p[3],q[2],r[1],s[3],r[2]);
full_adder f8 (q[3],1'b0,r[2],cout,r[3]);
assign s[0]=p[0];
endmodule
