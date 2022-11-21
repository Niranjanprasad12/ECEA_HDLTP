module serialAdderTb;
    reg serialInput,clk,rst;
    serialAdder DUT(serialInput,clk,rst);
    initial clk = 1'b0;
    always #5 clk = ~clk;
    initial begin
        $dumpfile("serialAdder.vcd");
        $dumpvars(0,serialAdderTb);
        // Reset all the flipflops
        // Load the data serially via the 'B' SISO
        #2 rst = 1'b1;
        #10 rst = 1'b0;  // reset occurs here
        // Loading the data's serially 
        // Loading the A shift register.....
        #10 serialInput = 1'b1; rst = 1'b1;
        #10 serialInput = 1'b1; rst = 1'b1;
        #10 serialInput = 1'b0; rst = 1'b1;
        #10 serialInput = 1'b1; rst = 1'b1;
        // Loading the B shift register.....
        #10 serialInput = 1'b1; rst = 1'b1;
        #10 serialInput = 1'b1; rst = 1'b1;
        #10 serialInput = 1'b1; rst = 1'b1;
        #10 serialInput = 1'b1; rst = 1'b1;
        // termination of the program
        #50 $finish;
    end
endmodule