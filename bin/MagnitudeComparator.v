module magcomp(a,b,lt,gt,eq);
	input [1:0]a;
	input [1:0]b;
	output reg lt,gt,eq;

	always @(a,b)
	begin
		if(a>b) begin
			 gt=1'b1;
			 lt=1'b0;
			 eq=1'b0; 
		end
			
		else if (a<b) begin
			 gt=1'b0;
			 lt=1'b1;
			 eq=1'b0;	
		end

		else begin
			 gt=1'b0;
			 lt=1'b0;
			 eq=1'b1;
		end
	end	
endmodule	