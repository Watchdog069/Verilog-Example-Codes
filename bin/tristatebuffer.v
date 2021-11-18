module tribuffer(ip,op,ctrl);
	input ip,ctrl;
	output op;
	assign op=(ctrl)?ip:1'bz;
endmodule 