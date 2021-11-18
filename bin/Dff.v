module dff(clk,d,q,qbar);
	output reg q;
	output reg qbar;
	input  clk;
	input  d;

    always @(posedge clk)
    begin
        q<=d;
        qbar<= !d;    
    end
endmodule