module FFJK(
				input J,K,clk,
				output FF2
				);
				
reg Qp;
				
always @ (posedge clk)
begin
	if(~Qp)
		Qp <= 1'd1;
	else
	begin
		Qp <= (K == 1) ? 1'd0: 1'd1;
	end
		

end

assign FF2 = Qp;

endmodule
