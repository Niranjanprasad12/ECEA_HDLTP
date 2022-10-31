module mux2_1(in1,in2,out,sel);
    input in1,in2;
    input sel;
    output out;
    assign  = sel? in[1] : in[0];
endmodule