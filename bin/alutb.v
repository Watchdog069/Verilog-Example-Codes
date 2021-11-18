module alutb;
	reg [31:0] a,b;
	reg [2:0] s;
	reg rst=0;
	reg clk=0;
	wire [31:0] out;
	always #5 clk=!clk;
	alu DUT(clk,a,b,s,out,rst);
	initial
	begin
		a=32'h5F;
		b=32'h0A;
		s=3'b000;
		#10
		s=3'b001;
		#10
		s=3'b010;
		#10
		s=3'b011;
		#10
		s=3'b100; 
		#10
		s=3'b101; 
		#10
		s=3'b110; 
		#10
		s=3'b111; 
		#10
		rst=1;
		#10
		$finish;
	end
	initial
	begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end
endmodule	