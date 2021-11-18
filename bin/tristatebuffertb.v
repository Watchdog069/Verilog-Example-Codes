module tribuftb;
	wire op;
	reg ip,ctrl;
	tribuffer DUT(ip,op,ctrl);
	initial
		begin
			ip=1;
			ctrl=1;
			#10
			ip=0;
			ctrl=1;
			#10
			ip=1;
			ctrl=1;
			#10
			ip=0;
			ctrl=0;
			#10
			ip=1;
			ctrl=0;
			#10
			$finish;
		end
	initial
		begin	
			$dumpfile("dump.vcd");
			$dumpvars;
		end
endmodule