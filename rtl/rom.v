module rom(
	input [3:0] addr,
	output [7:0] code
	);
	
/*
add a,#im	0000 xxxx
mov a,b		0001 0000
in a		0010 0000
mov a,#im	0011 xxxx
mov b,a		0100 0000
add b,#im	0101 xxxx
in b		0110 0000
mov b,#im	0111 xxxx
out a		1000 0000
out b		1001 0000
out in		1010 0000
out #im		1011 xxxx
jmp a		1100 0000
jmp im[b]	1101 xxxx
jmp in		1110 0000
jmp im		1111 xxxx
*/
	
	wire [7:0] unit [15:0];

	assign unit[0] = 8'b1111_0101;//jmp #5
	assign unit[1] = 8'b0000_0001;//add a,#1
	assign unit[2] = 8'b1111_0001;//jmp 1
	assign unit[3] = 8'b1010_0000;//out in
	assign unit[4] = 8'b1111_0011;//jmp #3
	assign unit[5] = 8'b0010_0000;//in a
	assign unit[6] = 8'b0000_1111;//add a,#15 ---> -1
	assign unit[7] = 8'b1000_0000;//out a
	assign unit[8] = 8'b1111_0101;//jmp #5
	assign unit[9] = 8'b0111_1110;//mov b,#14 ---> -2
	assign unit[10] = 8'b0000_0010;//add a,#2
	assign unit[11] = 8'b1000_0000;//out a
	assign unit[12] = 8'b1101_1011;//jmp 11[b] ---> 指针跳转到9
	assign unit[13] = 8'b0011_1101;//mov a,#13
	assign unit[14] = 8'b1100_0000;//jmp a
	assign unit[15] = 8'b0000_0000;//
	
	assign code = unit[addr];
	
endmodule


