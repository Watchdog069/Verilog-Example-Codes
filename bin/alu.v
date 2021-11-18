module alu(clk,a,b,s,out,rst);
	input [31:0] a,b;
	input [2:0] s;
	input clk,rst;
	output reg [31:0] out=0;
	always @(posedge clk)
	begin
		if(rst)
			out<=0;
		else
		begin
			case(s)
				3'b000: out <= a+b;
				3'b001: out <= a-b;
				3'b010: out <= a&b;
				3'b011: out <= a|b;
				3'b100: out <= a^b;
				3'b101: out <= ~a;
				3'b110: out <= a>>b;
				3'b111: out <= a<<b;
			endcase 
		end	 	
	end
endmodule