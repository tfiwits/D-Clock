module ifff(input[3:0] s,s1,d,d1,h,h1,s2,s3,d2,d3,h2,h3,  output reg q);

always @( s or s1 )
begin
		if (h==h1 && h2==h3 && d==d1 && d2==d3 && s==s1 && s2==s3)
					q=0;
		else
				q=1;
			
end
endmodule 