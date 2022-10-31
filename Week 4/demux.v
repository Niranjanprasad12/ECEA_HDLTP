module demux1_2(in,out1,out2,sel);
    input in,sel;
    output reg out1,out2;

    always @(*)
    begin
        if (sel) 
            out2 = in;
        else 
            out1 = in;
    end

endmodule