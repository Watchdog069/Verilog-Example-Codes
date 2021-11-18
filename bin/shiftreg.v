module shiftreg (clk,rst,q);
	parameter width=7;
	input clk,rst;
	output reg [width:0] q = 8'b11010100;
	integer i;

	always @(posedge clk)
	begin
		if(rst)
			q<=8'b0;
		else begin
				for(i=0;i<=width-1;i=i+1) begin
					q[i]<=q[i+1];
				end
				q[width]=q[0];  //output of last connected to first-> ring counter
			end	
	end
endmodule