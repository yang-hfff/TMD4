module psw(
	input clk,
	input rst_n,
	input din,
	output dout
	);
	
	reg q;
	
	always @(posedge clk or negedge rst_n)begin
		if(!rst_n)
			q <= 0;
		else
			q <= din;
	end
	
	assign dout = q;
	
endmodule


