module fullAdderTb;
    reg a,b,cin;
    wire sum,cout;

    fullAdder DUT(a,b,cin,sum,cout);
    initial begin
        $dumpfile("adder.vcd");
        $dumpvars(0,fullAdderTb);
        $monitor($time," a=%b, b=%b, cin=%b, sum=%b, cout=%b",a,b,cin,sum,cout);
        integer i = 0;
        for (i; i<8; i = i+1) begin
            #5 {a,b,c} = i;
        end
        #100 $finish;

    end
endmodule