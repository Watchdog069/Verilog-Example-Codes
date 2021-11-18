module muxtb;
	wire out;
	reg [0:3]i;
	reg [0:1]s;

	mux dut(i,s,out);
	initial
		begin
			$display("Result");
			i=4'b0000;
			s=2'b00;
			#10

			i=4'b0010;
			s=2'b01;
			#10

			i=4'b0100;
			s=2'b10;
			#10

			i=4'b0000;
			s=2'b11;
			#10

			$display("FINISH");
		end

	initial
		begin
			$dumpfile("dump.vcd");
			$dumpvars;
		end
endmodule	