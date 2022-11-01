module statemachine
(
  input clk, in, rst,
  output reg smOut
);
	parameter S0 = 2'd0, S1 = 2'd1,S2 = 2'd2;
	reg [1:0]state;
	

  // Transição dos estados
  always @ (posedge clk or posedge rst)
    begin
      if(rst==1)
        begin
          state <= S0;
        end
      else
        case(state)
          S0:
				if (in)
					state <= S1;
				else
					state<= S0;
					
          S1: 
			 	if (in)
					state <= S0;
				else
					state<= S0;
			 S2: 				
			 if (in)
					state <= S2;
				else
					state<= S0;

        endcase
    end

  // Decodificação das saídas
  always @ (state)
    begin
      case(state)
        S0: smOut <= 1'b0;
        S1: smOut <= 1'b1;
		  S2: smOut <= 1'b1;
      endcase
    end

endmodule
