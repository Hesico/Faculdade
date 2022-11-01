module counter
#(
	parameter Nbits = 8,
	parameter MAXC = 8
)
(
	input clk, en, clr_n,
	output reg [Nbits-1:0] Q,
   output tc
);

  always @ (posedge clk or negedge clr_n) 
begin
    if (~clr_n) begin
      Q <= {Nbits{1'b0}};
    end else if (en) begin
      Q <= Q + 1'b1;
		if (Q == MAXC)
		Q <=0;
    end
  end

  assign tc = Q == MAXC ? 1'b1 : 1'b0;

endmodule
