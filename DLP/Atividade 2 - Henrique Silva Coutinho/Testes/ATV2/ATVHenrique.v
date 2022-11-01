module ATVHenrique(
						input [3:0] A,B,C,D,
						input ld_A, ld_B, ld_C, ld_D,
						input clock, transmit,
						input clr,
						output S

						);
						
wire S0,S1,S2,S3;
wire FF1Out;
wire contOut1;
wire [1:0] Q1;

RegParSer regA(
					.In(A),
					.clk(clock),
					.En(FF1Out),
					.load(ld_A),
					.Out(S0)
					);

FFD FF1(
			.D(1'b1),
			.clk(transmit),
			.clr_n(clr),
			.FF1(FF1Out)
			);
			
Contador BitC(
					.clk(clock),
					.clr_n(clr),
					.EN(1'd1),
					.TC(contOut1),
					.Q(Q1)
					);
						
assign S = S0;					
endmodule
					