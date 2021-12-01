module jkff(clk,j,k,rst,qnext,qbar);
	input clk,j,k,rst;
	output reg qprev=0,qnext=0,qbar=1;

	always @(posedge clk)
	begin 
		if(rst) begin
			qnext<=0;
			qprev<=0;
		end
		else 
		begin	
			if(j==0 && k==0) begin
				qnext<=qprev;
				qbar= !qnext;
				qprev<=qnext; 
			end
			else if(j==0 && k==1) begin 
				qnext<=0;
				qbar= !qnext;  
				qprev<=qnext;
			end
			else if(j==1 && k==0) begin
				qnext<=1;
				qbar= !qnext; 
				qprev<=qnext;		  	
			end
			else	begin		
				qnext<= !qnext;
				qbar= qnext;
			end		
		end			
		
	end
endmodule 