`timescale 1ns/1ns

module CPU_tb();

	reg clk;
	reg rst_n;
	reg [3:0] in;
	wire [3:0] out;
	
	CPU CPU_inst(
		.clk(clk),
		.rst_n(rst_n),
		.in(in),
		.out(out)
	);
	
	initial clk = 1;
	always #10 clk = ~clk;
	
	initial begin
		in = 4;
		rst_n = 0;
		#200;
		rst_n = 1;
		#200;
		#5000;
		$stop;
	end
	
endmodule


