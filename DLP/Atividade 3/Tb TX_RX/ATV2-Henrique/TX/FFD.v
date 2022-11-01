module FFD(
				input clr_n, clk, D,
				output FF1
			  );

reg Q;
always @ (posedge clk or negedge clr_n)
begin
	if(~clr_n)
		Q <= 1'd0;
	else
	begin
		Q <= D;
	end

end

assign FF1 = Q;
endmodule
