module lab5(
	input logic [3:0] num,
	input logic [2:0] sel,
	output logic a, b, c, d, e, f, g,
	output logic seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7
	);

	assign a = (num[3] | ~(num[1])) & ((~(num[3])) | num[0]) & (num[3] | ~(num[2]) | ~(num[0])) & (~(num[2]) | ~(num[1]) | ~(num[0])) & (~(num[3]) | num[2] | num[1]) & (num[3] | num[2] | num[0]);
	assign b = ((~(num[3])) | num[2] | num[0]) & (num[3] | num[2]) & (~(num[3]) | num[1] | ~(num[0])) & (num[3] | num[1] | num[0]) & (num[3] | (~(num[1])) | (~(num[0])));
	assign c = (num[3] | (~(num[2]))) & ((~(num[3])) | num[2]) & ((~(num[3])) | num[1] | (~(num[0]))) & (num[3] | num[1]) & (num[3] | (~(num[1])) | (~(num[0])));
	assign d = ((~(num[3])) | num[1]) & (num[3] | num[2] | num[0]) & ((~(num[2])) | num[1] | (~(num[0]))) & (~(num[2]) | (~num[1]) | num[0]) & (num[2] | (~(num[1])) | (~(num[0])));
	assign e = ((~(num[1])) | num[0]) &  ((~(num[3])) | (~(num[2]))) & ((~(num[3])) | (~(num[1])) | (~(num[0]))) & (~(num[3]) | num[2] | num[0]) & (num[3] | num[2] | num[0]);
	assign f = (num[1] | num[0]) & ((~(num[3])) | num[2]) & ((~(num[2])) | num[0]) & (num[1] | num[3] | (~(num[2]))) & (~(num[3]) | (~(num[1])) | (~(num[0])));
	assign g = ((~(num[3])) | num[2]) & ((~(num[3])) | (~(num[1]))) & (num[3] | num[2] | (~(num[1]))) & (num[3] | (~(num[2])) | num[0]) & ((~(num[2])) | num[1] | (~(num[0])));

	assign seg0 = sel[2] | sel[1]  | sel[0];
	assign seg1 = sel[2] | sel[1]| (~sel[0]);
	assign seg2 = sel[2] | (~sel[1]) | sel[0];
	assign seg3 = sel[2]  | (~sel[1])| (~sel[0]);
	assign seg4 = (~sel[2])  | sel[1] | sel[0];
	assign seg5 = (~sel[2]) | sel[1] | (~sel[0]);
	assign seg6 = (~sel[2]) | (~sel[1])| sel[0];
	assign seg7 = (~sel[2]) | (~sel[1])| (~sel[0]);

endmodule
