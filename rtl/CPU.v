module CPU(
	input clk,
	input rst_n,
	input [3:0] in,
	output [3:0] out
	);
	
	wire [3:0] addr;
	wire [7:0] code;
	wire [1:0] sel;
	wire [3:0] load_n;
	
	wire [3:0] r0_d;
	wire [3:0] r1_d;
	wire [3:0] mux_out;
	
	wire psw_cy;
	wire alu_cy;
	
	wire [3:0] result;
	
	
	pc pc_inst(
		.clk(clk),
		.rst_n(rst_n),
		.ld_n(load_n[3]),
		.din(result),
		.dout(addr)
	);
	
	rom rom_inst(
		.addr(addr),
		.code(code)
	);
	
	id id_inst(
		.opcode(code[7:4]),
		.carry(psw_cy),
		.sel(sel),
		.load_n(load_n)
	);
	
	rs_mux rs_mux_inst(
		.d0(r0_d),
		.d1(r1_d),
		.d2(in),
		.d3(4'b0),
		.sel(sel),
		.y(mux_out)
	);
	
	r0 r0_inst(
		.clk(clk),
		.rst_n(rst_n),
		.ld_n(load_n[0]),
		.din(result),
		.dout(r0_d)
	);
	
	r1 r1_inst(
		.clk(clk),
		.rst_n(rst_n),
		.ld_n(load_n[1]),
		.din(result),
		.dout(r1_d)
	);
	
	rout rout_inst(
		.clk(clk),
		.rst_n(rst_n),
		.ld_n(load_n[2]),
		.din(result),
		.dout(out)
	);
	
	alu alu_inst(
		.ain(mux_out),
		.bin(code[3:0]),
		.cin(1'b0),
		.out(result),
		.cout(alu_cy)
	);
	
	psw psw_inst(
		.clk(clk),
		.rst_n(clk),
		.din(alu_cy),
		.dout(psw_cy)
	);
		
endmodule


