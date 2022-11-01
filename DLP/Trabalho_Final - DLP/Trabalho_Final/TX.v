module TX
#(
  parameter DATA_WIDTH = 8,
  parameter ADDR_WIDTH = 4
)
(
  input rst, clk, transmit,
  input [DATA_WIDTH-1:0] data_in,
  output transmit_data, sent_n, tc_bit, //
  output [7:0] Q, //
  output shift_enable //
);


  wire [2**ADDR_WIDTH-1:0] mem_addr;
  wire [DATA_WIDTH-1:0] mem_data;

  counter #(
    .Nbits(ADDR_WIDTH),
	 .MAXC(DATA_WIDTH)
  ) bit_counter (
    .clk(clk),
    .en(shift_enable),
    .clr_n(sent_n),
    .tc(tc_bit),
	 .Q(Q)
  );

  PISO_register #(
    .Nbits(DATA_WIDTH)
  ) register (
    .clk(clk),
    .clr_n(1'b1),
    .load(~sent_n | rst),
    .shift_enable(shift_enable),
    .input_data(data_in),
    .out(transmit_data)
  );

  D_FF FF1 (
    .d(1'b1),
    .clk(transmit | rst),
    .clr_n(sent_n),
    .q(shift_enable)
  );
    JK_FF FF2 (
    .j(1'b1),
    .k(tc_bit),
    .clk(clk),
    .clr_n(1'b1),
    .q(sent_n)
  );

endmodule
