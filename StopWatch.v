module StopWatch(rst,clk,minute,second,msecond,sCLK,mCLK,hCLK);

	input rst,clk;
	output [7:0] minute,second,msecond;
	output sCLK,mCLK,hCLK;

	wire rst,clk;
	reg [7:0] minute,second,msecond;
	reg sCLK,mCLK,hCLK;

	always @(posedge clk or posedge ~rst)
	begin
		if(rst==0)
		begin
			minute =0;
			second =0;
			msecond =0;
			sCLK = 0;
			mCLK = 0;
			hCLK = 0;
		end
		else
		begin
			msecond = msecond+1;
			if(msecond ==100)
			begin
				second = second+1;
				msecond  = 0;
				sCLK  = 1;
			end
			else
			begin
				sCLK  = 0;
			end
			if(second == 60)
			begin
				second  = 0;
				minute = minute +1;
				mCLK  = 1;
			end
			else
			begin
				mCLK  = 0;
			end
			if(minute == 60)
			begin
				hCLK  = 1;
				minute =0;
			end
			else
			begin
				hCLK  = 0;
			end
		end
	end		
endmodule

