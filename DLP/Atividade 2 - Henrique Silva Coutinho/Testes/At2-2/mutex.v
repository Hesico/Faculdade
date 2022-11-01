module mutex(
                  input [1:0] SEL,
				      input  In1, In2, In3, In4,
				      output transmited 
                  );
				 
reg out;
				 
always @ (*)
begin
	case (SEL)
		2'b00: out <= In1;
		2'b01: out <= In2;
		2'b10: out <= In3;
		2'b11: out <= In4;	
	endcase
end

assign transmited = out;
				 
endmodule 