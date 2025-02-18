//instruct decoder
module id(
	input [3:0] opcode,
	input carry,
	output [1:0] sel,
	output [3:0] load_n
	);
	
	assign sel[0] = opcode[0];
	assign sel[1] = opcode[1];
	assign load_n[0] = ~(~opcode[3] & ~opcode[2]);
	assign load_n[1] = ~(~opcode[3] &  opcode[2]);
	assign load_n[2] = ~( opcode[3] & ~opcode[2]);
	assign load_n[3] = ~( opcode[3] &  opcode[2]);
	
endmodule


