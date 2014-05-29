`timescale 1ns/1ps

module cup_TB;


// parameter setup..............
parameter Bitwidth = 4;


// wire/reg define.......
reg clk,rst;
reg pb_s,pb_d,pb_h;
reg df,df_0,ed;
reg [1:0]ssel;
wire [1:0] a,seee1;
wire  pc,pd,pe,pf,q,pin_nameaaa;
wire [3:0] q0,q1,q2,q3,q4,q5;
wire [Bitwidth-1:0] CountOut;
wire [Bitwidth-1:0] CountOut1;  // data to be saved
wire Carry;


 ALL test(.ddd(df),.ddd0(df_0),.clk_in(clk),.rst(rst),.pa(pb_s),.pb(pb_d),.pc(pb_h),.sell(ssel),.q0(q0),.q1(q1),.q2(q2),.q3(q3),.q4(q4),.q5(q5),.clkt(Carry),.a(a),.ff(seeel));

initial
begin
	pb_h=1;
	pb_d=1;
	pb_s=1;
	df = 0;
	df_0 = 0;
	clk = 0;
	rst = 0;
	ssel = 0;
end
always #20 clk  = ~clk;
always #10  rst = 1;

endmodule
