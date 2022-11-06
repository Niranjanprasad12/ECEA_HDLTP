module siso_sr(ip,clk,reset,op);
    input ip,clk,reset;
    output op;
    wire [3:0] w;
    assign op = w[3];
    dff d1(ip,clk,reset,w[0]);
    dff d2(w[0],clk,reset,w[1]);
    dff d3(w[1],clk,reset,w[2]);
    dff d4(w[2],clk,reset,w[3]);
endmodule

module dff(d,clk,rst,q);
    input d,clk,rst;
    output reg q;
    // Async reset
    always @ (negedge clk or negedge rst) begin
        if (!rst) q<=0;
        else    q<=d;
    end
endmodule