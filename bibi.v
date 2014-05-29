module bibi(clk,rst,Borrow,Borrowf);

// input/ output
input clk,rst;
output [3:0] Borrow;
output [3:0] Borrowf;

// wiring
wire clk,rst;

// save value place
reg [3:0] Counterr=8;
reg [3:0] Counterg=0;

assign Borrow[3:0] = Counterr[3:0];
assign Borrowf[3:0] = Counterg[3:0];

always @(posedge clk or posedge ~rst)
	begin
		if(rst==0)
		begin
			Counterg = 0;
			Counterr = 8;
		end
		else
		begin
			Counterr = Counterr >>1;
			Counterg = ~Counterg;
		end
	end
endmodule

