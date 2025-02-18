module rs_mux(
	input [3:0] d0,
	input [3:0] d1,
	input [3:0] d2,
	input [3:0] d3,
	input [1:0] sel,
	output [3:0] y
	);
	
	reg [3:0] temp;
	always @(*)begin
		case(sel)
			0:temp = d0;
			1:temp = d1;
			2:temp = d2;
			3:temp = d3;
		endcase
	end
	assign y = temp;

endmodule



