module adderstructuraltb;
    wire s,cout;
    reg a,b,cin;
    adderstructural DUT (a,b,cin,s,cout);
    
    initial 
    begin        
        a=0;
        b=0;
        cin=0;
        #100
         
        a=1;
        b=1;
        cin=0;
        #100
               
        a=1;
        b=1;
        cin=1;
        #100
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end
endmodule