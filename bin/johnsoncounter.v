module jcounter (clk,rst,q);
	parameter width = 3;
	input clk,rst;
	output reg [width:0] q=0;
	integer i;
	
	always @(posedge clk) begin 
		if (rst)
			begin
				q <= 0;
			end
		else
			begin
				for(i=0;i<=width-1;i=i+1) begin
					q[i]<=q[i+1];
				end

			   /*q[0] <= q[1];
				q[1] <= q[2];
				q[2] <= q[3];*/
				q[width] <= ~q[0];
			end	
	end
endmodule	