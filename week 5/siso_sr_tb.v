module siso_tb;
    reg ip,clk,reset;
    wire op;
    siso_sr DUT(ip,clk,reset,op);
    initial clk = 1'b0;
    always #5 clk = ~clk;
    initial begin
        $dumpfile("siso.vcd");
        $dumpvars(0,siso_tb);
        $monitor($time, "ip = %b, reset = %b,op=%b",ip,reset,op);
        reset = 1'b1;
        #2 reset = 1'b0;
        #10 reset = 1'b1; ip = 1'b1;
        #10 reset = 1'b1; ip = 1'b1; 
        #10 reset = 1'b1; ip = 1'b0;
        #10 reset = 1'b1; ip = 1'b1;
        #60 $finish;
    end
endmodule