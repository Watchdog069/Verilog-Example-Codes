module adderstructural(input a,b,cin, output s,cout);
	wire s1,s2,s3;
	xor(s1,a,b);
	xor(s,s1,cin);
	and(s2,s1,cin);
	and(s3,a,b);
	or(cout,s3,s2);
endmodule