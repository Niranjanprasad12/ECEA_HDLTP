module decoder2_4(in,out,en);
    input [1:0] in;
    input en;
    output [3:0] out;
    assign out = en? in:0;
endmodule