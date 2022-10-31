module bcdAdder(a,b,cin,sum,cout);
    input [3:0] a,b;
    input cin;
    output [3:0] sum;
    wire [3:0] s;
    wire [2:0] connectors;
    wire c;
    output cout;
    fourBitAdder f1(a,b,cin,s,c);
    and(connectors[0],s[3],s[2]);
    and(connectors[1],s[3],s[1]);
    or(connectors[2],connectors[0],connectors[1],c);
    fourBitAdder f2(s,{0,2{connectors[1]},0},0,sum,cout);
endmodule



module fourBitAdder(a,b,cin,s,c);
    input [3:0] a,b;
    input cin;
    output [3:0] sum;
    output c;
    assign {c,sum} = a+b+cin;
endmodule