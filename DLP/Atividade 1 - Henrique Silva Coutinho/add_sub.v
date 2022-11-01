module add_sub (
					input M,
					input [3:0] A, B,
					output [3:0] S,
					output Ov
					);

wire [3:0] Bc2;
					
xor xor0 (Bc2[0], B[0], M);
xor xor1 (Bc2[1], B[1], M);
xor xor2 (Bc2[2], B[2], M);
xor xor3 (Bc2[3], B[3], M);

wire [3:0] C;

xor xorOV (Ov, C[3], C[2]);

full_adder FA0 (
					.A(A[0]), 
					.B(Bc2[0]), 
					.Cin(M),
					.S(S[0]), 
					.Cout(C[0])						
					);

full_adder FA1 (
					.A(A[1]), 
					.B(Bc2[1]), 
					.Cin(C[0]),
					.S(S[1]), 
					.Cout(C[1])						
					);

full_adder FA2 (
					.A(A[2]), 
					.B(Bc2[2]), 
					.Cin(C[1]),
					.S(S[2]), 
					.Cout(C[2])						
					);

full_adder FA3 (
					.A(A[3]), 
					.B(Bc2[3]), 
					.Cin(C[2]),
					.S(S[3]), 
					.Cout(C[3])						
					);

endmodule 