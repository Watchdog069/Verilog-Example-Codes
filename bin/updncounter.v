module counter(clk,rst,q,ctrl);
	input clk,rst,ctrl;
	output reg [3:0] q=0;
	always @(posedge clk) begin 
		if (rst)
			begin
				q <= 4'd0;
			end
		else
			begin
				if(ctrl==1)
					begin
						q <= q + 4'd1;
						if(q==4'd9)
							q<=4'd0;
					end
				else
					begin
						q <= q - 4'd1;
						if(q==4'd0)
							q<=4'd9;	
					end	
			end	
	end
endmodule