module semaforo(
					input clk,
					output reg [1:0] c1, c2,
					output reg  p1, p2
					);
					
parameter s0 = 2'd0, s1 = 2'd1, s2 = 2'd2, s3 = 2'd3;

reg[1:0] state;
reg[3:0] cnt;
initial
begin
	state <= s0;
	cnt <= 4'd0;
end


always @ (posedge clk)
begin
	cnt <= cnt + 4'd1;
	case(state)
	s0:
		if(cnt == 4'd3)
			state <= s1;
		else
			state <= s0;
	s1:
		if(cnt == 4'd5)
			begin
			state <= s2;
			cnt <= 4'd0;
			end
		else
			state <= s1;
	s2:
		if(cnt == 4'd3)
			state <= s3;
		else
			state <= s2;
	s3:
		if(cnt == 4'd5)
			begin
			state <= s0;
			cnt <= 4'd0;
			end
		else
			state <= s3;
	
	endcase
	
	
end
	
	
always @ (state)
begin
	case(state)
	s0:
	begin
		c1 <= 2'd0;
		c2 <= 2'd2;
		p1 <= 1'd1;
		p2 <= 1'd0;
	end
	
	s1:
	begin
		c1 <= 2'd1;
		c2 <= 2'd2;
		p1 <= 1'd1;
		p2 <= 1'd0;
	end	
		
	s2:
	begin
		c1 <= 2'd2;
		c2 <= 2'd0;
		p1 <= 1'd0;
		p2 <= 1'd1;
	end

	s3:
	begin
		c1 <= 2'd2;
		c2 <= 2'd1;
		p1 <= 1'd0;
		p2 <= 1'd1;
	end
		
	endcase

end

endmodule
