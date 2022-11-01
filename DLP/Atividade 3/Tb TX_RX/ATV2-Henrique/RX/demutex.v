module demutex(
					input data,
					input [1:0] SEL,
					output [3:0] Out
					);
reg [3:0] O;
integer i;					
always @ (*)
begin

for (i = 0; i < 4; i = i + 1)
begin
	if(i == SEL)
		O[i] <= data;
	else
		O[i] <= 1'b0;
end

end

assign Out = O;					
endmodule
