`timescale 1ns / 1ps
module srflipflop(
    input clk,
    input s,
    input r,
    output reg q,
    output reg qb,
    output reg qprev,
    input rst
    );
  
    always @(posedge clk)
    begin
        if(rst==0)
        begin
            if(s==1 && r==0)
                begin
                    q=1;
                    qb=0;
                    qprev=q;
                end
            else if(s==0 && r==1)
                begin
                    q=0;
                    qb=1;
                    qprev=q;
                end  
            else if(s==0 && r==0)
               begin
                   q=qprev;
                   qb=!q;
                   qprev=q;
               end 
            else if(s==1 && r==1)
               begin
                   q= 1'bx;
                   qb=1'bx;
                   qprev=1'bx;
               end   
            else 
               begin
                   q=0;
                   qb=!q;
                   qprev=0;
               end
         end
         
         else 
               begin
                   q<=0;
                   qb<=!q;
                   qprev<=0;
                end                             
    end    
endmodule