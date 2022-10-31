module halfAdderTb;
    reg a,b;
    wire sum,cout;

    halfAdder DUT(a,b,sum,cout);
    initial begin
        $dumpfile("adder.vcd");
        $dumpvars(0,halfAdderTb);
        $monitor($time," a=%b, b=%b, sum=%b, cout=%b",a,b,sum,cout);
        integer i = 0;
        for (i; i<4; i = i+1) begin
            #5 {a,b} = i;
        end
        #100 $finish;
    end
endmodule