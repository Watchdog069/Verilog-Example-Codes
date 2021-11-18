module addersim;
    reg a,b,cin;
    wire sum,cout;

    adder addertb(a,b,cin,sum,cout);
        initial 
        begin
            $display("Result");

            a=0;
            b=0;
            cin=0;
            #100
            if(sum==0 && cout==0)
                $display("%d\t%d\t%d\n%d\t%d\t PASS\n",a,b,cin,sum,cout);
            else
                $display("FAIL");
            

            a=0;
            b=1;
            cin=1;
            #100
            if(sum==0 && cout==1)
                $display("%d\t%d\t%d\n%d\t%d\t PASS\n",a,b,cin,sum,cout);
            else
                $display("FAIL");
            

            a=1;
            b=0;
            cin=0;
            #100
            if(sum==1 && cout==0)
                $display("%d\t%d\t%d\n%d\t%d\t PASS\n",a,b,cin,sum,cout);
            else
                $display("FAIL");
            

            a=1;
            b=1;
            cin=1;
            #100
            if(sum==1 && cout==1)
                $display("%d\t%d\t%d\n%d\t%d\tPASS\n",a,b,cin,sum,cout);
            else
                $display("FAIL");
            

        end

        initial begin
            $dumpfile("dump.vcd");
            $dumpvars;
        end
endmodule       