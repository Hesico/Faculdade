module PISO_register
#(
  parameter Nbits = 8
)
(
  input clk, clr_n, load, shift_enable,
  input [Nbits-1:0] input_data,
  output out
);

  reg [Nbits-1:0] piso_reg;

  always @(posedge clk or negedge clr_n) begin
    if (~clr_n) begin
      piso_reg <= {Nbits{1'b0}};
    end else begin
        if (load) begin
          piso_reg <= input_data;
        end else if (shift_enable) begin
          piso_reg[Nbits-2:0] <= piso_reg[Nbits-1:1];
          piso_reg[Nbits-1] <= piso_reg[0];
        end
    end
  end

  assign out = piso_reg[0];

endmodule
