module rout(
	input clk,
	input rst_n,
	input ld_n,
	input [3:0] din,
	output [3:0] dout
	);
	
	reg [3:0] q;
	always @(posedge clk or negedge rst_n)begin
		if(!rst_n)
			q <= 0;
		else if(!ld_n)
			q <= din;
		else
			q <= q;	
	end
	
	assign dout = q;
	
endmodule