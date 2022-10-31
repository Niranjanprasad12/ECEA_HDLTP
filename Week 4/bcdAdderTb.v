module bcdAdderTb;
    reg [3:0] a,b;
    reg c;
    wire [3:0] sum;
    wire cout;

    bcdAdder DUT(a,b,c,sum,cout);

    initial begin
        $dumpfile("bcdAdder.vcd");
        $dumpvars(0,bcdAdderTb);
        $monitor ($time, " a=%4b, b=%4b, c=%b, sum = %4b, cout = %b",a,b,c,sum,cout);
        #10 a <= 4'b1001 b <= 4'b0001 c <= 1'b0;
        #10 a <= 4'b0010 b <= 4'b0100 c <= 1'b0;
        #20 $finish;
    end
endmodule