module SIPO_register
#(
  parameter Nbits = 8
)
(
  input clk, clr_n, shift_enable, input_data,
  output reg [Nbits-1:0] out
);

  always @(posedge clk or negedge clr_n) begin
    if (~clr_n)
      out <= {Nbits{1'b0}};
    else if (shift_enable) begin
      out[Nbits-2:0] <= out[Nbits-1:1];
      out[Nbits-1] <= input_data;
    end
  end

endmodule
