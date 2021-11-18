module shiftregtb;
	parameter width=7;
	reg clk=0,rst=1;
	wire [width:0] q; 
	shiftreg DUT(clk,rst,q);
	always #5 clk=~clk;
	initial
	begin
		rst=0;
		#100
		rst=1;
		#10
		$finish;
	end
	initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end		
endmodule