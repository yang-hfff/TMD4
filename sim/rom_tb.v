`timescale 1ns/1ns

module rom_tb();

	reg [4:0] addr;
	wire [7:0] code;

	rom rom_inst(
		.addr(addr),
		.code(code)
	);
	
	initial begin
		addr = 0;
		#200;
		addr = 1;
		#200;
		addr = 2;
		#200;
		addr = 3;
		#200;
		addr = 4;
		#200;
		addr = 5;
		#200;
		addr = 6;
		#200;
		addr = 7;
		#200;
		addr = 8;
		#200;
		addr = 9;
		#200;
		addr = 10;
		#200;
		addr = 11;
		#200;
		addr = 12;
		#200;
		addr = 13;
		#200;
		addr = 14;
		#200;
		addr = 15;
		#200;
	end
	
endmodule