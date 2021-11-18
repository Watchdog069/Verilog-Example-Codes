module magcomptb;
	reg [1:0]a;
	reg [1:0]b;
	wire lt,gt,eq;

	magcomp mgtb(a,b,lt,gt,eq);
	initial
	begin
		$display("Result");

		a=2'b01;
		b=2'b11;
		#10
		if(lt==1 && gt==0 && eq==0)
			$display("PASS");
		else begin
				$display("FAIL");
			end	

		a=2'b10;
		b=2'b01;
		#10
		if(lt==0 && gt==1 && eq==0)
			$display("PASS");
		else begin
				$display("FAIL");
			end

		a=2'b00;
		b=2'b00;
		#10
		if(lt==0 && gt==0 && eq==1)
			$display("PASS");
		else begin
				$display("FAIL");
			end		
	end

	initial
	begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end
endmodule	