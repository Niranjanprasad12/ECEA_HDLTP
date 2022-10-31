module muxTb;
    reg in1,in2;
    reg sel;
    wire out;

    mux2_1 DUT(in,out,sel);
    initial begin
        $dumpfile("mux.vcd");
        $dumpvars(0,muxTb);
        $monitor($time," in1 = %b, in2 = %b, sel = %b, out = %b",in1,in2,sel,out);
        integer i = 0;
        for (i; i<7; i = i+1) begin
            #5 {in1,in2,sel} = i;
        end
        #100 $finish;
    end
endmodule