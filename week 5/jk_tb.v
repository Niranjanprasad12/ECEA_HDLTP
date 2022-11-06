module jktb;
    reg j,k,clk,rst;
    wire q,qbar;

    jkff DUT(j,k,clk,rst,q,qbar);
    initial begin clk = 1'b0; end
    always begin #5 clk = ~clk; end

    initial begin
        $dumpfile("jk.vcd");
        $dumpvars(0,jktb);
        $monitor($time,"j = %b, k = %b, q = %b, qbar = %b ",j,k,q,qbar);
        #8 j = 1'b1; k = 1'b0; rst=1'b1;
        #10 j = 1'b1; k = 1'b1; rst=1'b1;
        #10 j = 1'b0; k = 1'b1; rst=1'b1;
        #10 j = 1'b0; k = 1'b0; rst=1'b1;
        #10 j = 1'b1; k = 1'b0; rst=1'b1;
        #10 j = 1'b0; k = 1'b0; rst = 1'b0;
        #30 $finish;
    end
endmodule