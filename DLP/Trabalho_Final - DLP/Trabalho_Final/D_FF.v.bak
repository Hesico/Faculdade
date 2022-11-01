module D_FF (
				  input clk, clr_n, d,
				  output reg q 
				  );

always @ (posedge clk or negedge clr_n)
begin
	if(~clr_n)
		q <= 1'b0;
	else
		q <= d;
end				  
				  
endmodule 