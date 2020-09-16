`timescale 1ns / 1ps

module test_3to8;

	// Inputs
	reg [2:0] s;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	decoder_3to8 uut ( 
		.s(s), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		s=0;
		#10 s=1;
		#10 s=3;
		#10 s=6;
		#10 s=7;
		#10 s=5;
		#10 s=4;
		#10 $finish;
	end
	
	initial
	$monitor("s=%b,o=%b",s,o);
      
endmodule

