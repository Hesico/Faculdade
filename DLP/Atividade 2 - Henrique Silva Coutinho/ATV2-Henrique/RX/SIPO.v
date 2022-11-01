module SIPO(
				input entrada,
				input clk,
				input enable,
				output reg [3:0] Out
				);
				
always @ (posedge clk)
begin

if(enable)
begin
Out[3] <= entrada;
Out[2] <= Out[3];
Out[1] <= Out[2];
Out[0] <= Out[1];
end
end
				
endmodule
