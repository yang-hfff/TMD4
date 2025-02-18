module alu(
	input [3:0] ain,
	input [3:0] bin,
	input cin,
	output [3:0] out,
	output cout
	);
	
	assign {cout,out} = {1'b0,ain}+{1'b0,bin}+{4'b0,cin};
	
endmodule


