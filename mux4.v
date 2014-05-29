module mux4(input[1:0]  select, input[3:0] d, input[3:0] d1, output reg q,output reg q1 );
always @( select or d or d1)
begin
   case( select )
       0 : q = d[0];
       1 : q = d[1];
       2 : q = d[2];
       3 : q = d[3]; 
   endcase
	 case( select )
       0 : q1 = d1[0];
       1 : q1 = d1[1];
       2 : q1 = d1[2];
       3 : q1 = d1[3]; 
   endcase
end
endmodule

module main;
reg [3:0] d,d1;
reg [1:0] s;
wire q,q1;

mux4 DUT (s, d, q,q1,d1);

initial
begin
  s = 0;
  d = 4'b0110;
    d1 = 4'b0110;
end

always #50 begin
  s=s+1;
  $monitor("%4dns monitor: s=%d d=%d q=%d", $stime, s, d, q);
    $monitor("%4dns monitor: s=%d d=%d q=%d", $stime, s, d1, q1);
end

initial #1000 $finish;

endmodule 