module JK_FF (
				  input clk, j, k,
				  input clr_n,
				  output q
				  );

				 
reg Qp;
initial Qp<=0;
always @ (posedge clk )
begin
  if (~Qp)
    Qp <= 1'b1;
  else begin
    Qp<= (k==1)?1'd0:1'd1;
  end
end
assign q = Qp;
endmodule
