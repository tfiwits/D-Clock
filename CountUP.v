module countup(clk,rst,CountOut,Carry);

// parameter setup..............
parameter Divider =6;
parameter Bitwidth = 4;

// input/output define.........
input clk,rst;
output [3:0] CountOut;
output Carry;

// wire/reg define.......
wire clk,rst;
reg [3:0] CountOut;  // data to be saved
reg Carry;


// program......
always @(posedge clk or posedge ~rst)
begin
		if(rst==0)
		begin
			CountOut =0;
		end
		else
		begin
			CountOut = CountOut+1;
			if(CountOut == 1)
			begin
				Carry = 0;
			end
			if(CountOut == Divider)
			begin
				CountOut = 0;
				Carry = 1;
			end
		end
end

endmodule
