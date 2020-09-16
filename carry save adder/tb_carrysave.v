`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:41 09/12/2020
// Design Name:   cs_adder
// Module Name:   I:/xilinxfiles/carry_save_adder/tb_carrysave.v
// Project Name:  carry_save_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cs_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_carrysave;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;
	reg [3:0] z;

	// Outputs
	wire [3:0] r;
	wire cout;
	wire ov;

	// Instantiate the Unit Under Test (UUT)
	cs_adder uut (.x(x),.y(y),.z(z),.r(r),.cout(cout),.ov(ov));

	initial begin
		// Initialize Inputs
		x = 0;y = 0;z = 0;
		#15 x = 1;y = 5;z = 5;
		#15 x = 15;y = 5;z = 2;
		#15 x = 15;y = 15;z = 15;
		#15 x = 7;y = 6;z = 8;
		#15 x = 15;y = 5;z = 2;
		#15 x = 12;y = 6;z = 11;
		
	end
	initial
	begin
	$monitor("x=%d,y=%d,z=%d,r=%d,cout=%b,ov=%b",x,y,z,r,cout,ov);
	end
	
	initial
	begin
	#100 $finish;
	end
      
endmodule

