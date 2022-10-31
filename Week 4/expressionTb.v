module expressionTb;
    reg a,b,c;
    wire f;

    expression DUT(a,b,c,f);

    initial begin
        $dumpfile("expression.vcd");
        $dumpvars(0,expressionTb);
        $monitor($time, " a=%b,b=%b,c=%b,f=%b",a,b,c,f);
        integer i =0;
        for (i;i<7;i=i+1)
        begin 
            #5 {a,b,c} = i;
        end
        #100 $finish
    end
endmodule