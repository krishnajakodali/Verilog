`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:11:53 09/08/2020
// Design Name:   FS_dataflow
// Module Name:   I:/xilinxfiles/FS_dataflow/FS_test.v
// Project Name:  FS_dataflow
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FS_dataflow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FS_test;

	// Inputs
	reg X;
	reg Y;
	reg Bin;
	reg [3:0]count;

	// Outputs
	wire D;
	wire Bout;

	// Instantiate the Unit Under Test (UUT)
	FS_mixed uut (
		.X(X), 
		.Y(Y), 
		.Bin(Bin), 
		.D(D), 
		.Bout(Bout)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		Bin = 0;
		for(count=0;count<8;count=count+1)
		begin
		{X,Y,Bin}=count;
		#5
		$display("$Time:%t::X=%b,Y=%b,Bin=%b::D=%b,Bout=%b",$time,X,Y,Bin,D,Bout);
		end
		$finish;

	end
      
endmodule

