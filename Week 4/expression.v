module expression(a,b,c,f);
    input a,b,c;
    output f;
    assign f = (a&b) | (a&c) | (a&b&c);
endmodule