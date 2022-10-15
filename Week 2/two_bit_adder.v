module adder2bit(A,B,cin,sum,cout);
    input [1:0] A,B;  // 2- bit input
    input cin;   // 1-bit carry in
    output wire [1:0] sum; // 2-bit output
    output wire cout; // 1-bit carry out
    wire carry;

    // structural design using 2 1'bit full adders
    FA_adder f1(.a(A[0]),.b(B[0]),.c(cin),.s(sum[0]),.carry_out(carry));
    FA_adder f2(.a(A[1]),.b(B[1]),.c(carry),.s(sum[1]),.carry_out(cout));

endmodule : adder2bit


module FA_adder(a,b,c,s,carry_out);
    // structural description for full adder
    input a,b,c;
    output wire s,carry_out;
    wire temp_sum;
    wire [1:0] temp_carry;
    HA_adder h1(.ha(a),.hb(b),.hs(temp_sum),.hc(temp_carry[0]));
    HA_adder h2(.ha(c),.hb(temp_sum),.hs(s),.hc(temp_carry[1]));
    or(carry_out,temp_carry[0],temp_carry[1]);
endmodule :FA_adder

module HA_adder (ha,hb,hs,hc);
    // structural description for half adder
    input ha,hb;
    output wire hs,hc;
    xor(hs,ha,hb);
    and(hc,ha,hb);
endmodule :HA_adder