module full_adder (
						input A, B, Cin,
						output S, Cout						
						);

wire w1, w2, w3;

xor u0 (w1, A, B);
xor u1 (S, w1, Cin);
and u2 (w2, w1, Cin);
and u3 (w3, A, B);
or  u4 (Cout, w3, w2);						


endmodule 