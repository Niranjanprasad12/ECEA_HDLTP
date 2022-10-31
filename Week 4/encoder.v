module encoder4_2(in,out,en);
    input [3:0] in;
    input en;
    output [1:0] out;
    always @ (*)
    begin
        if (en) begin
            if (in[3]) out = 2'b11;
            else if (in[2]) out = 2'b10;
            else if (in[1]) out = 2'b01;
            else if (in[0]) out = 2'b00;
        end
    end
endmodule