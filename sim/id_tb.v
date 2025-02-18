`timescale 1ns/1ns

module id_tb();

	reg [3:0] opcode;
	reg carry;
	wire [1:0] sel;
	wire [3:0] load_n;
	
	
	id id_inst(
		.opcode(opcode),
		.carry(carry),
		.sel(sel),
		.load_n(load_n)
	);
	
	initial begin
		{opcode,carry} = 5'b00000;
		#200;
		{opcode,carry} = 5'b00001;
		#200;
		{opcode,carry} = 5'b00010;
		#200;
		{opcode,carry} = 5'b00011;
		#200;
		{opcode,carry} = 5'b00100;
		#200;
		{opcode,carry} = 5'b00101;
		#200;
		{opcode,carry} = 5'b00110;
		#200;
		{opcode,carry} = 5'b00111;
		#200;
		{opcode,carry} = 5'b01000;
		#200;
		{opcode,carry} = 5'b01001;
		#200;
		{opcode,carry} = 5'b01010;
		#200;
		{opcode,carry} = 5'b01011;
		#200;
		{opcode,carry} = 5'b01100;
		#200;
		{opcode,carry} = 5'b01101;
		#200;
		{opcode,carry} = 5'b01110;
		#200;
		{opcode,carry} = 5'b01111;
		#200;
		{opcode,carry} = 5'b10000;
		#200;
		{opcode,carry} = 5'b10001;
		#200;
		{opcode,carry} = 5'b10010;
		#200;
		{opcode,carry} = 5'b10011;
		#200;
		{opcode,carry} = 5'b10100;
		#200;
		{opcode,carry} = 5'b10101;
		#200;
		{opcode,carry} = 5'b10110;
		#200;
		{opcode,carry} = 5'b10111;
		#200;
		{opcode,carry} = 5'b11000;
		#200;
		{opcode,carry} = 5'b11001;
		#200;
		{opcode,carry} = 5'b11010;
		#200;
		{opcode,carry} = 5'b11011;
		#200;
		{opcode,carry} = 5'b11100;
		#200;
		{opcode,carry} = 5'b11101;
		#200;
		{opcode,carry} = 5'b11110;
		#200;
		{opcode,carry} = 5'b11111;
		#200;
	end
	
endmodule