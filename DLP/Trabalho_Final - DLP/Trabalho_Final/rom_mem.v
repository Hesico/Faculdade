module rom_mem
#(
  parameter DATA_WIDTH = 8,
  parameter ADDR_WIDTH = 4
)
(
	input clk,
	input [ADDR_WIDTH-1:0] addr,
	output reg [DATA_WIDTH-1:0] q
);
	reg [DATA_WIDTH-1:0] rom[2**ADDR_WIDTH-1:0];

	initial
	begin
		$readmemb("numbers.txt", rom);
	end

	always @ (posedge clk)
	begin
		q <= rom[addr];
	end

endmodule
