module srff;
    wire q,qb;
    reg s,r,clk,rst;
    srflipflop srTB (clk,s,r,q,qb,qprev,rst);
    
    always #25 clk<=!clk;
    
    initial 
    begin
        $monitor (clk,s,r,q,qb,rst);
        clk=1;
        
        s=0;
        r=1;
        rst=0;
        #100
        
        s=1;
        r=0;
        rst=0;
        #100
        
        s=0;
        r=0;
        rst=0;
        #100
        
        s=1;
        r=1;
        rst=0;
        #100
        
        s=0;
        r=0;
        rst=0;
        #100
         
        s=0;
        r=1;
        rst=0;
        #100
               
        s=1;
        r=1;
        rst=1;
        #100
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end
endmodule