`timescale 1ns/10ps

module device_tb ();

  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 4;

  reg clk, clr_n, rst;
  wire  sent_n,received_n;
  wire [ADDR_WIDTH-1:0] rom_addr;
  wire [DATA_WIDTH-1:0] rom_data;
  wire [ADDR_WIDTH-1:0] ram_addr;
  wire [DATA_WIDTH-1:0] ram_data;
  wire [DATA_WIDTH-1:0] received_data;
  wire transmit;
  wire tc_bit;
  wire transmit_data;
  wire [3:0] Q;
  wire shift_enable;
  wire write_enable;
  reg [DATA_WIDTH-1:0] ramd[2**ADDR_WIDTH-1:0];
 

  

  
  
  initial begin
 
    clk = 1'b0;
    forever begin
      #10 clk = ~clk;
		
    end
  end

  
  initial begin

	 rst = 1'b0;
    clr_n = 1'b0;
	 #20 clr_n = 1'b1;
	 rst = 1'b1;
	 #20 rst = 1'b0;



  end
  
  // Instância do DUT
  device DUT
  (
    .clk(clk),
    .clr_n(clr_n),
    .rst(rst),
    .sent_n(sent_n),
    .received_n(received_n),
    .rom_addr(rom_addr),
    .rom_data(rom_data),
    .ram_addr(ram_addr),
    .ram_data(ram_data),
    .received_data(received_data),
	 .transmit(transmit),
	 .tc_bit(tc_bit),
	 .transmit_data(transmit_data),
	 .Q(Q),
	 .shift_enable(shift_enable),
	 .write_enable(write_enable)
  );

endmodule
