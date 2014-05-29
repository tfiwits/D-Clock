module bibi_mux(clk,rst,Borrow,Borrowf,Borrow1,Borrowf1,cc,s0,s1);

// input/ output
input clk,rst,cc;
input [3:0] Borrow;
input [3:0] Borrowf;
input [3:0] Borrow1,Borrowf1;
output [3:0] s0,s1;
// wiring
wire clk,rst,cc;
wire [3:0] Borrow,Borrowf,Borrow1,Borrowf1;

// save value place
reg [3:0] s0;
reg [3:0] s1;



always @(posedge clk or posedge ~rst)
	begin
		if(rst==0)
		begin
			s0 = 0;
			s1 = 0;
		end
		else if (cc==1)
		begin
			s0=Borrow1;
			s1=Borrowf1;
		end
		else
			s0=Borrow;
			s1=Borrowf;
	end
endmodule

