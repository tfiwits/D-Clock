module mux_ledd(input select,s0,rst, input[1:0] d, output reg q );

reg sel;
always @( select)
begin

					if (select==0)
						begin
							q = d[0];
						end
					else
						q = d[1];		

end
endmodule
