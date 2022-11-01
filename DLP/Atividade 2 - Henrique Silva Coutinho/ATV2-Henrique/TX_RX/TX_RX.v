module TX_RX(
				input [3:0] A, B, C, D,
				input ld_A, ld_B, ld_C, ld_D,
				input clk, transmit,
				output [3:0] recevA, recevB, recevC, recevD,
				output received
				);
				
wire transmit_data;
wire send;

TX tx(
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.clk(clk),
		.ld_A(ld_A),
		.ld_B(ld_B),
		.ld_C(ld_C),
		.ld_D(ld_D),
		.transmit_data(transmit_data),		
		.send(send),
		.transmit(transmit)
		);
		
RX rx(
		.clk(clk),
		.transmit_data(transmit_data),
		.transmit(transmit),
		.recevA(recevA),
		.recevB(recevB),
		.recevC(recevC),
		.recevD(recevD),
		.received(received)
		);
				
endmodule
