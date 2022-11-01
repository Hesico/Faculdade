module e(
			input [3:0] A,B,
			output[3:0] eAB
			);
			
and and0(eAB[0], A[0],B[0]);
and and1(eAB[1], A[1],B[1]);
and and2(eAB[2], A[2],B[2]);
and and3(eAB[3], A[3],B[3]);			
			  
endmodule 