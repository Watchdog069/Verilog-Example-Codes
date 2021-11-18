module andgatesim;
	wire y;
	reg a,b;

	andgate jand(y,a,b); //design instance (output,input)

		initial
		begin
			$display ("Result");

			a=0;
			b=0;
			#100; //100ps
			if (y==0)
				$display ("PASS");
			else
				$display ("FAIL");

			a=0;
			b=1;
			#100; //100ps
			if (y==1)
				$display ("PASS");
			else
				$display ("FAIL");			


			a=1;
			b=0;
			#100; //100ps
			if (y==1)
				$display ("PASS");
			else
				$display ("FAIL");


			a=1;
			b=1;
			#100; //100ps
			if (y==1)
				$display ("PASS");
			else
				$display ("FAIL");	

		end
//initializing wave dump
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end
endmodule					

