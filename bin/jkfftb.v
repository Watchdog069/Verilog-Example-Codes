module jkfftb;
	wire qprev,qnext,qbar;
	reg clk=0,j,k,rst=0;
	jkff dut(clk,j,k,rst,qnext,qbar);
	always #5 clk=!clk; 
	initial
	begin 
		j=0;
		k=0;
		#20
		j=0;
		k=1;
		#20
		j=1;
		k=0;
		#20
		j=0;
		k=0;
		#20
		j=1;
		k=1;
		#40
		rst=1;
		#20
		$finish;
	end
	initial
	begin
		$dumpfile("dump.vcd");
        $dumpvars;
	end
endmodule 	

