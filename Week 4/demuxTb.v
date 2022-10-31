module demuxTb;
    reg in;
    reg sel;
    wire out1,out2;

    demux1_2 DUT(in,out1,out2,sel);
    initial begin
        $dumpfile("demux.vcd");
        $dumpvars(0,demuxTb);
        $monitor($time," in = %b, sel = %b, out1 = %b, out2 = %b",in,sel,out1,out2);
        integer i = 0;
        for (i; i<4; i = i+1) begin
            #5 {in,sel} = i;
        end
        #100 $finish;
    end
endmodule