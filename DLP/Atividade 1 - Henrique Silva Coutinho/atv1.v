module atv1(
				input [3:0] A,B,
				input [1:0] op,
				output [3:0] S
			  );
wire ov;
wire [3:0]  op1, op2, op3;
			  
add_sub soma(
				.M(op[0]),
				.A(A), 
				.B(B), 
				.Ov(ov),
				.S(op1) 						
				);
				
				
e AeB(
		.A(A), 
		.B(B), 
		.eAB(op2) 						
		);

ou AouB(
		.A(A), 
		.B(B), 
		.ouAB(op3) 						
		);
		
myMUX4bits seletor(
						.SEL(op),
						.In1(op1),
						.In2(op1),
						.In3(op2),
						.In4(op3),
						.out(S)
						);
			
				
			  
endmodule 