module dff(d,clk,rst,q,qbar);
    input d,clk,rst;
    output reg q;
    output wire qbar;
    assign qbar = ~q;
    // Async reset
    always @ (negedge clk or negedge rst) begin
        if (!rst) q<=0;
        else    q<=d;
    end
endmodule