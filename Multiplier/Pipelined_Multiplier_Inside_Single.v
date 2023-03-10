`timescale 1ns / 1ps

(*mult_style="pipe_lut"*)

module pipelined_multiplier_Inside_Single(
    input CLK,
    input [17:0] A,
    input [17:0] B,
    output [35:0] MULT
    );
	 
	 reg [35:0] MULT;
	 
	 reg [17:0] a_in, b_in;
	 reg [35:0] mult_res, pipe_2, pipe_3;
	 
	 always @ (posedge CLK) begin
		a_in <= A;
		b_in <= B;
		mult_res <= a_in * b_in;
		pipe_2 <= mult_res;
		pipe_3 <= pipe_2;
		MULT <= pipe_3;
	 end

endmodule
