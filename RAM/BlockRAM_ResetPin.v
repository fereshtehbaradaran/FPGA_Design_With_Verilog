`timescale 1ns / 1ps

module blockRAM_resetPin(
    input CLK,
    input en,
    input we,
    input CLR,
    input [5:0] addr,
    input [15:0] DI,
    output reg [15:0] DO
    );
	 
	 reg [15:0] RAM [63:0];
	 
	 always @ (posedge CLK) begin
		if (en) begin
			if (we)
				RAM[addr] <= DI;
			if (CLR)
				DO <= 16'b0000000000000000;
			else
				DO <= RAM[addr];
		end
	 end

endmodule
