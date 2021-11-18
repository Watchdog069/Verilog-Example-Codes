module countertb;
	wire [3:0] q; 
	reg rst=0,clk=0,ctrl=1;

	counter DUT(clk,rst,q,ctrl);
	always #5 clk = ~clk;
	initial 
		begin
			rst=1;
			#20
			rst=0;
			ctrl=1;
			#100
			rst=0;
			ctrl=0;
			#100
			$finish;	
		end

	initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end		
endmodule	