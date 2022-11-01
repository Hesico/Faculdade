module myMUX4bits (
                  input [1:0] SEL,
				      input [3:0] In1, In2, In3, In4,
				      output reg[3:0] out 
                  );
				 

always @ (*)
begin
	case (SEL)
		2'b00: out <= In1;
		2'b01: out <= In2;
		2'b10: out <= In3;
		2'b11: out <= In4;	
	endcase
end
				 
endmodule 