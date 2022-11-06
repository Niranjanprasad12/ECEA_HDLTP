module dffTb;
    reg d,clk,rst;
    wire q,qbar;

    dff DUT (d,clk,rst,q,qbar);

    initial clk = 1'b0;

    always begin
        #5 clk = ~clk
    end

    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0,dffTb);
        $monitor ($time, "d=%b, en=%b, q=%b, qbar=%b", d,en,q,qbar);
        #8 d = 1'b1; rst=1'b1;
        #10 d = 1'b1; rst=1'b0;
        #10 d = 1'b1; rst=1'b1;
        #30 $finish;
    end
endmodule