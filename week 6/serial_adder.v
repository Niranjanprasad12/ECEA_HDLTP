module serialAdder(serialInput,clk,rst);
    input serialInput,clk,rst;
    wire a,b,cin,cout,sum;
    fourBitSISO A(sum,a,clk,rst);
    fourBitSISO B(serialInput,b,clk,rst);
    FA_adder F1(a,b,cin,sum,cout);
    dff d1(cout,clk,cin,rst);
endmodule

module FA_adder(a,b,c,s,carry_out);
    // structural description for full adder
    input a,b,c;
    output wire s,carry_out;
    wire temp_sum;
    wire [1:0] temp_carry;
    HA_adder h1(.ha(a),.hb(b),.hs(temp_sum),.hc(temp_carry[0]));
    HA_adder h2(.ha(c),.hb(temp_sum),.hs(s),.hc(temp_carry[1]));
    or(carry_out,temp_carry[0],temp_carry[1]);
endmodule 

module HA_adder (ha,hb,hs,hc);
    // structural description for half adder
    input ha,hb;
    output wire hs,hc;
    xor(hs,ha,hb);
    and(hc,ha,hb);
endmodule 

module fourBitSISO(ip,op,clk,rst);
    input ip; // serial input
    input clk,rst;
    output op;  // serial output
    wire [3:0] tempWire;
  assign op = tempWire[0];
    dff d1(ip,clk,tempWire[3],rst);
    dff d2(tempWire[3],clk,tempWire[2],rst);
    dff d3(tempWire[2],clk,tempWire[1],rst);
    dff d4(tempWire[1],clk,tempWire[0],rst);
endmodule

module dff(d,clk,q,rst);
    input d,clk;
    input rst;
    output reg q;
    always @(posedge clk or negedge rst) begin
        if (!rst) q <= 1'b0;  // reset
        else q <= d;  // latch
    end
endmodule