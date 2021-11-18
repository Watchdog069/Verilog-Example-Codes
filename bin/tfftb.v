module tfftb;
	wire q;
	reg t=0,clk=0,rst=0;
	
	tff DUT(t,clk,rst,q);
	always  
    #5 clk =  ! clk;

	initial
	begin
		rst=1;
		#50 

		rst=0;
		t=0;
		#50 
		rst=0;
		t=1;
		#50 
		rst=0;
		t=0;
		#50 
		rst=0;
		t=1;
		#50 
		$finish;		
	end


    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end

endmodule    
