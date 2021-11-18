module dfftb;
    wire q,qbar;
    reg  clk=0,d=0;

    dff tb(clk,d,q,qbar);

    always #10 clk = !clk;
    
    initial 
        begin
            $display("Result");  
            
            d=0;
            #50
            if(q==0 && qbar==1)
                $display("%d PASS",q);
            else
                $display("%d FAIL",q);
            
            d=1;
            #50
            if(q==1 && qbar==0)
                $display("%d PASS",q);
            else
                $display("%d FAIL",q);
         $finish;
        end

        initial begin
            $dumpfile("dump.vcd");
            $dumpvars;
        end
endmodule       