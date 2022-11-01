module RX(
				input clk,
				input transmit_data,
				input transmit,
				output [3:0] recevA, recevB, recevC, recevD,
				output received
			);
			
wire [3:0] OS;
wire FF1Out;
wire [1:0] C1,C2;
wire TC1,TC2;

SIPO regA(
			.entrada(OS[0]),
			.clk(clk),
			.enable((C2 == 2'b00) & FF1Out),
			.Out(recevA)
			);

SIPO regB(
			.entrada(OS[1]),
			.clk(clk),
			.enable((C2 == 2'b01) & FF1Out),
			.Out(recevB)
			);
SIPO regC(
			.entrada(OS[2]),
			.clk(clk),
			.enable((C2 == 2'b10) & FF1Out),
			.Out(recevC)
			);
SIPO regD(
			.entrada(OS[3]),
			.clk(clk),
			.enable((C2 == 2'b11) & FF1Out),
			.Out(recevD)
			);

demutex demut(
					.data(transmit_data),
					.SEL(C2),
					.Out(OS)
					);

FFD FFD1(
			.clk(transmit),
			.clr_n(received),
			.D(1'd1),
			.FF1(FF1Out)
			);
			

contador bitcontador(
							.clk(clk),
							.clr_n(received),
							.en(FF1Out),
							.Q(C1),
							.TC(TC1)
							);
							
contador wordcontador(
							.clk(clk),
							.clr_n(received),
							.en(TC1),
							.Q(C2),
							.TC(TC2)
							);

FFJK FFJK2(
				.J(1'b1),
				.K(TC2 & TC1),
				.clk(clk),
				.FF2(received)
				
				);			
endmodule
