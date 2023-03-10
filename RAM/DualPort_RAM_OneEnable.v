`timescale 1ns / 1ps

module dualPort_RAM_oneEnable(
    input CLK,
    input en,
    input we,
    input [5:0] addr1,
    input [5:0] addr2,
    input [15:0] DI,
    output [15:0] DO1,
    output [15:0] DO2
    );
	 
	 reg [15:0] RAM [63:0];
	 reg [5:0] read_add1, read_add2;
	 
	 always @ (posedge CLK) begin
		if (en) begin
			if (we)
				RAM[add1] <= DI;
			read_add1 <= add1;
			read_add2 <= add2;
		end
	 end
	 
	 assign DO1 = RAM[read_add1];
	 assign DO2 = RAM[read_add2];


endmodule
