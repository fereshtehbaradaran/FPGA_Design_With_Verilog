`timescale 1ns / 1ps

module singlePort_RAM_ReadFirstMode(
    input CLK,
    input en,
    input we,
    input [5:0] address,
    input [15:0] DI,
    output [15:0] DO
    );

	 reg [15:0] RAM [63:0];
	 reg [15:0] DO;
	 
	 always @ (posedge CLK) begin
		if (en) begin
			if (we)
				RAM [address] <= DI;
			DO <= RAM[address]; //DO --> previous RAM[address] (first read from memmory then write new data)
		end
	 end

endmodule
