module mec(rst,clk,minute,second,msecond,minute_o,second_o,msecond_o,minute_os,second_os,msecond_os);

	input rst,clk;
	input [7:0] minute,second,msecond;
	output [3:0] minute_o,second_o,msecond_o,minute_os,second_os,msecond_os;

	
	reg [3:0] minute_r,second_r,msecond_r,minute_rs,second_rs,msecond_rs;
	always @(posedge clk or posedge ~rst)
	begin
				minute_r=minute / 10;
				minute_rs=minute % 10;
				second_r=second / 10;
				second_rs=second % 10;
				msecond_r=msecond / 10;
				msecond_rs=msecond % 10;
	end
	assign minute_o = minute_r;
	assign second_o=second_r;
	assign msecond_o=msecond_r;
	assign minute_os=minute_rs;
	assign second_os=second_rs;
	assign msecond_os=msecond_rs;
endmodule

