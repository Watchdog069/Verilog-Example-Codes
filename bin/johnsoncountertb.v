module jcountertb;
	wire [3:0] q; 
	reg rst=0,clk=0;

	jcounter DUT(clk,rst,q);
	always #5 clk = ~clk;
	initial 
		begin
			rst=1;
			#20;
			rst=0;
			#200;
			$finish;	
		end

	initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end		
endmodule	