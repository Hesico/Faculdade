module RegParSer(
				input [3:0] In,
				input clk, En, load,
				output Out
			  );

reg [3:0] Aux;	
 
always @ (posedge clk)

begin
	if(load)
	begin
	Aux <= In;
	end
	else
	begin
		if(En)
		begin
			Aux[0] <= Aux[1];
			Aux[1] <= Aux[2];
			Aux[2] <= Aux[3];
			Aux[3] <= Aux[0];
		end
	end
end

assign Out = Aux[0];
endmodule
