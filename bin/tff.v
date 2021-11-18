module tff(t,clk,rst,q);
	input t,clk,rst;
	output reg q=0;

	always @(posedge clk)
	begin
		if(rst==1)
		begin
			q <= 0;
		end

		else begin
			if(t==0) begin
				q <= q;
			end
			else begin
				q <= ~q;
			end	
		end
	end
endmodule		