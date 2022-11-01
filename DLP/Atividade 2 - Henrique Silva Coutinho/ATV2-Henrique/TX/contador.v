module contador(
						input clk, clr_n, en,
						output reg [1:0] Q,
						output TC
						);

						

initial 
begin
Q = 2'b00;
end

always @ (posedge clk)
begin
if(~clr_n)
	Q <= 2'b00;
else
if(en)

Q <= Q + 2'b01;

end

assign TC = (Q==2'b11)? 1'b1 : 1'b0;

endmodule
