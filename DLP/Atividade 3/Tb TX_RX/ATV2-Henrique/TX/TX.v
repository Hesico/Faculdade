module TX(
				input [3:0] A, B, C, D,
				input ld_A, ld_B, ld_C, ld_D,
				input clk, transmit,
				output transmit_data,
				output send
				);
				
				
wire S0, S1, S2, S3;
wire FF1Out;
wire [1:0] C1, C2;
wire TC1, TC2;
				

RegParSer regA(
					.In(A),
					.clk(clk),
					.En(FF1Out),
					.load(ld_A),
					.Out(S0)
					);
RegParSer regB(
					.In(B),
					.clk(clk),
					.En(FF1Out),
					.load(ld_B),
					.Out(S1)
					);

					
RegParSer regC(
					.In(C),
					.clk(clk),
					.En(FF1Out),
					.load(ld_C),
					.Out(S2)
					);
RegParSer regD(
					.In(D),
					.clk(clk),
					.En(FF1Out),
					.load(ld_D),
					.Out(S3)
					);



FFD FFD1(
			.clr_n(send),
			.clk(transmit),
			.D(1'd1),
			.FF1(FF1Out)
			);
			

					
contador bitcontador(
							.clk(clk),
							.clr_n(send),
							.en(FF1Out),
							.Q(C1),
							.TC(TC1)
							);
							
contador wordcontador(
							.clk(clk),
							.clr_n(send),
							.en(TC1),
							.Q(C2),
							.TC(TC2)
							);

FFJK FFJK2(
				.J(1'b1),
				.K(TC2 & TC1),
				.clk(clk),
				.FF2(send)
				
				);
				
mutex mut(
				.SEL(C2),
				.In1(S0),
				.In2(S1),
				.In3(S2),
				.In4(S3),
				.transmited(transmit_data)
			);
														
							

endmodule
