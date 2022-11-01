module RX
#(
  parameter DATA_WIDTH = 8,
  parameter ADDR_WIDTH = 4
)
(
  input clk, transmit,
  input transmit_data,
  output received_n,
  output [DATA_WIDTH-1:0] received_data
);

  wire enable, tc_bit;

  counter #(
    .Nbits(DATA_WIDTH)
  ) cnt (
    .clk(clk),
    .en(enable),
    .clr_n(received_n),
    .tc(tc_bit)
  );

  SIPO_register #(
    .Nbits(DATA_WIDTH)
  ) register (
    .clk(clk),
    .clr_n(received_n),
    .shift_enable(enable),
    .input_data(transmit_data),
    .out(received_data)
  );

  D_FF FF1 (
    .d(1'b1),
    .clk(transmit),
    .clr_n(received_n),
    .q(enable)
  );

  JK_FF FF2 (
    .j(1'b1),
    .k(tc_bit),
    .clk(clk),
    .clr_n(1'b1),
    .q(received_n)
  );

endmodule
