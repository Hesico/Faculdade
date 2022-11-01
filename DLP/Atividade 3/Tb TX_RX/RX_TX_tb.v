`timescale 1ns/10ps

module RX_TX_tb();

reg [3:0] A,B,C,D;
reg ld_A,ld_B,ld_C,ld_D;
reg clk;
reg transmit;

wire [3:0] recevA,recevB,recevC,recevD;
wire received;

initial 
fork
		 transmit = 1'b0;
		 A = 4'b0110;
		 B = 4'b1000;
		 C = 4'b1111;
		 D = 4'b0101;
		 ld_A = 1'b0;
		 ld_B = 1'b0;
		 ld_C = 1'b0;
		 ld_D = 1'b0;
		 
	#30 ld_A = 1'b1;
	#30 ld_B = 1'b1;
	#30 ld_C = 1'b1;
	#30 ld_D = 1'b1;
	
	#70 ld_A = 1'b0;
	#70 ld_B = 1'b0;
	#70 ld_C = 1'b0;
	#70 ld_D = 1'b0;
	
	#50 transmit = 1'b1;
	#100 transmit = 1'b0;
	
	
	#390 A = 4'b0000;
	#390 B = 4'b1010;
	#390 C = 4'b1001;
	#390 D = 4'b0111;
		 
	#390 ld_A = 1'b1;
	#390 ld_B = 1'b1;
	#390 ld_C = 1'b1;
	#390 ld_D = 1'b1;
	
	#410 ld_A = 1'b0;
	#410 ld_B = 1'b0;
	#410 ld_C = 1'b0;
	#410 ld_D = 1'b0;
	
	#410 transmit = 1'b1;
	#430 transmit = 1'b0;
	
	#770 A = 4'b0100;
	#770 B = 4'b0000;
	#770 C = 4'b1101;
	#770 D = 4'b1111;
		 
	#770 ld_A = 1'b1;
	#770 ld_B = 1'b1;
	#770 ld_C = 1'b1;
	#770 ld_D = 1'b1;
	
	#790 ld_A = 1'b0;
	#790 ld_B = 1'b0;
	#790 ld_C = 1'b0;
	#790 ld_D = 1'b0;
	
	#770 transmit = 1'b1;
	#790 transmit = 1'b0;

join


initial
begin

		clk = 1'b0;
		forever
		begin
			#10 clk = ~clk;
			
			
		end
end


TX_RX DUT(
			.A(A),
			.B(B),
			.C(C),
			.D(D),
			.ld_A(ld_A),
			.ld_B(ld_B),
			.ld_C(ld_C),
			.ld_D(ld_D),
			.clk(clk),
			.transmit(transmit),
			.recevA(recevA),
			.recevB(recevB),
			.recevC(recevC),
			.recevD(recevD),
			.received(received)
			);

endmodule
