module Contador(
					 input clk, EN, clr_n,
					 output reg [1:0] Q,
					 output reg TC				 
					 );


always @ (posedge clk)
begin
	if (~clr_n)
		Q <= 2'b00;
	else
	begin
			Q <= 2'b01;
	end
				 
TC <= (Q == 2'd3) ? 1'b1: 1'b0; //Condição ( Se Q é igual a 2'd3 [3 em decimal] TC recebe 1b'1, se não TC recebe 1'b0			 
	

end	
endmodule 