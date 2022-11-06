module counter_tb;
    reg clk,reset;
    wire [3:0] count;
    counter DUT(clk,reset,count);
    initial clk = 1'b0; // initializing the clock.....
    always #5 clk = ~clk;  // Running the clock with a period of 10 time units.....
    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0,counter_tb);
        $monitor($time, "clk = %b, reset = %b, count = %4b", clk,reset,count);
        #2 reset = 1'b1;
        #10 reset = 1'b0;
        #10 reset = 1'b1;
        #300 $finish;
    end
endmodule