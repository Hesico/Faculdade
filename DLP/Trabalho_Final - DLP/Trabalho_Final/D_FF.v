module D_FF (
				  input clk, clr_n, d,
				  output reg q 
				  );
				  
initial q <= 1'b0;
				  
always @ (posedge clk or negedge clr_n)
begin
	if(~clr_n)
		q <= 1'b0;
	else
		q <= d;
end				  
				  
endmodule 