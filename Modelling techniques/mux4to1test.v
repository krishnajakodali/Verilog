`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:19:44 09/08/2020
// Design Name:   dataflow4to1mux
// Module Name:   I:/xilinxfiles/MUX4to1/mux4to1test.v
// Project Name:  MUX4to1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dataflow4to1mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4to1test;

	// Inputs
	reg [3:0] I;
	reg [1:0] sel;
	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	dataflow4to1mux uut (.I(I), .O(O), .sel(sel));

	initial
	begin
		// Initialize Inputs
		I = 0;sel = 0;
		#5
		I = 1;sel = 0;
		#5
		I = 3;sel = 1;
		#5
		I = 1;sel = 1;
		#5
		I = 0;sel = 2;
		#5
		I = 5;sel = 2;
		#5
		I = 6;sel = 3;
		#5
		I = 8;sel = 3;
	end
		
		initial
		$monitor("I1=%b,I2=%b,I3=%b,I4=%b,sel=%d, O=%b",I[0],I[1],I[2],I[3],sel,O);
		
		initial
		begin
		#40
		$finish;
		end
		
	endmodule

