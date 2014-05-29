module mux_led(input[1:0]  select, input[3:0] d0,d1,d2,d3,d4,d5,d10,d11,d12,d13,d14,d15,d20,d21,d22,d23,d24,d25,d30,d31,d32,d33,d34,d35, output reg [3:0] q0,q1,q2,q3,q4,q5 );
always @( select)
begin
   case( select )
       0 :
			begin
				q0 = d0;
				q1 = d1;
				q2 = d2;
				q3 = d3;
				q4 = d4;
				q5 = d5;
			end
       1 :
		 	begin
				q0 = d10;
				q1 = d11;
				q2 = d12;
				q3 = d13;
				q4 = d14;
				q5 = d15;
			end
       2 :
			begin
				q0 = d20;
				q1 = d21;
				q2 = d22;
				q3 = d23;
				q4 = d24;
				q5 = d25;
			end
       3 :
			begin
				q0 = d33;
				q1 = d30;
				q2 = d34;
				q3 = d31;
				q4 = d35;
				q5 = d32;
			end
   endcase
end
endmodule 