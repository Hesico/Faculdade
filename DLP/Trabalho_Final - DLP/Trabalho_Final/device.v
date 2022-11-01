module device
#(
  parameter DATA_WIDTH = 8,
  parameter ADDR_WIDTH = 4
)
(
  input  clk, clr_n, rst,
  output received_n,sent_n,
  output [ADDR_WIDTH-1:0] rom_addr,
  output [DATA_WIDTH-1:0] rom_data,
  output [ADDR_WIDTH-1:0] ram_addr,
  output [DATA_WIDTH-1:0] ram_data,
  output [DATA_WIDTH-1:0] received_data,
  output transmit,
  output tc_bit, //
  output transmit_data, //
  output [3:0] Q,
  output shift_enable,
  output write_enable
);

	
  reg [7:0] fica;
  wire in;

  always @ (posedge tc_bit)
  begin
  
  fica <= received_data;
  
  end

 
  

  TX #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  ) transmitter (
	 .rst(rst),
    .clk(clk),
    .transmit(transmit),
    .data_in(rom_data),
    .transmit_data(transmit_data),
    .sent_n(sent_n),
	 .tc_bit(tc_bit), //
	 .shift_enable(shift_enable),
	 .Q(Q)
  );

  counter #(
    .Nbits(2**ADDR_WIDTH),
	 .MAXC(2**ADDR_WIDTH)
  ) rom_counter (
    .clk(clk),
    .en(transmit),
    .clr_n(clr_n),
    .Q(rom_addr),
    .tc()
  );

  rom_mem #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  ) rom (
    .clk(clk),
    .addr(rom_addr),
    .q(rom_data)
  );

  RX #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  ) receiver (
    .clk(clk),
    .transmit(transmit),
    .transmit_data(transmit_data),
    .received_n(received_n),
    .received_data(received_data)
  );

  ram_mem #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  ) ram (
    .clk(clk),
    .we(write_enable),
    .data(fica),
    .addr(ram_addr),
    .q(ram_data)
  );

  counter #(
    .Nbits(2**ADDR_WIDTH),
	 .MAXC(2**ADDR_WIDTH)
  ) ram_counter (
    .clk(clk),
    .en(~received_n),
    .clr_n(clr_n),
    .Q(ram_addr),
    .tc()
  );

  
  
  statemachine sm1
  (
    .clk(clk),
    .rst(rst),
    .in(~sent_n),
    .smOut(transmit)
  );
  
  
  
  statemachine sm2
  (
    .clk(clk),
    .rst(rst),
    .in(~received_n),
    .smOut(write_enable)
  );
  
  

endmodule
