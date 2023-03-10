`timescale 1ns / 1ps

module FF_pos_edge_clk_initState_tst;

	// Inputs
	reg D;
	reg clk;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	FF_pos_edge_clk_initState uut (
		.D(D), 
		.clk(clk), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		forever #(50) clk = ~clk;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		D = 1;
		
		#100;
		
		D = 0;
		
		#100;
		
		D = 1;

	end
      
endmodule

